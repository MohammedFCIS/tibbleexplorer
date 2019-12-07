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
#' @importFrom golem get_golem_options
tibble_overview_module_ui <- function(id){
  ns <- NS(id)
  tagList(
    # Boxes need to be put in a row (or column)
    fluidRow(
      valueBoxOutput(ns("observations_number")),
      valueBoxOutput(ns("features_number"))
    ),
    fluidRow(
      plotOutput(ns("feature_classes"))
    )
  )
}
    
# Module Server
    
#' @rdname tibble_overview_module
#' @export
#' @keywords internal
#' @importFrom purrr map_df
#' @importFrom  stringr str_to_sentence
#' @import ggplot2, plotly, dplyr
#'   
tibble_overview_server <- function(input, output, session){
  mytibble <- get_golem_options("mytibble")
  tibble_classes <- map(mytibble, class) %>%
    as_tibble() %>% 
    filter(row_number() == n()) %>% 
    gather("Feature", "Class") %>%
    mutate(Class = str_to_sentence(Class)) %>% 
    group_by(Class) %>% 
    summarise(n = n())
  output$observations_number <- renderValueBox(
    valueBox(
      nrow(mytibble),
      "Observations",
      icon("bars")
    )
  )
  output$features_number <- renderValueBox(
    valueBox(
      ncol(mytibble),
      "Features",
      icon("columns")
    )
  )
  output$feature_classes <- renderPlot(
    tibble_classes %>%
      ggplot(aes(x = Class, y = n, fill = Class)) +
      geom_bar(stat = "identity", alpha = .6) +
      xlab("") +
      ylab("Features Number") +
      theme_bw()
  )
}