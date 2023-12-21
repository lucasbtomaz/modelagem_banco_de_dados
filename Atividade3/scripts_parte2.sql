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
