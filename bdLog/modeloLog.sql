CREATE SCHEMA `bd_log`

use `db_log`

CREATE TABLE `clientes` (
  `idCliente` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nomeCliente` varchar(50),
  `enderecoEntrega` varchar(100),
  `numeroTelefone` int(15),
  `email` varchar(50)
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
  `dataPreEntrega` datetime,
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
