-- PARTE 1 --

-- Insere medicamentos
USE hospital_db_Lucas_Tomaz;

INSERT INTO medicamento (id_medicamento, nome, dosagem)
VALUES
('1', 'Paracetamol', '500mg'),
('2', 'Ibuprofeno', '200mg'),
('3', 'Amoxicilina', '250mg'),
('4', 'Ácido Tranexâmico', '250mg'),
('5', 'Dorflex', '300mg');

-- Insere receitas relacionadas a consultas
INSERT INTO receita (id_receita, id_consulta)
VALUES
('1', '1'),
('2', '10'),
('3', '2'),
('4', '9'),
('5', '3');

-- Relaciona medicamentos às especialidades
INSERT INTO medicamento_has_especialidade (id_medicamento, nome, dosagem)
VALUES
('1', 'Paracetamol', '500mg'), 
('2', 'Ibuprofeno', '200mg'),  
('3', 'Amoxicilina', '250mg'), 
('4', 'Ácido Tranexâmico', '250mg'),  
('5', 'Dorflex', '300mg'); 

USE hospital_db_Lucas_Tomaz;

-- Insere consultas
INSERT INTO consulta (id_consulta, data_hora, valor_consulta, id_medico, id_paciente, id_convenio, numero_carteira, especialidade_busca)
VALUES
('1', '2020-03-15 10:30:00', '150.00', '1', '1', NULL, '123456', 'neurocirurgião'),
('2', '2021-05-20 14:45:00', '200.00', '2', '2', NULL, '234567', 'pediatria'),
('3', '2018-08-10 09:15:00', '180.00', '3', '3', NULL, NULL, 'gastroenterologia'),
('4', '2019-11-25 16:00:00', '220.00', '4', '4', NULL, '345678', 'dermatologia'),
('5', '2017-02-08 11:30:00', '190.00', '5', '5', NULL, '456789', 'clínica geral'),
('6', '2022-07-12 13:00:00', '170.00', '6', '6', NULL, '567890', 'pediatria'),
('7', '2020-09-05 15:45:00', '200.00', '7', '7', NULL, '678901', 'endocrinologista'),
('8', '2018-12-30 08:00:00', '180.00', '8', '8', NULL, '789012', 'dermatologia'),
('9', '2019-06-18 14:30:00', '210.00', '9', '9', NULL, NULL, 'clínica geral'),
('10', '2021-04-03 12:15:00', '190.00', '10', '10', NULL, '890123', 'neurocirurgião');

SELECT * FROM consulta;

USE hospital_db_Lucas_Tomaz;

-- Insere enfermeiros
INSERT INTO enfermeiro (id, nome, cpf, cre)
VALUES
('1', 'João Pereira', '12345678901', 'ABC123'),
('2', 'Maria Oliveira', '23456789012', 'DEF456'),
('3', 'Carlos Silva', '34567890123', 'GHI789'),
('4', 'Ana Souza', '45678901234', 'JKL012'),
('5', 'Lucas Santos', '56789012345', 'MNO345'),
('6', 'Isabel Pereira', '67890123456', 'PQR678');

SELECT * FROM enfermeiro;

USE hospital_db_Lucas_Tomaz;

-- Insere especialidades
INSERT INTO especialidade (id_especialidade, nome)
VALUES 
('1', 'neurocirurgião'),
('2', 'pediatria'),
('3', 'clínica geral'),
('4', 'gastroenterologia'),
('5', 'dermatologia'),
('6', 'endocrinologista'),
('7', 'ginecologista');

SELECT * FROM especialidade;

USE hospital_db_Lucas_Tomaz;

-- Insere internações
INSERT INTO internacao (id, data_entrada, data_prev_alta, data_alta, procedimento, id_paciente, id_medico)
VALUES
('1', '2020-01-05', '2020-01-10', '2020-01-09', 'Cirurgia de apendicite', '1', '1'),
('2', '2018-04-12', '2018-04-20', '2018-04-18', 'Tratamento de fratura', '2', '2'),
('3', '2019-07-22', '2019-08-05', '2019-08-03', 'Cirurgia cardíaca', '3', '3'),
('4', '2022-02-10', '2022-02-15', NULL, 'Observação pós-operatória', '4', '1'),
('5', '2017-09-08', '2017-09-15', '2017-09-14', 'Tratamento de pneumonia', '5', '5'),
('6', '2021-11-30', '2021-12-10', '2021-12-08', 'Cirurgia de joelho', '6', '6'),
('7', '2018-06-25', '2018-07-05', '2018-07-03', 'Tratamento de apneia', '7', '7'),
('8', '2019-03-18', '2019-03-25', '2019-03-23', 'Tratamento de fratura', '2', '2'),
('9', '2020-11-15', '2020-11-25', '2020-11-23', 'Cirurgia de apendicite', '1', '1'),
('10', '2021-08-10', '2021-08-20', NULL, 'Observação pós-operatória', '4', '2');

SELECT * FROM internacao;

USE hospital_db_Lucas_Tomaz;

