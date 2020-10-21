## code to prepare `coun` dataset goes here
library(tidyverse)
library(coronavirus)
data("coronavirus")

coun <- coronavirus %>% 
  group_by(type, date, country) %>%  # group coronavirus by type, date, country 
  summarise(total_cases = sum(cases)) %>% # sum the cases after grouping
  pivot_wider(names_from = type, values_from = total_cases) %>% # change the table type into wider
  arrange(date) %>% # arrange the date from early to latest
  filter(country %in% c("China",
                        "US",
                        "Italy",
                        "Spain",
                        "Belgium",
                        "Korean",
                        "Japan",
                        "England",
                        "Australia",
                        "Germany"))


usethis::use_data(coun, overwrite = TRUE)
