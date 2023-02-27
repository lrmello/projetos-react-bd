CREATE SCHEMA `consultorio_bd` use `consultorio_bd`

CREATE TABLE `paciente` (
  `id_paciente` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(30),
  `email` varchar(50),
  `dtNascimento` date,
  `endereco` text,
  `telefone` varchar(15),
  `genero` varchar(1)
);

CREATE TABLE `medico` (
  `id_medico` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(30),
  `telefone` varchar(15),
  `especialidade` varchar(30)
);

CREATE TABLE `materiais` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nomeEquipamento` varchar(30),
  `qtd` int(30)
);

CREATE TABLE `funcionario` (
  `id_funcionario` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nomeFuncionario` varchar(30),
  `emailFuncionario` varchar(30)
);

CREATE TABLE `consulta` (
  `id_consulta` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `id_paciente` int,
  `id_medico` int,
  `dataConsulta` date,
  `horaConsulta` time,
  `duracaoConsulta` time,
  `sintomasPaciente` varchar(255),
  `diagnosticoMedico` varchar(255),
  `prescricaoMedico` varchar(255)
);

CREATE TABLE `agenda` (
  `id_agenda` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `id_medico` int,
  `dataAgenda` date,
  `horaAgenda` time,
  `duracaoConsulta` time
);

CREATE TABLE `pagamento` (
  `id_pagamento` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `id_consulta` int,
  `metodoPagamento` varchar(10),
  `valor` int,
  `dataPagamento` date
);