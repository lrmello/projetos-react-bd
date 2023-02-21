CREATE TABLE `paciente` (
  `id_paciente` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(30),
  `email` varchar(50),
  `dtNascimento` date,
  `endereco` text,
  `telefone` varchar(15),
  `genero` varchar(1)
);

INSERT INTO `Cliente` (nome,endereco,email,telefone) VALUES
("Leonardo","leozinhodazonasul@email.com", "rua Jose Maria","(11) 9312-3151"),
('Douglas Almeida Alves','douglas@email.com','Rua 113, 1723' , '(11) 7510-5760'),
('Marina Cardoso Barbosa','maria@emai.com', 'Alameda Cantão, 1971', '(21) 6543-1805'),
('Fernanda Carvalho Martins','fernanda@email.com', 'Rua Malaquias, 1798','(64) 8731-9887'),
('Igor Ferreira Costa','igor@emial.com','Passagem Palheta, 695', '(91) 9703-8242'),
('André Cavalcanti Silva', 'andre@email.com', 'Rua Maria Adelaide, 198', '(31) 3602-5222'),
('Anna Goncalves Azevedo', 'anna@email.com', 'Avenida Leste, 142', '(92) 4424-2335'),
('Rafaela Cunha Lima', 'rafaela@email.com', 'Avenida dos Boiadeiros, 340', '(34) 5054-8032'),
('Beatrice Souza Cunha', 'bea@email.com', 'Praça Itália, 1943', '(41) 4018-6128'),
('Sophia Pereira Silva', 'soph@email.com', 'Rua Maria da Penha Farias, 1195', '(83) 2925-9802'),
('Carla Sousa Rocha', 'carlinha@email.com', 'Rua José Américo de Almeida, 1457', '(41) 7008-8625'),
("Jubileu Mendes","pipoca@gmail.com", "rua Jose Maria,34","(11)9312-3151"),
("Isabela Goncalves Lima","IsabelaGoncalvesLima@armyspy.com ", "Avenida Jequitibá, 1662 Valinhos SP 13272-170 ","(19) 6160-4795"),
("Bruna Santos Melo","BrunaSantosMelo@jourrapide.com ", "Avenida Ipiranga, 1877 Vila Velha-ES 29125-350","(27) 6971-9485"),
("Felipe Oliveira Cavalcanti","FelipeOliveiraCavalcanti@rhyta.com", "Rua Bernardo Moreira de Sá,1671 São Paulo-SP 03283-150 ","(11) 5964-6349"),
("Mariana Correia Santos","MarianaCorreiaSantos@dayrep.com ", "Rua Rafael Frederico, 1900 São Paulo-SP 03880-040 ","(11) 3291-9777"),
("Gabriela Melo Ferreira","GabrielaMeloFerreira@dayrep.com ", "Quadra Quadra 106, 1946 Recanto das Emas-DF 72601-200 ","(61) 9796-9036"),
("Julian Barros Cardoso","JulianBarrosCardoso@jourrapide.com", "Avenida Nuno de Assis, 457 Bauru SP 17060-255 ","(14) 9222-6967"),
("Breno Oliveira Correia","BrenoOliveiraCorreia@dayrep.com", "Rua Padre Joaquim Sampaio, 487,Teresina-PI,64046-070 ","(86) 7419-2531"),
("Sophia Cardoso Fernandes","SophiaCardosoFernandes@jourrapide.com", "Área Especial 04, 1350 Brazlândia-DF 72710-640","(61) 3745-9177"),
("João Almeida Dias","JoaoAlmeidaDias@teleworm.us", "Rua Frederico Carlos Bobbins, 633 Curitiba-PR 81240-530","(41) 3725-8694"),
("Kauan Alves Cavalcanti","KauanAlvesCavalcanti@rhyta.com", "Rua Paxau, 1761 São Paulo-SP 02365-190  ","(11) 8295-2465");