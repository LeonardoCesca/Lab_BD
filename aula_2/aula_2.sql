DROP TABLE PESSOAS;

CREATE TABLE PESSOAS(
   cpf VARCHAR(20) NOT NULL,
   nome VARCHAR(150) NOT NULL,
   idade NUMBER(3) NULL,
   endereco VARCHAR(200) NULL


);

-- ordem normal das colunas:
INSERT INTO PESSOAS (cpf, nome, idade, endereco)
VALUES ('32809', 'Maria', 25, 'Rua A, 20');
-- outra ordem qualquer das colunas:
INSERT INTO PESSOAS (idade, endereco, cpf, nome)
VALUES (25, 'Rua A, 20', '30599', 'Pedro');
-- valores nulos:
INSERT INTO PESSOAS (cpf, nome, idade, endereco)
VALUES ('29385', 'Carlos', NULL, NULL);

INSERT INTO PESSOAS (cpf, nome, idade, endereco)
VALUES ('39582', 'Alice', 80, NULL);

INSERT INTO PESSOAS (cpf, nome, idade, endereco)
VALUES ('78838', 'Antonio', NULL, 'Rua B, 80'); 

INSERT INTO PESSOAS (cpf, nome)
VALUES ('90038', 'Ana Paula');

INSERT INTO PESSOAS (cpf, nome, idade)
VALUES ('23487', 'Patricia', 18);

INSERT INTO PESSOAS (cpf, nome, endereco)
VALUES ('23363', 'Jose', 'Rua C, 50'); 

SELECT * FROM PESSOAS;

-- Pessoas sem especificação de idade:
SELECT *
FROM PESSOAS
WHERE idade IS NULL;
-- Pessoas que forneceram algum endereço:
SELECT *
FROM PESSOAS
WHERE endereco IS NOT NULL; 

-- Pessoas com nomes iniciando com a letra 'A':
SELECT *
FROM PESSOAS
WHERE nome LIKE 'A%'; 

-- Pessoas com nomes iniciando com 'Ana':
SELECT *
FROM PESSOAS
WHERE nome LIKE 'Ana%';
-- Pessoas com nomes que terminam com 'Silva':
SELECT *
FROM PESSOAS
WHERE nome LIKE '%Silva';
-- Pessoas com nomes que contenham 'Carlos':
SELECT *
FROM PESSOAS
WHERE nome LIKE '%Carlos%'; 

-- Pode corresponder a Maria ou Mario:
SELECT *
FROM PESSOAS
WHERE nome LIKE 'Mari_ da Silva'; 

-- Pessoas que tenham 25, 30 ou 40 anos de idade:
SELECT *
FROM PESSOAS
WHERE idade IN (25, 30, 40); 

ALTER TABLE PESSOAS
DROP COLUMN idade; 

ALTER TABLE PESSOAS
ADD datanasc DATE NULL;


-- Deve-se acrescentar a palavra DATE antes da data.
INSERT INTO PESSOAS (cpf, nome, datanasc, endereco)
VALUES
('29048', 'Roberto', DATE '1980-02-03', 'Rua D, 80');

--DATA ATUAL
SELECT SYSDATE 
FROM DUAL;

