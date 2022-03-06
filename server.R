function(input, output, session) {

  output$dist_output <- renderUI({
    includeHTML(glue("plots/distribution/{input$dist_plot_type}.html"))
  })

  output$corr_output <- renderUI({
    includeHTML(glue("plots/correlation/{input$corr_plot_type}.html"))
  })

}


