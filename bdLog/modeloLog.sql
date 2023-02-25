CREATE SCHEMA `bd_log`

use `db_log`

CREATE TABLE `clientes` (
  `idCliente` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nomeCliente` varchar(50),
  `enderecoEntrega` varchar(100),
  `numeroTelefone` int(15),
  `email` varchar(50)
  `cep` decimal(8,2)
);

CREATE TABLE `produtos` (
  `idProdutos` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nomeProduto` varchar(255),
  `precoProduto` int,
  `descricaoProduto` varchar(255),
  `unidadeMedida` int
);

CREATE TABLE `estoque` (
  `idEstoque` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `idProdutos` int,
  `quantidadeEstoque` int,
  `quantidadeMin` int,
  `quantidadeMax` int
);

CREATE TABLE `pedido` (
  `idPedido` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `idCliente` int,
  `dataPedido` datetime,
  `dataPrevistaEntrega` datetime,
  `valorPedido` int
);

CREATE TABLE `itensPedido` (
  `idPedido` int,
  `idProdutos` int,
  `idItem` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `quantidadeSol` int,
  `precoUnitario` int
);

CREATE TABLE `transporte` (
  `idTransporte` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `idPedido` int,
  `nomeTransportadora` varchar(255),
  `numeroRastreio` int,
  `dataEnvio` datetime,
  `dataEntrega` datetime
);

CREATE TABLE `pagamento` (
  `idPagamento` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `idPedido` int,
  `metodoPagamento` varchar(255),
  `valorPagamento` int,
  `dataPagamento` datetime
);

ALTER TABLE `estoque` ADD FOREIGN KEY (`idProdutos`) REFERENCES `produtos` (`idProdutos`);

ALTER TABLE `pedido` ADD FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`);

ALTER TABLE `itensPedido` ADD FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`);

ALTER TABLE `itensPedido` ADD FOREIGN KEY (`idProdutos`) REFERENCES `produtos` (`idProdutos`);

ALTER TABLE `transporte` ADD FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`);

ALTER TABLE `pagamento` ADD FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`);


INSERT INTO produtos (nomeProduto, precoProduto, descricaoProduto, unidadeMedida)
VALUES 
("Detergente Limpol", 2.99, "Detergente líquido concentrado para limpeza de louças e utensílios de cozinha.", "litro"),
("Sabão em Pó Omo", 10.99, "Sabão em pó para lavagem de roupas brancas e coloridas.", "quilo"),
("Amaciante Comfort", 7.99, "Amaciante para roupas com fragrâncias agradáveis e maciez prolongada.", "litro"),
("Limpador Multiuso Veja", 4.99, "Limpador multiuso para limpeza de superfícies como pisos, azulejos, banheiros e cozinha.", "litro"),
("Água Sanitária Qboa", 3.99, "Água sanitária para desinfecção e alvejamento de roupas brancas e limpeza geral.", "litro"),
("Desinfetante Pinho Sol", 5.99, "Desinfetante para limpeza e desinfecção de pisos, azulejos e banheiros.", "litro"),
("Lustra Móveis Poliflor", 6.99, "Lustra móveis para limpeza e brilho de superfícies de madeira e móveis em geral.", "litro"),
("Limpa Vidros Uau", 4.99, "Limpa vidros para limpeza de superfícies de vidro como janelas, espelhos e vitrines.", "litro"),
("Inseticida SBP", 8.99, "Inseticida para controle de mosquitos, moscas, baratas e outros insetos.", "litro"),
("Pano de Limpeza Scotch-Brite", 2.49, "Pano de limpeza multiuso para limpeza de diversas superfícies.", "unidade");


INSERT INTO clientes (nomeCliente, enderecoEntrega, numeroTelefone, email, cep)
VALUES 
("João da Silva", "Rua dos Alpes, 123 - Centro", "(11) 91234-5678", "joao.silva@email.com", "06813-240"),
("Maria dos Santos", "Av. dos Girassóis, 456 - Jardim das Flores", "(11) 99876-5432", "maria.santos@email.com", "06803-480"),
("Pedro da Cruz", "Rua das Rosas, 789 - Vila Nova", "(11) 98765-4321", "pedro.cruz@email.com", "06810-240"),
("Ana Paula Pereira", "Av. das Hortências, 234 - Jardim das Artes", "(11) 91234-5678", "ana.pereira@email.com", "06814-310"),
("Roberto Oliveira", "Rua das Margaridas, 345 - Jardim São Francisco", "(11) 99876-5432", "roberto.oliveira@email.com", "06805-400"),
("Lúcia da Costa", "Av. das Azaleias, 678 - Vila Esperança", "(11) 98765-4321", "lucia.costa@email.com", "06816-210"),
("Fernando Gomes", "Rua das Orquídeas, 901 - Parque das Artes", "(11) 91234-5678", "fernando.gomes@email.com", "06803-260"),
("Mariana Rodrigues", "Av. dos Cravos, 456 - Jardim São Luiz", "(11) 99876-5432", "mariana.rodrigues@email.com", "06807-320"),
("Ricardo Nunes", "Rua das Tulipas, 789 - Jardim do Sol", "(11) 98765-4321", "ricardo.nunes@email.com", "06809-290"),
("Lívia Oliveira", "Av. das Camélias, 234 - Vila Santa Tereza", "(11) 91234-5678", "livia.oliveira@email.com", "06802-400");

