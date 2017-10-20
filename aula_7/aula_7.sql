/* RODAR SCRIPT ESTUDO DE CASO */

SELECT
 CASE nivel_privilegio
 WHEN 2 THEN 'BAIXO'
 WHEN 3 THEN 'M�DIO-BAIXO'
 WHEN 4 THEN 'M�DIO'
 WHEN 5 THEN 'M�DIO-ALTO'
 WHEN 6 THEN 'ALTO'
 ELSE 'OUTROS'
 END
FROM ADMINISTRADORES;

SELECT * FROM ADMINISTRADORES;

SELECT COUNT(*) FROM ADMINISTRADORES;

SELECT
 CASE
 WHEN nivel_privilegio >= 1
 AND nivel_privilegio < 5 THEN 'BAIXO'

 WHEN nivel_privilegio >= 5
 AND nivel_privilegio < 7 THEN 'M�DIO'
 WHEN nivel_privilegio >= 7
 AND nivel_privilegio < 10 THEN 'ALTO'
 ELSE 'OUTROS'
 END
FROM ADMINISTRADORES; 


select MAX(preco) FROM PRODUTOS;

select preco from produtos;

select count(*) num_clientes from clientes;

select count(*) from telefones;

select count (ddd) from telefones where ddd = 51;

CREATE TABLE PRODS
(
 codigo NUMERIC(3) NOT NULL,
 nome VARCHAR(50) NOT NULL,
 preco NUMERIC (5,2) NOT NULL,
 tipo CHAR(1) NULL,
 -- [S]uprimento, [C]omponente, [P]erif�rico
 CONSTRAINT PK1 PRIMARY KEY (codigo)
); 

INSERT INTO PRODS
VALUES( 10, 'HD' ,200 ,'C');
INSERT INTO PRODS
VALUES( 11, 'Memoria' ,250 ,'C');
INSERT INTO PRODS
VALUES( 12, 'Impressora' ,680 ,'P');
INSERT INTO PRODS
VALUES( 13, 'Processador' ,600 ,'C');
INSERT INTO PRODS
VALUES( 14, 'DVD-RW' ,2 ,'S');
INSERT INTO PRODS
VALUES( 15, 'Papel A4' ,19 ,'S');
INSERT INTO PRODS
VALUES( 16, 'Scanner' ,199 ,'P'); 


select * from prods;

--a)Quantos produtos existem na tabela PRODS? 
select count(*) from prods;

--b) Quantos tipos de produtos existem na tabela PRODS? 
select tipo, count(*) qtd_tipo
from prods
group by tipo 
order by tipo;

select avg(preco) from prods;

select preco from prods;

--d) Qual a m�dia de pre�o de todos os produtos? 
select tipo, avg(preco)
from prods
group by tipo
order by tipo;

ALTER TABLE PRODS ADD (usuario NUMBER(1) NULL);
UPDATE PRODS
SET usuario = 1
WHERE codigo IN (10,12,13,14);

UPDATE PRODS
SET usuario = 2
WHERE usuario IS NULL;

SELECT tipo, usuario, AVG(preco)
FROM PRODS
GROUP BY tipo, usuario
ORDER BY tipo, usuario; 

UPDATE PRODS
 SET usuario = 2
 WHERE codigo = 14;
 
 UPDATE PRODS
 SET usuario = NULL
 WHERE codigo = 13;

SELECT tipo, usuario, AVG(preco)
FROM PRODS
GROUP BY tipo, usuario
ORDER BY tipo, usuario ;