-- Insere médicos
INSERT INTO medico (id_medico, nome, crm)
VALUES 
('1', 'Yasmin Moreira', 'SP 123456'),
('2', 'Gabriel Silva', 'MG 987654'),
('3', 'Ana Souza', 'RJ 567890'),
('4', 'Lucas Oliveira', 'RS 321098'),
('5', 'Mariana Santos', 'SP 456789'),
('6', 'Rafaela Lima', 'SC 789012'),
('7', 'Rodrigo Almeida', 'PR 345678'),
('8', 'Juliana Pereira', 'GO 901234'),
('9', 'Fernando Costa', 'BA 567890'),
('10', 'Aline Rocha', 'DF 123456');

SELECT * FROM medico;

USE hospital_db_Lucas_Tomaz;

-- Insere pacientes
INSERT INTO paciente (id_paciente, nome, data_nascimento, endereco, telefone, email, documento)
VALUES 
('1', 'Maria Silva', '1990-05-15', 'Rua A, 123', '(11) 1234-5678', 'maria@email.com', '123.456.789-01'),
('2', 'José Santos', '1985-08-20', 'Av B, 456', '(11) 2345-6789', 'jose@email.com', '234.567.890-12'),
('3', 'Ana Oliveira', '1992-02-10', 'Rua C, 789', '(11) 3456-7890', 'ana@email.com', '345.678.901-23'),
('4', 'Carlos Pereira', '1980-11-30', 'Av D, 987', '(11) 4567-8901', 'carlos@email.com', '456.789.012-34'),
('5', 'Julia Rodrigues', '1995-07-25', 'Rua E, 234', '(11) 5678-9012', 'julia@email.com', '567.890.123-45'),
('6', 'Lucas Almeida', '1988-04-05', 'Av F, 567', '(11) 6789-0123', 'lucas@email.com', '678.901.234-56'),
('7', 'Fernanda Costa', '1998-09-18', 'Rua G, 789', '(11) 7890-1234', 'fernanda@email.com', '789.012.345-67'),
('8', 'Ricardo Lima', '1983-12-12', 'Av H, 123', '(11) 8901-2345', 'ricardo@email.com', '890.123.456-78'),
('9', 'Mariana Souza', '1993-06-08', 'Rua I, 456', '(11) 9012-3456', 'mariana@email.com', '901.234.567-89'),
('10', 'Pedro Rocha', '1987-03-22', 'Av J, 678', '(11) 0123-4567', 'pedro@email.com', '012.345.678-90');

SELECT * FROM paciente;

USE hospital_db_Lucas_Tomaz;

-- Insere quartos
INSERT quarto(id, numero)

VALUES
('1', '101'),
('2', '201'),
('3', '301');

SELECT * FROM quarto;

USE hospital_db_Lucas_Tomaz;

-- Insere convênios
INSERT INTO convenio (id_convenio, nome, cnpj, tempo_carencia)
VALUES
('1', 'Unimed', '12345678901234', 30),
('2', 'Amil', '56789012345678', 60),
('3', 'SulAmérica', '90123456789012', 45),
('4', 'Bradesco Saúde', '34567890123456', 30);

-- Atualiza o convênio de alguns pacientes
UPDATE paciente SET id_convenio = '1' WHERE id_paciente IN (1, 2, 3, 4, 5);
UPDATE paciente SET id_convenio = '2' WHERE id_paciente IN (6, 7, 8, 9, 10);

-- Atualiza o convênio de algumas consultas
UPDATE consulta SET id_convenio = '1' WHERE id_consulta IN (1, 2);
UPDATE consulta SET id_convenio = '2' WHERE id_consulta IN (3, 4);
UPDATE consulta SET id_convenio = '4' WHERE id_consulta IN (5);

USE hospital_db_Lucas_Tomaz;

-- Insere tipos de quarto
INSERT INTO tipo_quarto (id, descricao, valor_diaria)
VALUES
('1', 'apartamentos', '300'),
('2', 'quartos duplos', 150),
('3', 'enfermaria', 50);

SELECT * FROM tipo_quarto;

-- PARTE 2 --
USE hospital_db_Lucas_Tomaz;

-- Adiciona a coluna "em_atividade" à tabela "medico"
ALTER TABLE medico ADD COLUMN em_atividade BIT;

UPDATE medico SET em_atividade = 1 WHERE id_medico IN (1, 2);
UPDATE medico SET em_atividade = 0 WHERE id_medico NOT IN (1, 2);

-- Atualiza as datas de alta nas internações em quartos de enfermaria
SET SQL_SAFE_UPDATES = 0;
UPDATE internacao SET data_alta = DATE_ADD(data_entrada, INTERVAL 3 DAY) WHERE procedimento = 'enfermaria';
SET SQL_SAFE_UPDATES = 1;

-- Exclui consultas relacionadas ao último convênio
DELETE FROM consulta WHERE id_convenio = 4;

-- Exclui o último convênio
DELETE FROM convenio WHERE id_convenio = 4;
