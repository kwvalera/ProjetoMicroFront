# ProjetoMicro

Projeto das matérias de Desenvolvimento Web - Front-End e Banco de Dados da Uniandrade 2024/1. Alunos autores: Felipe Kadanos, Kawany Valera e Sophia Furlaneti.

## Requisitos Ambiente

* OS: Windows_NT x64 10.0.22631
* Node.js: v20.12.2
* React: v18.3.1

## Node.js

Para a instalação do node.js basta entrar no site https://nodejs.org/en/download/prebuilt-installer e realizar o download do arquivo.

* Inicie a instalação do node.js, clique em *next* até que ele seja instalado, e por final clique em *finish*.

## React

Um dos requisitos para este projeto é a utilização do React, a qual é uma biblioteca front-end JavaScript. 

Para sua instalação é requerido o Node.js, depois de sua instalação sera preciso criar um ambiente react:
* No terminal do seu editor de codigo digite o seguite comando:
```shell
npx create-react-app nome_da_sua_pasta_aqui --use-npm
```
* Note que você deve substituir o **nome_da_sua_pasta_aqui** pela pasta em que você deseja criar o ambiente React.

##

**ATENÇÃO** - Se você estiver encontrando erro em utilizar os comandos **npx** e **npm** reinicie o Visual Studio Code pois na maioria dos casos o VScode não reconheceu que você ja instalou o node.js. Se o problema persistir reinicie o PC  e tente novamente. Para uma ultima solução desinstale o node, reinicie o PC e instale-o novamente e reinicie o PC.

* Para ter certeza que o **node** foi reconhecido digite no terminal:
```shell
node -v
```
A reposta deve ser a versão do node.js que foi instalado.

Outro erro que pode acontecer é de o **npm** estar desatualizado, digite o seguinte comando no terminal para atualiza-lo:
```shell
npm install -g npm@latest
```

* Para ter certeza que o **npm** foi reconhecido digite no terminal:
```shell
npm -v
```
A reposta deve ser a versão do npm que foi instalada.

##

* Entre na pasta criada pelo terminal com o comando:
```shell
cd nome_da_sua_pasta_aqui
```

* Instale o React-Router-Dom para a navegabilidade do projeto:
```shell
npm install react-router-dom
```

* Delete os seguintes arquivos da pasta com o ambiente react criada:
    * A Pasta ***Public*** inteira;
    * A Pasta ***Src*** inteira;
    * O ***.gitignore***;
    * O ***package.json***;
    * O ***README***;

Ao final seu ambiente react deve ter somente a pasta **/node_modules** e o arquivo **package-lock.json**.

## Git pull

Para instalar os arquivos mais recentes do projeto executaremos um **git pull**.

* Crie um novo repositório do Git com o comando no terminal:
```shell
git init
```

* Adicione o caminho para o repositório no Github:
```shell
git remote add origin https://github.com/kwvalera/ProjetoMicroFront
```

* Faça um pull para baixar o codigo diretamente no ambiente React:
```shell
git pull origin main --allow-unrelated-histories -X theirs
```

* Agora você já esta pronto para rodar o projeto. Divirta-se!
```shell
npm start
```

Para encerrar a execução do React basta selecionar o terminal e apertar Ctrl+C.