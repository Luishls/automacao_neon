Dado("que faça uma requisição para o endpoint Films") do
  @response = films.get_films
end

Então("os títulos devem ser retornados corretamente") do
  expect(@response.code).to eq 200
  expect(@response['count']).not_to be_nil
end