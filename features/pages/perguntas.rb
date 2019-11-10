class Perguntas < SitePrism::Page

  def expandir_pergunta(pergunta)
    @pergunta = pergunta
    sleep 2
    page.execute_script("window.scrollBy(0, 250)", '')
    find(:xpath, "//h4[contains(text(), '#{pergunta}')]").click
  end
  
  def validar_resposta(resposta_esperada)
    sleep 1
    find(:xpath, "//h4[contains(text(), '#{@pergunta}')]//ancestor::li//p").eql?(resposta_esperada)
  end
end