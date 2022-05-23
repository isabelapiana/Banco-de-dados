create database db_escola;use db_escola;create table tb_escola(
id bigint auto_increment,
ativo boolean,
nome varchar(30),
serie varchar(30),
nota decimal (2,1)
);

insert into tb_escola (ativo,nome,serie,nota)
values (true,"Ana","segunda série",8.8);
insert into tb_escola (ativo,nome,serie,nota)
values (true,"Maria","segunda série",5.8);
insert into tb_escola (ativo,nome,serie,nota)
values (true,"João","segunda série",7.5);
insert into tb_escola (ativo,nome,serie,nota)
values (true,"Joaquim","segunda série",6.6);
insert into tb_escola (ativo,nome,serie,nota)
values (true,"Carol","segunda série",8.8);
insert into tb_escola (ativo,nome,serie,nota)
values (true,"Zuleide","segunda série",9.9);
insert into tb_escola (ativo,nome,serie,nota)
values (true,"Serafim","segunda série",1.5);
insert into tb_escola (ativo,nome,serie,nota)
values (true,"Geocondo","segunda série",8.8);

select * from tb_escola where nota >7.0;
select * from tb_escola where nota <7.0;
update tb_escola set nota = 4.6 where id = 4;
select * from tb_escola