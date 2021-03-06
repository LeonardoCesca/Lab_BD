-- EC1.   Qual a quantidade de endere�os por estado?

select uf, count(*)
from estados join cidades using (uf)
join enderecos using (cod_cidade)
group by uf;

--EC2.   Qual a quantidade de clientes de cada estado?
select uf, count(distinct cod_cliente)
from estados join cidades using (uf)
join enderecos using (cod_cidade)
join clientes_enderecos using (cod_endereco)
join clientes using (cod_cliente)
group by uf;

--EC3.   Qual o ranking de estados por quantidade de clientes, ou seja, em ordem decrescente de quantidade de clientes?
select uf, count(distinct cod_cliente)
from estados join cidades using (uf)
join enderecos using (cod_cidade)
join clientes_enderecos using (cod_endereco)
join clientes using (cod_cliente)
group by uf
order by count (distinct cod_cliente) desc;

--EC4.   Qual o ranking de regi�es por quantidade de clientes, ou seja, em ordem decrescente de quantidade de clientes?

select regiao, count(distinct cod_cliente) 
from estados join cidades using (uf)
join enderecos using (cod_cidade)
join clientes_enderecos using (cod_endereco)
join clientes using (cod_cliente)
group by regiao
order by count (distinct cod_cliente) desc;

--EC5.   Qual a quantidade de pedidos por regi�o?

select regiao, count(distinct num_pedido)
from estados join cidades using (uf)
join enderecos using (cod_cidade)
join clientes_enderecos using (cod_endereco)
join pedidos using (cod_cliente,cod_endereco)
group by regiao
order by count(num_pedido) desc;


--EC6.   Qual a quantidade de pedidos por ano e por regi�o, considerando apenas os pedidos feitos nos anos de 2000 at� 2004?
select to_char(data_emissao,'yyyy'), regiao, count(num_pedido)
from estados join cidades using(uf)
join enderecos using(cod_cidade)
join clientes_enderecos using(cod_endereco)
join pedidos using(cod_cliente,cod_endereco)
where to_char(data_emissao,'yyyy') >= '2000' and to_char(data_emissao,'yyyy') <= '2004' 
group by to_char(data_emissao,'yyyy'), regiao
order by to_char(data_emissao,'yyyy'), regiao;

--EC7.   Qual o valor total gasto por cliente, ordenado em ordem decrescente de valor total?
select cod_cliente, sum(quantidade*valor_unitario)
from estados join cidades using (uf)
join enderecos using (cod_cidade) 
join clientes_enderecos using (cod_endereco)
join pedidos using (cod_cliente, cod_endereco)
join pedidos_produtos using (num_pedido)
group by cod_cliente
order by sum(quantidade*valor_unitario) desc;

--The SUM() function returns the total sum of a numeric column. --

--EC8.   Qual o valor total gasto por cliente, ordenado em ordem decrescente de valor total, considerando apenas os clientes do Rio Grande do Sul?
select cod_cliente, sum(quantidade*valor_unitario)
from estados join cidades using (uf)
join enderecos using (cod_cidade)
join clientes_enderecos using (cod_endereco)
join pedidos using (cod_cliente, cod_endereco)
join pedidos_produtos using (num_pedido)
where uf = 'RS'
group by cod_cliente
order by sum(quantidade*valor_unitario) desc;

--The SUM() function returns the total sum of a numeric column.--

--EC9.   Qual o valor total vendido por autor?
select cod_autor, sum(quantidade*valor_unitario)
from autores join autores_produtos using (cod_autor)
join produtos using (cod_produto)
join pedidos_produtos using (cod_produto)
group by cod_autor;

--The SUM() function returns the total sum of a numeric column. --

--EC10.  Qual o valor m�dio faturado com as vendas por produto? 
select cod_produto, avg( quantidade * valor_unitario )
from produtos join pedidos_produtos using( cod_produto )
group by cod_produto;

-- The AVG() function returns the average value of a numeric column. --

--EC11.  Qual o valor total de cada pedido?
select num_pedido, sum(quantidade * valor_unitario)
from pedidos join pedidos_produtos using (num_pedido)
group by num_pedido;

--EC12.  Qual o valor m�dio dos pedidos por estado?
select uf, sum(quantidade * valor_unitario) / count(distinct num_pedido)
from estados join cidades using(uf)
join enderecos using(cod_cidade)
join clientes_enderecos using(cod_endereco)
join pedidos using(cod_cliente,cod_endereco)
join pedidos_produtos using(num_pedido)
group by uf;