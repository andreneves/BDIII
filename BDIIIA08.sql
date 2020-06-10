-- BDIIIA08

DROP DATABASE bd3;
CREATE DATABASE bd3;

USE bd3;

-- create table
CREATE TABLE `inscricoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
);


-- insert 
insert into inscricoes (nome, cidade) values ('André', 'Rio de Janeiro');
insert into inscricoes (nome, cidade) values ('Bruno', 'São Paulo');
insert into inscricoes (nome, cidade) values ('David', 'Rio de Janeiro');
insert into inscricoes (nome, cidade) values ('Wando', 'Recife');
insert into inscricoes (nome, cidade) values ('Paula', 'Belo Horizonte');
insert into inscricoes (nome, cidade) values ('Graciela', 'Rio de Janeiro');
insert into inscricoes (nome, cidade) values ('Renata', 'Vitória');
insert into inscricoes (nome, cidade) values ('Leticia', 'Rio de Janeiro');
insert into inscricoes (nome, cidade) values ('Milena', 'São Paulo');
insert into inscricoes (nome, cidade) values ('Patrícia', 'São Paulo');



-- select *
SELECT * from inscricoes;



-- GROUP BY
-- É uma instrução que agrupa linhas que têm os mesmos valores em um resumo.
-- Usada com funções de agregação como (COUNT, MAX, MIN, SUM, AVG).
-- Exemplo: Determinar a quantidade de inscritos por cidade.
SELECT cidade, COUNT(id)
FROM inscricoes
GROUP BY cidade;



-- Ordenando de maior quantidade para menor - descrescente
SELECT cidade, COUNT(id)
FROM inscricoes
GROUP BY cidade;
ORDER BY COUNT(id) DESC;



-- É possível ser utilziada com JOIN

-- create table
CREATE TABLE `vendas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `vendedor_id` int(11),
  PRIMARY KEY (`id`)
);

CREATE TABLE `vendedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
);


SELECT vendedor.nome, COUNT(vendas.id) AS QuantidadeDeVendas FROM vendas
LEFT JOIN vendedor ON vendas.vendedor_id = vendedor.id
GROUP BY vendedor.nome;






