

ALTER TABLE `estoque` ADD FOREIGN KEY (`idProdutos`) REFERENCES `produtos` (`idProdutos`);

ALTER TABLE `pedido` ADD FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`);

ALTER TABLE `itensPedido` ADD FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`);

ALTER TABLE `itensPedido` ADD FOREIGN KEY (`idProdutos`) REFERENCES `produtos` (`idProdutos`);

ALTER TABLE `transporte` ADD FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`);

ALTER TABLE `pagamento` ADD FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`);


SELECT p.id, p.nome, p.preco, c.nomeCliente
FROM produtos p
INNER JOIN clientes c ON p.idCliente = c.id;

SELECT p.nomeProduto, c.nomeCliente
FROM produtos p
LEFT JOIN clientes c ON p.idCliente = c.idCliente;

SELECT p.nomeProduto, c.nomeCliente
FROM produtos p
RIGHT JOIN clientes c ON p.idCliente = c.idCliente;

SELECT *
FROM clientes;

SELECT SUM(ip.quantidade) AS total_produtos_vendidos
FROM Pedido p
INNER JOIN ItemPedido ip ON p.id = ip.id_pedido
WHERE YEAR(p.dataPedido) = 2022;