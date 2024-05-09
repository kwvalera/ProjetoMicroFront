USE csMicroBD;

CREATE TABLE OrdemServico(
    id_os INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_servico INT /* FK */ NOT NULL,
    id_endereco_busca INT /* FK */ NOT NULL,
    id_endereco_entrega INT /* FK */ NOT NULL,
    data_abertura DATE NOT NULL,
    id_modelo INT /* FK */ NOT NULL,
    id_tipo_atendimento INT /* FK */ NOT NULL,
    descricao_problema VARCHAR(100) NOT NULL,
    especificacao VARCHAR(100) NOT NULL,
    data_compra DATE NOT NULL,
    data_fechamento DATE NOT NULL,
    descricao_servico VARCHAR(100) NOT NULL,
    valor_mo FLOAT NOT NULL,
    valor_peca FLOAT NOT NULL,
    valor_desconto FLOAT NOT NULL,
    data_oficina DATE NOT NULL,
    valor_total FLOAT NOT NULL,
    observacoes VARCHAR(100),
    observacoes_fechamento VARCHAR(100),
    data_garantia DATE NOT NULL,
    id_cliente INT /* FK */ NOT NULL,
    id_status INT NOT /* FK */ NULL,
    id_atendente INT /* FK */ NOT NULL,
    id_tecnico INT /* FK */ NOT NULL,
    id_plano_pagamento INT /* FK */ NOT NULL,
    data_exclusao DATE NOT NULL
);

CREATE TABLE Servico(
    id_servico INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    descricao_servico VARCHAR(100) NOT NULL,
    valor_servico FLOAT NOT NULL
);

CREATE TABLE TipoAtendimento(
    id_tipo_atendimento INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    descricao_tipo_atendimento VARCHAR(100) NOT NULL
);

CREATE TABLE OSServico(
    id_registro INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_os INT /* FK */ NOT NULL,
    descricao_os_servico VARCHAR(100) NOT NULL,
    valor_unitario_os_servico FLOAT NOT NULL,
    quantidade_os_servico INT NOT NULL
);