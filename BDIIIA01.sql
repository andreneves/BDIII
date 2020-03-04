-- BDIIA01

-- create database
CREATE DATABASE bd3;

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

