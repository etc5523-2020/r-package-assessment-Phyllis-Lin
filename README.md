
<!-- README.md is generated from README.Rmd. Please edit that file -->

# 🌸 phyllispkg <img src='man/Figures/phyllispkg.png' align="right" height="138.5" />

<!-- badges: start -->

[![R build
status](https://github.com/etc5523-2020/r-package-assessment-Phyllis-Lin/workflows/R-CMD-check/badge.svg)](https://github.com/etc5523-2020/r-package-assessment-Phyllis-Lin/actions)
[![License:
MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

<!-- badges: end -->

The goal of phyllispkg is to run phyllis shinyapp relative to COVID-19.
The data that was used for all visualizations are provided by the Johns
Hopkins University Center for Systems Science and Engineering (JHU CSSE)
who pulled their data on a public [Github
page](https://github.com/CSSEGISandData/COVID-19) and Rami Krispin and
other 4 contributor provided a tidy format of the data that named
[coronavirus](https://github.com/RamiKrispin/coronavirus). As the
dataset were too large that I only choose 10 main countries that have
severe outbreak and select the data from 22nd Jan to 31st Jul 2020. The
data set have 7 variables contained data, province in some countries,
longitude, latitude and cases number of three different types.

## 💻Installation

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

## 🌏Further explortation about the Shinyapp

For further exploration about the shinyapp, I wrote a post can be found
here [covidpost](https://peimin-lin-blog.netlify.app/post/blog-3/)

## 🖼Example

To launch the app:

``` r
library(phyllispkg)
launch_app()
```

<img src="man/Figures/plot.png" width="100%" />

## ⏩Exported Function

This is a basic example which shows you how to create a leaflet map:

``` r
library(phyllispkg)
data("map") ## data in package
leaf_output(type_choose = Type, date_choose = Date)
```

<img src="man/Figures/leafmap.png" width="100%" />
