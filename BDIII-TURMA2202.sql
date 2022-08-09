-- BDIII A01

create database bd3;

use bd3;

create table alunos (
	id int(11) primary key auto_increment,
    nome varchar(255) not null,
    nascimento date default null
);

insert into alunos (nome, nascimento) values ('leo', '2011-03-04');
insert into alunos (nome, nascimento) values ('juju', '2010-10-08');
insert into alunos (nome, nascimento) values ('fred', '2008-05-12');
insert into alunos (nome, nascimento) values ('joao', null);
insert into alunos (nome, nascimento) values ('joao', '2007-07-05');

OTIMO
