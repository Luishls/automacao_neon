class Perguntas < SitePrism::Page
  
  def expandir_pergunta(pergunta)
    @pergunta = pergunta
    find(:xpath, "//h4[contains(text(), '#{pergunta}')]").click
  end
  
  def validar_resposta(resposta_esperada)
    find(:xpath, "//h4[contains(text(), '#{@pergunta}')]//ancestor::li//p").to_eql? resposta_esperada
  end