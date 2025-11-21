*** Settings ***
Documentation     Teste na tela de esvaziar carrinho no aplicativo mobile

Resource         ${EXECDIR}/resources/base.resource

Test Setup       Iniciar Aplicacao
Test Teardown    Fechar Aplicacao

*** Test Cases ***

Deve esvaziar carrinho com sucesso

    Fazer login
    Wait Until Page Contains    Lojas    3
    
    Acessar Loja 
    Wait Until Page Contains         Maria Doceria Gourmet    3

    Esvazia Carrinho
    Wait Until Page Contains         Você não possui produtos no carrinho!    3



    
Não deve esvaziar carrinho

    Fazer login
    Wait Until Page Contains    Lojas    3
    
    Acessar Loja 
    Wait Until Page Contains         Maria Doceria Gourmet    3

    Não Esvazia Carrinho
    Wait Until Page Contains         Bolo de chocolate    3



    

   