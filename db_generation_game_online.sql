create database db_generation_game_online;
use db_generation_game_online;


create table tb_classes(
id bigint auto_increment,
classe varchar(255) not null,
descricao varchar(1000) not null,
primary key (id)
);

create table tb_personagens(
id bigint auto_increment,
nome char not null,
idade int not null,
ataque double not null,
defesa double not null,
id_classe bigint,
primary key(id),
foreign key(id_classe) references tb_classes(id)
);

#dados da tabela classe


insert into tb_classes(classe,descricao) 
values("héroi(a/e)","O herói será tipicamente guiado por ideais nobres e altruístas – liberdade,
 fraternidade,sacrifício, coragem, justiça, moral, paz.");
 
 insert into tb_classes(classe,descricao) 
values("vilão(a/e)","Quem tem ações vis, abjetas, buscando prejudicar alguém; desprezível.");
 
 insert into tb_classes(classe,descricao) 
values("Anti-héroi(a/e)","Anti-heróis são personagens não inerentemente maus que,
 às vezes, praticam atos moralmente questionáveis.");
 
 insert into tb_classes(classe,descricao) 
values("Anti-vilão(a/e)","Um Anti-Vilão é um vilão onde suas ações e pensamentos
 são diferentes de um vilão convencional.");
 
 insert into tb_classes(classe,descricao) 
values("Justiceiro(a/e)","Que ou quem faz justiça com rigor e zelo.
 Que ou quem pretende fazer justiça com as próprias mãos.");
 
 select * from tb_classes;
 select * from tb_personagens;
 
insert into tb_personagens(idade,ataque,defesa,id_classe,nome) values(3,2000,3000,1,'capitão america');

insert into tb_personagens(idade,ataque,defesa,id_classe,nome) values(45,350,250,2,'homem de ferro');

insert into tb_personagens(idade,ataque,defesa,id_classe,nome) values(60,4000,1500,2,'thanos');

insert into tb_personagens(idade,ataque,defesa,id_classe,nome) values(39,2500,3760,2,'ultron');
 
insert into tb_personagens(idade,ataque,defesa,id_classe,nome) values(45,3800,2100,3,'punishe');

insert into tb_personagens(idade,ataque,defesa,id_classe,nome) values(35,2800,1000,3,'robbin hood');

insert into tb_personagens(idade,ataque,defesa,id_classe,nome) values(40,4700,3000,4,'dead-pool');

insert into tb_personagens(idade,ataque,defesa,id_classe,nome) values(38,3000,2300,5,'loki');

#buscar na tabele personargens
select * from tb_personagens where ataque > 2500;
select * from tb_personagens where defesa > 1000 and defesa < 2000;
select * from tb_personagens where nome like '%c%';

select * from tb_personagens inner join
tb_classes on tb_classes.id = tb_personagens.id_classe;

select * from tb_personagens right join
tb_classes on tb_classes.id = tb_personagens.id_classe;

select * from tb_personagens left join
tb_classes on tb_classes.id = tb_personagens.id_classe;

select tb_personagens.nome, tb_classes.classe, tb_classes.descricao from tb_personagens inner join 
tb_classes on tb_classes.id = tb_personagens.id_classe;

select tb_personagens.nome, tb_classes.classe, tb_classes.descricao from tb_personagens inner join 
tb_classes on tb_classes.id = tb_personagens.id_classe where classe = 'héroi(a/e)';

