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


DROP DATABASE bd3;
CREATE DATABASE bd3;

USE bd3;
-- DROP TABLE IF EXISTS alunos;

-- create table
CREATE TABLE alunos (
	id INT AUTO_INCREMENT primary key,
	nome varchar (50),
	idade int (3),
    nascimento date DEFAULT NULL
);


-- insert
insert into alunos (nome, idade, nascimento) values ('leo', 10, '2011-03-04');
insert into alunos (nome, idade, nascimento) values ('juju', 11, '2010-10-08');
insert into alunos (nome, idade, nascimento) values ('fred', 13, '2008-05-12');
insert into alunos (nome, idade, nascimento) values ('joao', null, null);
insert into alunos (nome, idade, nascimento) values ('joao', 14, '2007-07-05');



-------------------

-- Utilizando a estrutura acima faça as seguintes consultas:


-- 1) Selecione todos os registros da tabela alunos
select * from alunos;

-- 2) Retorne somente o nome e a idade das linhas que não tenham a idade nula
select nome, idade from alunos
where idade is not null;

-- 3) Retorne todos os registros em ordem decrescente de nome
select * from alunos
order by nome desc;

-- 4) Retorne o nome e a idade de somente dois registros
select nome, idade from alunos
limit 2;

-- 5) Atualize o nome do registro com id = 1 para "Samuel"
update alunos
set nome = 'Samuel'
where id = 1;

-- 6) Exclua o registro com id = 3
delete from alunos
where id = 3;

-- 7) Selecione os registros que tenham o nome = 'Samuel' ou idade = 14
select * from alunos
where nome = 'Samuel' or idade = 14;

-- 8) Selecione os registros que tenham o nome = 'joao' e idade = 14
select * from alunos
where nome = 'joao' and idade = 14;


-- 9) Selecione os registros que não possuem o nome = 'joao'
select * from alunos
where nome != 'joao';

-- 10) Conte todas as idades da tabela
select count(idade) from alunos;

-- 11) Recupere a média da idade dos alunos
-- select round(avg(idade), 2) from alunos;
select avg(idade) from alunos;

-- 12) Some a idade dos alunos
select sum(idade) from alunos;

-- 13) Selecione todos os registros que tenham em algum lugar do nome a string 'o'
select * from alunos
where nome like '%o%';

-- 14) Selecione os registro com idade entre 10 e 12 anos
select * from alunos
where
idade between 10 and 12;

-- 15) Selecione os registro com idade fora da faixa de 10 e 12 anos
select * from alunos
where
idade not between 10 and 12;

-- 16) Selecione os alunos com data de nascimento entre '2008-05-12' e '2011-03-04'
select * from alunos
where
nascimento between '2008-05-12' and '2011-03-04';

-- 17) Retorne o nome usando o alias nome_do_cliente
select nome AS nome_do_cliente
from alunos


-- -----------------------------------
