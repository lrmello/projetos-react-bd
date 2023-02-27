

ALTER TABLE `medico` ADD FOREIGN KEY (`nome`) REFERENCES `paciente` (`id_paciente`);

ALTER TABLE `medico` ADD FOREIGN KEY (`especialidade`) REFERENCES `materiais` (`nomeEquipamento`);

ALTER TABLE `funcionario` ADD FOREIGN KEY (`nomeFuncionario`) REFERENCES `paciente` (`nome`);

ALTER TABLE `funcionario` ADD FOREIGN KEY (`emailFuncionario`) REFERENCES `paciente` (`email`);

ALTER TABLE `consulta` ADD FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`);

ALTER TABLE `consulta` ADD FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id_medico`);

ALTER TABLE `agenda` ADD FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id_medico`);

ALTER TABLE `pagamento` ADD FOREIGN KEY (`id_consulta`) REFERENCES `consulta` (`id_consulta`);

ALTER TABLE `medico` ADD FOREIGN KEY (`telefone`) REFERENCES `medico` (`id_medico`);
