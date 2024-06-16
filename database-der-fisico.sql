/*database para projeto microondas contendo tabelas de venda e ordem de serviço*/
DROP DATABASE ProjetoMicro;
CREATE DATABASE ProjetoMicro;

USE ProjetoMicro;

CREATE TABLE Categoria(
    id_categoria INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome_categoria VARCHAR(20) NOT NULL
);

CREATE TABLE Marca(
    id_marca INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome_marca VARCHAR(20) NOT NULL,
    descricao_marca VARCHAR(100) NOT NULL,
    url_marca VARCHAR(100) NOT NULL
);

CREATE TABLE TipoProduto(
    id_tipo_produto INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome_tipo_produto VARCHAR(20) NOT NULL,
    descricao_tipo_produto VARCHAR(100) NOT NULL
);

CREATE TABLE Modelo(
    id_modelo INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    descricao_modelo VARCHAR(100) NOT NULL,
    id_marca INT /* FK */ NOT NULL,
    id_tipo_produto INT /* FK */ NOT NULL
);

CREATE TABLE Produto(
    id_produto INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_categoria INT /* FK */ NOT NULL,
    id_modelo INT /* FK */ NOT NULL,
    descricao_produto VARCHAR(100) NOT NULL,
    valor_custo FLOAT(6,2) NOT NULL,
    venda_custo FLOAT(6,2) NOT NULL,
    data_cadastro DATE NOT NULL,
    quantidade_min INT NOT NULL,
    quantidade_estoque INT NOT NULL,
    codigo INT NOT NULL,
    unidade VARCHAR(4) NOT NULL,
    data_atualizacao DATE NOT NULL,
    id_filial INT /* FK */ NOT NULL
);

CREATE TABLE Filial(
    id_filial INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome_filial VARCHAR(50) NOT NULL,
    endereco VARCHAR(50) NOT NULL,
    bairro VARCHAR(20)  NOT NULL,
    cidade VARCHAR(20) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    telefone VARCHAR(14),
    celular VARCHAR(14) NOT NULL,
    cnpj VARCHAR(18) NOT NULL
);

ALTER TABLE Modelo ADD CONSTRAINT fk_modelo_marca
FOREIGN KEY (id_marca) REFERENCES Marca(id_marca);

ALTER TABLE Modelo ADD CONSTRAINT fk_modelo_tipo_produto
FOREIGN KEY (id_tipo_produto) REFERENCES TipoProduto(id_tipo_produto);

ALTER TABLE Produto ADD CONSTRAINT fk_produto_categoria
FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria);

ALTER TABLE Produto ADD CONSTRAINT fk_produto_modelo
FOREIGN KEY (id_modelo) REFERENCES Modelo(id_modelo);

ALTER TABLE Produto ADD CONSTRAINT fk_produto_filial
FOREIGN KEY (id_filial) REFERENCES Filial(id_filial);

CREATE TABLE Funcionario(
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome_funcionario VARCHAR(100) NOT NULL,
    data_admissao DATE NOT NULL,
    data_demissao DATE NOT NULL,
    departamento VARCHAR(20) NOT NULL,
    funcao VARCHAR(20) NOT NULL,
    senha VARCHAR(20) NOT NULL,
    id_filial INT /* FK */ NOT NULL,
    permissao TINYINT (1)
);

ALTER TABLE Funcionario ADD CONSTRAINT fk_funcionario_filial
FOREIGN KEY (id_filial) REFERENCES Filial(id_filial);

CREATE TABLE Acessorio(
    id_acessorio INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    descricao_acessorio VARCHAR(100) NOT NULL
);

CREATE TABLE OSAcessorio(
    id_os_acessorio INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_os INT /* FK */ NOT NULL,
    id_acessorio INT /* FK */ NOT NULL
);

ALTER TABLE OSAcessorio ADD CONSTRAINT fk_osacessorio_acessorio
FOREIGN KEY (id_acessorio) REFERENCES Acessorio(id_acessorio);

