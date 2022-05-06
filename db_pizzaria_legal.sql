create database db_pizzaria_legal;
use db_pizzaria_legal;


create table tb_categorias(
id bigint auto_increment,
sabor varchar(255) not null,
ingredientes varchar(1000) not null,
primary key (id)
);

create table tb_pizzas(
id bigint auto_increment,
tamanho varchar(255) not null,
serve varchar(255) not null,
borda varchar(255) not null,
valor double not null,
id_categoria bigint,
primary key(id),
foreign key(id_categoria) references tb_categorias(id)
);

#dados da tabela classe


insert into tb_categorias(sabor,ingredientes) 
values("Queijo","Ela geralmente é feita com muçarela, provolone, parmesão e gorgonzola.");
 
 insert into tb_categorias(sabor,ingredientes) 
values("Calabresa","A tradicional receita, que conta com recheio de molho de tomate, 
muçarela de búfala e manjericão fresco,
 é considerada a original e constantemente eleita a melhor pizza do mundo");
 
 insert into tb_categorias(sabor,ingredientes) 
values("Portuguesa","Ovos, cebola, azeitona, ervilha, 
queijo e presunto dão sabor a segunda pizza mais queridinha dos brasileiros.");
 
 insert into tb_categorias(sabor,ingredientes) 
values("Romeu&Julieta","A combinação mineira de queijo branco e goiabada faz sucesso em todo o país. 
Diferentes versões recebem queijos suaves, como brie, ricota e muçarela de búfala.");
 
 insert into tb_categorias(sabor,ingredientes) 
values("Brigadeiro","O clássico doce brasileiro que cai bem de qualquer jeito e a qualquer hora. 
Faz o maior sucesso entre a criançada.");
 
 select * from tb_categorias;
 select * from tb_pizzas;
 
insert into tb_pizzas(tamanho,serve,borda,valor,id_categoria) values('P','recheada','1 pessoas',25.00,1);
insert into tb_pizzas(tamanho,serve,borda,valor,id_categoria) values('M','NORMAL','3 pessoas',35.00,2);
insert into tb_pizzas(tamanho,serve,borda,valor,id_categoria) values('G','CHEDEER','5 pessoas',50.00,3);
insert into tb_pizzas(tamanho,serve,borda,valor,id_categoria) values('P','RECHEADA','1 pessoas',25.00,4);
insert into tb_pizzas(tamanho,serve,borda,valor,id_categoria) values('G','CATUPIRI','5 pessoas',50.00,5);
insert into tb_pizzas(tamanho,serve,borda,valor,id_categoria) values('G','SEM RECHEIO','5 pessoas',50.00,1);
insert into tb_pizzas(tamanho,serve,borda,valor,id_categoria) values('M','DOCE','3 pessoas',35.00,2);
insert into tb_pizzas(tamanho,serve,borda,valor,id_categoria) values('P','NUTELA','1 pessoas',25.00,3);


#buscar na tabele personargens
select * from tb_pizzas where valor > 45.00;
select * from tb_pizzas where valor > 30.00 and valor < 50.00;
select * from tb_pizzas where tamanho like '%P%';

select * from tb_pizzas inner join
tb_categorias on tb_categorias.id = tb_pizzas.id_categoria;

select * from tb_pizzas right join
tb_categorias on tb_categorias.id = tb_pizzas.id_categoria;

select tb_pizzas.tamanho, tb_categorias.categoria, tb_categorias.sabor from tb_pizzas inner join 
tb_categorias on tb_categorias.id = tb_pizzas.id_categoria;

select tb_pizzas.tamanho, tb_categorias.categoria, tb_categorias.ingredientes from tb_pizzas inner join 
tb_categorias on tb_categorias.id = tb_pizzas.id_categoria where sabor = 'Queijo';

