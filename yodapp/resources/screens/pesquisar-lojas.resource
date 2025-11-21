*** Settings ***
Documentation     Elementos e ações da pesquisa de loja do aplicativo mobile

Library         AppiumLibrary

*** Variables ***
${BUTTON_ENDEREÇO}    accessibility_id=address-button
${BUTTON_LOCAL}       PERMITIR
${SEARCH}             xpath=//android.widget.EditText[@content-desc="search-field"]          
${SEARCH_FIELD}       xpath=//android.widget.EditText[@content-desc="search-field"] 

*** Keywords ***
Pesquisar Loja Existente
    Click Element                 ${BUTTON_ENDEREÇO}
    Wait Until Page Contains      PERMITIR    5    
    Click Text                    PERMITIR
    Input Text                    ${SEARCH}    text=Maria Doceria Gourmet

Pesquisar Loja Inexistente
    Click Element                ${BUTTON_ENDEREÇO}
    Wait Until Page Contains      PERMITIR    5
    Click Text                    PERMITIR
    Input Text                   ${SEARCH_FIELD}    text=Teste
