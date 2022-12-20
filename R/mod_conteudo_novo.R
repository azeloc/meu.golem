#' conteudo_novo UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_conteudo_novo_ui <- function(id){
  ns <- NS(id)
  tagList(
    h1("Conteúdo novo"),
    sliderInput(ns("segundo_input"), min = 0, max = 10, value = 5, label = "selecione um valor"),


    textOutput(ns("valor_selecionado_2"))
  )
}

#' conteudo_novo Server Functions
#'
#' @noRd
mod_conteudo_novo_server <- function(id){

  moduleServer( id, function(input, output, session){
    ns <- session$ns

    output$valor_selecionado_2 <- renderText(
      paste0(c("o valor que você selecionou foi ", input$segundo_input))
    )

  })
}



## To be copied in the UI
# mod_conteudo_novo_ui("conteudo_novo_1")

## To be copied in the server
# mod_conteudo_novo_server("conteudo_novo_1")
