
<!-- README.md is generated from README.Rmd. Please edit that file -->

# PaqueteMeteorologia <img src="man/figures/paquetemeteorologia.png" align="right" width="120"/>

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/marcosziadi/PaqueteMeteorologia/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/marcosziadi/PaqueteMeteorologia/actions/workflows/R-CMD-check.yaml)

<!-- badges: end -->

El objetivo del PaqueteMeteorologia es el analisis de dataset de datos
de estaciones meteorologicas.

## Instalacion

Puedes instalar el PaqueteMeteorologia desde
[GitHub](https://github.com/) con:

``` r
# install.packages("pak")
pak::pak("marcosziadi/PaqueteMeteorologia")
```

## Ejemplo de uso del paquete:

Este es un ejemplo basico de como puedes solucionar un problema comun:

``` r
library(PaqueteMeteorologia)
## basic example code
```

``` r
celsius_to_fahrenheit(3)
#> [1] 37.4
```

``` r
grafico_temperatura_mensual(estaciones_merged)
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%"/>

``` r
tabla_resumen_temperatura(estaciones_merged)
#> # A tibble: 5 × 4
#>   id     min_temp max_temp mean_temp
#>   <chr>     <dbl>    <dbl>     <dbl>
#> 1 NH0046    -0.25     34.6      17.3
#> 2 NH0098   -17.4      37.4      18.6
#> 3 NH0437     2.1      36.3      20.2
#> 4 NH0472     0.55     34.8      18.0
#> 5 NH0910     0        35.2      17.7
```

Para ver el uso de todas las funciones del paquete puede ingresar a la
siguiente pagina:
[PaqueteMeteorologia](https://marcosziadi.github.io/PaqueteMeteorologia/)

# Contribuciones al paquete

Si deseas realizar contribuciones al paquete debes ver el codigo de
contribucion:

<https://github.com/marcosziadi/PaqueteMeteorologia/blob/master/.github/CONTRIBUTING.md>

# Codigo de conducta

Este es nuestro codigo de conducta:

<https://github.com/marcosziadi/PaqueteMeteorologia/blob/master/CODE_OF_CONDUCT.md>

# Licencia

El paquete cuenta con licencia MIT.

<https://github.com/marcosziadi/PaqueteMeteorologia/blob/master/LICENSE.md>
