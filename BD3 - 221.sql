use bd3;

create table vendas (
	id int(11) primary key auto_increment,
    produto varchar(255),
    quantidade int(11),
    data_venda date
);

insert into vendas (produto, quantidade, data_venda) 
values ('Audi TT', 2, '2022-06-10');
insert into vendas (produto, quantidade, data_venda) 
values ('BMW', 3, '2022-05-01');
insert into vendas (produto, quantidade, data_venda) 
values ('Ferrari', 10, '2022-07-12');
insert into vendas (produto, quantidade, data_venda) 
values ('Masserati', 1, '2022-08-22');
insert into vendas (produto, quantidade, data_venda) 
values ('Bentley', 4, '2022-08-30');

-- pegando valores entre um e outro, inclusive
select * from vendas
where 
quantidade between 3 and 9;

select * from vendas
where data_venda between '2022-06-01' and '2022-08-25';

-- não funciona corretamente devido a mecanismos internos do SGBD - pesquisar motivo
select * from vendas
where produto between 'BMW' and 'Ferrari';


-- --------------------------------------------------------------

drop database bd3;


-- BDIIIA06

-- INNER JOIN

DROP DATABASE bd3;
CREATE DATABASE bd3;

USE bd3;

-- create table
create table categorias (
    id int(11) primary key auto_increment,
    nome varchar(200) not null
);

create table produtos (
    id int(11) primary key auto_increment,
    nome varchar(200) not null,
    valor float,
    categoria_id int(11),
	  foreign key (categoria_id) references categorias(id)
);

-- insert categorias 
insert into categorias (nome) values ('eletronicos');
insert into categorias (nome) values ('informatica');
insert into categorias (nome) values ('escritorio');

-- insert produtos 
insert into produtos (nome, valor, categoria_id) values ('microondas', 100, 1);
insert into produtos (nome, valor, categoria_id) values ('forno eletrico', 200, 1);
insert into produtos (nome, valor, categoria_id) values ('teclado', 50, 2);
insert into produtos (nome, valor, categoria_id) values ('mouse', 20, 2);
insert into produtos (nome, valor, categoria_id) values ('mesa', 120, 3);
insert into produtos (nome, valor, categoria_id) values ('cadeira', 80, 3);

-- selecionar todos os dados da tabela categorias
select * from categorias;

-- selecionar todos os dados da tabela produtos
select * from produtos;

-- inner join das duas tabelas
SELECT categorias.nome, produtos.nome, produtos.valor
FROM produtos
INNER JOIN categorias ON produtos.categoria_id = categorias.id;

-- inner join usando alias
SELECT  c.nome  AS 'categoria', 
        p.nome 	AS 'produto', 
        p.valor
FROM produtos p
inner join categorias c ON p.categoria_id = c.id;

-- Criando mais uma tabela para fazer o INNER JOIN com três tabelas
CREATE TABLE vendas (
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
    nota_fiscal CHAR(8),
    data DATE,
    produto_id INT(11),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

INSERT INTO vendas (nota_fiscal, data, produto_id) VAlUES ('0001', '2022-09-13', '1');
INSERT INTO vendas (nota_fiscal, data, produto_id) VAlUES ('0002', '2022-09-13', '2');
INSERT INTO vendas (nota_fiscal, data, produto_id) VAlUES ('0003', '2022-09-12', '3');
INSERT INTO vendas (nota_fiscal, data, produto_id) VAlUES ('0004', '2022-09-11', '1');
INSERT INTO vendas (nota_fiscal, data, produto_id) VAlUES ('0005', '2022-09-11', '5');
INSERT INTO vendas (nota_fiscal, data, produto_id) VAlUES ('0006', '2022-09-11', '6');
INSERT INTO vendas (nota_fiscal, data, produto_id) VAlUES ('0007', '2022-09-13', '4');






-- inner join das três tabelas
-- Proposição: Fazer uma consulta que resulte o nome da categoria, o nome do produto,
-- o número da nota fiscal, a data e o valor do produto.








SELECT  c.nome  AS 'categoria', 
        p.nome 	AS 'produto', 
        v.nota_fiscal, 
        v.data, 
        p.valor
FROM produtos p
inner join categorias c ON p.categoria_id = c.id
inner join vendas v ON v.produto_id = p.id;


-- -----------------------------------------------------------------


create table empregados (
    id int(11) primary key auto_increment,
    nome varchar(255) not null,
    departamento_codigo char(2) not null
);

insert into empregados (nome, departamento_codigo) values ('andre', 'TI');
insert into empregados (nome, departamento_codigo) values ('bruno', 'RH');
insert into empregados (nome, departamento_codigo) values ('cris', 'TI');
insert into empregados (nome, departamento_codigo) values ('lorayne', 'RH');
insert into empregados (nome, departamento_codigo) values ('daniele', 'TI');
insert into empregados (nome, departamento_codigo) values ('daniel', 'CO');
insert into empregados (nome, departamento_codigo) values ('claudiana', 'TI');
insert into empregados (nome, departamento_codigo) values ('iago', 'CO');


create table departamentos (
    id int(11) primary key auto_increment,
    nome varchar(255) not null,
    codigo char(2) not null,
    estado char(2) not null
);

insert into departamentos (nome, codigo, estado) values ('Tecnologia da Informação', 'TI', 'RJ');
insert into departamentos (nome, codigo, estado) values ('Recursos Humanos', 'RH', 'SP');
insert into departamentos (nome, codigo, estado) values ('Contabilidade', 'CO', 'SP');

-- Proposição: Recuperar todos os empregados de departamentos que sejam de 'SP'

select * from empregados
where departamento_codigo IN (
    select codigo from departamentos where estado = 'SP'
);