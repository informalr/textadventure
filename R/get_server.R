#' Function that returns the server part of the app
#' @param input something
#' @param output something
#' @param session something
#' @export
get_server <- function(input, output, session) {

  values <- reactiveValues(current_room = "outside",
                           is_door_open = FALSE)

  observeEvent(input$go, {
    if (values$current_room == "outside" & input$feedback == "Go inside") {
      values$current_room <- "inside"
    } else if (values$current_room == "inside" &
               input$feedback == "Go outside") {
      values$current_room <- "outside"
    }
  })

  output$text <- shiny::renderText({
    textadventure::get_room_text(values$current_room, values$is_door_open)
  })
}
