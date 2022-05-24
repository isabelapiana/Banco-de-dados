CREATE DATABASE db_brechoonline;
USE db_brechoonline;
CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
preco DECIMAL(10,2),
quantidade BIGINT,
departamento VARCHAR(255),
PRIMARY KEY(id)
);
INSERT INTO tb_produtos (nome,preco,quantidade,departamento)
VALUES ("Camiseta","20.00",10,"Roupas"); 
INSERT INTO tb_produtos (nome,preco,quantidade,departamento)
VALUES ("Calça","20.00",10,"Roupas"); 
INSERT INTO tb_produtos (nome,preco,quantidade,departamento)
VALUES ("Sandália","55.00",10,"Calçados"); 
INSERT INTO tb_produtos (nome,preco,quantidade,departamento)
VALUES ("Tênis","60.00",10,"Calçados"); 
INSERT INTO tb_produtos (nome,preco,quantidade,departamento)
VALUES ("Chinelo","20.00",10,"Calçados"); 
INSERT INTO tb_produtos (nome,preco,quantidade,departamento)
VALUES ("Agasalho","60.00",10,"Roupas"); 
INSERT INTO tb_produtos (nome,preco,quantidade,departamento)
VALUES ("Saia","20.00",10,"Roupas"); 
INSERT INTO tb_produtos (nome,preco,quantidade,departamento)
VALUES ("Bota","55.00",10,"Calçados"); 
SELECT*FROM tb_produtos WHERE preco>50;
SELECT*FROM tb_produtos WHERE preco<50;
SELECT*FROM tb_produtos WHERE id = 2;
UPDATE tb_produtos SET quantidade = "15" WHERE id = 7;
DELETE FROM tb_produtos WHERE id = 2;
DELETE FROM tb_produtos WHERE id = 3;