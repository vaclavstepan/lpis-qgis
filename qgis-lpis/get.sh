#!/bin/bash

# Cisla okresu dle https://eagri.cz/public/app/eagriapp/lpisdata/
ID=$( grep -v '^#' okresy.csv | cut -f 1 -d ' ' )

echo ID kraju ke stazeni: $ID

(
if [ -d dpb ] ; then rm -f dpb/* ; else mkdir -p dpb ; fi

cd dpb

# Zjisti datum posledni varky
VURL="https://eagri.cz/public/app/eagriapp/lpisdata/seznam_varek.txt"
if [ -f seznam_varek.txt ]
then 
  rm -f seznam_varek.txt
fi

wget $VURL || exit 1 

DATUM=$(tail -1 seznam_varek.txt)
echo Posledni varka: $DATUM

# Pro kazdy okres stahni data

for i in $ID
do
  echo --------------------------------------------------------------------------------
  echo Kraj: $i
  URL="https://eagri.cz/public/app/eagriapp/lpisdata/${DATUM}-${i}-DPB-SHP.zip"
  wget $URL
done

# Rozbal archivy okresu 
for i in *-DPB-SHP.zip
do
  unzip -q $i
  rm $i
done

# Rozbal archivy pro jednotliva KU
for i in *-DPB-SHP-A.zip 
do
  unzip -q $i
  rm $i
done

ogrmerge -single -o dpb.shp *-SHP-A.shp

rm *-SHP-A.*

# Convert the merged SHP into GeoPackage and reproject result to EPSG:32633
ogr2ogr -f GPKG -s_srs EPSG:5514 -t_srs EPSG:32633 dpb.gpkg dpb.shp

# Remove the SHP
rm dpb.shp dpb.shx dpb.dbf

# Set index on DPB and CTVEREC
ogrinfo -sql "CREATE INDEX dpb_index ON dpb (ZKOD_DPB, CTVEREC)" dpb.gpkg
)

