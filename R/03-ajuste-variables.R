# 03-ajuste-variables

# source("R/01-instalacion-paquetes.R")
# source("R/02-importar-bases-datos.R")


# renombrar variables
names(Ind2023)= c("id", "codep", "codmun", "codind", "nomind", "manmue", "periodo", "edadR", "casos", "poblacion", "tasa", 
                  "casosh", "poblacionh", "tasah",  "casosm", "poblacionm", "tasam", "sincasos", "sinpoblacion", "sintasa",
                  "rural", "urbano", "sinfor", "despazado", "otro", "discapacitado", "nodiscapacitado", "sinfodiscapacitado",
                  "amarillo", "blanco", "indigena", "mestizo", "mulato", "negro", "sinfraza", "total")


names(Ind2022)= c("id", "codep", "codmun", "codind", "nomind", "manmue", "periodo", "edadR", "casos", "poblacion", "tasa", 
                  "casosh", "poblacionh", "tasah",  "casosm", "poblacionm", "tasam", "sincasos", "sinpoblacion", "sintasa",
                  "rural", "urbano", "sinfor", "despazado", "otro", "discapacitado", "nodiscapacitado", "sinfodiscapacitado",
                  "amarillo", "blanco", "indigena", "mestizo", "mulato", "negro", "sinfraza", "total")


names(Ind2021)= c("id", "codep", "codmun", "codind", "nomind", "manmue", "periodo", "edadR", "casos", "poblacion", "tasa", 
                  "casosh", "poblacionh", "tasah",  "casosm", "poblacionm", "tasam", "sincasos", "sinpoblacion", "sintasa",
                  "rural", "urbano", "sinfor", "despazado", "otro", "discapacitado", "nodiscapacitado", "sinfodiscapacitado",
                  "amarillo", "blanco", "indigena", "mestizo", "mulato", "negro", "sinfraza", "total")


names(Ind2020)= c("id", "codep", "codmun", "codind", "nomind", "manmue", "periodo", "edadR", "casos", "poblacion", "tasa", 
                  "casosh", "poblacionh", "tasah",  "casosm", "poblacionm", "tasam", "sincasos", "sinpoblacion", "sintasa",
                  "rural", "urbano", "sinfor", "despazado", "otro", "discapacitado", "nodiscapacitado", "sinfodiscapacitado",
                  "amarillo", "blanco", "indigena", "mestizo", "mulato", "negro", "sinfraza", "total")

Ind2023$id <- 1:nrow(Ind2023) 
Ind2022$id <- 1:nrow(Ind2022) 
Ind2021$id <- 1:nrow(Ind2021) 
Ind2020$id <- 1:nrow(Ind2020)

Ind2023$periodo <- 2023 

Ind2020$codep = as.character(Ind2020$codep) ; Ind2020$codep[Ind2020$codep == "5"] ="05" ; Ind2020$codep[Ind2020$codep == "8"] ="08"
Ind2021$codep = as.character(Ind2021$codep) ; Ind2021$codep[Ind2021$codep == "5"] ="05" ; Ind2021$codep[Ind2021$codep == "8"] ="08"
Ind2022$codep = as.character(Ind2022$codep) ; Ind2022$codep[Ind2022$codep == "5"] ="05" ; Ind2022$codep[Ind2022$codep == "8"] ="08"
Ind2023$codep = as.character(Ind2023$codep) ; Ind2023$codep[Ind2023$codep == "5"] ="05" ; Ind2023$codep[Ind2023$codep == "8"] ="08"


# se juntan las bases en una sola
Ind20_23 <- rbind(Ind2020,
                  Ind2021,
                  Ind2022,
                  Ind2023)


Ind20_23$edadR[Ind20_23$edadR == "Menores de un año"] = 1
Ind20_23$edadR[Ind20_23$edadR == "(01 a 05)"] =2
Ind20_23$edadR[Ind20_23$edadR == "(06 a 11)"] =3
Ind20_23$edadR[Ind20_23$edadR == "(12 a 17)"] =4
Ind20_23$edadR[Ind20_23$edadR == "(18 a 28)"] =5


Ind2020$edadR[Ind2020$edadR == "Menores de un año"] = 1
Ind2020$edadR[Ind2020$edadR == "(01 a 05)"] =2
Ind2020$edadR[Ind2020$edadR == "(06 a 11)"] =3
Ind2020$edadR[Ind2020$edadR == "(12 a 17)"] =4
Ind2020$edadR[Ind2020$edadR == "(18 a 28)"] =5


Ind2021$edadR[Ind2021$edadR == "Menores de un año"] = 1
Ind2021$edadR[Ind2021$edadR == "(01 a 05)"] =2
Ind2021$edadR[Ind2021$edadR == "(06 a 11)"] =3
Ind2021$edadR[Ind2021$edadR == "(12 a 17)"] =4
Ind2021$edadR[Ind2021$edadR == "(18 a 28)"] =5



Ind2022$edadR[Ind2022$edadR == "Menores de un año"] = 1
Ind2022$edadR[Ind2022$edadR == "(01 a 05)"] =2
Ind2022$edadR[Ind2022$edadR == "(06 a 11)"] =3
Ind2022$edadR[Ind2022$edadR == "(12 a 17)"] =4
Ind2022$edadR[Ind2022$edadR == "(18 a 28)"] =5



Ind2023$edadR[Ind2023$edadR == "Menores de un año"] = 1
Ind2023$edadR[Ind2023$edadR == "(01 a 05)"] =2
Ind2023$edadR[Ind2023$edadR == "(06 a 11)"] =3
Ind2023$edadR[Ind2023$edadR == "(12 a 17)"] =4
Ind2023$edadR[Ind2023$edadR == "(18 a 28)"] =5



write_csv(Ind20_23, "data/Ind20_23.csv")
write_csv(Ind2023, "data/Ind2023.csv")
write_csv(Ind2022, "data/Ind2022.csv")
write_csv(Ind2021, "data/Ind2021.csv")
write_csv(Ind2020, "data/Ind2020.csv")

