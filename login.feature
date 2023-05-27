#langue: pt-br
#enconding: utf-8

Funcionalidade: Realizar login
    Como usuário do sistema X
    Eu desejo realizar o login
    Para acessar o sistema

Contexto: Acessar o site
    Dado que o usuário esteja na tela de login

    Cenário: login efetuado com sucesso
        E informe um e-mail válido no campo "E-mail"
        E informe uma senha válida no campo "Senha"
        Quando clicar no botão "acessar"
        Então deverá ser direcionado para a tela de "X"

    Cenário: Campo "E-mail" válido e campo "senha" inválida
        E informe um e-mail válido no campo "E-mail"
        E informe uma senha inválida no campo "Senha"
        Quando clicar no botão "acessar"
        Então deverá ser apresentado a seguinte mensagem de erro: "Senha inválida. Tente novamente."

    Cenário: Campo "E-mail" inválido e campo "senha" válida
        E informe um e-mail inválido no campo "E-mail"
        E informe uma senha válida no campo "Senha"
        Quando clicar no botão "acessar"
        Então deverá ser apresentado a seguinte mensagem de erro: "E-mail inválido. Tente novamente."

    Cenário: Campos inválidos
        E informe um e-mail inválido no campo "E-mail"
        E informe uma senha inválida no campo "Senha"
        Quando clicar no botão "acessar"
        Então deverá ser apresentado a seguinte mensagem de erro: "Campos inválidos. Tente novamente."

    Cenário: Limitar campo de "E-mail"
        Quando informar um e-mail maior que x caracteres no campo "E-mail"
        Então deverá limitar o campo

    Cenário: Limitar campo de "Senha"
        Quando informar a senha maior que x caracteres no campo "Senha"
        Então deverá limitar o campo

    Cenário: Dados não cadastrados
        E informe um e-mail não cadastrado no campo "E-mail"
        E informe uma senha não cadastrado no campo "Senha"
        Quando clicar no botão "acessar"
        Então deverá ser apresentado a seguinte mensagem de erro: "Dados não encontrados. Tente novamente."

    Cenário: Campos de login sem preenchimento
        Quando ele deixa os campos "E-mail" e "Senha" sem preenchimento E clica no botão "Entrar"
        Então a seguinte mensagem de erro é apresentada: "Campo obrigatório"