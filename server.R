library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(shinyWidgets)
library(dashboardthemes)


# Define server logic required to draw a histogram
shinyServer(function(input, output){
  
  output$page_ui = renderUI({
    
    file.remove(list.files(pattern = "temp"))
    
    fluidRow(style = "margin-top: 20px", 
      
      tags$h3(paste0("Search Result for: ", input$search_keyword)),
      box(HTML(crawling_xvideo(keyword = input$search_keyword)[1]),
          HTML(crawling_xvideo(keyword = input$search_keyword)[2]),
          HTML(crawling_xvideo(keyword = input$search_keyword)[3]),
          width = "auto", height = "auto",
          collapsible = FALSE,
          status = "primary", solidHeader = TRUE),
      
      box(HTML(crawling_xvideo(keyword = input$search_keyword)[4]),
          HTML(crawling_xvideo(keyword = input$search_keyword)[5]),
          HTML(crawling_xvideo(keyword = input$search_keyword)[6]),
          width = "auto", height = "auto",
          collapsible = FALSE,
          status = "warning", solidHeader = TRUE),
      
      box(HTML(crawling_xvideo(keyword = input$search_keyword)[7]),
          HTML(crawling_xvideo(keyword = input$search_keyword)[8]),
          HTML(crawling_xvideo(keyword = input$search_keyword)[9]),
          width = "auto", height = "auto",        
          collapsible = FALSE,
          status = "success", solidHeader = TRUE),
      
      box(HTML(crawling_xvideo(keyword = input$search_keyword)[10]),
          HTML(crawling_xvideo(keyword = input$search_keyword)[11]),
          HTML(crawling_xvideo(keyword = input$search_keyword)[12]),
          width = "auto", height = "auto",        
          collapsible = FALSE,
          status = "success", solidHeader = TRUE),
      
      box(HTML(crawling_xvideo(keyword = input$search_keyword)[13]),
          HTML(crawling_xvideo(keyword = input$search_keyword)[14]),
          HTML(crawling_xvideo(keyword = input$search_keyword)[15]),
          width = "auto", height = "auto",        
          collapsible = FALSE,
          status = "success", solidHeader = TRUE),
      
      box(HTML(crawling_xvideo(keyword = input$search_keyword)[16]),
          HTML(crawling_xvideo(keyword = input$search_keyword)[17]),
          HTML(crawling_xvideo(keyword = input$search_keyword)[18]),
          width = "auto", height = "auto",        
          collapsible = FALSE,
          status = "success", solidHeader = TRUE),
      
      box(HTML(crawling_xvideo(keyword = input$search_keyword)[19]),
          HTML(crawling_xvideo(keyword = input$search_keyword)[20]),
          HTML(crawling_xvideo(keyword = input$search_keyword)[21]),
          width = "auto", height = "auto",        
          collapsible = FALSE,
          status = "success", solidHeader = TRUE),
      
      box(HTML(crawling_xvideo(keyword = input$search_keyword)[22]),
          HTML(crawling_xvideo(keyword = input$search_keyword)[23]),
          HTML(crawling_xvideo(keyword = input$search_keyword)[24]),
          width = "auto", height = "auto",        
          collapsible = FALSE,
          status = "success", solidHeader = TRUE),
      
      box(HTML(crawling_xvideo(keyword = input$search_keyword)[25]),
          HTML(crawling_xvideo(keyword = input$search_keyword)[26]),
          HTML(crawling_xvideo(keyword = input$search_keyword)[27]),
          width = "auto", height = "auto",        
          collapsible = FALSE,
          status = "success", solidHeader = TRUE)
      
    )
    
  })
  
})
