library(shiny)
library("shinydashboard")

dashboardPage(
    dashboardHeader(),
    dashboardSidebar(),
    dashboardBody()
)

shinyUI(
    fixedPage(
        column(
            width = 10,
            offset = 1,
            span(titlePanel("Data Science Capstone Project: Text Prediction"), style = "color:blue"),
            wellPanel("Text prediction is a common function on mobile devices and other applications.
                      As the user types a word or phrase then hits Predict, an auto-completion function presents that
                      user with possible completions to the current word being
                      typed or probable words that could follow the current word
                      or phrase after it is typed. This app
                      provides predictions based on entire words and phrases. Good examples include Happy or Happy New or Merry, all of which quickly result in accurate prediction of common phrases.
                      Once a phrase is entered and a prediction made, the app will update the prediction based on changes to the phrase."),
            fixedRow(
                sidebarPanel(
                    span(h4(
                        textInput(
                            "phrase",
                            "Text Input: (enter the words at the beginning of a phrase)",
                            value = ""
                        )),
                        actionButton("predictButton", "Predict")
                    )
                ),
                mainPanel(
                    span(h2(strong("Text entered:")), style = "color:blue"),
                    h3(textOutput("phrase")),
                    span(h2(strong("Prediction:")), style = "color:blue"),
                    h3(textOutput("word"))
                )
            ),
            tabsetPanel(
                tabPanel(
                    "State of the project",
                    br(),
                    includeHTML("report.html")
                )))
                #tabPanel(
                    #"wordprediction Package",
                    #br(),
                    #includeHTML("wordprediction.html")
                )
                #tabPanel(
                    #"ui.R",
                    #br(),
                    #$includeHTML("ui.html")
                )
                #tabPanel(
                    #"server.R",
                    #br(),
                    #includeHTML("server.html")




