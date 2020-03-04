-- BDIIA05 - exercícios

-- create table
CREATE TABLE alunos (
	id INT AUTO_INCREMENT primary key,
	nome varchar (50),
	idade int (3),
    nascimento date DEFAULT NULL,
);

-- insert
insert into alunos (nome, idade, nascimento) values ('leo', 10, '2010-03-04');
insert into alunos (nome, idade, nascimento) values ('juju', 11, '2009-10-08');
insert into alunos (nome, idade, nascimento) values ('fred', 13, '2007-05-12');
insert into alunos (nome, idade, nascimento) values ('joao', null, null);
insert into alunos (nome, idade, nascimento) values ('joao', 14, '2006-07-05');

-------------------

-- Utilizando os dados acima

-- Selecione todos os registros da tabela alunos


-- Retorne somente o nome e a idade das linhas que não tenham a idade nula


-- Retorne todos os registros em ordem decrescente de nome


-- Retorne o nome e a idade de somente dois registros


-- Atualize o nome do registro com id = 1 para "Samuel"


-- Exclua o registro com id = 3


-- Selecione os registros que tenham o nome = 'Samuel' ou idade = 14


-- Selecione os registros que tenham o nome = 'joao' e idade = 14


-- Selecione os registros que não possuem o nome = 'joao'


-- Conte todas as idades da tabela


-- Recupere a média da idade dos alunos


-- Some a idade dos alunos


-- Selecione todos os registros que tenham em algum lugar do nome a string 'o'


-- Selecione os registro com idade entre 10 e 12 anos


-- Selecione os registro com idade fora da faixa de 10 e 12 anos


-- Selecione os alunos com data de nascimento entre '2007-05-12' e '2010-03-04'


-- Retorne o nome usando o alias nome_do_cliente

