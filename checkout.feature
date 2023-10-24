# language: pt

Funcionalidade: Checkout da compra

Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto: Dado que estou na pagina para pagamento dos produtos

Cenário: Compra autorizada
Quando eu preencher todos os campos com dados validos
E um email com @ e domínio válido
Então deve habilitar o botão de finalizar compra

Cenário: Compra não autorizada
Quando eu preencher todos os campos com dados validos
E um email sem @ e com domínio válido
Então deve aparecer a mensagem "preenchimento incorreto" e desabilitar o botão de finalizar compra

Esquema do Cenário:
Quando eu preencher o <nome>
E o <sobrenome>
E o nome do <pais>
E o nome da <cidade>
E o número do <cep>
E o número do <telefone>
E colocar um <email> válido
Então o botão finalizar compra deve ser <habilitado>

Exemplos:
|"Gustavo"|"Rondoni"|"Brasil"|"Paulínia"|"13146-000"|"19983004791"|"gustavort@ebac.com.br"|"habilitado"|
|"Gustavo"|"1254855"|"Brasil"|"Paulínia"|"13146-000"|"19983004791"|"gustavort@ebac.com.br"|"desabilitado"|
|"Gustavo"|"Rondoni"|"Brasil"|"Paulínia"|"13146-000"|"19983004791"|"gustavort@hotimeio.com"|"desaabilitado"|
|"Maria"|"Rondoni"|"Brasil"|"Paulínia"|"13146-723"|"19983008117"|"mariarondoni@ebac.com.br"|"habilitado"|
|"Maria"|"Rondoni"|"Brasil"|"78954632"|"13146-000"|"19983004791"|"gustavort@ebac.com.br"|"desabilitado"|
|"joscielen"|"Rondoni"|"Brasil"|"Paulínia"|"13146-723"|"19983005990"|"joscirt@ebac.com.br"|"habilitado"|
|"Joscielen"|"Rondoni"|"Brasil"|"Paulínia"|"13146-000"|"19983004791"|"gustavort#ebac.com.br"|"desabilitado"|
|"Moacir"|"Teixeira"|"Brasil"|"Paulínia"|"13146-000"|"moacir@ebac.com.br"|"moacir@ebac.com.br"|"desabilitado"|
|"Guilherme"|"Alves"|"Brasil"|"Paulínia"|"13146-000"|"19983005823"|"gui@ebac.com.br"|"habilitado"|
|"Isabela"|"Rondoni"|"Brasil"|"Paulínia"|"13142-785"|"1981174791"|"isabella@ebac.com.br"|"habilitado"|