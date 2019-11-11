Dado("que faça uma requisição para o endpoint Films") do
  @response = films.get_films
end

Então("os títulos devem ser retornados corretamente") do
  puts @response
  expect(@response.code).to eq 200
end