### Realizando consultas simples - DQL

-- Tipos de produtos
SELECT * FROM tipos_produtos;
SELECT tipo, id FROM tipos_produtos
	ORDER BY tipo DESC;
    
-- Fabricantes
SELECT * FROM fabricantes;

-- Medicos
SELECT * FROM medicos;

-- Clientes
SELECT * FROM clientes;



-- Produtos/Compra
SELECT * FROM produtos_compra;
SELECT * FROM produtos_compra WHERE quantidade > 2;

-- Receitas medicas
SELECT * FROM receitas_medicas;

-- Compras
# Mostrar compras
SELECT * FROM compras;

# Mostrar nomes e datas dos clientes que compraram
SELECT com.id AS 'ID Compra', cli.nome AS 'Cliente', com.data AS 'Data'
	FROM compras AS com, clientes AS cli
	WHERE com.id_cliente = cli.id;
    
# Mostrar os produtos das compras
SELECT proc.id 'Produto Compra',
	com.id 'Compra',
    prod.produto 'Produto',
    prod.preco 'Preço',
    proc.quantidade 'Quantidade',
    (prod.preco * proc.quantidade) 'Total produto'
	FROM produtos_compra AS proc, compras AS com, produtos AS prod
    WHERE com.id = proc.id_compra AND prod.id = proc.id_produto;
    
# Melhorando a apresentacao para o resultado final
SELECT com.id 'Venda',
    cli.nome 'Cliente',
    com.data 'Data',
    SUM(prod.preco * proc.quantidade) 'Total'
	FROM produtos_compra AS proc, compras AS com, produtos AS prod, clientes AS cli
    WHERE com.id = proc.id_compra AND prod.id = proc.id_produto AND cli.id = com.id_cliente
    GROUP BY cli.nome;