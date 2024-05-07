# ProjetoMicro

Projeto das matérias de Desenvolvimento Web - Front-End e Banco de Dados da Uniandrade 2024/1. Alunos autores: Felipe Kadanos, Kawany Valera e Sophia Furlaneti.

## Requisitos Ambiente

* OS: Windows_NT x64 10.0.22631
* Node.js: v20.12.2
* React: v18.3.1

## React

Um dos requisitos para este projeto é a utilização do React, a qual é uma biblioteca front-end JavaScript. 

Para sua instalação é requerido o Node.js, depois de sua instalação sera preciso criar um ambiente react:
* No terminal do seu editor de codigo digite o seguite comando:
```shell
npx create-react-app nome_da_sua_pasta_aqui --use-npm
```
* Note que você deve substituir o **nome_da_sua_pasta_aqui** pela pasta em que você deseja criar o ambiente React.

* Entre na pasta criada com o comando:
```shell
cd nome_da_sua_pasta_aqui
```

* Delete os seguintes arquivos:
    * A Pasta **Public** inteira;
    * A Pasta **Src** inteira;
    * O **README**;
    * O **.gitignore**;

* Crie um novo repositório do Git com o comando no terminal:
```shell
git init
```

* Adicione o caminho para o repositório no Github:
```shell
git remote add origin https://github.com/kwvalera/ProjetoMicro
```

* Faça um pull para baixar o codigo diretamente no ambiente React:
```shell
git pull origin main
```

* Agora você já esta pronto para rodar o projeto. Divirta-se!
```shell
npm start
```

Para encerrar a execução do React basta selecionar o terminal e apertar Ctrl+C.