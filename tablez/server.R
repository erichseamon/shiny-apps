library(shiny)
library(datasets)

# Define server logic required to summarize and view the 
# selected dataset
function(input, output) {
  
  # Return the requested dataset
  datasetInput <- reactive({
    switch(input$dataset,
           "rock" = rock,
           "pressure" = pressure,
           "cars" = cars)
  })
  
  # Generate a summary of the dataset
  output$summary <- renderPrint({
    dataset <- datasetInput()
    summary(dataset)
  })
  
  # Show the first "n" observations
  output$view <- renderTable({
    head(datasetInput(), n = input$obs)
  })


output$datasetcontrols <- renderUI({

   i <- paste(input$dataset, sep="")
   yeardir <- paste("/waf/results/", sep="")

   setwd(yeardir)
   DT2 <- list.files(path = "/waf/results") 
   uf2 <- as.data.frame( DT2 )

  selectizeInput("county", "Choose a dataset", uf2[,1], choices = as.vector(uf2[,1]), selected = "2001_2015_palouse_summary", multiple = FALSE)

})





output$ycontrols <- renderUI({

   i <- paste(input$dataset, sep="")
   yeardir <- paste("/waf/results/", sep="")

   setwd(yeardir)
   x <- as.data.frame(read.csv(i, strip.white = TRUE))
   DT <- data.table(x)
   DT2 <- colnames(DT)
   #uniquez <<- list.files(paste("/dmine/data/USDA/agmesh-scenarios/", input$state, "/month_positive/", sep=""))
   #elems <- unlist( strsplit( uniquez, "\\." ) )
   #uf2 <- matrix( elems , ncol = 4 , byrow = TRUE )
   uf2 <- as.data.frame( DT2 )

  selectizeInput("county", "Choose your X variable", uf2[,1], choices = as.vector(uf2[,1]), selected = "bi", multiple = FALSE)

})




output$xcontrols <- renderUI({

   i <- paste(input$dataset, sep="")
   yeardir <- paste("/waf/results/", sep="")

   setwd(yeardir)
   x <- as.data.frame(read.csv(i, strip.white = TRUE))
   DT <- data.table(x)
   DT2 <- colnames(DT)
   #uniquez <<- list.files(paste("/dmine/data/USDA/agmesh-scenarios/", input$state, "/month_positive/", sep=""))
   #elems <- unlist( strsplit( uniquez, "\\." ) )
   #uf2 <- matrix( elems , ncol = 4 , byrow = TRUE )
   uf2 <- as.data.frame( DT2 )

  selectizeInput("county", "Choose your X variable", uf2[,1], choices = as.vector(uf2[,1]), selected = "bi", multiple = FALSE)

})














}
