# 06- bases para mapas 

source("R/01-instalar-paquetes.R")
source("R/02-importar-bases-datos.R")
source("R/03-ajuste-variables.R")
source("R/04-generacion-tablas.R")



dptos <- data.frame(id = 1:33,
                    ndep =c("ANTIOQUIA","ATLANTICO","BOGOTA D.C", "BOLIVAR","BOYACA", 
                            "CALDAS","CAQUETA","CAUCA", "CESAR", "CORDOBA","CUNDINAMARCA", 
                            "CHOCO","HUILA", "LA GUAJIRA", "MAGDALENA","META","NARIÑO",
                            "NT.SANTANDER","QUINDIO","RISARALDA", "SANTANDER", "SUCRE",
                            "TOLIMA", "VALLE","ARAUCA", "CASANARE", "PUTUMAYO", "AMAZONAS", 
                            "GUAINIA",  "GUAVIARE", "VAUPES", "VICHADA", "SAN ANDRES"),
                    cdep =c("05","08","11","13","15","17","18","19","20","23","25","27","41","44","47","50","52","54","63","66","68","70","73","76","81","85","86","91","94","95","97","99","88")
)

# total casos por departamento -------------------------------------------------
casos20 <- tapply(Ind2020$casos, Ind2020$codep, sum) 
casos21 <- tapply(Ind2021$casos, Ind2021$codep, sum)
casos22 <- tapply(Ind2022$casos, Ind2022$codep, sum)
casos23 <- tapply(Ind2023$casos, Ind2023$codep, sum)
# 
casosh20 = tapply(Ind2020$casosh, Ind2020$codep, sum)
casosh21 <- tapply(Ind2021$casosh, Ind2021$codep, sum)
casosh22 <- tapply(Ind2022$casosh, Ind2022$codep, sum)
casosh23 <- tapply(Ind2023$casosh, Ind2023$codep, sum)

casosm20 <- tapply(Ind2020$casosm, Ind2020$codep, sum) 
casosm21 <- tapply(Ind2021$casosm, Ind2021$codep, sum)
casosm22 <- tapply(Ind2022$casosm, Ind2022$codep, sum)
casosm23 <- tapply(Ind2023$casosm, Ind2023$codep, sum)
#-=============================================================================

bcasos = data.frame(casos20, casos21[1:33], casos22[1:33], casos23[1:33])
total <- apply(bcasos, 1, sum)
bcasos <- data.frame(bcasos, total)
colnames(bcasos) = c("2020", "2021", "2022", "2023", "Total" )
# rownames(bcasos) = dptos$ndep
bcasos <- data.frame(dptos$ndep, bcasos)
names(bcasos) <-c("Departamento", "2020", "2021", "2022", "2023", "Total")

# bcasos
write_csv(bcasos, "data/bcasos.csv")
#-=============================================================================

bcasosm = data.frame(casosm20, casosm21[1:33], casosm22[1:33], casosm23[1:33])
total <- apply(bcasosm, 1, sum)
bcasosm <- data.frame(bcasosm, total)
names(bcasosm) = c("2020", "2021", "2022", "2023", "Total" )
#rownames(bcasosm) = dptos$ndep
bcasosm <- data.frame(dptos$ndep, bcasosm)
names(bcasosm) <-c("Departamento", "2020", "2021", "2022", "2023", "Total")

# bcasos
write_csv(bcasosm, "data/bcasosm.csv")
#-=============================================================================

bcasosh = data.frame(casosh20, casosh21[1:33], casosh22[1:33], casosh23[1:33])
total <- apply(bcasosh, 1, sum)
bcasosh <- data.frame(bcasosh, total)
names(bcasosh) = c("2020", "2021", "2022", "2023", "Total" )
#rownames(bcasosh) = dptos$ndep
bcasosh <- data.frame(dptos$ndep, bcasosh)
names(bcasosh) <-c("Departamento", "2020", "2021", "2022", "2023", "Total")
# bcasos
write_csv(bcasosh, "data/bcasosh.csv")


