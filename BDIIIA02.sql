-- BDIIA02

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

-- update
UPDATE alunos
SET nome = "Elias", idade = 20
WHERE id = 1;

-- delete
DELETE FROM alunos WHERE id = 1;

