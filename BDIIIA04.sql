-- BDIIA04

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



-- BETWEEN
SELECT * FROM alunos
WHERE idade BETWEEN 11 AND 13;

-- NOT BETWEEN
SELECT * FROM alunos
WHERE idade NOT BETWEEN 11 AND 13;


-- BETWEEN DATA
SELECT * FROM alunos
WHERE nascimanto BETWEEN '1996-07-01' AND '1996-07-31';


-- ALIAS COLUMN
SELECT nome AS nome_cliente
FROM alunos;


-- ALIAS TABLE
SELECT *
FROM alunos AS a; 