CREATE TABLE Cliente(
    id_cliente INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome_cliente VARCHAR(100) NOT NULL,
    nome_social VARCHAR(100),
    data_cadastro DATE NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    cnpj VARCHAR(18),
    inscricao_municipal VARCHAR(14),
    data_atualizacao DATE NOT NULL,
    senha VARCHAR(20) NOT NULL
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

CREATE TABLE Frete(
    id_frete INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_endereco_frete INT /* FK */ NOT NULL,
    id_os INT /* FK */ NOT NULL,
    valor_frete FLOAT(6,2) NOT NULL
);

CREATE TABLE Telefone(
    id_telefone INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    tipo_telefone VARCHAR(20) NOT NULL,
    numero VARCHAR(14) NOT NULL,
    contato VARCHAR(30),
    id_cliente INT /* FK */ NOT NULL
);

CREATE TABLE Email(
    id_email INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    tipo_email VARCHAR(10) NOT NULL,
    email VARCHAR(30) NOT NULL,
    id_cliente INT /* FK */ NOT NULL
);

ALTER TABLE Endereco ADD CONSTRAINT fk_endereco_cliente
FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente);

ALTER TABLE Telefone ADD CONSTRAINT fk_telefone_cliente
FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente);

ALTER TABLE Email ADD CONSTRAINT fk_email_cliente
FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente);

CREATE TABLE OrdemServico(
    id_os INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_servico INT /* FK */ NOT NULL,
    data_abertura DATE NOT NULL,
    id_modelo INT /* FK */ NOT NULL,
    id_tipo_atendimento INT /* FK */ NOT NULL,
    descricao_problema VARCHAR(100) NOT NULL,
    especificacao VARCHAR(100) NOT NULL,
    data_compra DATE NOT NULL,
    data_fechamento DATE NOT NULL,
    descricao_servico VARCHAR(100) NOT NULL,
    valor_mo FLOAT(6,2) NOT NULL,
    valor_peca FLOAT(6,2) NOT NULL,
    valor_desconto FLOAT(6,2) NOT NULL,
    data_oficina DATE NOT NULL,
    valor_total FLOAT(6,2) NOT NULL,
    observacoes VARCHAR(100),
    observacoes_fechamento VARCHAR(100),
    data_garantia DATE NOT NULL,
    id_cliente INT /* FK */ NOT NULL,
    id_status INT NOT /* FK */ NULL,
    id_plano_pagamento INT /* FK */ NOT NULL,
    data_exclusao DATE NOT NULL
);

CREATE TABLE Responsavel(
    id_responsavel INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_os INT /* FK */ NOT NULL,
    id_funcionario INT /* FK */ NOT NULL
);

CREATE TABLE Servico(
    id_servico INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    descricao_servico VARCHAR(100) NOT NULL,
    valor_servico FLOAT(6,2) NOT NULL
);

CREATE TABLE TipoAtendimento(
    id_tipo_atendimento INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    descricao_tipo_atendimento VARCHAR(100) NOT NULL
);

CREATE TABLE OSServico(
    id_registro INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_os INT /* FK */ NOT NULL,
    descricao_os_servico VARCHAR(100) NOT NULL,
    valor_unitario_os_servico FLOAT(6,2) NOT NULL,
    quantidade_os_servico INT NOT NULL
);

ALTER TABLE OSAcessorio ADD CONSTRAINT fk_osacessorio_os
FOREIGN KEY (id_os) REFERENCES OrdemServico(id_os);

ALTER TABLE Frete ADD CONSTRAINT fk_frete_endereco
FOREIGN KEY (id_endereco_frete) REFERENCES Endereco(id_endereco);

ALTER TABLE Frete ADD CONSTRAINT fk_frete_os
FOREIGN KEY (id_os) REFERENCES OrdemServico(id_os);

ALTER TABLE Responsavel ADD CONSTRAINT fk_responsavel_os
FOREIGN KEY (id_os) REFERENCES OrdemServico(id_os);

ALTER TABLE Responsavel ADD CONSTRAINT fk_responsavel_funcionario
FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario);

ALTER TABLE OSServico ADD CONSTRAINT fk_osservico_os
FOREIGN KEY (id_os) REFERENCES OrdemServico(id_os);

ALTER TABLE OrdemServico ADD CONSTRAINT fk_os_servico
FOREIGN KEY (id_servico) REFERENCES Servico(id_servico);

ALTER TABLE OrdemServico ADD CONSTRAINT fk_os_modelo
FOREIGN KEY (id_modelo) REFERENCES Modelo(id_modelo);

