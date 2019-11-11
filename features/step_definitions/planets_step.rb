Dado("que faça uma requisição para o endpoint Planets") do
  @response_getcount = planets.get_planets
end

Dado("armazenar o valor do campo {string}") do |string|
  @count = @response_getcount['count'].to_i
end

Quando("realizar uma nova requisição para o endpoint enviando um valor maior que o campo count") do
  @response = planets.get_planets(@count) 
end

Então("a API deve retornar a mensagem {string} com status code {int}") do |mensagem, status_code|
  expect(@response.code).to eq status_code
  expect(@response['detail']).to eq mensagem
end