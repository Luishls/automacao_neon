Dado("que o endpoint films.get esteja disponível") do
  @films = Films.new
end

Quando("realizar uma requisição para o endpoint films.get") do
  @response = @films.get_films
end

Então("os títulos devem ser retornados corretamente") do
  puts @response
  expect(@response.code).to eq 200
end