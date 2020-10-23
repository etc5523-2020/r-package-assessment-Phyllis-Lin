
# Define UI

ui <- 
  # Navbar structure for UI
  dashboardPage(
    dashboardHeader(title = "COVID-19 Exploration"),
           dashboardSidebar(
             sidebarMenu(
               # menuItem("Plot", tabName = "Plot", icon = icon("chart-bar")),
               # menuItem("Map", tabName = "Map",icon = icon("globe-americas")),
               # menuItem("Table", tabName = "Table",  icon = icon("table") ),
               # menuItem("About", tabName = "About",icon = icon("question-circle"))
               menu("Plot", "Plot", "chart-bar"),
               menu("Map", "Map","globe-americas"),
               menu("Table", "Table", "table"),
               menu("About", "About", "question-circle")
               )
             ),
    # Body content
    dashboardBody(
        # Also add some custom CSS to make the title background area the same
        # color as the rest of the header.
        tags$head(tags$style(HTML('
        /* logo */
        .skin-blue .main-header .logo {
                              background-color:#F06292;
                              }

        /* logo when hovered */
        .skin-blue .main-header .logo:hover {
                              background-color: #FFEBEE ;
                              }

        /* navbar (rest of the header) */
        .skin-blue .main-header .navbar {
                              background-color: #FFEBEE ;
                              }        

        /* main sidebar */
        .skin-blue .main-sidebar {
                              background-color:#FFEBEE ;
                              }

        /* active selected tab in the sidebarmenu */
        .skin-blue .main-sidebar .sidebar .sidebar-menu .active a{
                              background-color: #FFCDD2  ;
                              }

        /* other links in the sidebarmenu */
        .skin-blue .main-sidebar .sidebar .sidebar-menu a{
                              background-color:#FFEBEE ;
                              color: #000000;
                              }

        /* other links in the sidebarmenu when hovered */
         .skin-blue .main-sidebar .sidebar .sidebar-menu a:hover{
                              background-color:#FFEBEE   ;
                              }
        /* toggle button when hovered  */                    
         .skin-blue .main-header .navbar .sidebar-toggle:hover{
                              background-color: #FFEBEE   ;
                              }
                              '))),
      
      tabItems(
         # First tab content
        tabItem(tabName = "Map",
                fluidRow( 
                  column(width = 12,
                  box( width = NULL, solidHeader = TRUE,  
                      leafletOutput("map"),height = 500)),
                  
                  # Select which type of cases to map 
                 box(title = "Worldwide visualization of COVID-19",
                   # radioButtons("Type1", "Type:",
                   #             c("confirmed",
                   #               "death",
                   #               "recovered"),
                   #             selected = "confirmed"),
                  radio_input("Type1","Type", choices),
                  
                  
                  # date input for choose date
                  dateInput("Date", 
                            "Please choose date:",
                            min = as.Date(min(map$date)),
                            max = as.Date(max(map$date))
                                         
                  )),
                )
        ),
        
        # Second tab content
        tabItem(tabName = "Plot",
                fluidRow(
                  box(title = "Histogram", solidHeader = TRUE,
                    plotlyOutput("plot"),
              verbatimTextOutput("number")),
                  box(title = "Growth trend comparisons" ,
                    # select cases type
                    # selectInput("Type2", "Type:",
                    #             c("confirmed",
                    #               "death",
                    #               "recovered"),
                    #             selected = "confirmed"),
                    # helpText("Select cases type to create plot"),
                    radio_input("Type2","Type", choices),
                    hr(),
                    # date range input 
                    dateRangeInput("Daterange", 
                                   "Please choose date range:",
                                   start = as.Date(min(coun$date)),
                                   end = as.Date(max(coun$date)),
                                   min = as.Date(min(coun$date)),
                                   max = as.Date(max(coun$date))),
                    helpText("Note: date range only available from 2020-01-22 to 2020-07-31"),
                    # Check box input for chosen countries
                    checkboxGroupInput("Country","Please choose one or multiple countries",
                                       choices = c("China",
                                                   "US",
                                                   "Italy",
                                                   "Spain",
                                                   "Belgium",
                                                   "Korean",
                                                   "Japan",
                                                   "England",
                                                   "Australia"),
                                       selected = "China")))
                ),
        
        # Third tab content
        tabItem(tabName = "Table",
                fluidRow(
                  box(width = NULL, solidHeader = TRUE,
                    DT::dataTableOutput(outputId = "table")),
                  box(
                    title = "Table",
                    # Select table country
                    selectInput("country",
                                "Country:",
                                c("All",
                                  unique(as.character(tidy$country))),
                                selected = "China"),
                    selectInput("caseType",
                                "Cases Type:",
                                c("All",
                                  unique(as.character(tidy$type)))),
                    selected = "confirmed"))
                ),
                    
          # Fourth tab content
        tabItem(tabName = "About",       
                fluidRow( 
                  column(6,
                         #br(),
                         h4(p("About the Project")),
                         h5(p("This project is intended to explore covid-19 cases of confirmed, death and recovered in 10 main countries around the world.")),
                         h5(p("The project began as an attempt to compare difference type of cases in 10 countries through difference date range. The second one is use map to have a better visualisation in a particular day in difference type cases. The radius represented the number of the cases, the bigger, there were more cases.  For the last one is the DT table that can have a better understanding of each countries difference type and exact day cases. ")),
      
                         h5(p("I hope you find it interesting and/or useful.")),
                         p("The source code for this Shiny app is available ", a("on github", href = "https://github.com/etc5523-2020/shiny-assessment-Phyllis-Lin.git"), "."),
                         #hr()),
                                hr(),
                                h5("Sources:"),
                                h6(
                                  p("data source from R package Coronavirus",
                                    a("coronavirus",
                                      href = "https://github.com/RamiKrispin/coronavirus"))),
                                h5("Built with",
                                   img(src = "https://www.rstudio.com/wp-content/uploads/2014/04/shiny.png", height = "30px"),
                                   "by",
                                   img(src = "https://www.rstudio.com/wp-content/uploads/2014/07/RStudio-Logo-Blue-Gray.png", height = "30px"),
                                   ".")
                                
                              
                         )
                  )
                )
        )
        
        
        
        
    
))


  

       
                






















