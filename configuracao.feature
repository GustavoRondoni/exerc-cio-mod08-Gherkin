#language: pt

Funcionalidade: Tela de configuração do produto

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
e escolher a quantidade
Para depois inserir no carrinho

Contexto: Dado que esteja na pagina do produto 

Cenário: Configuração autorizada
Quando eu selecionar a cor do produto "azul, laranja ou vermelho"
E selecionar o tamanho da peça "pp, p, m , g ou gg"
E também a quantidade a ser comprada "9 unidades"
Então o botão comprar deve permanecer "habilitado"
Mas se clicar no botão limpar
Então todas as configurações devem ser zeradas.

Cenário: Configuração não permitida
Quando eu selecionar a cor do produto "azul, laranja ou vermelho"
E selecionar o tamanho da peça "pp, p, m , g ou gg"
E também a quantidade a ser comprada "15 unidades"
Então o botão comprar deve permanecer "desabilitado"
Mas se clicar no botão limpar
Então todas as configurações devem ser zeradas.

Esquema do Cenário:
Quando eu selecionar a <cor>
E o tamanho da peça <tamanho>
E a quantidade <unidades>
Então deve  <habilitar> o botão de compra

Exemplos:
|"Azul"|"p"|"10"|"habilitado"|
|"Laranja"|"gg"|"8"|"habilitado"|
|"Azul"|"pp"|"5"|"habilitado"|
|"Vermelho"|"m"|"17"|"desaabilitado"|
|"Azul"|"m"|"1"|"habilitado"|
|"Laranja"|"g"|"23"|"desaabilitado"|
|"laranja"|"m"|"12"|"desaabilitado"|
|"azul"|"m"|"10"|"habilitado"|
|"Vermelho"|"gg"|"1"|"habilitado"|
|"Vermelho"|"pp"|"13"|"desaabilitado"|