-- Tipos de produtos
INSERT INTO tipos_produtos (descricao) VALUES ('Computadores');
INSERT INTO tipos_produtos (descricao) VALUES ('Impressoras');
INSERT INTO tipos_produtos (descricao) VALUES ('Diversos');

-- Produtos
INSERT INTO produtos (descricao, preco, id_tipo_produto)
	VALUES ('Notebook DELL 1544', 2345.67, 1);
INSERT INTO produtos (descricao, preco, id_tipo_produto)
	VALUES ('Impressora jato de tinta', 456.00, 2);
INSERT INTO produtos (descricao, preco, id_tipo_produto)
	VALUES ('Mouse sem fio', 45.99, 3);
	
-- Pacientes
INSERT INTO pacientes (nome, endereco, bairro, cidade, estado, cep, data_nascimento)
	VALUES ('Manoel de Nobrega', 'Rua da Paz, 145', 'Nova Lima', 'Santos','SP','98567856','1978-04-25');
	
-- professor
INSERT INTO professor (telefone, nome) VALUES (78914499,'Carla Perez');

-- turma
INSERT INTO turma (capacidade, id_professor) VALUES (50,1);

-- Inserindo mais dados
INSERT INTO tipos_produtos (descricao) VALUES ('Notebook');
INSERT INTO produtos(descricao, preco, id_tipo_produto) VALUES ('Notebook',1200,1);
INSERT INTO produtos(descricao, preco, id_tipo_produto) VALUES ('IPad',2600,1);

-- UPDATE
UPDATE tipos_produtos SET descricao = 'Nobreak' WHERE id = 3;
UPDATE produtos SET descricao = 'Notebook', preco = '2800' WHERE id = 2;

-- DELETE
DELETE FROM produtos WHERE id_tipo_produto = 3;
DELETE FROM tipos_produtos WHERE id = 3;