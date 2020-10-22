
<!-- README.md is generated from README.Rmd. Please edit that file -->

# phyllispkg

<!-- badges: start -->

[![R build
status](https://github.com/etc5523-2020/r-package-assessment-Phyllis-Lin/workflows/R-CMD-check/badge.svg)](https://github.com/etc5523-2020/r-package-assessment-Phyllis-Lin/actions)
[![License:
MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

<!-- badges: end -->

The goal of phyllispkg is to …

## Installation

You can install the released version of phyllispkg from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("phyllispkg")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("etc5523-2020/r-package-assessment-Phyllis-Lin")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(phyllispkg)
library(leaflet)
library(tidyverse)
data("map")
## basic example code
map1 <- map %>% filter(date== "2020-04-10") %>%
   leaflet() %>%   # add map 
      addTiles() %>%  
      addCircleMarkers(     # add circle Markers in map according the cases number
        lng          = ~long,
        lat          = ~lat,
        radius       = ~log(cases^2),
        stroke       = FALSE,
        color        =  "#BB4444",
        fillOpacity  = 0.5,
        label        = ~country,
        labelOptions = labelOptions(textsize = 15))
```

<img src="man/figures/leafmap.png" width="100%" />
