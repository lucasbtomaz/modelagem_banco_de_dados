USE hospital_db_Lucas_Tomaz;

-- 1. Todos os dados e o valor médio das consultas do ano de 2020 realizadas sem convênio
SELECT * FROM consulta
WHERE YEAR(data_hora) = 2020 AND id_convenio IS NULL;

SELECT AVG(valor_consulta) AS valor_medio_sem_convenio
FROM consulta
WHERE YEAR(data_hora) = 2020 AND id_convenio IS NULL;

-- 2. Todos os dados e o valor médio das consultas do ano de 2020 realizadas por convênio
SELECT * FROM consulta
WHERE YEAR(data_hora) = 2020 AND id_convenio IS NOT NULL;

SELECT AVG(valor_consulta) AS valor_medio_com_convenio
FROM consulta
WHERE YEAR(data_hora) = 2020 AND id_convenio IS NOT NULL;

-- 3. Todos os dados das internações que tiveram data de alta maior que a data prevista para a alta
SELECT * FROM internacao
WHERE data_alta > data_prev_alta;

-- 4. Receituário completo da primeira consulta registrada com receituário associado
SELECT * FROM receita
WHERE id_receita = 1;

-- 5. Todos os dados da consulta de maior valor e também da de menor valor (ambas sem convênio)
SELECT * FROM consulta
WHERE id_convenio IS NULL
ORDER BY valor_consulta DESC
LIMIT 1;

SELECT * FROM consulta
WHERE id_convenio IS NULL
ORDER BY valor_consulta ASC
LIMIT 1;

-- Consulta 6: Todos os dados das internações em seus respectivos quartos
SELECT i.*, q.numero, (DATEDIFF(i.data_alta, i.data_entrada) + 1) * t.valor_diaria AS total_internacao
FROM internacao i
JOIN quarto q ON i.id = q.id
JOIN tipo_quarto t ON q.id = t.id
LIMIT 0, 1000;

-- Consulta 7: Data, procedimento e número de quarto de internações em quartos do tipo “apartamento”
SELECT i.data_entrada, i.procedimento, q.numero
FROM internacao i
JOIN quarto q ON i.id = q.id
JOIN tipo_quarto t ON q.id = t.id
WHERE t.descricao = 'apartamento'
LIMIT 0, 1000;

-- 8. Nome do paciente, data da consulta e especialidade de consultas com pacientes menores de 18 anos e não "pediatria"
SELECT p.nome AS nome_paciente, c.data_hora, c.especialidade_busca
FROM paciente p
JOIN consulta c ON p.id_paciente = c.id_paciente
WHERE DATEDIFF(CURDATE(), p.data_nascimento) < 6570 -- Menores de 18 anos
AND c.especialidade_busca <> 'pediatria'
ORDER BY c.data_hora;

-- Consulta 9: Nome do paciente, data da consulta e especialidade de todas as consultas em que os pacientes eram menores de 18 anos na data da consulta e cuja especialidade não seja “pediatria”, ordenando por data de realização da consulta
SELECT p.nome AS nome_paciente, c.data_hora, c.especialidade_busca
FROM consulta c
JOIN paciente p ON c.id_paciente = p.id_paciente
WHERE TIMESTAMPDIFF(YEAR, p.data_nascimento, c.data_hora) < 18
  AND c.especialidade_busca != 'pediatria'
ORDER BY c.data_hora
LIMIT 0, 1000;

-- 10. Nomes dos médicos, números de registro no CRM e a quantidade de consultas que cada um realizou
SELECT m.nome, m.crm, COUNT(c.id_consulta) AS quantidade_consultas
FROM medico m
LEFT JOIN consulta c ON m.id_medico = c.id_medico
GROUP BY m.id_medico;

-- Consulta 11: Os nomes dos médicos, seus números de registro no CRM e a quantidade de consultas que cada um realizou
SELECT m.nome AS nome_medico, m.crm, COUNT(c.id_consulta) AS quantidade_consultas
FROM medico m
JOIN consulta c ON m.id_medico = c.id_medico
GROUP BY m.nome, m.crm
LIMIT 0, 1000;

-- Consulta 12: Todas as internações relacionadas à médica Yasmin Moreira
SELECT i.*
FROM internacao i
JOIN medico m ON i.id_medico = m.id_medico
WHERE m.nome = 'Yasmin Moreira'
LIMIT 0, 1000;
