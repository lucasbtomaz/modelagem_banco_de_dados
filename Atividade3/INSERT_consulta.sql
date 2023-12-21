USE hospital_db_Lucas_Tomaz;

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