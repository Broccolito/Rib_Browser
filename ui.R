library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(shinyWidgets)
library(dashboardthemes)

page_header = dashboardHeaderPlus(title = "Rib Browser",
 
                                  dropdownMenu(type = "notifications",
                                               notificationItem(
                                                 text = "Under MIT License",
                                                 icon("users")
                                               ),
                                               notificationItem(
                                                 text = "Feel Free to Download Results",
                                                 icon("truck"),
                                                 status = "success"
                                               ),
                                               notificationItem(
                                                 text = "Visit https://github.com/Broccolito",
                                                 icon = icon("truck"),
                                                 status = "success",
                                                 href = "https://github.com/Broccolito/Rib_Browser"
                                               )
                                  ),
                                  
                                  fixed = TRUE)

page_sidebar = dashboardSidebar(
  
  searchInput(
    inputId = "search_keyword", label = NULL,
    placeholder = "Keyword",
    btnSearch = icon("search"),
    btnReset = icon("remove"),
    width = "auto"
  )
  
)

page_body = dashboardBody(
  
  shinyDashboardThemes(
    theme = "grey_dark"
  ),
  
  fluidPage(uiOutput("page_ui"))
  
)

dashboardPagePlus(
  title = "Rib Browser",
  header = page_header,
  sidebar = page_sidebar,
  body = page_body
)