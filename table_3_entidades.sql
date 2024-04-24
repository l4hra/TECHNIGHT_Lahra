SHOW databases;

create database projeto;

use projeto;
CREATE TABLE funcionario (
  id_funcionario INT not null,
  id_unidade_cras INT,
  nome_funcionario VARCHAR(25),
  email_funcionario VARCHAR(25),
  senha_funcionario VARCHAR(10),
  PRIMARY KEY(id_funcionario)
);

CREATE TABLE civil_sem_deficiencia (
  id_civil INT NOT NULL AUTO_INCREMENT,
  cpf VARCHAR(11),
  nome_civil VARCHAR(25),
  data_nasc DATE,
  sexo CHAR,
  bairro VARCHAR(45),
  cep VARCHAR(8),
  nivel_esc CHAR NULL,
  status_civil CHAR,
  recebe_aux BOOLEAN,
  possui_deficiencia INT,
  num_cel CHAR,
  PRIMARY KEY(id_civil)
);

CREATE TABLE civil_com_deficiencia (
 id_civil_deficiencia INT NOT NULL AUTO_INCREMENT,
 id_civil INT,
 tipo_def VARCHAR(15),
 grau_def VARCHAR(15),
 num_laudo VARCHAR(40),
 deficiencia INT,
 FOREIGN KEY (id_civil) REFERENCES civil_sem_deficiencia(id_civil),
 PRIMARY KEY(id_civil_deficiencia)
);

DROP TABLE civil_com_deficiencia;

SHOW TABLES;

-- primeira insercao
INSERT INTO civil_sem_deficiencia(cpf, nome_civil, sobrenome_civil, possui_deficiencia)
value ("17304174773", "Lahra", "Souza", "1");

-- segunda insercao
INSERT INTO civil_com_deficiencia(tipo_def, grau_def, num_laudo)
value ("mental", "severa", "1505545884425");

-- terceira insercao
INSERT INTO funcionario (cpf, nome_civil, sobrenome_civil, possui_deficiencia)
value ("17304174773", "Lahra", "Souza", "1");

DROP DATABASE projeto;

SELECT * FROM civil_com_deficiencia;
SELECT * FROM civil_sem_deficiencia;