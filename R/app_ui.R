#' @import shiny
#' @import shinydashboard
app_ui <- function() {
  dashboardPage(
    dashboardHeader(title = "Tibble Explorer"),
    dashboardSidebar(sidebarMenu(
      menuItem("Overview", tabName = "overview", icon = icon("dashboard")),
      menuItem("Categorical Features", tabName = "categorical",
               icon = icon("chart-bar")),
      menuItem("Numerical Features", tabName = "numerical",
               icon = icon("chart-area")),
      menuItem("DateTime Features", tabName = "datetime",
               icon = icon("hourglass-end")),
      menuItem("Character Features", tabName = "character",
               icon = icon("amilia"))
    )),
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
