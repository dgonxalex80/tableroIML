# 02-importar-bases-datos.R
source("R/01-instalar-paquetes.R")

Ind2023 <- read_excel("data/Indicadores_Procuraduria_2023_preliminares.xlsx", sheet = "Ind. Patología", range = "A9:AJ4412")
Ind2022 <- read_excel("data/Indicadores_infancia_adolescencia_juventud_Procuraduria_2022.xlsx", sheet = "Ind. Patología", range = "A9:AJ4511")
Ind2021 <- read_excel("data/Indicadores_Infancia_adolescencia_juventud_2021.xlsx", sheet = "Ind. Patología", range = "A9:AJ4344")
Ind2020 <- read_excel("data/Indicadores infancia adolescencia y juventud Procuraduria 2020.xlsx",sheet = "Ind. Patología", range = "A9:AJ3978")

# carga de mapas
COL <- read_sf("map/COL_adm0.shp")
COLdep <- read_sf("map/COL_adm1.shp")
COLmun <- read_sf("map/COL_adm2.shp")
