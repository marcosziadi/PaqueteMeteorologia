grafico_temperatura_mensual <- function(datos, colores = NULL, titulo = "Temperatura") {
  if (is.null(colores)) {
    colores <- sample(colors(), length(unique(datos$mes)))
  }
  
  grafico <- datos %>%
    group_by(estacion, mes) %>%
    summarise(mean_temp = mean(temperatura_abrigo_150cm, na.rm = TRUE)) %>%
    ggplot(aes(x = mes, y = mean_temp, color = estacion)) +
    geom_line() +
    scale_color_manual(values = colores) +
    labs(title = titulo, x = "Mes", y = "Temperatura Promedio")
  
  return(grafico)
}