create database db_rh; use db_rh; create table tb_colaboradores(
nome varchar(30),
id bigint auto_increment,
ativo boolean,
email varchar(30),
salario decimal(10,2),
primary key(id)
);

insert into tb_colaboradores (nome,ativo,email,salario)
values ("Amanda",true,"amanga@gmail.com",6500.00);
insert into tb_colaboradores (nome,ativo,email,salario)
values ("João",true,"joao@gmail.com",2500.00);
insert into tb_colaboradores (nome,ativo,email,salario)
values ("Joaquina",true,"joaquina@gmail.com",3500.00);
insert into tb_colaboradores (nome,ativo,email,salario)
values ("Giliberto",true,"gilberto@gmail.com",4500.00);
insert into tb_colaboradores (nome,ativo,email,salario)
values ("Zuleide",true,"zuleide@gmail.com",1500.00);

select * from tb_colaboradores where salario > 2000;
select * from tb_colaboradores where salario < 2000;
update tb_colaboradores set salario = 2500 where id = 5;
select * from tb_colaboradores;