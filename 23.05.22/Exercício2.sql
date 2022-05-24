create database db_ecommerce;use db_ecommerce;create table tb_produtos(
id bigint auto_increment,
ativo boolean,
nome varchar(30),
marca varchar(30),
cor varchar(30),
tamanho varchar(30),
categoria varchar(30),
preco decimal(10,2),
primary key(id)
);

insert into tb_produtos (ativo,nome,marca,cor,tamanho,categoria,preco)
values (true,"Camiseta","Adidas","Preta","M","Vestuário",19.99);
insert into tb_produtos (ativo,nome,marca,cor,tamanho,categoria,preco)
values (true,"Vestido","Shein","Branca","GG","Vestuário",89.99);
insert into tb_produtos (ativo,nome,marca,cor,tamanho,categoria,preco)
values (true,"Relógio","Rolex","Prata","Único","Acessórios",5000.00);
insert into tb_produtos (ativo,nome,marca,cor,tamanho,categoria,preco)
values (true,"Sandália","Moleca","Laranja","36","Calçados",29.99);
insert into tb_produtos (ativo,nome,marca,cor,tamanho,categoria,preco)
values (true,"Fritadeira","Polishop","Preta","Grande","Utensílios",599.99);
insert into tb_produtos (ativo,nome,marca,cor,tamanho,categoria,preco)
values (true,"Chuveiro","Lorenzetti","Branca","Único","Utensílios",109.99);
insert into tb_produtos (ativo,nome,marca,cor,tamanho,categoria,preco)
values (true,"Camiseta","Nike","Vermelha","P","Vestuário",59.99);
insert into tb_produtos (ativo,nome,marca,cor,tamanho,categoria,preco)
values (true,"Bolsa","Prata","Preta","Único","Acessórios",888.99);

select * from tb_produtos where preco > 500.00;
select * from tb_produtos where preco < 500.00;
update tb_produtos set preco = 888.88 where id = 8;
select *from tb_produtos