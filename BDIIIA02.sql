-- BDIIA02

-- create table
CREATE TABLE alunos (
	id INT AUTO_INCREMENT primary key,
	nome varchar (50),
	idade int (3)
    nascimento date DEFAULT NULL,
);

-- insert
insert into alunos (nome, idade) values ('leo', 10, '2010-03-04');
insert into alunos (nome, idade) values ('juju', 11, '2009-10-08');
insert into alunos (nome, idade) values ('fred', 13, '2007-05-12');
insert into alunos (nome, idade) values ('joao', null, null);
insert into alunos (nome, idade) values ('joao', 14, '2006-07-05');

-- update
UPDATE alunos
SET nome = "Elias", idade = 20
WHERE id = 1;

-- delete
DELETE FROM alunos 
WHERE id = 1;

-- and
SELECT * FROM alunos
WHERE nome='joao' AND idade=14;

-- or
SELECT * FROM alunos
WHERE nome='joao' OR idade=10;

-- not
SELECT * FROM alunos
WHERE NOT nome='joao';

