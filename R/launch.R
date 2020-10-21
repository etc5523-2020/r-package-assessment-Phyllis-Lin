#' Launch Phyllis first shinyapp
#' 
#' 
#' @export
launch_app <- function() {
  appDir <- system.file("app", package = "phyllispkg")
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing `phyllispkg`.", call. = FALSE)
  }
  
  shiny::runApp(appDir, display.mode = "normal")
}


   