CREATE DATABASE bd3;

USE bd3;
-- criacao tabela alunos

create table alunos (
	id int auto_increment primary key,
    nome varchar(255),
    idade int(3),
    nascimento date default NULL
);

-- inserir dados
insert into alunos (nome, idade, nascimento) values ('Vitoria', 22, '1999-06-21');
insert into alunos (nome, idade, nascimento) values ('Gabriel de Paula', 22, '1999-04-26');
insert into alunos (nome, idade, nascimento) values ('Pedro Henrique', 21, '2001-11-14');
insert into alunos (nome, idade, nascimento) values ('Vinicius Anolin', 34, '1987-05-25');
insert into alunos (nome, idade, nascimento) values ('André Neves', NULL, NULL);
insert into alunos (nome, idade, nascimento) values ('Victor', 21, '2001-01-29');
insert into alunos (nome, idade, nascimento) values ('André Neves', 100, '1022-02-09');

-- selecionar todos os registros
select * from alunos;

-- selecionar somente um campo
select nome, nascimento from alunos;

-- filtrar resultados

-- filtrar por campo idade igual nulo
select * 
from alunos 
where 
idade is null;

-- filtrar por campo idade não nulo and nome igual a 'Gabriel de Paula'
select * 
from alunos 
where 
idade is not null -- idade não nulo
AND
nome = 'Gabriel de Paula' -- nome igual a 'Gabriel de Paula'
;

-- filtrar ignorando registros duplicados
select distinct nome
from alunos;

select distinct nome, idade
from alunos;


