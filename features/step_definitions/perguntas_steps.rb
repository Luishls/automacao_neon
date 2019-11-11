Dado("que eu esteja na página de perguntas") do
  @home = Home.new
  @home.acessar_site_neon
  @home.click_perguntas_header
end
  
Quando("expandir a pergunta {string}") do |pergunta|
  @perguntas_page = Perguntas.new
  @perguntas_page.expandir_pergunta(pergunta)
end
  
Então("deve exibir a resposta {string}") do |resposta|
  expect(@perguntas_page.resposta_tela).to eq resposta
end