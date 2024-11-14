#' Descargar datos meteorologicos
#'
#' La funcion `descargar_datos` toma el ID de una estacion y un directorio de destino, y descarga en dicha ubicacion un archivo CSV con los datos meteorologicos de la estacion correspondiente. Los IDs posibles son: NH0098, NH0046, NH437, NH472 y NH0910.
#' @param id_estacion ID de la estacion.
#' @param directorio_destino Directorio donde se guardara el archivo CSV.
#'
#' @return
#' Un archivo CSV con los datos meteorologicos de la estacion con el ID ingresado.
#'
#' @import readr
#' @importFrom utils download.file
#'
#' @export
#'
#' @examples
#' descargar_datos("NH0098", "data")
#' descargar_datos("NH0910", "data")
descargar_datos <- function(id_estacion, directorio_destino) {
  # Lista de ID de estaciones permitidos
  ids_permitidos <- c("NH0472", "NH0910", "NH0046", "NH0098", "NH0437")

  # Verificar si id_estacion es valido
  if (!id_estacion %in% ids_permitidos) {
    cli::cli_abort(paste0("Error: El ID de estacion '", id_estacion, "' no es valido. Los ID permitidos son: ", paste(ids_permitidos, collapse = ", ")))
  }

  url_repositorio <- "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/"
  estacion_url <- paste0(url_repositorio, id_estacion, ".csv")

  # Verificar si el nombre del directorio esta ocupado por un archivo
  if (file.exists(directorio_destino) && !dir.exists(directorio_destino)) {
    stop(paste("Error: El destino especificado", directorio_destino, "ya existe como archivo. Por favor, elige otro nombre para el directorio."))
  }

  # Crear la ruta completa para el archivo de destino
  ruta_archivo <- file.path(directorio_destino, paste0(id_estacion, ".csv"))

  # Crear el directorio si no existe
  if (!dir.exists(directorio_destino)) {
    dir.create(directorio_destino, recursive = TRUE)
  }

  # Descargar el archivo
  download.file(url = estacion_url, destfile = ruta_archivo)

  # Leer el archivo CSV
  datos <- read_csv(ruta_archivo)

  return(datos)
}
