
-- Criação da tabela de produtos
CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(5,2) NOT NULL
);

-- Inserção de produtos
INSERT INTO produtos (id, nome, preco) VALUES (1, 'Espresso', 5.00);
INSERT INTO produtos (id, nome, preco) VALUES (2, 'Cappuccino', 7.00);
INSERT INTO produtos (id, nome, preco) VALUES (3, 'Latte', 6.50);

-- Criação da tabela de pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    produto_id INT,
    quantidade INT NOT NULL,
    data DATE NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserção de pedidos
INSERT INTO pedidos (id, produto_id, quantidade, data) VALUES (1, 1, 2, '2025-05-21');
INSERT INTO pedidos (id, produto_id, quantidade, data) VALUES (2, 2, 1, '2025-05-21');
INSERT INTO pedidos (id, produto_id, quantidade, data) VALUES (3, 3, 3, '2025-05-21');
