*** Settings ***
Documentation     Elementos e ações da tela de loja do aplicativo mobile

Library         AppiumLibrary

*** Variables ***
${BUTTON_ENDEREÇO}    accessibility_id=address-button
${BUTTON_LOCAL}       PERMITIR
${BUTTON_LOJA}        Maria Doceria Gourmet


*** Keywords ***
Acessar Loja    
    
    Click Element                ${BUTTON_ENDEREÇO} 
    Wait Until Page Contains     PERMITIR    5 
    Click Text                   PERMITIR

    Wait Until Element Is Visible    android=new UiScrollable(new UiSelector().scrollable(true)).scrollTextIntoView("Maria Doceria Gourmet")         
    Click Text                       ${BUTTON_LOJA} 


