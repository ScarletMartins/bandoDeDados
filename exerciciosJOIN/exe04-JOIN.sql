CREATE DATABASE DB_CIDADE_DOS_VEGETAIS;
USE DB_CIDADE_DOS_VEGETAIS;

CREATE TABLE TB_CATEGORIAS(
ID INT AUTO_INCREMENT,
TIPO VARCHAR (50) NOT NULL, 
ZONA VARCHAR(50) NOT NULL,
PRIMARY KEY (ID));

CREATE TABLE TB_PRODUTOS(
ID INT AUTO_INCREMENT, 
NOME VARCHAR(50) NOT NULL,
PRECO DECIMAL(6,2) NOT NULL,
QTD INT NOT NULL,
TIPO_ID INT NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY (TIPO_ID) REFERENCES TB_CATEGORIAS(ID));

SELECT * FROM TB_CATEGORIAS;
SELECT * FROM TB_PRODUTOS;

INSERT INTO TB_CATEGORIAS(TIPO, ZONA)
VALUES ("FRUTA", "LESTE"),
("VERDURA", "NORTE"),
("FRUTA", "SUL"),
("LEGUME","OESTE"),
("VERDURA", "SUL");

INSERT INTO TB_PRODUTOS(NOME, PRECO, QTD, TIPO_ID)
VALUES ("MANGA", 6.50, 10, 1),
("ALFACE", 2.50, 10, 2),
("MAÇA", 10.50, 10, 3),
("BATATA", 66.50, 10, 4),
("BROCCOLI", 78.50, 10, 5),
("MAMÃO", 160.50, 10, 3),
("ALCACHOFRA", 56.50, 10, 5),
("BATATA DOCE", 26.50, 10, 4);

SELECT * FROM DB_CIDADE_DOS_VEGETAIS.TB_CATEGORIAS;

SELECT * FROM DB_CIDADE_DOS_VEGETAIS.TB_PRODUTOS;

SELECT * FROM TB_PRODUTOS WHERE PRECO > 50.00;

SELECT NOME, PRECO FROM TB_PRODUTOS WHERE PRECO > 50.00 AND PRECO < 150.00;

SELECT NOME FROM TB_PRODUTOS WHERE NOME LIKE "%C%";

SELECT NOME, PRECO, QTD, TIPO_ID, TIPO FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON
TB_PRODUTOS.TIPO_ID = TB_CATEGORIAS.ID ORDER BY TIPO_ID DESC;

SELECT NOME, PRECO, QTD, TIPO_ID, TIPO FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON
TB_PRODUTOS.TIPO_ID = TB_CATEGORIAS.ID WHERE TIPO = "FRUTA";