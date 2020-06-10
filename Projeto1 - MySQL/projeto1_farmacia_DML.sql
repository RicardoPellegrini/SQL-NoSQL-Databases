# Inserindo dados de teste - DML

-- Tipos de produtos
INSERT INTO tipos_produtos (tipo) VALUES ('Remedios');
INSERT INTO tipos_produtos (tipo) VALUES ('Cosmeticos');
INSERT INTO tipos_produtos (tipo) VALUES ('Diversos');

-- Fabricantes
INSERT INTO fabricantes (nome) VALUES ('Roche');
INSERT INTO fabricantes (nome) VALUES ('Vitalis');
INSERT INTO fabricantes (nome) VALUES ('Palmolive');

-- Medicos
INSERT INTO medicos (nome, crm) VALUES ('Alfredo Muniz','123123SP');
INSERT INTO medicos (nome, crm) VALUES ('Fernanda Silva','456456MG');
INSERT INTO medicos (nome, crm) VALUES ('Julieta Santana','789798SC');

-- Clientes
INSERT INTO clientes (nome, endereco, telefone, cep, localidade, cpf) 
	VALUES ('Felicity Jones', 'Rua da Paz, 34', '(13) 9393-9393', '12345-000','Santos', '123.123.123-12');
INSERT INTO clientes (nome, endereco, telefone, cep, localidade, cpf) 
	VALUES ('Angelina Jolie', 'Rua do Ipiranga, 456', '(11) 8452-9638','78965-100','Sao Paulo', '456.456.456-45');
INSERT INTO clientes (nome, endereco, telefone, cep, localidade, cpf) 
	VALUES ('Roberto Carlos Junior', 'Rua da Gavia, 123', '(21) 7418-8523','74185-900','Rio de Janeiro', '985.986.369-54');

-- Produtos
INSERT INTO produtos (produto, designacao, composicao, preco, id_fabricante, id_tipo_produto)
	VALUES ('Dipirona', 'Dorem em geral', 'metilpropileno', '12.44',1,1);
INSERT INTO produtos (produto, designacao, composicao, preco, id_fabricante, id_tipo_produto)
	VALUES ('Sabonete', 'Assepsia', 'gorduras e aromatizantes', '3.56',2,2);
INSERT INTO produtos (produto, designacao, composicao, preco, id_fabricante, id_tipo_produto)
	VALUES ('Protetor solar', 'Protecao da pele', 'soro de abacate', '98.12',2,1);
    
-- Compras
INSERT INTO compras (id_cliente, data) VALUES (1,'2019-03-10');
INSERT INTO compras (id_cliente, data) VALUES (2,'2019-04-15');
INSERT INTO compras (id_cliente, data) VALUES (1,'2019-05-18');

-- Produtos/Compra
INSERT INTO produtos_compra (id_produto, id_compra, quantidade)	VALUES (1,1,2);
INSERT INTO produtos_compra (id_produto, id_compra, quantidade)	VALUES (1,2,3);
INSERT INTO produtos_compra (id_produto, id_compra, quantidade)	VALUES (2,3,1);

-- Receitas medicas
INSERT INTO receitas_medicas (id_produto_compra, id_medico) VALUES (1,1);
INSERT INTO receitas_medicas (id_produto_compra, id_medico) VALUES (3,2);
