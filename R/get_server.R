#' Function that returns the server part of the app
#' @param input something
#' @param output something
#' @param session something
#' @export
get_server <- function(input, output, session) {

  room_text <- shiny::eventReactive(input$go, {
     if (room_description == "outside" & input$feedback == "Go inside") {
       assign("room_description", "inside", envir = .GlobalEnv)
       return(textadventure::get_room_text())
     } else if (room_description == "inside" & input$feedback == "Go outside") {
       assign("room_description", "outside", envir = .GlobalEnv)
       return(textadventure::get_room_text())
     }
  })

  output$text <- shiny::renderText({
    room_text()
  })

  output$debug_text <- shiny::renderPrint({
    shiny::reactiveValuesToList(input)
  })
}
