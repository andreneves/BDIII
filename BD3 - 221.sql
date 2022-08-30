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


select * from vendas
where 
quantidade between 3 and 9;
