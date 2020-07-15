#' Function that returns the user interface of the app
#' @export
get_ui <- function() {
  shiny::fluidPage(
    shiny::fluidRow(shiny::textOutput("text")),
    shiny::br(),
    shiny::fluidRow(
      shiny::column(10, shiny::textInput("feedback", label = NULL)
      ),
      shiny::column(2,  shiny::actionButton("go", label = "Go!")
      )
    )
  )
}
