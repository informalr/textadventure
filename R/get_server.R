#' Function that returns the server part of the app
#' @param input something
#' @param output something
#' @export
get_server <- function(input, output, session) {
  output$text <- shiny::renderText({
    textadventure::get_room_outside_text()
  })

  output$debug_text <- shiny::renderPrint({
    shiny::reactiveValuesToList(input)
  })
}
