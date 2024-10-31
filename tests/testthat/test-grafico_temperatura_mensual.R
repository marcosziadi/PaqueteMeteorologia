test_that("grafico_temperatura_mensual produce un gráfico", {
  # Crear un dataframe de ejemplo
  datos <- data.frame(
    id = rep(1:2, each = 12),
    fecha = seq.Date(from = as.Date("2023-01-01"), by = "month", length.out = 12),
    temperatura_abrigo_150cm = runif(24, min = 0, max = 30)  # Temperaturas aleatorias
  )

  # Llamar a la función
  grafico <- grafico_temperatura_mensual(datos)

  # Verificar que el objeto retornado es un ggplot
  expect_s3_class(grafico, "gg")
})
