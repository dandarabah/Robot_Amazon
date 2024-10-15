*** Settings ***
Library    SeleniumLibrary
    
*** Variables ***
${URL}                              https://www.amazon.com.br/                  
${MENU_ELETRONICOS}                //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}               //h1[contains(.,'Eletrônicos e Tecnologia')]


*** Keywords ***
Abrir o navegador  
    Open Browser    browser=chrome     options=add_experimental_option("detach", True)  
    Maximize Browser Window
    #   Set Window Size    2000  1000  Outra opção para configurar a tela de teste 
Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To                             ${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}
    
Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}
   
Verificar se o título da página fica "${TITULO}"
    Title Should Be    locator=${TITULO}
   
Verificar se aparece a frase "${FRASE}"
    Wait Until Page contains        text=${FRASE}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}
   
Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//button[@data-csa-c-type='uxElement'][contains(.,'${NOME_CATEGORIA}')]
  
Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//button[@data-csa-c-type='uxElement'][contains(.,'${NOME_CATEGORIA}')]
    
Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible     locator=//button[@data-csa-c-type='uxElement'][contains(.,'${NOME_CATEGORIA}')]
    
Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//button[@data-csa-c-type='uxElement'][contains(.,'${NOME_CATEGORIA}')]
   
Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//button[@data-csa-c-type='uxElement'][contains(.,'${NOME_CATEGORIA}')]
   
Verificar se aparece a categoria "${NOME_CATEGORIA}"   
    Element Should Be Visible    locator=//button[@data-csa-c-type='uxElement'][contains(.,'${NOME_CATEGORIA}')]
    
Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text     locator=twotabsearchtextbox        text=${PRODUTO}
   
Clicar no botão de pesquisa
    Clear Element Text     locator=two-pane-results-container
    Click Element          locator=nav-search-submit-button
   
Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=<span class="a-size-base-plus a-color-base a-text-normal" style="outline: green dotted 2px !important;">'${PRODUTO}'</span>
   
    