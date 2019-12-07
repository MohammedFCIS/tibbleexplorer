#' @import shiny
#' @import shinydashboard
app_ui <- function() {
  dashboardPage(
    dashboardHeader(title = "Tibble Explorer"),
    dashboardSidebar(),
    dashboardBody(
      tibble_overview_module_ui("myoverview")
    )
  )
}

#' @import shiny
golem_add_external_resources <- function(){
  
  addResourcePath(
    'www', system.file('app/www', package = 'tibbleexplorer')
  )
 
  tags$head(
    golem::activate_js(),
    golem::favicon()
    # Add here all the external resources
    # If you have a custom.css in the inst/app/www
    # Or for example, you can add shinyalert::useShinyalert() here
    #tags$link(rel="stylesheet", type="text/css", href="www/custom.css")
  )
}