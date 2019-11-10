#language: pt

@status_neon
Funcionalidade: Validar status dos serviços da Neon
Eu como usuário
Quero acessar a página de status
Para validar que os serviços estão funcionando

  Cenário: Validar status do serviço Ativação de cartão
    Dado que esteja na página de de Status Neon
    Então o serviço "Ativação de cartão" deve estar funcionando corretamente