# language: pt

Funcionalidade: Tela de login
Como cliente da EBAC SHOP
Quero me autenticar
Para visualizar meus pedidos

Contexto: Dado que eu acesse a pagina de Autenticação do portal EBAC

Cenário: Autenticação válida
Quando eu digitar o usuário "gustavo@ebac.com.br"
E a senha "123456"
Então devo ser redirecionado para pagina de checkout

Cenário: Autenticação inexistente
Quando eu digitar o usuário "rondoni@ebac.com.br"
E a senha "123456"
Então deve exibir uma mensagem de alerta " Usuário inexistente"

Cenário: Usuário com senha inválida
Quando eu digitar o usuário "gustavo@ebac.com.br"
E a senha "abcdfg"
Então deve exibir uma mensagem de alerta " Usuário ou senha inválida"

Esquema do Cenário: Autenticar multiplos usuários
Quando eu digitar o <usuario>
E a <senha>
Então deve logar e <redirecionar> para a pagina de checkout


|usuaro|senha|redirecionar|
|"gustavo@ebac.com.br"|"123456"|"redirecionar"
|"rondoni@ebac.com.br"|"123456"|"não redirecionar"
|"maria@ebac.com.br"|"123456"|"redirecionar"
|"maria@ebac.com.br"|"abcdf"|"não redirecionar"
|"joo@ebac.com.br"|"123456"|"redirecionar"
|"joo@ebac.com.br"|"cdfglf"|"não redirecionar"
|"moacir@ebac.com.br"|"123456"|"redirecionar"