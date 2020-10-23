server <- function(input, output, session) {
  observe({ 
    updateDateInput(session, "Date", value = as.Date(min(map$date)))
    
  })
  
  # output map
  
  output$map <- renderLeaflet({
  # map %>% filter(type == input$Type1,   # apply the type input
  #                date == input$Date)%>%   #apply the chosen date input
  #   leaflet() %>%   # add map
  #   addTiles() %>%
  #   addCircleMarkers(     # add circle Markers in map according the cases number
  #     lng          = ~long,
  #     lat          = ~lat,
  #     radius       = ~log(cases^2),
  #     stroke       = FALSE,
  #     color        =  "#BB4444",
  #     fillOpacity  = 0.5,
  #     label        = ~country,
  #     labelOptions = labelOptions(textsize = 15)
    leaf_output(map, type_choose = input$Type1, date_choose = input$Date)
  })
  
  
  # plot output 
  output$plot <- renderPlotly({
    plot <-  map %>% filter(type == input$Type2,
                            country == input$Country)%>%
      filter(date >= as.Date(input$Daterange[1]) &  # apply the date range chosen
               date <= as.Date(input$Daterange[2]))%>%
      ggplot(aes(x = date, y= cases, fill = country)) +
      geom_col() + 
      theme(axis.title.x=element_blank(), # clear x-ais as the date range have plenty of ovservations.
            axis.text.x=element_blank(),
            axis.ticks.x=element_blank())
    ggplotly(plot)
    
  })  
  output$number <- renderPrint({
    event_data("plotly_click")
  })
  
  
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    data <- tidy
    if (input$country != "All") {
      data <- data[data$country == input$country,]
    }
    if (input$caseType != "All") {
      data <- data[data$type == input$caseType,]
    }
    data
  }))
}


# Run the application
