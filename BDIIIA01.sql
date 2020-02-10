CREATE DATABASE bd3;

CREATE TABLE alunos (
id INT AUTO_INCREMENT primary key,
nome varchar (50),
idade int (3)
);

-- insert
INSERT INTO alunos (nome, idade) values ('joao', null);

-- select
select * from alunos;

-- is null e is not null
select nome, idade from alunos WHERE idade IS NULL; 

select nome, idade from alunos WHERE idade IS NOT NULL; 

-- distinct
select distinct nome from alunos;

-- order by
select * from alunos ORDER BY nome ASC;
