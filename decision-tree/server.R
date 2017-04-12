source("/srv/shiny-server/gbm_example/external/serverHead.R", local = TRUE)
shinyServer(function(input, output, session) source("/srv/shiny-server/gbm_example/external/app.R", local=TRUE))
