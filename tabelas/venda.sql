USE csMicroBD;

CREATE TABLE Venda(
    id_venda INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_plano_pagamento INT /* FK */ NOT NULL,
    id_atendente INT /* FK */ NOT NULL,
    id_status INT /* FK */ NOT NULL,
    id_cliente INT /* FK */ NOT NULL,
    venda_online VARCHAR(100),
    data_abertura DATE NOT NULL,
    observacao_venda VARCHAR(100),
    data_pagamento_ok DATE NOT NULL,
    data_fechamento DATE NOT NULL,
    valor_desconto FLOAT,
    valor_total FLOAT NOT NULL,
    observacoes_fechamento VARCHAR(100) NOT NULL,
    data_garantia DATE NOT NULL,
    data_exclusao DATE NOT NULL,
    id_endereco_entrega INT /* FK */ NOT NULL
);

CREATE TABLE Status(
    id_status INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    descricao_status VARCHAR(100) NOT NULL,
    tipo_status VARCHAR(100)
);

CREATE TABLE Faturamento(
    id_faturamento INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_os_venda INT /* FK */ NOT NULL,
    id_forma_pagamento INT /* FK */ NOT NULL,
    venda TINYINT(1)
);

CREATE TABLE FormaPagamento(
    id_forma_pagamento INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    descricao_forma_pagamento VARCHAR(100) NOT NULL
);

CREATE TABLE PlanoPagamento(
    id_plano_pagamento INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    descricao_plano_pagamento VARCHAR(100) NOT NULL,
    parcelas INT,
    juros FLOAT
);

CREATE TABLE ItemVenda(
    id_item_venda INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_venda INT /* FK */ NOT NULL,
    id_produto INT /* FK */ NOT NULL,
    quantidade_item INT NOT NULL
);