#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic

  output$valor_selecionado <- renderText(
    paste0(c("o valor que voc\u00EA selecionou foi ", input$primeiro_input))
    #stringr::str_glue("o valor que voc\u00EA selecionou foi {input$primeiro_input}")
    )

  # Come\u00E7o do conte\u00FAdo novo

  mod_conteudo_novo_server("conteudo_novo_1")
}
