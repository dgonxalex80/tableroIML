#07-funciones-gráficos.R

grafico2 = function(departamento){
  # Crear una paleta de colores entre rojo y naranja
  tabla2 =table(departamento$edadR, departamento$codind)
  barplot(tabla2, las=1 , 
          col = colorRampPalette(colors = c("#FFC685", "#AE123A"))(5)  , 
          beside = FALSE,
          legend.text = c("menos de 1", "01-05", "06-11", "12-17", "18-28"),
          args.legend = list(x = "topright")
  )
  grid()}
# grafico2(antioquia)
#------------------------------------------------------------------------------

grafico1 = function(departamento) {
  tabla1 =table(departamento$codind)
  
  barplot(tabla1, las=1,
          col = colorRampPalette(colors = c("#FFC685", "#AE123A"))(10))
  grid()}
#-------------------------------------------------------------------------------
# grafico1(antioquia)