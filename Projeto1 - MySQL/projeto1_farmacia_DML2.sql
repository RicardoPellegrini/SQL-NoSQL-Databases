### Atualizando dados - DML

-- Tipos de produtos
SELECT * FROM tipos_produtos;
UPDATE tipos_produtos
	SET tipo = 'Bijuterias'
    WHERE id = 3;
 
-- Produtos
SELECT * FROM produtos;
UPDATE produtos
	SET preco = '4.16', id_tipo_produto = 1, id_fabricante = 1
    WHERE id = 2;

### Excluindo dados

-- Produtos/Compra
SELECT * FROM produtos_compra;
DELETE FROM produtos_compra
	WHERE id = 3; ## Para que seja possivel deletar esse id, devemos excluir outros itens dependendentes em outras tabelas
    
SELECT * FROM receitas_medicas;
DELETE FROM receitas_medicas
	WHERE id_produto_compra = 3;
    
    