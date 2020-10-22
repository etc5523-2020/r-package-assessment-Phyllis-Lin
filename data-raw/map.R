## code to prepare `map` dataset goes here

library(tidyverse)
library(coronavirus)
data("coronavirus")
map <- coronavirus %>% 
  filter(country%in%c("China",  
                      "US",
                      "Italy",
                      "Spain",
                      "Belgium",
                      "India",
                      "Japan",
                      "United Kingdom",
                      "Australia",
                      "Germany"))%>%  # select 10 main countries in coronavirus 
  group_by(type,date,country,cases, province,long,lat) %>%
  summarise() 



usethis::use_data(map, overwrite = TRUE)
