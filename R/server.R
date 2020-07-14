#' Function that returns the server part of the app
#' @export
get_server <- function(input, output) {
  output$text <- renderText({
    "The moon is shining and the wulf is howling."
  })

  output$debug_text <- renderPrint({
    reactiveValuesToList(input)
  })
}
