USE hospital_db_Lucas_Tomaz;

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