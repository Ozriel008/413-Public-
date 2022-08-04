#2 good instences of reactivity and tabs


#all of these Ad libs or mad libs come form https://www.thewordfinder.com/wordlibs/
#go to this page to see the mad libs i am copying from 

library(tidyverse)#loading the libraries    
library(shiny)

ui <- fluidPage(#making the ui
  titlePanel("What story do you want to read?"),#the title of the App
  mainPanel(
    tabsetPanel(type = "tab", 
                tabPanel("GOING TO THE MOVIES",#first tab
                         textInput("A", "Name 1?"),#The mad lib inputs
                         textInput("B", "Name 2?"),
                         textInput("C", "Movie?"),
                         textInput("D", "Abjective?"),
                         textInput("E", "Verb?"),# verb ending in ed
                         textInput("f", "Noun?"),
                         textInput("G", "Candy?"),
                         textInput("H", "Food?"),
                         textInput("I", "Verb?"),
                         textInput("J", "Verb?"),
                         textInput("K", "Verb?"),
                         textInput("L", "Abjective?"),
                         textInput("M", "Abjective?"),
                         textInput("N", "Abjective?"),
                         textInput("O", "Abjective?"),
                         textOutput("GTTM")),
                
                tabPanel("A CONCERT REVIEW",#second tab
                         textInput("A", "Give me a male name?"),
                         textInput("B", "Who  was your favorite teachur?"),#the madlib inputs
                         textInput("C", "Give me an exclamation!"),
                         textInput("D", "What number are you thinking of?"),
                         textInput("E", "Store name?"),
                         textInput("F", "What body part are you thinking of?"),
                         textInput("G", "Can you give me a silly word?"),
                         textInput("H", "Give me a holliday?"),
                         textInput("I", "What movie title are you thinking of?"),
                         textInput("J", "Verb ending in Ing?"),
                         textInput("K", "Amount of distance?"),
                         textInput("L", "Country?"),
                         textInput("M", "Animal?"),
                         textInput("N", "Movie quote?"),
                         textInput("O", "Body part?"),
                         textInput("P", "Childrens song?"),
                         textInput("Q", "Adjective?"),
                         textOutput("ACR")),
                
                tabPanel("HOW TO DO LAUNDRY",#third tab
                         textInput("A", "Give me a male name?"),#third tab inputs
                         textInput("B", "Who  was your favorite teachur?"),
                         textInput("C", "Give me an exclamation!"),
                         textInput("D", "What number are you thinking of?"),
                         textInput("E", "Store name?"),
                         textInput("F", "What body part are you thinking of?"),
                         textInput("G", "Can you give me a silly word?"),
                         textInput("H", "Give me a holliday?"),
                         textInput("I", "What movie title are you thinking of?"),
                         textInput("J", "Verb ending in Ing?"),
                         textInput("K", "Amount of distance?"),
                         textInput("L", "Country?"),
                         textInput("M", "Animal?"),
                         textInput("N", "Movie quote?"),
                         textInput("O", "Body part?"),
                         textInput("P", "Childrens song?"),
                         textInput("Q", "Adjective?"),
                         textOutput("HTDL")),
               
      )
    )
  )


server <- function(input, output, session) {
  output$GTTM <- renderText({#the first tab mad lib output
    paste("I went to the movies yesterday with", #the text ariung the madlib text input goes here
          input$A, # the answer to tab one input a goes here
          "and",  #together these make a story
          input$B,
          ". We saw",
          input$C,
          ". It was",
          input$D,
          ". At one part, I even",
          input$E,
          " and ran for the",
          input$f,
          ". During the move, we ate",
          input$G,
          "and",
          input$H,
          ". I got mad because the person sitting behind me kept",
          input$I,
          " during the movie and wouldn't stop",
          input$J,
          ". He was asked to leave after he",
          input$K,
          " across the theatre. It was pretty" ,
          input$L,
          ". Overall, I liked the movie because it was",
          input$M,
          " and the main character was super ",
          input$N,
          ". Hopefully next time the people sitting behind me will be more ",
          input$O,
          "."

          )
  })
  output$ACR <- renderText({#This second output needs clean up
    paste("Throughout last night's ",
          input$A, 
          ", the cheering for the performance of Pearl",
          INPUT$B,
          "was so deafening, you had to hold your",
          SALT # if you want to help you can go through tab 2-3 and clean up the output code
          #replace all the Chapatal words with input$(insert apropriate number)
    over your SEAFOOD
    . Many well-known BELT
    are calling it the ADHESIVE
    concert of the decade. For their opening number, the band played their hit song, "," followed by their OCEANIC
    rendition of "I Can't Get No DISTANCE
    ." Then, as a tribute to the Beatles, they played several WOODLAND
    from the hit album, Sergeant Pepper's Lonely INPUT$J
    Club Band. Unfortunately, throughout the performance, lead singer INPUT$K
    moved about the stage like a caged INPUT$L
    , singing at the top of his/her ATTIC
    , giving this critic a terrible INPUT$N
    ache. However, the concert ended with the audience standing on their APPARATUS
    and applauding EMBARRASS
    , forcing the group to come back for three STAY
    before the OSMOSIS
    finally came down.)
  })
  output$HTDL <- renderText({#This third output needs clean up
    paste("", input$A, ""
    In order to do your laundry, first you have to WATCH
    your clothes. Then you have KEPT
    the CHEETAH
    machine. Take your time not to DISAPPEAR
    any items that may be gross. Separate your PRODUCER
    from your HOOF
    and then load the ARCHEOLOGY
    machine. Make sure not to mix the INPUT$H
    with the INPUT$I
    . Set temperature to INPUT$J
    and begin the cycle. After that is finished, SUMMARIZE
    your clothes and FOLLOW
    them in the dryer. Set the temperature and CLASSIFY
    the dryer. After about INPUT$N
    minutes, it should be complete! Now all you have to do is EXTEND
    your clothes and you are all set! FEIGNED
    laundry!)
  })
}

shinyApp(ui = ui, server = server)# this creates the app

























































































































































































