*** Settings ***

Documentation     Tudo deve iniciar nesse arquivo

Library         AppiumLibrary

Resource       screens/login.resource
Resource       screens/acessar-loja.resource
Resource       screens/pesquisar-lojas.resource
Resource       screens/efetuar-pedido.resource
Resource       screens/esvaziar-carrinho.resource


*** Keywords ***
Iniciar Aplicacao
    Open Application   http://localhost:4723
    ...                platformName=Android
    ...                deviceName=Android Emulator
    ...                automationName=UiAutomator2   
    ...                app=${EXECDIR}/app/app-release.apk
    ...                udid=emulator-5554
    ...                autoGrantPermissions=true
    
    
    Wait Until Page Contains    Faça login e aproveite!    5

Fechar Aplicacao
    Capture Page Screenshot
    Close Application

