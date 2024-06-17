USE ProjetoMicro;

-- Insert dummy data into Categoria
INSERT INTO Categoria (nome_categoria) VALUES
('Categoria 1'),
('Categoria 2');

-- Insert dummy data into Marca
INSERT INTO Marca (nome_marca, descricao_marca, url_marca, flag) VALUES
('Marca 1', 'Descricao Marca 1', 'http://marca1.com', 1),
('Marca 2', 'Descricao Marca 2', 'http://marca2.com', 0);

-- Insert dummy data into TipoProduto
INSERT INTO TipoProduto (nome_tipo_produto, descricao_tipo_produto) VALUES
('Tipo 1', 'Descricao Tipo 1'),
('Tipo 2', 'Descricao Tipo 2');

-- Insert dummy data into Modelo
INSERT INTO Modelo (descricao_modelo, id_marca, id_tipo_produto) VALUES
('Modelo 1', 3, 1),
('Modelo 2', 4, 2);

-- Insert dummy data into Filial
INSERT INTO Filial (nome_filial, endereco, bairro, cidade, estado, telefone, celular, cnpj) VALUES
('Filial Centro', 'Rua Principal, 123', 'Centro', 'São Paulo', 'SP', '1234-5678', '91234-5678', '12.345.678/0001-99'),
('Filial Sul', 'Rua Secundaria, 456', 'Sul', 'Rio de Janeiro', 'RJ', '(9876-5432', '99876-5432', '98.765.432/0001-11');

-- Insert dummy data into Produto
INSERT INTO Produto (id_categoria, id_modelo, descricao_produto, valor_custo, venda_custo, data_cadastro, quantidade_min, quantidade_estoque, codigo, unidade, data_atualizacao, id_filial) VALUES
(1, 4, 'Produto 1', 10.00, 15.00, '2024-01-01', 5, 50, 1001, 'UN', '2024-01-01', 1),
(2, 5, 'Produto 2', 20.00, 30.00, '2024-02-01', 10, 30, 1002, 'UN', '2024-02-01', 2);

-- Insert dummy data into Funcionario
INSERT INTO Funcionario (nome_funcionario, data_admissao, data_demissao, departamento, funcao, senha, id_filial, permissao) VALUES
('Funcionario 1', '2023-01-01', NULL, 'Vendas', 'Atendente', 'senha123', 1, 1),
('Funcionario 2', '2023-02-01', NULL, 'Suporte', 'Tecnico', 'senha456', 2, 0);

-- Insert dummy data into Acessorio
INSERT INTO Acessorio (descricao_acessorio) VALUES
('Acessorio 1'),
('Acessorio 2');

-- Insert dummy data into Servico
INSERT INTO Servico (descricao_servico, valor_servico) VALUES
('Servico 1', 50.00),
('Servico 2', 75.00);

-- Insert dummy data into TipoAtendimento
INSERT INTO TipoAtendimento (descricao_tipo_atendimento) VALUES
('Atendimento 1'),
('Atendimento 2');

-- Insert dummy data into Cliente
INSERT INTO Cliente (nome_cliente, nome_social, data_cadastro, cpf, cnpj, inscricao_municipal, data_atualizacao, senha) VALUES
('Cliente 1', 'Cliente Social 1', '2023-01-01', '123.456.789-00', NULL, '12345', '2024-01-01', 'senha789'),
('Cliente 2', 'Cliente Social 2', '2023-02-01', '987.654.321-00', '12.345.678/0001-10', '54321', '2024-02-01', 'senha012');

-- Insert dummy data into Endereco
INSERT INTO Endereco (tipo_endereco, endereco, complemento, bairro, cidade, estado, cep, observacao, id_cliente) VALUES
('Residencial', 'Rua das Flores, 123', 'Apto 101', 'Jardins', 'São Paulo', 'SP', '01234-567', 'Perto da praça', 1),
('Comercial', 'Avenida Brasil, 456', 'Sala 202', 'Centro', 'Rio de Janeiro', 'RJ', '98765-432', 'Em frente ao banco', 2);

-- Insert dummy data into Telefone
INSERT INTO Telefone (tipo_telefone, numero, contato, id_cliente) VALUES
('Celular', '91234-5678', 'Contato 1', 1),
('Residencial', '99876-5432', 'Contato 2', 2);

-- Insert dummy data into Email
INSERT INTO Email (tipo_email, email, id_cliente) VALUES
('Pessoal', 'cliente1@example.com', 1),
('Profissional', 'cliente2@empresa.com', 2);

-- Insert dummy data into Status_
INSERT INTO Status_ (descricao_status, tipo_status) VALUES
('Status 1', 'Tipo 1'),
('Status 2', 'Tipo 2');

-- Insert dummy data into PlanoPagamento
INSERT INTO PlanoPagamento (descricao_plano_pagamento, parcelas, juros) VALUES
('Plano 1', 3, 1.50),
('Plano 2', 6, 2.00);

-- Insert dummy data into OrdemServico
INSERT INTO OrdemServico (id_servico, data_abertura, id_modelo, id_tipo_atendimento, descricao_problema, especificacao, data_compra, descricao_servico, valor_mo, id_cliente, id_status, id_plano_pagamento, data_exclusao) VALUES
(1, '2024-03-01', 4, 1, 'Problema 1', 'Especificacao 1', '2023-01-01', 'Descricao Servico 1', 100.00, 1, 1, 1, '2025-03-01'),
(2, '2024-04-01', 5, 2, 'Problema 2', 'Especificacao 2', '2023-02-01', 'Descricao Servico 2', 150.00, 2, 2, 2, '2025-04-01');

-- Insert dummy data into OSAcessorio
INSERT INTO OSAcessorio (id_os, id_acessorio) VALUES
(7, 1),
(8, 2);

-- Insert dummy data into Responsavel
INSERT INTO Responsavel (id_os, id_funcionario) VALUES
(7, 1),
(8, 2);

-- Insert dummy data into OSServico
INSERT INTO OSServico (id_os, descricao_os_servico, valor_unitario_os_servico, quantidade_os_servico) VALUES
(7, 'Servico Extra 1', 50.00, 2),
(8, 'Servico Extra 2', 75.00, 1);

-- Insert dummy data into Venda
INSERT INTO Venda (id_plano_pagamento, id_atendente, id_status, id_cliente, venda_online, data_abertura, observacao_venda, data_pagamento_ok, data_fechamento, valor_desconto, valor_total, observacoes_fechamento, data_garantia, data_exclusao, id_endereco_entrega) VALUES
(1, 1, 1, 1, 1, '2024-01-01', 'Observacao 1', '2024-01-15', '2024-01-30', 10.00, 90.00, 'Observacao Fechamento 1', '2025-01-01', '2025-01-31', 1),
(2, 2, 2, 2, 0, '2024-02-01', 'Observacao 2', '2024-02-15', '2024-02-28', 15.00, 135.00, 'Observacao Fechamento 2', '2025-02-01', '2025-02-28', 2);

-- Insert dummy data into FormaPagamento
INSERT INTO FormaPagamento (descricao_forma_pagamento) VALUES
('Forma 1'),
('Forma 2');

-- Insert dummy data into Faturamento
INSERT INTO Faturamento (id_venda, id_os, id_forma_pagamento, venda) VALUES
(1, 7, 1, 1),
(2, 8, 2, 0);

-- Insert dummy data into ItemVenda
INSERT INTO ItemVenda (id_venda, id_produto, quantidade_item) VALUES
(1, 11, 2),
(2, 12, 1);
