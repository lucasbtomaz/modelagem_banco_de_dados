USE hospital_db_Lucas_Tomaz;

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