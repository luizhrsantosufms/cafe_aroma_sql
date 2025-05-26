# 🗃️ Café Aroma – Banco de Dados SQL

Este repositório contém a estrutura e a manipulação de dados para um sistema de pedidos de uma cafeteria fictícia chamada **Café Aroma**. O projeto foi desenvolvido como parte do módulo de **Banco de Dados e Controle de Versão** da disciplina _Projeto Integrador em Tecnologia da Informação II_ – UFMS.

---

## 📐 Modelagem do Banco

O banco de dados contém duas tabelas principais:

- `usuarios`: armazena os dados dos clientes.
- `pedidos`: armazena os pedidos realizados.

### 💡 Relacionamento:
- Cada pedido está relacionado a **um único usuário** (`usuarios.id → pedidos.usuario_id`)

---

## 📄 Scripts SQL

### ✅ `cafe_aroma.sql`

Contém os comandos para **criação das tabelas** e **inserção inicial de dados**:

```sql
CREATE TABLE usuarios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    senha TEXT NOT NULL
);

CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    usuario_id INTEGER,
    produto TEXT NOT NULL,
    valor REAL NOT NULL,
    data TEXT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- Inserção de dados fictícios
INSERT INTO usuarios (nome, email, senha) VALUES
('João Silva', 'joao@email.com', '123456'),
('Maria Souza', 'maria@email.com', 'senha123'),
('Carlos Lima', 'carlos@email.com', 'abc123');

INSERT INTO pedidos (usuario_id, produto, valor, data) VALUES
(1, 'Espresso', 5.00, '2025-05-20'),
(2, 'Cappuccino', 7.00, '2025-05-20'),
(1, 'Latte', 6.50, '2025-05-21');
```

💻 Como testar
Instale um gerenciador de banco SQLite como:

DB Browser for SQLite

Extensão "SQLite Viewer" no VS Code

Copie e cole os comandos do cafe_aroma.sql

Execute o script e visualize os dados


🧑‍🎓 Autor
Luiz Henrique Ramos dos Santos
Curso: Tecnologia da Informação
Universidade Federal de Mato Grosso do Sul – UFMS
Disciplina: Projeto Integrador II – 2025
