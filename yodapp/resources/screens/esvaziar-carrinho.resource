*** Settings ***
Documentation     Elementos e ações da tela esvaziar carrinho do aplicativo mobile

Library         AppiumLibrary

*** Variables ***
${BUTTON_ENDEREÇO}    accessibility_id=address-button
${BUTTON_LOCAL}       id=android:id/button1
${BUTTON_LOJA}        Maria Doceria Gourmet
${VISIBLE_ITEM1}      xpath=//android.widget.TextView[@text="Bolo de chocolate"]/../..
${BUTTON_ITEM}        xpath=//android.widget.TextView[@text="Bolo de chocolate"]/../..
${VISIBLE_CARRINHO}   xpath=//*[@resource-id="open-cart-button"]//*[@text="1 Produtos"]
${BUTTON_CARRINHO}    xpath=//*[@resource-id="open-cart-button"]//*[@text="1 Produtos"]
${LIMPAR_CARRINHO}      Limpar
${CONFIRMAR_LIMPAR}     CONFIRMAR
${CONFIRMAR_CANCELAR}   CANCELAR

*** Keywords ***
Esvazia Carrinho

    Click Element                ${BUTTON_ENDEREÇO}
    Wait Until Page Contains     PERMITIR    5  
    Click Text                   ${BUTTON_LOCAL}

    Wait Until Element Is Visible    android=new UiScrollable(new UiSelector().scrollable(true)).scrollTextIntoView("Maria Doceria Gourmet")         
    Click Text                       ${BUTTON_LOJA}

    Wait Until Element Is Visible    ${VISIBLE_ITEM1}    5
    Click Element                    ${BUTTON_ITEM}    

    Wait Until Element Is Visible    ${VISIBLE_CARRINHO}    5
    Click Element                    ${BUTTON_CARRINHO}

    Wait Until Page Contains         Sacola
    Click Text                       ${LIMPAR_CARRINHO}    
    
    Wait Until Page Contains         Quer esvaziar seu carrinho?    5
    Click Text                       ${CONFIRMAR_LIMPAR}

Não Esvazia Carrinho

    Click Element                ${BUTTON_ENDEREÇO} 
    Wait Until Page Contains     PERMITIR    5 
    Click Text                   ${BUTTON_LOCAL}

    Wait Until Element Is Visible    android=new UiScrollable(new UiSelector().scrollable(true)).scrollTextIntoView("Maria Doceria Gourmet")         
    Click Text                       ${BUTTON_LOJA}

    Wait Until Element Is Visible    ${VISIBLE_ITEM1}    5
    Click Element                    ${BUTTON_ITEM}    

    Wait Until Element Is Visible    ${VISIBLE_CARRINHO}    5
    Click Element                    ${BUTTON_CARRINHO}

    Wait Until Page Contains         Sacola
    Click Text                       ${LIMPAR_CARRINHO}    
    
    Wait Until Page Contains         Quer esvaziar seu carrinho?    5
    Click Text                       ${CONFIRMAR_CANCELAR}
