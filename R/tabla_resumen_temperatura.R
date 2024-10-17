#' Crea una Tabla Resumen de la Temperatura Abrigo
#'
#' La función `tabla_resumen_temperatura` crea una tabla de resumen de la temperatura_abrigo_150cm para una o más estaciones.
#' @param datos data.frame de las estaciones de cuya temperatura abrigo se quiere crear una tabla resumen.
#'
#' @return
#' Devuelve una tabla resumen de la temperatura abrigo de las estaciones ingresadas.
#' @export
#'
#' @examples
#' tabla_resumen_temperatura(datos)
tabla_resumen_temperatura <- function(datos) {
  resumen <- datos %>%
    group_by(estacion) %>%
    summarise(
      min_temp = min(temperatura_abrigo_150cm, na.rm = TRUE),
      max_temp = max(temperatura_abrigo_150cm, na.rm = TRUE),
      mean_temp = mean(temperatura_abrigo_150cm, na.rm = TRUE)
    )
  return(resumen)
}
