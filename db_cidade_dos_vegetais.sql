create database db_cidade_dos_vegetais;
use db_farmacia_bem_estar;


create table tb_vegetais(
id bigint auto_increment,
tipo varchar(255) not null,
bompara varchar(1000) not null,
primary key (id)
);

create table tb_tipos_vegetais(
id bigint auto_increment,
nome varchar(255) not null,
cor varchar(255) not null,
grupo varchar(255) not null,
valor double not null,
id_vegetal bigint,
primary key(id),
foreign key(id_vegetal) references tb_vegetais(id)
);

#dados da tabela classe


insert into tb_vegetais(tipo,bompara) 
values("fruta","São os vegetais que contém sementes.");
 
 insert into tb_vegetais(tipo,bompara) 
values("raizes","São vegetais no qual a parte comestível cresce debaixo da terra.");
 
 insert into tb_vegetais(tipo,bompara) 
values("cereais","São formados por sementes ou grãos.");
 
 insert into tb_vegetais(tipo,bompara) 
values("leguminosas","São os grãos que são encontrados em vagens.");
 
 insert into tb_vegetais(tipo,bompara) 
values("tubérculos","O vegetal mais conhecido dessa categoria é a batata-inglesa.");
 
 select * from tb_vegetais;
 select * from tb_tipos_vegetais;
 
insert into tb_tipos_vegetais(nome,cor,grupo,valor,id_vegetal) values('banana','amarela','A',2.00,1);
insert into tb_tipos_vegetais(nome,cor,grupo,valor,id_vegetal) values('batata','branca','b',10.00,2);
insert into tb_tipos_vegetais(nome,cor,grupo,valor,id_vegetal) values('melacia','vermelha','c',20.00,3);
insert into tb_tipos_vegetais(nome,cor,grupo,valor,id_vegetal) values('cenoura','laranja','A',5.00,4);
insert into tb_tipos_vegetais(nome,cor,grupo,valor,id_vegetal) values('feijão','preto','b',12.00,5);
insert into tb_tipos_vegetais(nome,cor,grupo,valor,id_vegetal) values('arroz','branco','c',25.00,1);
insert into tb_tipos_vegetais(nome,cor,grupo,valor,id_vegetal) values('beterraba','roxa','A',15.00,2);
insert into tb_tipos_vegetais(nome,cor,grupo,valor,id_vegetal) values('abacaxi','amarelo','b',10.00,3);


select * from tb_tipos_vegetais where valor > 10.00;
select * from tb_tipos_vegetais where valor > 5.00 and valor < 50.00;
select * from tb_tipos_vegetais where nome like '%m%';

select * from tb_tipos_vegetais inner join
tb_vegetais on tb_vegetais.id = tb_tipos_vegetais.id_vegetal;

select * from tb_tipos_vegetais right join
tb_vegetais on tb_vegetais.id = tb_tipos_vegetais.id_vegetal;

select tb_tipos_vegetais.nome, tb_vegetais.vegetal, tb_vegetais.tipo from tb_tipos_vegetais inner join 
tb_vegetais on tb_vegetais.id = tb_tipos_vegetais.id_vegetal;

select tb_tipos_vegetais.nome, tb_vegetais.vegetal, tb_vegetais.bompara from tb_tipos_vegetais inner join 
tb_vegetais on tb_vegetais.id = tb_tipos_vegetais.id_vegetal where tipo = 'fruta';

