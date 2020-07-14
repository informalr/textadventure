ui <- fluidPage(
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
