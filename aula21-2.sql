USE bd3;

create table alunos (
	id int auto_increment primary key,
    nome varchar(200),
    idade int(3),
    nascimento date default null
);

-- select '2011-03-04';
-- select 2011-03-04;

-- insert
insert into alunos (nome, idade, nascimento) 
values ('leo', 10, '2011-03-04');
insert into alunos (nome, idade, nascimento) 
values ('juju', 11, '2010-10-08');
insert into alunos (nome, idade, nascimento) 
values ('fred', 13, '2008-05-12');
insert into alunos (nome, idade, nascimento) 
values ('joao', null, null);
insert into alunos (nome, idade, nascimento) 
values ('joao', 14, '2007-07-05');

-- selecionar todos os campos
select * from alunos;

-- Filtrar registros com campo idade nulo
select nome, idade
from alunos
where 
idade is null;

-- Filtrar registros com campo idade não nula
select nome, idade
from alunos
where 
idade is not null;

-- selecionar registros especificos
select * from alunos
where idade = 13;

/*
= igual
> maior 
>= maior ou igual
< menor
<= menor ou igual
<> ou != diferente
*/

select * from alunos
where idade != 13;

-- <> ou !=  significam diferente

-- registros ignorando duplicados
select distinct nome from alunos;

-- Ordenar o resultado de uma consulta
-- ORDER BY CAMPO ASC/DESC

-- selecionar todos os campos da tabela alunos
-- ordenando em ordem crescente por nome

select *
from alunos
where idade >= 11
order by idade desc, nome asc;

-- selecionar os alunos que tenham mais que 11 anos
-- ordenar por ordem crescente de id
-- somente os 2 primeiros
-- DICA: limit VALOR

select * from alunos
where idade > 11
order by id asc
limit 2;

-- AULA 2

-- Atualização de dados de uma tabela
/*
UPDATE NomeDaTabela
SET coluna1 = 'valor',
coluna2 = 'valor'
WHERE campo3 = 'valor';
*/

-- atualizar o aluno com id = 1 colocando 
-- o nome dele como 'Elias' e a idade = 20

update alunos
set 
nome = 'Elias',
idade = 20
where
id = 1;

UPDATE alunos 
SET
nome = 'fred' ,
idade = 13
WHERE nome = 'Fred';


TRUNCATE table alunos;

-- excluir um registro na tabela
/*
DELETE FROM NomeDaTabela
WHERE coluna = 'valor';
*/

-- exclua o registro com id = 1
delete from alunos
where id = 1;

select * from alunos;

-- delete from alunos where id > 2;

-- selecionar com base em mais de um filtro
-- operadores lógicos
-- E
select * from alunos
where nome = 'joao' AND idade = 14;

-- OU
select * from alunos
where nome = 'joao' OR idade = 11;

-- selecionar todos os registros que não tenham o nome igual a joao
select * from alunos
where NOT nome = 'joao';

-- AULA 3
-- funções nativas do mysql

-- Desejo contar todas as ocorrências 
-- da coluna idade na tabela alunos
-- COUNT
SELECT COUNT(idade)
FROM alunos
-- where idade > 12
;

-- desejo obter a média da idade dos alunos
-- AVG

SELECT AVG(idade)
FROM alunos;

/*
10
11
13

14
*/

-- desejo somar os valores da coluna idade
-- SUM
SELECT SUM(idade)
from alunos;

-- MIN
SELECT MIN(idade)
FROM alunos;

-- MAX
SELECT MAX(idade)
FROM alunos;

-- **********************

insert into alunos (nome, idade, nascimento) 
values ('André Neves dos Reis', 10, '2011-03-04');

insert into alunos (nome, idade, nascimento) 
values ('Castro Alves', 10, '2011-03-04');

insert into alunos (nome, idade, nascimento) 
values ('Euclides da Cunha Neves', 10, '2011-03-04');

insert into alunos (nome, idade, nascimento) 
values ('Chico Buarque Reis', 10, '2011-03-04');

insert into alunos (nome, idade, nascimento) 
values ('Felipe Neto Neves', 10, '2011-03-04');

select * from alunos;

-- LIKE

select * from alunos
where nome like '%Neves%';

select * from alunos
where nome like '%Reis%';

select * from alunos
where nome like '%a%';

-- coringas
-- % - representa qualquer número de caracteres
-- _ - um único caracter
