CREATE VIEW vw_Produto_Modelo AS
SELECT 
    Produto.id_produto,
    Produto.descricao_produto,
    Produto.valor_custo,
    Produto.venda_custo,
    Produto.quantidade_estoque,
    Modelo.descricao_modelo,
    Modelo.id_marca,
    Modelo.id_tipo_produto
FROM 
    Produto
JOIN 
    Modelo ON Produto.id_modelo = Modelo.id_modelo;

