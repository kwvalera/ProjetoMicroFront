USE csMicroBD;

CREATE TABLE Funcionario(
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome_funcionario VARCHAR(100) NOT NULL,
    data_admissao DATE NOT NULL,
    data_demissao DATE NOT NULL,
    departamento VARCHAR(100) NOT NULL,
    funcao VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL,
    id_filial INT /* FK */ NOT NULL
);

CREATE TABLE Filial(
    id_filial INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome_filial VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    bairro VARCHAR(100)  NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(100) NOT NULL,
    telefone VARCHAR(100),
    celular VARCHAR(100) NOT NULL,
    cnpj VARCHAR(18) NOT NULL
);