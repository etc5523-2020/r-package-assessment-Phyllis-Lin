# Load the library
library(shiny)
library(ggplot2)
library(plotly)
library(tidyverse)
library(tidyr)
library(shinydashboard)
library(leaflet)
library(shinythemes)
library(rdrop2)
library(shinycssloaders)

# Import data

map <- read.csv("map.csv") %>%
 as.data.frame()

tidy <- read.csv("type.csv")%>%
  dplyr::select(-X) %>%
  as.data.frame()

coun <- read.csv("coun.csv") %>%
  as.data.frame()


