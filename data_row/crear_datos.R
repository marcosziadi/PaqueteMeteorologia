estaciones_merged <- read.csv("data_row/estaciones_merged.csv")  # Cambia la ruta si es necesario

usethis::use_data(estaciones_merged, overwrite = TRUE)
