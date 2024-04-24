#07-funciones-gráficos.R
#-------------------------------------------------------------------------------
# grafico de barras horizontal por departamenteos ordenados
grafico3 = function(base_casos){
library(ggplot2)
casosCo <- base_casos[,c(1,6)]

# Ordenar los datos por casosh de mayor a menor
casosCo <- casosCo[order(-casosCo$Total), ]

# Crear una paleta de colores degradada de rojos
red_palette <- colorRampPalette(c("#FFC685", "#AE123A"))(nrow(casosCo))

# Gráfico de barras
plot.casos <- ggplot(casosCo, aes(x = reorder(Departamento, Total), y = Total, fill = Total)) + 
  geom_col() + 
  geom_text(aes(label = Total), hjust = -0.1, size = 3, color = "gray30") +
  scale_y_continuous(labels = scales::comma, name = "", expand = expansion(mult = c(0, 0.05))) +
  scale_fill_gradientn(colors = red_palette, guide = FALSE) +
  coord_flip() + 
  theme_minimal() +
  theme(
    text = element_text(color = "gray30"),
    axis.text.y = element_text(size = 10, color = "gray30"),
    axis.text.x = element_text(size = 10, color = "gray30"),
    legend.position = "none",
    plot.margin = margin(1, 1, 1, 2),
    axis.title = element_text(size = 6)
  ) +
  labs(
    x = "Departamentos",
    y = "Casos "
  )
plot.casos
}

#-------------------------------------------------------------------------------
grafico1 <- function(departamento) {
  tabla1 <- departamento %>% count(codind)
  
  ggplot(tabla1, aes(x = codind, y = n, fill = n)) +
    geom_bar(stat = "identity", color = "black") +
    geom_text(aes(label = n), vjust = 2, colour = "black") +
    scale_fill_gradient(low = "#FFC685", high = "#AE123A", name = NULL) +
    labs(x = "Código de Indicador", y = "Frecuencia", title = "Indicadores de violencia") +
    theme_minimal() +
    theme(legend.position = "none")
}

# grafico2(departamento)
# grafico1(antioquia)


#-------------------------------------------------------------------------------

grafico2 = function(departamento){
  # Crear una paleta de colores entre rojo y naranja
  tabla2 =table(departamento$edadR, departamento$codind)
  barplot(tabla2, las=1 , 
          col = colorRampPalette(colors = c("#FFC685", "#AE123A"))(5)  , 
          beside = FALSE,
          legend.text = c("menos de 1", "01-05", "06-11", "12-17", "18-28"),
          args.legend = list(x = "topright"))
} 
# grafico2(antioquia)

#-------------------------------------------------------------------------------

