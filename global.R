library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(shinyWidgets)
library(dashboardthemes)

gc()
rm(list = ls())

file.remove(list.files(pattern = "temp"))

source("crawling_xvideo.R")