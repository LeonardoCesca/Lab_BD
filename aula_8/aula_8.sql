--Sub Query that return only one value--
SELECT titulo
FROM PRODUTOS
WHERE preco >
 (SELECT preco
 FROM PRODUTOS
 WHERE cod_produto = 142);
-------------------------------------------------
SELECT titulo
FROM PRODUTOS
WHERE importado = 'N' AND preco >
 (SELECT MAX(preco)
 FROM PRODUTOS
 WHERE importado = 'S'); 
 ----The MAX() function returns the largest value of the selected column.--
-------------------------------------------------
SELECT ano_lancamento, AVG(preco)
FROM PRODUTOS
GROUP BY ano_lancamento
HAVING AVG(preco) >
 (SELECT AVG(preco)
 FROM PRODUTOS
 WHERE ano_lancamento = trunc(sysdate,'yyyy'));
---The AVG() function returns the average value of a numeric column.---
-- TRUNC() remove the part of fractional--

-------------------------------------------------
-- Sub Query using the operator  IN
SELECT PED.num_pedido
FROM pedidos PED
WHERE ped.cod_cliente IN
 (SELECT ADM.cod_administrador
 FROM administradores ADM); 
-------------------------------------------------
 SELECT PED.num_pedido
FROM pedidos PED
WHERE (PED.cod_cliente, PED.cod_endereco) IN
 (SELECT END.cod_cliente, END.cod_endereco
 FROM enderecos END
 WHERE END.cod_cidade = 20); 
 
 -------------------------------------------------
--Sub Querys using the operators ANY AND SOME
 SELECT PROD.titulo
FROM produtos PROD
WHERE PROD.importado = 'N' AND PROD.preco > ANY
 (SELECT PROD1.preco
 FROM produtos PROD1
 WHERE PROD1.importado = 'S'); 
 
-------------------------------------------------
--Sub Querys using the operator ALL
SELECT PROD.titulo
FROM produtos PROD
WHERE PROD.importado = 'N' AND PROD.preco > ALL
 (SELECT PROD1.preco
 FROM produtos PROD1
 WHERE PROD1.importado = 'S'); 
 
 ------------------------------------------------
