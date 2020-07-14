#' Function that returns the user interface of the app
#' @export
get_ui <- function() {
  fluidPage(
    fluidRow(textOutput("text")),
    fluidRow(
      column(10, textInput("answer", label = NULL)
      ),
      column(2,  actionButton("OK", label = "OK")
      )
    ),
    hr(),
    fluidRow(verbatimTextOutput("debug_text"))
  )
}
