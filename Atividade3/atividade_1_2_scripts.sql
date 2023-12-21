CREATE DATABASE hospital_db_Lucas_Tomaz;

USE hospital_db_Lucas_Tomaz;

CREATE TABLE Medico (
    id_medico INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    crm VARCHAR(255) NOT NULL
);

CREATE TABLE Especialidade (
    id_especialidade INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE Medico_has_Especialidade (
    id_medico INT,
    id_especialidade INT,
    PRIMARY KEY (id_medico, id_especialidade),
    FOREIGN KEY (id_medico) REFERENCES Medico(id_medico),
    FOREIGN KEY (id_especialidade) REFERENCES Especialidade(id_especialidade)
);

CREATE TABLE Quarto (
    id INT PRIMARY KEY,
    numero INT
);

CREATE TABLE Paciente (
    id_paciente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    data_nascimento DATE,
    endereco VARCHAR(255),
    telefone VARCHAR(20),
    email VARCHAR(255),
    documento VARCHAR(20) NOT NULL
);

CREATE TABLE Convenio (
    id_convenio INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    cnpj VARCHAR(20),
    tempo_carencia INT
);

CREATE TABLE Consulta (
    id_consulta INT PRIMARY KEY AUTO_INCREMENT,
    data_hora DATETIME,
    valor_consulta DECIMAL(10, 2),
    id_medico INT NOT NULL,
    id_paciente INT NOT NULL,
    id_convenio INT,
    numero_carteira VARCHAR(255),
    especialidade_busca VARCHAR(255),
    FOREIGN KEY (id_medico) REFERENCES Medico(id_medico),
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente),
    FOREIGN KEY (id_convenio) REFERENCES Convenio(id_convenio)
);

CREATE TABLE Receita (
    id_receita INT PRIMARY KEY AUTO_INCREMENT,
    id_consulta INT NOT NULL,
    medicamentos TEXT,
    quantidade INT,
    instrucoes_uso TEXT,
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta)
);



CREATE TABLE Paciente_has_Medico (
    id_paciente INT,
    id_medico INT,
    PRIMARY KEY (id_paciente, id_medico),
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES Medico(id_medico)
);

CREATE TABLE Tipo_quarto (
    id INT PRIMARY KEY,
    descricao VARCHAR(255),
    valor_diaria DECIMAL(10, 2)
);

CREATE TABLE Internacao (
    id INT PRIMARY KEY,
    data_entrada DATE,
    data_prev_alta DATE,
    data_alta DATE,
    procedimento TEXT,
    id_paciente INT,
    id_medico INT,
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES Medico(id_medico)
);

CREATE TABLE Enfermeiro (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    cpf VARCHAR(11),
    cre VARCHAR(15)
);