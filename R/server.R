#' Function that returns the server part of the app
#' @export
get_server <- function(input, output, session) {
  output$text <- shiny::renderText({
    "The moon is shining and the wulf is howling."
  })

  output$debug_text <- shiny::renderPrint({
    shiny::reactiveValuesToList(input)
  })
}
