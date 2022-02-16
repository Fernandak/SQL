create database  db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id_class bigint auto_increment,
nome varchar(255),
habilidade varchar(255),
arma varchar(255) ,

primary key (id_class)
);

insert into tb_classe(nome,habilidade,arma)
values("Feiticeiro" ,"magia","cajado"),
("Arqueiro","tempestade de flechas","feclas"),
("Curandeiro","cura","porções");

create table tb_personagem(
id_personagem bigint auto_increment,
nome varchar(255),
nivel int,
ataque int ,
defesa int,
classe_id bigint,

primary key (id_personagem),
foreign key(classe_id) references tb_classe(id_class)

);

insert into tb_personagem (nome,nivel,ataque,defesa,classe_id)
values
("Fada Sensata", 300, 1500,500,1),
("Gamora", 500, 1500,500,1),
("Thor", 230, 1200,980,1),
("Flash", 700, 3000,500,1),
("Tempestade", 1200, 1500,765,1),
("Mutano", 400, 1500,900,1),
("Incrivel", 350, 4000,652,1),
("Princesa", 300, 10000,15000,1);

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa >= 1000 and defesa < 10000;

select * from tb_personagem where nome like "%g%";

select * from tb_personagem inner join tb_classe on tb_personagem.id_classe = tb_classe.id;

select * from tb_personagem as id_classe inner join tb_classe as classe on id_classe = classe like 'Gamora%';

select * from tb_personagem;

