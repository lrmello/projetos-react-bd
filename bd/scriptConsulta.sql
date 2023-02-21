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