#' Run the Shiny Application
#' 
#' @param mytibble the tibble to be explored
#' @export
#' @importFrom shiny shinyApp
#' @importFrom golem with_golem_options
run_app <- function(mytibble = tibble()) {
  with_golem_options(
    app = shinyApp(ui = app_ui, server = app_server), 
    golem_opts = list(mytibble = mytibble)
  )
}
