server <- function(input, output) {

  output$text <- renderText({
    "The moon is shining and the wulf is howling."
  })

  output$debug_text <- renderPrint({
    reactiveValuesToList(input)
  })
}
