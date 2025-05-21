
-- CONSULTAS
-- Selecionar todos os produtos
SELECT * FROM produtos;

-- Selecionar todos os pedidos com o nome do produto
SELECT pedidos.id, produtos.nome, pedidos.quantidade, pedidos.data
FROM pedidos
JOIN produtos ON pedidos.produto_id = produtos.id;

-- INSERÇÃO DE NOVO PRODUTO
INSERT INTO produtos (id, nome, preco) VALUES (4, 'Macchiato', 7.50);

-- ATUALIZAÇÃO DE PREÇO DE PRODUTO
UPDATE produtos SET preco = 5.50 WHERE nome = 'Espresso';

-- REMOÇÃO DE UM PEDIDO
DELETE FROM pedidos WHERE id = 2;

-- CONSULTAR PEDIDOS FEITOS NO DIA 2025-05-21
SELECT * FROM pedidos WHERE data = '2025-05-21';
