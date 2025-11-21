*** Settings ***
Documentation     Elementos e ações da tela de login do aplicativo

Library         AppiumLibrary


*** Variables ***

${EMAIL}                    teste@teste.com
${PASSWORD}                 123456
${PASSWORD_FAILD}           654321



*** Keywords ***
Fazer login
    Input Text                  accessibility_id=email          ${EMAIL}          
    Input Password              accessibility_id=password       ${PASSWORD} 
    Click Text                  ENTRAR

Fazer login com senha incorreta
    Input Text                  accessibility_id=email          ${EMAIL}          
    Input Password              accessibility_id=password       ${PASSWORD_FAILD} 
    Click Text                  ENTRAR