ALTER TABLE OrdemServico ADD CONSTRAINT fk_os_tipo_atendimento
FOREIGN KEY (id_tipo_atendimento) REFERENCES TipoAtendimento(id_tipo_atendimento);

ALTER TABLE OrdemServico ADD CONSTRAINT fk_os_cliente
FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente);

CREATE TABLE Venda(
    id_venda INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_plano_pagamento INT /* FK */ NOT NULL,
    id_atendente INT /* FK */ NOT NULL,
    id_status INT /* FK */ NOT NULL,
    id_cliente INT /* FK */ NOT NULL,
    venda_online TINYINT (1),
    data_abertura DATE NOT NULL,
    observacao_venda VARCHAR(100),
    data_pagamento_ok DATE NOT NULL,
    data_fechamento DATE NOT NULL,
    valor_desconto FLOAT(6,2),
    valor_total FLOAT(6,2) NOT NULL,
    observacoes_fechamento VARCHAR(100) NOT NULL,
    data_garantia DATE NOT NULL,
    data_exclusao DATE NOT NULL,
    id_endereco_entrega INT /* FK */ NOT NULL
);

/*nome alterado de Status para Status_ porque mysql estava identificando como palavra_chave/funcao*/
CREATE TABLE Status_(
    id_status INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    descricao_status VARCHAR(100) NOT NULL,
    tipo_status VARCHAR(20)
);

CREATE TABLE FormaPagamento(
    id_forma_pagamento INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    descricao_forma_pagamento VARCHAR(100) NOT NULL
);

/*atributo id_os_venda foi dividido em dois na fase de desenvolvimento, pois estava referenciando duas tabelas incorretamente*/
CREATE TABLE Faturamento(
    id_faturamento INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_venda INT /* FK */ NOT NULL,
    id_os INT /* FK */ NOT NULL,
    id_forma_pagamento INT /* FK */ NOT NULL,
    venda TINYINT(1)
);

ALTER TABLE Faturamento ADD CONSTRAINT fk_faturamento_venda
FOREIGN KEY (id_venda) REFERENCES Venda(id_venda);

ALTER TABLE Faturamento ADD CONSTRAINT fk_faturamento_os
FOREIGN KEY (id_os) REFERENCES OrdemServico(id_os);

ALTER TABLE Faturamento ADD CONSTRAINT fk_faturamento_forma_pagamento
FOREIGN KEY (id_forma_pagamento) REFERENCES FormaPagamento(id_forma_pagamento);

CREATE TABLE PlanoPagamento(
    id_plano_pagamento INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    descricao_plano_pagamento VARCHAR(100) NOT NULL,
    parcelas INT,
    juros FLOAT(4,2)
);

CREATE TABLE ItemVenda(
    id_item_venda INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_venda INT /* FK */ NOT NULL,
    id_produto INT /* FK */ NOT NULL,
    quantidade_item INT NOT NULL
);

ALTER TABLE ItemVenda ADD CONSTRAINT fk_item_venda_venda
FOREIGN KEY (id_venda) REFERENCES Venda(id_venda);

ALTER TABLE ItemVenda ADD CONSTRAINT fk_item_venda_produto
FOREIGN KEY (id_produto) REFERENCES Produto(id_produto);

ALTER TABLE OrdemServico ADD CONSTRAINT fk_os_status
FOREIGN KEY (id_status) REFERENCES Status_(id_status);

ALTER TABLE OrdemServico ADD CONSTRAINT fk_os_plano_pagamento
FOREIGN KEY (id_plano_pagamento) REFERENCES PlanoPagamento(id_plano_pagamento);

ALTER TABLE Venda ADD CONSTRAINT fk_venda_plano_pagamento
FOREIGN KEY (id_plano_pagamento) REFERENCES PlanoPagamento(id_plano_pagamento);

ALTER TABLE Venda ADD CONSTRAINT fk_venda_atendente
FOREIGN KEY (id_atendente) REFERENCES Funcionario(id_funcionario);

ALTER TABLE Venda ADD CONSTRAINT fk_venda_status
FOREIGN KEY (id_status) REFERENCES Status_(id_status);

ALTER TABLE Venda ADD CONSTRAINT fk_venda_cliente
FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente);

ALTER TABLE Venda ADD CONSTRAINT fk_venda_enderco_entrega
FOREIGN KEY (id_endereco_entrega) REFERENCES Endereco(id_endereco);