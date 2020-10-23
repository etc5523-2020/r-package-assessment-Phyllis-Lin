#' Select RadioButton type
#' 
#' 
#' @description  This function builds a radioButton to select the type of cases
#' 
#' 
#' @importFrom shiny radioButtons
#' 
#' @param inputId The id will access the output from server
#' @param lable The inpt name 
#' @param choices Three type of the cases 
#' 
#' @return 
#' 
#'
#' @export
 
radio_input  <- function(inputId, label, choices) {
  radioButtons(inputId,
               label = label,
               choices = c("confirmed",
                                "death",
                                "recovered"), 
               selected = "confirmed"
  )
}
     