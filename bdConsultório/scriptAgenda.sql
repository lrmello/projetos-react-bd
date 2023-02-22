CREATE TABLE `agenda` (
  `id_agenda` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `id_medico` int,
  `dataAgenda` date,
  `horaAgenda` time,
  `duracaoConsulta` time
);
