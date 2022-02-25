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


-- ordenar os alunos por nome
select * 
from alunos
order by nome ASC;

-- selecione os alunos com
-- idade acima de 21
-- os dois mais velhos
select * 
from alunos
where
idade > 21
order by idade DESC
limit 2;

-- alter table alunos drop column nota;

alter table alunos
add column nota int after idade;

update alunos set nota = 95 where id = 1;
update alunos set nota = 87 where id = 2;
update alunos set nota = 70 where id = 3;
update alunos set nota = 65 where id = 4;
update alunos set nota = 48 where id = 5;
update alunos set nota = 76 where id = 6;
update alunos set nota = 98 where id = 7;

-- selecione todos os alunos que:
-- tenham nota maior ou igual a 70
-- ordenação decrescente por idade
-- limitado a 3 alunos

select * 
from alunos
where nota >= 70
order by idade DESC
limit 3;

-- --------------------------------------------

select * from alunos;

-- atualizar informacoes de um registro
update alunos
set 
idade = 100, 
nascimento = '1922-02-17'
where
id = 5;

-- select * from alunos
-- where
-- id = 5;

-- excluir um registro

delete from alunos
where id  = 5;

-- operadores lógicos AND / OR

-- selecione todos os registros que tenham o nome igual a 'André Neves'
-- e idade igual a 100

select * from alunos
where
nome = 'André Neves'
AND
idade = 100;

-- selecion todos os registros que tenham o nome igual a 'Victor' 
-- ou idade igual a 22 anos

select * from alunos
where
nome = 'Victor'
OR
idade = 22;

-- para saber o valor do auto_increment
SELECT AUTO_INCREMENT FROM information_schema.tables
WHERE table_name = 'alunos' AND table_schema = 'bd3';

-- negacao
-- selecionar todos os registros que não tenham 'Victor' no nome
select * from alunos
where not nome = 'Victor';


-- Funções no SGBD

select * from alunos;


-- contar as ocorrências de idade
select count(idade)
from alunos;

-- Pegar a média das idade
select AVG(idade)
from alunos;

-- soma
select SUM(idade)
from alunos;

-- menor idade
select MIN(idade)
from alunos;

-- maior idade
select MAX(idade)
from alunos;


-- procurar uma string dentro de um campo texto

-- 'Os pokemons salvaram o mundo'

-- 'pokemon'

select * from alunos
where
nome like '%i%';

-- Caracter curinga %

