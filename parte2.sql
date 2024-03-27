use trabalhop1;

INSERT INTO Cliente (nome, endereco, email, celular, data_nascimento) 
VALUES ('Cliente1', 'Endereco1', 'cliente1@email.com', '123456789', '1990-01-01'),
       ('Cliente2', 'Endereco2', 'cliente2@email.com', '987654321', '1995-05-05'),
       ('Cliente3', 'Endereco3', 'cliente3@email.com', '456789123', '1985-10-10'),
       ('Cliente4', 'Endereco4', 'cliente4@email.com', '321654987', '1980-03-15');

INSERT INTO Produto (nome, preco, descricao, quantidade_estoque)
VALUES ('Produto1', 50.00, 'Descrição do Produto 1', 100),
       ('Produto2', 100.00, 'Descrição do Produto 2', 50),
       ('Produto3', 75.00, 'Descrição do Produto 3', 75),
       ('Produto4', 120.00, 'Descrição do Produto 4', 200);

INSERT INTO Pedido (numero_pedido, data_compra, valor_total, data_estimada_entrega, id_cliente)
VALUES ('PED0001', '2024-03-25', 250.00, '2024-04-01', 1),
       ('PED0002', '2024-03-26', 300.00, '2024-04-03', 2);

INSERT INTO ItemPedido (quantidade, valor_unitario, valor_total_item, id_pedido, id_produto)
VALUES (2, 50.00, 100.00, 1, 1),
       (1, 100.00, 100.00, 1, 2),
       (3, 75.00, 225.00, 2, 3),
       (2, 120.00, 240.00, 2, 4);
 
UPDATE Cliente SET celular = '999999999' WHERE id_cliente = 1;
UPDATE Produto SET quantidade_estoque = 150 WHERE id_produto = 1;

DELETE FROM Cliente WHERE id_cliente = 4;
DELETE FROM Produto WHERE id_produto = 2;