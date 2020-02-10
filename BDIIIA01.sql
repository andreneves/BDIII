-- BDIIA01

-- create database
CREATE DATABASE bd3;

-- create table
CREATE TABLE alunos (
	id INT AUTO_INCREMENT primary key,
	nome varchar (50),
	idade int (3)
);

-- insert
insert into alunos (nome, idade) values ('joao', null);

-- select
select * from alunos;

-- is null e is not null
select nome, idade from alunos where idade is null;

select nome, idade from alunos where idade is not null; 

-- distinct
select distinct nome from alunos;

-- order by
select * from alunos order by nome asc;
