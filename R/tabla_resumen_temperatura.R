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
#' # Cargar los datos de ejemplo desde el paquete
#' data("estaciones_merged")
#'
#' # Llamar a la función usando los datos cargados
#' tabla_resumen_temperatura(estaciones_merged)
tabla_resumen_temperatura <- function(datos) {
  # Verificar si datos es un dataframe
  if (!is.data.frame(datos)) {
    cli::cli_abort("Error: El objeto 'datos' debe ser un dataframe.")
  }

  # Calcular el resumen
  resumen <- datos %>%
    group_by(id) %>%
    summarise(
      min_temp = min(temperatura_abrigo_150cm, na.rm = TRUE),
      max_temp = max(temperatura_abrigo_150cm, na.rm = TRUE),
      mean_temp = mean(temperatura_abrigo_150cm, na.rm = TRUE)
    )

  return(resumen)
}
