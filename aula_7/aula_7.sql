/* RODAR SCRIPT ESTUDO DE CASO */

SELECT
 CASE nivel_privilegio
 WHEN 2 THEN 'BAIXO'
 WHEN 3 THEN 'MÉDIO-BAIXO'
 WHEN 4 THEN 'MÉDIO'
 WHEN 5 THEN 'MÉDIO-ALTO'
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
 AND nivel_privilegio < 7 THEN 'MÉDIO'
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
 -- [S]uprimento, [C]omponente, [P]eriférico
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

select count(*) from prods;

select tipo, count(*) qtd_tipo
from prods
group by tipo 
order by tipo;

select avg(preco) from prods;

select preco from prods;

