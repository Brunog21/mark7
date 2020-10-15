#language:pt
Funcionalidade: Cadastro de usúarios
  Sendo um visitante
  Posso fazer meu Cadastro
  Para poder gerenciar minhas tarefas

    Contexto: Formulario
    Dado que esteja no formulario de cadastro 
    
      @spring1 @logout 
    Cenário: Cadastro Simples
    Quando faço cadastro com "Fernando", "fernando334444@qaninja.net" e "123456"
    Então vejo a mensagem "Olá, Fernando"
                    
              @spring2
     Esquema do Cenario: Campos obrigatórios 
        Quando faço cadastro com "<nome>", "<email>" e "<senha>"
        Então vejo a mensagem '<saida>'
        Exemplos: 
            |nome        |email                  |senha         |saida                   |
            |            |fernando@qaninja.net   |123456        |Nome é obrigatório.     |
            |Fernando    |                       |123456        |Email é obrigatório.    |
            |Fernando    |fernando@qaninja.net   |              |Informe uma senha.      |

        