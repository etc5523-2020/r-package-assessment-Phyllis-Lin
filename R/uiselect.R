#' Select date
#' 
#' 
#' @description  This function builds a date input to select the date
#' 
#' 
#' @param InputId The unqique id for user to interface the shiny app
#' @param date The date would like to select
#' 
#' @importFrom shiny radioButtons
#' 
#' @return 
#' 
#' @examples 
#' 
#'
#'
#' @export
  type_input <- function(inputid, type) {
    shiny::radioButtons(inputId = inputid, 
                        label = "Choose a type of cases number",
                        type,
                        choices = c("confirmed",
                         "death",
                         "recovered"),
                        selected = "confirmed")
  }
