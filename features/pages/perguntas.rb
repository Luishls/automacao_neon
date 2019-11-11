class Perguntas < SitePrism::Page

  def expandir_pergunta(pergunta)
    @pergunta = pergunta
    sleep 2
    page.execute_script("window.scrollBy(0, 250)", '')
    find(:xpath, "//h4[contains(text(), '#{pergunta}')]").click
  end
  
  def resposta_tela
    sleep 1
    resposta_obtida = find(:xpath, "//h4[contains(text(), '#{@pergunta}')]//ancestor::li[1]//p").text.gsub(/\n+\s*/m, ' ')
    resposta_obtida
  end
end