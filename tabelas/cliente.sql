DROP DATABASE IF EXISTS csMicroBD;
CREATE DATABASE csMicroBD;
USE csMicroBD;

CREATE TABLE Cliente(
    id_cliente INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome_cliente VARCHAR(100) NOT NULL,
    nome_social VARCHAR(100),
    data_cadastro DATE NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    cnpj VARCHAR(18),
    inscricao_municipal VARCHAR(100),
    data_atualizacao DATE NOT NULL
);

CREATE TABLE Endereco(
    id_endereco INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    tipo_endereco VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    complemento VARCHAR(100),
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(100) NOT NULL,
    cep VARCHAR(10) NOT NULL,
    observacao VARCHAR(100),
    id_cliente INT /* FK */ NOT NULL
);

CREATE TABLE Telefone(
    id_telefone INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    tipo_telefone VARCHAR(100) NOT NULL,
    numero VARCHAR(14) NOT NULL,
    contato VARCHAR(100),
    id_cliente INT /* FK */ NOT NULL
);

CREATE TABLE Email(
    id_email INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    tipo_email VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    id_cliente INT /* FK */ NOT NULL
);
