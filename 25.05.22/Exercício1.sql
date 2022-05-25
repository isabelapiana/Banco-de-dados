CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
defesa BIGINT,
ataque BIGINT,
PRIMARY KEY(id)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
idade VARCHAR(255),
cor VARCHAR(255),
classe VARCHAR(255),
habilidadeId BIGINT,
PRIMARY KEY(id),
FOREIGN KEY(habilidadeId) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(defesa,ataque) VALUES(3000,3000);
INSERT INTO tb_classes(defesa,ataque) VALUES(3000,500);
INSERT INTO tb_classes(defesa,ataque) VALUES(1500,1500);
INSERT INTO tb_classes(defesa,ataque) VALUES(500,3000);
INSERT INTO tb_classes(defesa,ataque) VALUES(500,500);

INSERT INTO tb_personagens(nome,idade,cor,classe,habilidadeId) VALUES("Ursinho Pooh","Jovem","Amarelo","Arqueiro",1);
INSERT INTO tb_personagens(nome,idade,cor,classe,habilidadeId) VALUES("Can","Adulto","Marrom","Guerreiro",2);
INSERT INTO tb_personagens(nome,idade,cor,classe,habilidadeId) VALUES("Ió","Jovem","Azul","Guerreiro",3);
INSERT INTO tb_personagens(nome,idade,cor,classe,habilidadeId) VALUES("Guru","Filhote","Marrom","Arqueiro",4);
INSERT INTO tb_personagens(nome,idade,cor,classe,habilidadeId) VALUES("Tigrão","Jovem","Tigrado","Bardo",5);
INSERT INTO tb_personagens(nome,idade,cor,classe,habilidadeId) VALUES("Abel","Idoso","Amarelo","Alquimista",1);
INSERT INTO tb_personagens(nome,idade,cor,classe,habilidadeId) VALUES("Leitão","Jovem","Rosa","Arqueiro",2);
INSERT INTO tb_personagens(nome,idade,cor,classe,habilidadeId) VALUES("Corujão","Idoso","Marrom","Alquimista",3);

SELECT*FROM tb_personagens INNER JOIN tb_classes on ataque > 2000;

SELECT*FROM tb_personagens INNER JOIN tb_classes on defesa>=1000 and defesa <=2000;

SELECT*FROM tb_personagens WHERE nome LIKE "%C%";

SELECT*from tb_personagens INNER JOIN tb_classes on habilidadeId=habilidadeId;

SELECT*FROM tb_personagens INNER JOIN tb_classes on classe = "Arqueiro";