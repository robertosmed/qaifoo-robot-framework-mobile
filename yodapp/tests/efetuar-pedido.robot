*** Settings ***
Documentation     Teste na tela de efetuar pedido no aplicativo mobile

Resource         ${EXECDIR}/resources/base.resource

Test Setup       Iniciar Aplicacao
Test Teardown    Fechar Aplicacao

*** Test Cases ***

Deve efetuar compra de produtos com sucesso

    Fazer login
    Wait Until Page Contains    Lojas    3
    
    Acessar Loja 
    Wait Until Page Contains         Maria Doceria Gourmet    3

    Efetuar Pedido
    Wait Until Page Contains            Pedido realizado    3
    

      
Não Deve efetuar compra sem produtos no carrinho

    Fazer login
    Wait Until Page Contains    Lojas    3
    
    Acessar Loja 
    Wait Until Page Contains         Maria Doceria Gourmet    3

    Não Efetuar Pedido
    Wait Until Page Contains         Você não possui produtos no carrinho!    3

     




    

   