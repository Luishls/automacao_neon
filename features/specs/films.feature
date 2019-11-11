#language: pt

@films
Funcionalidade: Validar API Films
  Eu como usuário
  Quero fazer requisições para a API Films
  Para validar os retornos do endpoint

  Cenário: Validar os títulos exibidos pela API films
    Dado que faça uma requisição para o endpoint Films
    Então os títulos devem ser retornados corretamente