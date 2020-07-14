#' Function that starts the app
#' @export

run_app <- function() {
  shiny::shinyApp(ui = get_ui, server = get_server)
}
