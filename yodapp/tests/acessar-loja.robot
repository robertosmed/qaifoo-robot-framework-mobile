*** Settings ***
Documentation     Teste na tela loja do aplicativo mobile

Resource         ${EXECDIR}/resources/base.resource

Test Setup       Iniciar Aplicacao
Test Teardown    Fechar Aplicacao

*** Test Cases ***
Deve acessar loja com sucesso

    Fazer login
    Wait Until Page Contains    Lojas    3

    Acessar Loja 
    Wait Until Page Contains         Maria Doceria Gourmet    3
  


      




    

   