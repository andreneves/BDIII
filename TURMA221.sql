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
insert into alunos (nome, idade, nascimento) values ('');



