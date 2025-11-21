*** Settings ***
Documentation     Teste de acesso a tela de uma das lojas no aplicativo mobile

Resource         ${EXECDIR}/resources/base.resource

Test Setup       Iniciar Aplicacao
Test Teardown    Fechar Aplicacao

*** Test Cases ***
Deve logar com sucesso

    Fazer login
    Wait Until Page Contains    Lojas    3


Não Deve logar com senha incorreta

    Fazer login com senha incorreta
    Wait Until Page Contains    Erro ao realizar login    3


    

   