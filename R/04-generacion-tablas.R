
# Tablas

# agregar por periododos los datos ---------------------------------------------
casos = c( sum(Ind2020$casos), sum(Ind2021$casos), sum(Ind2022$casos), sum(Ind2023$casos))
casosm = c( sum(Ind2020$casosm), sum(Ind2021$casosm), sum(Ind2022$casosm), sum(Ind2023$casosm))
casosh = c( sum(Ind2020$casosh), sum(Ind2021$casosh), sum(Ind2022$casosh), sum(Ind2023$casosh))

casos2020_2023 <-data.frame(casos = c(casos, casosm, casosh),
                            poblacion = c(rep("Total",4), rep("Mujer", 4), rep("Hombre",4)),
                            periodo = c(2020, 2021, 2022, 2023,
                                        2020, 2021, 2022, 2023,
                                        2020, 2021, 2022, 2023))

casos20_23 <- data.frame(casos, casosm, casosh)
rownames(casos20_23) <-  c(2020,2021,2022, 2023)
names(casos20_23) <- c("Total", "Mujeres", "Hombres")
