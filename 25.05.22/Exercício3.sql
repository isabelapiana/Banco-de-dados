CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipoProduto VARCHAR(255),
marca VARCHAR(255),
PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
preco DECIMAL(10,2),
estoque BIGINT,
uso VARCHAR(255),
marcaId BIGINT,
PRIMARY KEY(id),
FOREIGN KEY(marcaId) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipoProduto,marca) VALUES("Anti-inflamatório","Genérico");
INSERT INTO tb_categorias(tipoProduto,marca) VALUES("Antibiótico","Genérico");
INSERT INTO tb_categorias(tipoProduto,marca) VALUES("Antialérgico","Genérico");
INSERT INTO tb_categorias(tipoProduto,marca) VALUES("Gripe e resfriado","Genérico");
INSERT INTO tb_categorias(tipoProduto,marca) VALUES("Anti-inflamatório","Originais");
INSERT INTO tb_categorias(tipoProduto,marca) VALUES("Antibiótico","Originais");
INSERT INTO tb_categorias(tipoProduto,marca) VALUES("Antialérgico","Originais");
INSERT INTO tb_categorias(tipoProduto,marca) VALUES("Gripe e resfriado","Originais");

INSERT INTO tb_produtos(nome,preco,estoque,uso,marcaId) VALUES("Nimesulida",6.95,30,"Oral",1);
INSERT INTO tb_produtos(nome,preco,estoque,uso,marcaId) VALUES("Allegra",27.59,20,"Oral",7);
INSERT INTO tb_produtos(nome,preco,estoque,uso,marcaId) VALUES("Allivium",36.69,10,"Oral",5);
INSERT INTO tb_produtos(nome,preco,estoque,uso,marcaId) VALUES("Nebacetin",17.66,50,"Tópico",6);
INSERT INTO tb_produtos(nome,preco,estoque,uso,marcaId) VALUES("Neomicina",9.31,60,"Tópico",2);
INSERT INTO tb_produtos(nome,preco,estoque,uso,marcaId) VALUES("Resfenol",18.35,15,"Oral",8);
INSERT INTO tb_produtos(nome,preco,estoque,uso,marcaId) VALUES("Paracetamol",5.00,30,"Oral",3);
INSERT INTO tb_produtos(nome,preco,estoque,uso,marcaId) VALUES("Prelone",20.00,50,"Oral",4);

SELECT*FROM tb_produtos INNER JOIN tb_categorias on preco > 50;

SELECT*FROM tb_produtos INNER JOIN tb_categorias on preco>=5 and preco <=60;

SELECT*FROM tb_produtos WHERE nome LIKE "%C%";

SELECT*from tb_produtos INNER JOIN tb_categorias on marcaId=marcaId;

SELECT*FROM tb_produtos INNER JOIN tb_categorias on marca = "Genérico";