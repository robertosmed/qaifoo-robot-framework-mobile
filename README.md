# QAifood Testes Automatizados com Robot Framework

## 📱 Objetivo do Projeto

Este projeto demonstra como automatizar testes de aplicações mobile utilizando **Robot Framework** com **Appium**. O foco é validar funcionalidades críticas do aplicativo QAifood através de testes automatizados organizados com Custom Commands reutilizáveis.

## 🏗️ Componentes do Projeto

```
yodapp/
├── tests/
│   ├── login.robot              # Testes de autenticação
│   └── ...outros testes
├── resources/
│   ├── base.resource            # Configurações e importações base
│   ├── keywords/                # Custom Commands (Keywords)
│   │   ├── login.keywords.robot
│   │   └── ...outras keywords
│   └── ...outros recursos
├── app/                         # Aplicação mobile (APK/IPA)
├── package.json                 # Dependências do projeto
├── appium-config.json           # Configuração do Appium Server
└── README.md                    # Este arquivo
```

## 📋 Componentes Principais

### **Robot Framework**
Framework de automação que permite escrever testes em linguagem natural e reutilizar código através de Keywords.

### **Appium Server**
Servidor que gerencia a comunicação entre os testes e o aplicativo mobile (Android/iOS).

### **Custom Commands (Keywords)**
Palavras-chave personalizadas que encapsulam ações complexas em comandos simples e reutilizáveis.

## 🚀 Instalação e Configuração

### Pré-requisitos
- **Node.js** 14+ instalado
- **Python** 3.7+ instalado
- **Java JDK** 8+ configurado
- **Android SDK** (para testes em Android)

### Passo 1: Instalar Dependências
```bash
npm install
```

### Passo 2: Instalar Robot Framework e Appium Library
```bash
pip install robotframework robotframework-appiumlibrary
```

### Passo 3: Iniciar o Appium Server Local
```bash
npm run appium:start
```

O servidor será iniciado em `http://localhost:4723`

### Passo 4: Executar os Testes
```bash
robot tests/
```

Ou para um teste específico:
```bash
robot tests/login.robot
```

## 📝 Testes Documentados

### **Login Tests** (`tests/login.robot`)

| Teste | Objetivo | Resultado Esperado |
|-------|----------|-------------------|
| `Deve logar com sucesso` | Validar login com credenciais válidas | Exibe tela "Lojas" |
| `Não Deve logar com senha incorreta` | Validar mensagem de erro com senha inválida | Exibe mensagem "Erro ao realizar login" |

## 🔧 Custom Commands (Keywords)

As keywords personalizadas estão organizadas em `resources/keywords/` e encapsulam ações reutilizáveis:

### **Exemplo: Login Keywords**
```robot
*** Keywords ***
Fazer login
    [Documentation]    Realiza login com credenciais válidas
    Input Text    id_email_field    usuario@test.com
    Input Text    id_senha_field    senha123
    Click Button    id_login_button

Fazer login com senha incorreta
    [Documentation]    Realiza login com senha inválida
    Input Text    id_email_field    usuario@test.com
    Input Text    id_senha_field    senhaErrada
    Click Button    id_login_button
```

### **Exemplo: Base Resource**
```robot
*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Iniciar Aplicacao
    [Documentation]    Inicia o aplicativo mobile
    Open Application    http://localhost:4723    platformName=Android    ...

Fechar Aplicacao
    [Documentation]    Fecha o aplicativo mobile
    Close Application
```

## 📊 Estrutura de Execução

1. **Setup** → Inicializa a aplicação mobile via Appium.
2. **Test** → Executa os passos do teste usando Keywords personalizadas.
3. **Teardown** → Fecha a aplicação mobile.

## 🎯 Boas Práticas Implementadas

✅ Separação de concerns (keywords em arquivos específicos)  
✅ Reutilização de código através de Custom Commands  
✅ Setup e Teardown automáticos  
✅ Nomes descritivos em linguagem natural  
✅ Documentação das keywords

## 📦 Scripts Úteis (package.json)

```bash
npm run appium:start      # Inicia Appium Server local
npm run test              # Executa todos os testes
npm run test:login        # Executa apenas testes de login
```

## 🐛 Troubleshooting

| Problema | Solução |
|----------|---------|
| Appium Server não inicia | Verificar se porta 4723 está disponível |
| Aplicativo não abre | Validar caminho do APK em `appium-config.json` |
| Keywords não encontradas | Verificar imports em `base.resource` |

## 📚 Referências

- [Robot Framework Docs](https://robotframework.org/)
- [Appium Documentation](https://appium.io/)
- [Robot Framework Appium Library](https://github.com/serhatbolsu/robotframework-appiumlibrary)

---

**Versão:** 1.0  
**Última atualização:** Novembro 19, 2025
