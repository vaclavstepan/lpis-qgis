---
nocite: |
  @*
---

# Úvod {.unnumbered}

Vzhledem k tomu, že jarní senoseč 2024 končí a já to do příště zapomenu, tu je stručný popis postupu, co jsem používal ke generování map pro termovizní létání.

Pro širší kontext viz také články dole v seznamu literatury.

Co budete potřebovat pro využití postupů:

- QGIS (3.36.3 a vyšší) z [QGIS.org](https://www.qgis.org/en/site/).

- Vzorové projekty a data z [Linux@fjfi](https://linux.fjfi.cvut.cz/~w/qgis-lpis.tgz).

- Pro stahování novějších dat z LPIS a jejich zpracování GDAL a wget.

## Co je v podkapitolách popsáno

### Základní práce s LPIS v QGIS

- Jak stáhnout data o půdních blocí pro vybrané kraje z LPIS do GeoPackage
- Vykreslit do mapy bloky popsané čtvercem a DPB (dle CSV souboru).
- Jak zjistit LPIS identifikátor zemědělského družstva a vykreslit všechny jejich půdní bloky s travnatým porostem.

### Hodnocení pozemních rizik

- Druhý QGIS projekt rozšiřující mapu o vykreslení ochranných pásem liniových staveb a zvláště chráněných území.
- Vytvoření mapy pro ruční posouzení, jak moc lze plochy nalétat v Open.

### Další zpracování dat do ploch pro nalétání

- Jak z ploch DPB odstranit části, kde let nelze provést v Open kvůli známým ochranným pásmům pomocí nástrojů v QGIS.

### Využití vytvořených KML pro přípravu letu

- Import dat z QGIS do FlightHub a příprava letu pomocí FlightHub
- Příprava letu pomocí KML nahraného přímo do ovladače/Pilot 2.

### Rozpracované věci
A konečně, v poslední, co by šlo popsat, ale čeká to, až bude čas.


### Poznámka
Dokument je připraven v systému [Quarto](https://quarto.org). Aktuální HTML verze dokumentace je [zde](https://linux.fjfi.cvut.cz/~w/qgis-lpis/).

## Literatura

::: {#refs}
:::
