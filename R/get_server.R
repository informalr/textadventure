#' Function that returns the server part of the app
#' @param input something
#' @param output something
#' @param session something
#' @export
get_server <- function(input, output, session) {

  observeEvent(input$go, {
    if (room_description == "outside" & input$feedback == "Go inside") {
      room_description <- "inside"
    } else if (room_description == "inside" & input$feedback == "Go outside") {
      room_description <- "outside"
    }
    message(room_description)
  })

  output$text <- shiny::renderText({
    textadventure::get_room_text()
  })

  output$debug_text <- shiny::renderPrint({
    shiny::reactiveValuesToList(input)
  })
}
