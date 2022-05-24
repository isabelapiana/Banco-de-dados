CREATE DATABASE db_quitandageneration;
USE db_quitandageneration;
CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
preco DECIMAL(10,2),
quantidade BIGINT,
departamento VARCHAR(255),
PRIMARY KEY(id)
);
INSERT INTO tb_produtos (nome,preco,quantidade,departamento)
VALUES ("Laranja","1.00",10,"Frutas"); 
INSERT INTO tb_produtos (nome,preco,quantidade,departamento)
VALUES ("Maçã","1.00",10,"Frutas"); 
INSERT INTO tb_produtos (nome,preco,quantidade,departamento)
VALUES ("Banana","1.00",10,"Frutas"); 
INSERT INTO tb_produtos (nome,preco,quantidade,departamento)
VALUES ("Limão","1.00",10,"Frutas"); 
INSERT INTO tb_produtos (nome,preco,quantidade,departamento)
VALUES ("Abóbora","1.00",10,"Legumes"); 
INSERT INTO tb_produtos (nome,preco,quantidade,departamento)
VALUES ("Beterraba","1.00",10,"Legumes"); 
INSERT INTO tb_produtos (nome,preco,quantidade,departamento)
VALUES ("Pepino","1.00",10,"Legumes"); 
INSERT INTO tb_produtos (nome,preco,quantidade,departamento)
VALUES ("Rabanete","1.00",10,"Legumes"); 
SELECT*FROM tb_produtos WHERE departamento = "Frutas";
SELECT*FROM tb_produtos WHERE departamento = "Legumes";
UPDATE tb_produtos SET quantidade = "5" WHERE id = 3;
DELETE FROM tb_produtos WHERE departamento = "Legumes";