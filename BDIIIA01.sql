-- BDIIA01

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

-------------------


-- select
select * 
from alunos;

-- is null e is not null
select nome, idade 
from alunos 
where idade is null;

select nome, idade 
from alunos 
where idade is not null; 

-- distinct
select distinct nome 
from alunos;

-- order by
select * 
from alunos 
order by nome asc;

-- limit
select * 
from alunos 
limit 3;

