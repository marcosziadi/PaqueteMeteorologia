descargar_datos <- function(id_estacion, ruta_archivo) {
  url_repositorio <- "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/"
  
  estacion_url <- paste0(url_repositorio, id_estacion, ".csv")
  
  download.file(url = estacion_url, destfile = ruta_archivo)  
  
  datos <- read_csv(ruta_archivo)
  
  return(datos)
}