-- BDIIIA06

DROP DATABASE bd3;
CREATE DATABASE bd3;

USE bd3;

-- create table
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `valor` float NOT NULL,
  `categoria_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`),
  CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
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
SELECT  categorias.nome AS 'categoria', 
		produtos.nome 	AS 'produto', 
        produtos.valor
FROM produtos
inner join categorias ON produtos.categoria_id = categorias.id;