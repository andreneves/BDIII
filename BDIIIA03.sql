-- BDIIA03

-- create table
CREATE TABLE alunos (
	id INT AUTO_INCREMENT primary key,
	nome varchar (50),
	idade int (3)
);

-- insert
insert into alunos (nome, idade) values ('leo', 10);
insert into alunos (nome, idade) values ('juju', 11);
insert into alunos (nome, idade) values ('fred', 13);
insert into alunos (nome, idade) values ('joao', null);
insert into alunos (nome, idade) values ('joao', 14);


-- COUNT
SELECT COUNT(idade)
FROM alunos;
-- WHERE condition;

-- AVG
SELECT AVG(idade)
FROM alunos;
-- WHERE condition;

-- SUM
SELECT SUM(idade)
FROM alunos;
-- WHERE condition; 

-- LIKE
SELECT *
FROM alunos
WHERE nome LIKE 'joao'; 

-- coringas
-- % - representa qualquer numero ou multiplos caracteres
-- _ - um único caracter
