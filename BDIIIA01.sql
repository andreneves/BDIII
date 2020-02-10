CREATE DATABASE bd3;

CREATE TABLE alunos (
id INT AUTO_INCREMENT primary key,
nome varchar (50),
idade int (3)
);

INSERT INTO alunos (nome, idade) values ('joao', null);

select * from alunos;

select nome, idade from alunos WHERE idade IS NULL; 

select nome, idade from alunos WHERE idade IS NOT NULL; 

select distinct nome from alunos