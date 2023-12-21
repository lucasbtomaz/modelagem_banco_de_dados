USE hospital_db_Lucas_Tomaz;

INSERT INTO tipo_quarto (id, descricao, valor_diaria)
VALUES
('1', 'apartamentos', '300'),
('2', 'quartos duplos', 150),
('3', 'enfermaria', 50);

SELECT * FROM tipo_quarto;