#' Covid-19 map 
#'
#' This data set contains longitude and latitude of 10 main countries and different type of cases number every day.
#'
#'
#' @format a tibble with 27072 observations and 7 variables
#'  - **type**: type of COVID-19 cases, confirmed, death, recovered
#'  - **date**: date from 2020-01-22 to 2020-07-31
#'  - **country**: 10 main countries, US, Australia, China, Italy, Belgium, Spain, Germany, Korean, Japan, England
#'  - **cases**: number of cases
#'  - **province**: province/ or state in some countires
#'  - **longitutde**: relative location longitutde
#'  - **latitude**: relative location latitude 
#'  
#'  
#' 
#'  
#' @source
#' The data are provided by the Johns Hopkins University Center for Systems Science and Engineering (JHU CSSE) and Rami Krispin and other 4 contributor provided a tidy format of the data as r package coronavirus.
"map"