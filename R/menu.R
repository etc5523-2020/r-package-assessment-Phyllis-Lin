#' SHiny Dashboard Menu
#'
#' @description Add menu and icon in the sidebar menu
#'
#' @import shinydashboard
#' 
#'
#' @param id Name of the menu
#' @param tab Tab name of the menu
#' @param name The icon name from Frontawsome
#'
#'
#' @source Icon you would like to choose can be found here: 
#' <https://fontawesome.com/icons?d=gallery&q=covid-19&m=free>
#'
#' @export
   menu <- function(id, tab, name){
                menuItem(id, tabName = tab, icon = icon(name))
                         
                         }