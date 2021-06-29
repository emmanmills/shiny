library(shiny)
library(SynapseReactClient)

ui <- fluidPage(
  titlePanel("reactR HTMLWidget Example"),
  SynapseReactClientOutput('widgetOutput')
)

server <- function(input, output, session) {
  output$widgetOutput <- renderSynapseReactClient(
    SynapseReactClient("Hello world!")
  )
}

shinyApp(ui, server)