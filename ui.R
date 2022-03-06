navbarPage("{ggplot2} Examples",
     tags$head(
       tags$link(rel = "stylesheet", type = "text/css", href = "style.css")
     ),
     theme = shinytheme("united"),
     position = c("fixed-top"),
     # Home
     tabPanel("Home",
              includeHTML("home.html")
              ),
    # Plots
     navbarMenu("Building Plots",
                tabPanel("Distributions",
                        includeHTML("plots/distribution/distribution.html"),
                        fluidRow(
                            radioGroupButtons(
                              inputId = "dist_plot_type",
                              label = "",
                              choices = c("Density plot" = "density",
                                          "Histogram" = "histogram",
                                          "Box plot" = "boxplot",
                                          "Violin plot" = "violin"),
                              individual = T,
                              status = "primary"
                            ),
                            align = "center"
                        ),
                        uiOutput("dist_output")
                  ),
                tabPanel("Correlation",
                         includeHTML("plots/correlation/correlation.html"),
                         fluidRow(
                           radioGroupButtons(
                             inputId = "corr_plot_type",
                             label = "",
                             choices = c("Scatter plot" = "scatterplot",
                                         "Bubble plot" = "bubble"),
                             individual = T,
                             status = "primary"
                           ),
                           align = "center"
                         ),
                         uiOutput("corr_output")
                )#,
                #tabPanel("Composition"),
                #tabPanel("Changes"),
                #tabPanel("Maps")
      ),
     # Themes
     # navbarMenu("Adding Themes",
     #           tabPanel("{ggplot2} themes" ,
     #                    includeHTML("themes/ggplot2_themes.html")
     #                    ),
     #           tabPanel("Customising themes",
     #                    includeHTML("themes/custom_themes.html")
     #                    ),
     #           tabPanel("Theme packages")
     #          ),
     #FAQ
     tabPanel("FAQ",
              includeMarkdown("faq/faq.md")
              )
)





