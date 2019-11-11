#language: pt

@planets
Funcionalidade: Validar API Planets
  Eu como usuário
  Quero fazer requisições para a API Planets
  Para validar os retornos do endpoint

  Cenário: Validar requisição da API passando um valor maior que o do campo Count
    Dado que faça uma requisição para o endpoint Planets
    E armazenar o valor do campo "count"
    Quando realizar uma nova requisição para o endpoint enviando um valor maior que o campo count
    Então a API deve retornar a mensagem "Not found" com status code 404