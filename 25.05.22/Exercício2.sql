CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
preco DECIMAL(10,2),
tamanho varchar(255),
PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
sabor VARCHAR(255),
bordaRecheada BOOLEAN,
precoId BIGINT,
PRIMARY KEY(id),
FOREIGN KEY(precoId) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(preco,tamanho) VALUES(80.00,"Extra Grande");
INSERT INTO tb_categorias(preco,tamanho) VALUES(60.00,"Grande");
INSERT INTO tb_categorias(preco,tamanho) VALUES(40.00,"Média");
INSERT INTO tb_categorias(preco,tamanho) VALUES(30.00,"Pequena");
INSERT INTO tb_categorias(preco,tamanho) VALUES(15.00,"Muito Pequena");

INSERT INTO tb_pizzas(nome,sabor,bordaRecheada,precoId) VALUES("Pizza Maravilhosa","Doce",FALSE,1);
INSERT INTO tb_pizzas(nome,sabor,bordaRecheada,precoId) VALUES("Pizza de Queijo","Salgada",TRUE,2);
INSERT INTO tb_pizzas(nome,sabor,bordaRecheada,precoId) VALUES("Pizza de Calabresa","Salgada",FALSE,3);
INSERT INTO tb_pizzas(nome,sabor,bordaRecheada,precoId) VALUES("Pizza de Brigadeiro","Doce",FALSE,4);
INSERT INTO tb_pizzas(nome,sabor,bordaRecheada,precoId) VALUES("Pizza de Beijinho","Doce",FALSE,5);
INSERT INTO tb_pizzas(nome,sabor,bordaRecheada,precoId) VALUES("Pizza de Cebola","Salgada",TRUE,1);
INSERT INTO tb_pizzas(nome,sabor,bordaRecheada,precoId) VALUES("Pizza de Milho","Salgada",TRUE,2);
INSERT INTO tb_pizzas(nome,sabor,bordaRecheada,precoId) VALUES("Pizza de Goiabada","doce",FALSE,3);

SELECT*FROM tb_pizzas INNER JOIN tb_categorias on preco > 45;

SELECT*FROM tb_pizzas INNER JOIN tb_categorias on preco >=50 and preco <=100;

SELECT*FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT*from tb_pizzas INNER JOIN tb_categorias on precoId=precoId;

SELECT*FROM tb_pizzas INNER JOIN tb_categorias on sabor = "Doce";