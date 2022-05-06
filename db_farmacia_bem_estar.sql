create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;


create table tb_categorias(
id bigint auto_increment,
tipo varchar(255) not null,
bompara varchar(1000) not null,
primary key (id)
);

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
cor varchar(255) not null,
grupo varchar(255) not null,
valor double not null,
id_categoria bigint,
primary key(id),
foreign key(id_categoria) references tb_categorias(id)
);

#dados da tabela classe


insert into tb_categorias(tipo,bompara) 
values("fruta","São os vegetais que contém sementes.");
 
 insert into tb_categorias(tipo,bompara) 
values("raizes","São vegetais no qual a parte comestível cresce debaixo da terra.");
 
 insert into tb_categorias(tipo,compara) 
values("cereais","São formados por sementes ou grãos.");
 
 insert into tb_categorias(tipo,bompara) 
values("leguminosas","São os grãos que são encontrados em vagens.");
 
 insert into tb_categorias(tipo,bompara) 
values("tubérculos","O vegetal mais conhecido dessa categoria é a batata-inglesa.");
 
 select * from tb_categorias;
 select * from tb_produtos;
 
insert into tb_produtos(nome,cor,grupo,valor,id_categoria) values('banana','amarela','A',2.00,1);
insert into tb_produtos(nome,cor,grupo,valor,id_categoria) values('batata','branca','b',10.00,2);
insert into tb_produtos(nome,cor,grupo,valor,id_categoria) values('melacia','vermelha','c',20.00,3);
insert into tb_produtos(nome,cor,grupo,valor,id_categoria) values('cenoura','laranja','A',5.00,4);
insert into tb_produtos(nome,cor,grupo,valor,id_categoria) values('feijão','preto','b',12.00,5);
insert into tb_produtos(nome,cor,grupo,valor,id_categoria) values('arroz','branco','c',25.00,1);
insert into tb_produtos(nome,cor,grupo,valor,id_categoria) values('beterraba','roxa','A',15.00,2);
insert into tb_produtos(nome,cor,grupo,valor,id_categoria) values('abacaxi','amarelo','b',10.00,3);


select * from tb_produtos where valor > 35.00;
select * from tb_produtos where valor > 5.00 and valor < 50.00;
select * from tb_produtos where tipo like '%P%';

select * from tb_produtos inner join
tb_categorias on tb_categorias.id = tb_produtos.id_categoria;

select * from tb_produtos right join
tb_categorias on tb_categorias.id = tb_produtos.id_categoria;

select tb_produtos.tipo, tb_categorias.categoria, tb_categorias.bula from tb_produtos inner join 
tb_categorias on tb_categorias.id = tb_produtos.id_categoria;

select tb_produtos.embalagem, tb_categorias.categoria, tb_categorias.bula from tb_produtos inner join 
tb_categorias on tb_categorias.id = tb_produtos.id_categoria where marca = 'fruta';

