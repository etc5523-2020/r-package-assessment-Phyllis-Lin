## code to prepare `tidy` dataset goes here
library(tidyverse)
library(coronavirus)
data("coronavirus")

tidy <- coronavirus %>%
  group_by(type, date, country) %>%
  summarise(total_cases = sum(cases)) %>%
  arrange(date)  %>%
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

usethis::use_data(tidy, overwrite = TRUE)

