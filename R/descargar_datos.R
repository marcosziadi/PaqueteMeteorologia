#' Descargar datos meteorologicos
#'
#' La función `descargar_datos` toma el ID de una estación y una dirección de ruta y descarga en dicha dirección un csv con los datos meteorologicos de la estación con dicho ID. Los IDs posibles son: NH0098, NH0046, NH437, NH472 y NH0910.
#' @param id_estacion ID de la estación.
#' @param ruta_archivo Dirección de ruta en la que se guardara el archivo csv.
#'
#' @return
#' Un archivo csv con los datos meteorológicos de la estación con el ID ingresado.
#'
#' @import readr
#'
#' @export
#'
#' @examples
#' descargar_datos("NH0098", "data")
#' descargar_datos("NH0910", "data")
descargar_datos <- function(id_estacion, directorio_destino) {
  url_repositorio <- "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/"
  estacion_url <- paste0(url_repositorio, id_estacion, ".csv")

  # Verificar si el nombre del directorio está ocupado por un archivo
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

