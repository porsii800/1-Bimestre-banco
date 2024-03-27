create database trabalhop1;
use trabalhop1;

create table Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    endereco VARCHAR(200),
    email VARCHAR(100),
    celular VARCHAR(20),    data_nascimento DATE
);

create table Produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    descricao TEXT,
    quantidade_estoque INT
);

create table Pedido (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    numero_pedido VARCHAR(20),
    data_compra DATE,
    valor_total DECIMAL(10,2),
    data_estimada_entrega DATE,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

create table ItemPedido (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    quantidade INT,
    valor_unitario DECIMAL(10,2),
    valor_total_item DECIMAL(10,2),
    id_pedido INT,
    id_produto INT,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);