INSERT INTO estoque (idProdutos, quantidadeEstoque, quantidadeMin, quantidadeMax)
VALUES 
(1, 50, 10, 100),
(2, 100, 20, 200),
(3, 30, 5, 50),
(4, 200, 50, 500),
(5, 80, 10, 100),
(6, 40, 5, 50),
(7, 70, 10, 100),
(8, 150, 20, 200),
(9, 90, 15, 150),
(10, 120, 30, 300);

INSERT INTO pedido (idCliente, dataPedido, dataPrevistaEntrega, valorPedido)
VALUES 
(1, '2022-01-01', '2022-01-10', 150.00),
(2, '2022-01-02', '2022-01-11', 100.00),
(3, '2022-01-03', '2022-01-12', 200.00),
(4, '2022-01-04', '2022-01-13', 300.00),
(5, '2022-01-05', '2022-01-14', 250.00),
(6, '2022-01-06', '2022-01-15', 175.00),
(7, '2022-01-07', '2022-01-16', 80.00),
(8, '2022-01-08', '2022-01-17', 120.00),
(9, '2022-01-09', '2022-01-18', 90.00),
(10, '2022-01-10', '2022-01-19', 400.00);

INSERT INTO itensPedido (idPedido, idProdutos, quantidadeSol, precoUnitario)
VALUES 
(1, 1, 2, 20.00),
(1, 2, 3, 10.00),
(2, 3, 1, 25.00),
(2, 4, 5, 8.00),
(3, 5, 2, 15.00),
(3, 6, 4, 12.00),
(4, 7, 3, 18.00),
(4, 8, 1, 30.00),
(5, 9, 6, 6.00),
(5, 10, 2, 40.00);

INSERT INTO transporte (idPedido, nomeTransportadora, numeroRastreio, dataEnvio, dataEntrega)
VALUES
  (1, 'Transportadora Líder', 'TL-934854', '2022-02-10', '2022-02-14'),
  (2, 'TransLeste', 'TL-546132', '2022-03-08', '2022-03-10'),
  (3, 'Transporte Expresso', 'TE-789045', '2022-01-18', '2022-01-22'),
  (4, 'TransRápido', 'TR-327856', '2022-02-25', '2022-03-01'),
  (5, 'Transportadora Ideal', 'TI-915783', '2022-03-15', '2022-03-17'),
  (6, 'TransBrasil', 'TB-764230', '2022-01-29', '2022-02-02'),
  (7, 'Transporte Eficiente', 'TE-235467', '2022-02-14', '2022-02-17'),
  (8, 'TransSul', 'TS-156743', '2022-03-05', '2022-03-09'),
  (9, 'Transportadora Ágil', 'TA-409821', '2022-01-04', '2022-01-08'),
  (10, 'TransFácil', 'TF-682934', '2022-02-18', '2022-02-22');

INSERT INTO pagamento (idPedido, metodoPagamento, valorPagamento, dataPagamento)
VALUES (1, 'Pix', 150.0, '2022-02-23 10:30:00'),
       (2, 'Boleto', 300.0, '2022-02-24 11:45:00'),
       (3, 'Cartão de Crédito', 250.0, '2022-02-25 14:20:00'),
       (4, 'Pix', 200.0, '2022-02-25 16:50:00'),
       (5, 'Boleto', 100.0, '2022-02-26 09:00:00'),
       (6, 'Cartão de Crédito', 150.0, '2022-02-27 11:30:00'),
       (7, 'Pix', 400.0, '2022-02-27 14:45:00'),
       (8, 'Boleto', 120.0, '2022-02-28 10:00:00'),
       (9, 'Pix', 280.0, '2022-02-28 13:20:00'),
       (10, 'Cartão de Crédito', 190.0, '2022-03-01 15:00:00');

UPDATE Pedido
SET valorPedido = (
  SELECT SUM(ip.precoUnitario * ip.quantidadeSol)
  FROM itensPedido ip
  WHERE ip.idPedido = Pedido.id
)
WHERE Pedido.id IN (
  SELECT id
  FROM Pedido
  LIMIT 10
);

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