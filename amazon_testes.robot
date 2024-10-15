*** Settings ***
Documentation      Essa suite testa o site amazon.com.br
Resource           amazon_resources.robot
Test Setup         Abrir o navegador
Test Teardown      Fechar o navegador


*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Este teste verifica o menu de Eletrônicos do site amazon.com.br
    ...                e verifica a categoria Computadores e Informática
    [Tags]             menus    categorias
     Acessar a home page do site Amazon.com.br
     Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
     Entrar no menu "Eletrônicos"
     Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
     Verificar se aparece a frase "Eletrônicos e Tecnologia"
     Verificar se aparece a categoria "Ofertas em Eletrônicos"
     Verificar se aparece a categoria "TVs"
     Verificar se aparece a categoria "Caixa de Som"
     Verificar se aparece a categoria "Computadores e Informática"
     Verificar se aparece a categoria "Celulares e Acessórios"
     Verificar se aparece a categoria "Games"
     

Caso de teste 02 - Pesquisa de um Produto
    [Documentation]    Esse teste verifica busca de um produto
    [Tags]             busca-produtos     lista_busca
     Acessar a home page do site Amazon.com.br
     Digitar o nome de produto "Xbox Series S" no campo de pesquisa
     Clicar no botão de pesquisa
     Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"