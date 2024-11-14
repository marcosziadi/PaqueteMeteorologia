#' Conjunto de datos
#'
#' Los datos contienen informacion de las distintas estaciones meteorologicas.
#'
#' @format Un dataframe con las siguientes columnas:
#' \describe{
#'   \item{id}{ID de la estacion realizada.}
#'   \item{fecha}{Fecha de la medicion.}
#'   \item{temperatura_abrigo_150cm}{Temperatura medida a 150 cm de altura.}
#'   \item{temperatura_abrigo_150cm_maxima}{Temperatura maxima a 150 cm.}
#'   \item{temperatura_abrigo_150cm_minima}{Temperatura minima a 150 cm.}
#'   \item{temperatura_intemperie_5cm_minima}{Temperatura minima en intemperie a 5 cm.}
#'   \item{temperatura_intemperie_50cm_minima}{Temperatura minima en intemperie a 50 cm.}
#'   \item{temperatura_suelo_5cm_media}{Temperatura media del suelo a 5 cm.}
#'   \item{temperatura_suelo_10cm_media}{Temperatura media del suelo a 10 cm.}
#'   \item{temperatura_inte_5cm}{Temperatura interna a 5 cm.}
#'   \item{temperatura_intemperie_150cm_minima}{Temperatura minima en intemperie a 150 cm.}
#'   \item{humedad_suelo}{Humedad del suelo.}
#'   \item{precipitacion_pluviometrica}{Precipitacion medida.}
#'   \item{granizo}{1 si hubo granizo y 0 si no hubo.}
#'   \item{nieve}{1 si hubo nieve y 0 si no hubo.}
#'   \item{heliofania_efectiva}{Heliofania efectiva.}
#'   \item{heliofania_relativa}{Heliofania relativa.}
#'   \item{tesion_vapor_media}{Tension de vapor media.}
#'   \item{humedad_media}{Humedad media.}
#'   \item{humedad_media_8_14_20}{Humedad media de 8 a 14 y 20.}
#'   \item{rocio_medio}{Rocio medio.}
#'   \item{duracion_follaje_mojado}{Duracion del follaje mojado.}
#'   \item{velocidad_viento_200cm_media}{Velocidad media del viento a 200 cm.}
#'   \item{direccion_viento_200cm}{Direccion del viento a 200 cm.}
#'   \item{velocidad_viento_1000cm_media}{Velocidad media del viento a 1000 cm.}
#'   \item{direccion_viento_1000cm}{Direccion del viento a 1000 cm.}
#'   \item{velocidad_viento_maxima}{Velocidad maxima del viento.}
#'   \item{presion_media}{Presion media.}
#'   \item{radiacion_global}{Radiacion global.}
#'   \item{radiacion_neta}{Radiacion neta.}
#'   \item{evaporacion_tanque}{Evaporacion en tanque.}
#'   \item{evapotranspiracion_potencial}{Evapotranspiracion potencial.}
#'   \item{profundidad_napa}{Profundidad de napa.}
#'   \item{horas_frio}{Horas de frio.}
#'   \item{unidad_frio}{Unidad de frio.}
#' }
#' @source Repositorio de GitHub.
"estaciones_merged"
