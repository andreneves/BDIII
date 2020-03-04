-- BDIIA03

DROP DATABASE bd3;
CREATE DATABASE bd3;

USE bd3;
DROP TABLE alunos;

-- create table
CREATE TABLE alunos (
	id INT AUTO_INCREMENT primary key,
	nome varchar (50),
	idade int (3),
    nascimento date DEFAULT NULL
);

-- insert
insert into alunos (nome, idade, nascimento) values ('leo', 10, '2010-03-04');
insert into alunos (nome, idade, nascimento) values ('juju', 11, '2009-10-08');
insert into alunos (nome, idade, nascimento) values ('fred', 13, '2007-05-12');
insert into alunos (nome, idade, nascimento) values ('joao', null, null);
insert into alunos (nome, idade, nascimento) values ('joao', 14, '2006-07-05');

-- COUNT
SELECT COUNT(idade)
FROM alunos;
-- WHERE condicao;

-- AVG
SELECT AVG(idade)
FROM alunos;
-- WHERE condicao;

-- SUM
SELECT SUM(idade)
FROM alunos;
-- WHERE condicao; 

-- LIKE
SELECT *
FROM alunos
WHERE nome LIKE 'joao'; 

-- coringas
-- % - representa qualquer numero ou multiplos caracteres
-- _ - um único caracter
