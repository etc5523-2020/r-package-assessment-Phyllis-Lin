#' Server leaflet map
#' 
#' 
#' @description  This function builds leaflet map
#' 
#' @import  leaflet
#' @importFrom magrittr %>%
#' @import tidyverse
#' 
#' @param data Data set choose for map
#' @param type_choose The type choose
#' @param date_choose The input date
#'    
#' @return 
#' 
#'
#'
#' @export

leaf_output <- function(data, type_choose, date_choose){
     data %>% filter(type == type_choose,   # apply the type input
                 date == date_choose) %>%   #apply the chosen date input
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
}