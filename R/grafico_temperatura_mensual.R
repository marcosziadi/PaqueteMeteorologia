#' Grafica de la Temperatura Mensual
#'
#' La funcion `grafico_temperatura_mensual` devuelve un gráfico que muestre el promedio mensual de la temperatura de abrigo.
#' @param datos data.frame a partir del cual creará los gráficos.
#' @param colores Colores que se utilizarán en el gráfico.
#' @param titulo Titulo para el gráfico.
#'
#' @return
#' Genera un gráfico de la temperatura mensual del data.frame con el título y los colores ingresados.
#' @export
#'
#' @examples
#' grafico_temperatura_mensual(datos, colores, titulo)
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
