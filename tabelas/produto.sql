USE csMicroBD;

CREATE TABLE Produto(
    id_produto INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_categoria INT /* FK */ NOT NULL,
    id_modelo INT /* FK */ NOT NULL,
    descricao_produto VARCHAR(100) NOT NULL,
    valor_custo FLOAT NOT NULL,
    venda_custo FLOAT NOT NULL,
    data_cadastro DATE NOT NULL,
    quantidade_min INT NOT NULL,
    quantidade_estoque INT NOT NULL,
    codigo INT NOT NULL,
    unidade VARCHAR(100) NOT NULL,
    data_atualizacao DATE NOT NULL,
    id_filial INT /* FK */ NOT NULL
);

CREATE TABLE Categoria(
    id_categoria INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome_categoria VARCHAR(100) NOT NULL
);

CREATE TABLE Modelo(
    id_modelo INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    descricao_modelo VARCHAR(100) NOT NULL,
    id_marca INT /* FK */ NOT NULL,
    id_tipo_produto INT /* FK */ NOT NULL
);

CREATE TABLE Marca(
    id_marca INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome_marca VARCHAR(100) NOT NULL,
    descricao_marca VARCHAR(100) NOT NULL
);

CREATE TABLE TipoProduto(
    id_tipo_produto INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome_tipo_produto VARCHAR(100) NOT NULL,
    descricao_tipo_produto VARCHAR(100) NOT NULL
);