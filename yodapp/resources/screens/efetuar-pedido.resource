*** Settings ***
Documentation     Elementos e ações da tela de efetuar pedido do aplicativo mobile

Library         AppiumLibrary

*** Variables ***
${BUTTON_ENDEREÇO}     accessibility_id=address-button
${BUTTON_LOCAL}        PERMITIR
${BUTTON_LOJA}         Maria Doceria Gourmet
${VISIBLE_ITEM1}       xpath=//android.widget.TextView[@text="Bolo de chocolate"]/../..
${BUTTON_ITEM1}         xpath=//android.widget.TextView[@text="Bolo de chocolate"]/../..
${VISIBLE_ITEM2}       xpath=//android.widget.TextView[@text="Bolo red velvet"]/../..
${BUTTON_ITEM2}        xpath=//android.widget.TextView[@text="Bolo red velvet"]/../..
${VISIBLE_CARRINHO}    xpath=//*[@resource-id="open-cart-button"]//*[@text="2 Produtos"]
${BUTTON_CARRINHO}     xpath=//*[@resource-id="open-cart-button"]//*[@text="2 Produtos"]
${VISIBLE_ITEM_ZERO}   xpath=//*[@resource-id="open-cart-button"]//*[@text="0 Produtos"]
${BUTTON_ITEM_ZERO}    xpath=//*[@resource-id="open-cart-button"]//*[@text="0 Produtos"]
${CONFIRMAR_PEDIDOS}   CONFIRMAR PEDIDO
${ELEMENT_DINHEIRO}    xpath=//android.widget.TextView[contains(@text, "Dinheiro")]
${RADION_DINHEIRO}     xpath=//android.widget.TextView[contains(@text, "Dinheiro")]
${FAZER_PEDIDO}        FAZER PEDIDO

*** Keywords ***
Efetuar Pedido

    Click Element                ${BUTTON_ENDEREÇO}
    Wait Until Page Contains     PERMITIR    5  
    Click Text                   PERMITIR

    Wait Until Element Is Visible    android=new UiScrollable(new UiSelector().scrollable(true)).scrollTextIntoView("Maria Doceria Gourmet")         
    Click Text                       ${BUTTON_LOJA}

    Wait Until Element Is Visible    ${VISIBLE_ITEM1}    5
    Click Element                    ${BUTTON_ITEM1}    

    Wait Until Element Is Visible    ${VISIBLE_ITEM2}    5
    Click Element                    ${BUTTON_ITEM2}    

    Wait Until Element Is Visible    ${VISIBLE_CARRINHO}    5
    Click Element                    ${BUTTON_CARRINHO}

    Wait Until Page Contains         Sacola
    Click Text                       ${CONFIRMAR_PEDIDOS}

    Wait Until Page Contains            Finalizar pedido
    Wait Until Element Is Visible       android=new UiScrollable(new UiSelector().scrollable(true)).scrollTextIntoView("Dinheiro")
    Click Element                      ${ELEMENT_DINHEIRO}
    Click Element                      ${RADION_DINHEIRO}

    Click Text                         ${FAZER_PEDIDO}


Não Efetuar Pedido

    Click Element                ${BUTTON_ENDEREÇO}
    Wait Until Page Contains     PERMITIR    5  
    Click Text                   ${BUTTON_LOCAL}

    Wait Until Element Is Visible    android=new UiScrollable(new UiSelector().scrollable(true)).scrollTextIntoView("Maria Doceria Gourmet")         
    Click Text                       ${BUTTON_LOJA}

    Wait Until Element Is Visible    ${VISIBLE_ITEM_ZERO}     5
    Click Element                    ${BUTTON_ITEM_ZERO}        