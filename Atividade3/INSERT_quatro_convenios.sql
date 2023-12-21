USE hospital_db_Lucas_Tomaz;

INSERT INTO convenio (id_convenio, nome, cnpj, tempo_carencia)
VALUES
('1', 'Unimed', '12345678901234', 30),
('2', 'Amil', '56789012345678', 60),
('3', 'SulAmérica', '90123456789012', 45),
('4', 'Bradesco Saúde', '34567890123456', 30);

UPDATE paciente SET id_convenio = '1' WHERE id_paciente IN (1, 2, 3, 4, 5);
UPDATE paciente SET id_convenio = '2' WHERE id_paciente IN (6, 7, 8, 9, 10);

UPDATE consulta SET id_convenio = '1' WHERE id_consulta IN (1, 2);
UPDATE consulta SET id_convenio = '2' WHERE id_consulta IN (3, 4);
UPDATE consulta SET id_convenio = '4' WHERE id_consulta IN (5);
