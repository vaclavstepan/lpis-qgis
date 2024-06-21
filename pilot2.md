# Použití KML DPB bloků pro plánování letů

## Proč nepoužít přímo KML z DPB

DPB jsou vyznačeny až do kraje louky/pole, takže může být problém s vysokým lesem.

Často nelze celou plochu prolétat v Open kategorii – do ploch často zasahují ochranná pásma elektrického vedení, železnice, silnic a dalších liniových staveb, případně je tu ochranné pásmo MZCHÚ/VZCHÚ a pod.

## Co s tím lze dělat

### Rizika na hranici plochy
M3T se zapnutým *realtime terrain following* ve většině případů před hranicí lesa nastoupá nad něj. M30t a M2EA ne, možným řešením je plochu z krajů zmenšit o bezpečnostní pás.

V QGIS k tomu slouží funkce Buffer (např. -10 m).

## Nadzemní elektrická vedení

V ČÚZK zdrojích (DATA 50) jsou údaje o nadzemních vedeních, ale bez uvedení napětí (a tedy bez možnosti dovození ochranného pásma).

V OpenStreetMap datech^[Děkuju za postrčení Davidu Bouškovi] je u vedení i napětí a lze tak automaticky generovat OP pro předpokládanou letovou výšku.

### Zcela korektní způsob získání údajů o vedení

Zcela korektní způsob je zjistit, kdo nadzemní elektrické nebo komunikační vedení provozuje je podat si *žádost o sdělení o existenci sítí*. Její zpracování je typicky automatizované a neexistuje pro to centrální místo.

Dle distributora viz:
 - eon.cz: [Vyjádření k existenci sítí](https://www.eon.cz/firemni-zakaznici/zakaznicka-pece/technicke-dotazy/vyjadreni-k-existenci-siti/)
 - [ČEPS Vyjadřovací portál](https://vp.ceps.cz)
 - [ČEZ Distribuce a.s.](https://geoportal.cezdistribuce.cz/Geoportal.ses/ves.aspx)

## K ověření na místě

V ploše dál může být v mapě nevyznačené nadzemní vedení, osamělé stromy, z něčeho zbylé sloupy. 

Údaje o elektrických vedeních z OpenStreetMap data mohou být nepřesné.

## Příprava letového plánu ve FlightHub



## Příprava letového plánu v Pilot 2


