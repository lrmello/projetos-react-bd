CREATE TABLE `pagamento` (
  `id_pagamento` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `id_consulta` int,
  `metodoPagamento` varchar(10),
  `valor` int,
  `dataPagamento` date
);