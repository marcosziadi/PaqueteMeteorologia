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
#' descargar_datos("NH0098", "~/NH0098.csv")
#' descargar_datos("NH0910", "~/NH0910.csv")
descargar_datos <- function(id_estacion, ruta_archivo) {
  url_repositorio <- "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/"

  estacion_url <- paste0(url_repositorio, id_estacion, ".csv")

  download.file(url = estacion_url, destfile = ruta_archivo)

  datos <- read_csv(ruta_archivo)

  return(datos)
}
