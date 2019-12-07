# Module UI
  
#' @title   tibble_overvie_module_ui and tibble_overview_module_server
#' @description  present overview statistics about given tibble
#'
#' @param id shiny id
#' @param input internal
#' @param output internal
#' @param session internal
#'
#' @rdname tibble_overview_module
#'
#' @keywords internal
#' @export 
#' @importFrom shiny NS tagList 
tibble_overview_module_ui <- function(id){
  ns <- NS(id)
  tagList(
    # Boxes need to be put in a row (or column)
    fluidRow(
      box(plotOutput(ns("plot1"), height = 250)),
      box(
        title = "Controls",
        sliderInput(ns("slider"), "Number of observations:", 1, 100, 50)
      )
    )
  )
}
    
# Module Server
    
#' @rdname tibble_overview_module
#' @export
#' @keywords internal
    
tibble_overview_server <- function(input, output, session){
  set.seed(122)
  histdata <- rnorm(500)
  
  output$plot1 <- renderPlot({
    data <- histdata[seq_len(input$slider)]
    hist(data)
  })
}