*** Settings ***
Documentation     Teste na tela loja do aplicativo mobile

Resource         ${EXECDIR}/resources/base.resource

Test Setup       Iniciar Aplicacao
Test Teardown    Fechar Aplicacao

*** Test Cases ***
Deve pesquisar por uma loja existente

    Fazer login
    Wait Until Page Contains    Lojas    3

    Pesquisar Loja Existente
    Wait Until Page Contains            Maria Doceria Gourmet    3

  
Não Deve pesquisar por uma loja inexistente
    
    Fazer login
    Wait Until Page Contains    Lojas    3

    Pesquisar Loja Inexistente
    Wait Until Page Contains            Nenhum restaurante encontrado.    3



    

   