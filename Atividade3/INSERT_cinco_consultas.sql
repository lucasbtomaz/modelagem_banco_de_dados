USE hospital_db_Lucas_Tomaz;

INSERT INTO medicamento (id_medicamento, nome, dosagem)
VALUES
('1', 'Paracetamol', '500mg'),
('2', 'Ibuprofeno', '200mg'),
('3', 'Amoxicilina', '250mg'),
('4', 'Ácido Tranexâmico', '250mg'),
('5', 'Dorflex', '300mg');

INSERT INTO receita (id_receita, id_consulta)
VALUES
('1', '1'),
('2', '10'),
('3', '2'),
('4', '9'),
('5', '3');

INSERT INTO medicamento_has_especialidade (id_medicamento, nome, dosagem)
VALUES
('1', 'Paracetamol', '500mg'), 
('2', 'Ibuprofeno', '200mg'),  
('3', 'Amoxicilina', '250mg'), 
('4', 'Ácido Tranexâmico', '250mg'),  
('5', 'Dorflex', '300mg'); 