#' Function that starts the app
#' @export

start_app <- function() {
  shinyApp(ui = ui, server = server)
}
