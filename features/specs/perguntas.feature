#language: pt

@perguntas
Funcionalidade: Validar sessão de perguntas
Eu como usuário
Quero acessar a página de perguntas
Para validar as respectivas respostas

  Esquema do Cenário: Validar pergunta: A Neon é só um cartão
    Dado que eu esteja na página de perguntas
    Quando expandir a pergunta <pergunta>
    Então deve exibir a resposta <resposta>
    
    Exemplos:
        | pergunta                                     | resposta                                                                                                       | 
        | "Quanto tempo demora a análise de cadastro?" | "O nosso prazo de análise é de aproximadamente 5 dias úteis. Você será avisado por e-mail e também no app! =)" |
