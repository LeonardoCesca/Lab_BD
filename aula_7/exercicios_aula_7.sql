-- EC1.   Qual a quantidade de endereços por estado?

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

--EC4.   Qual o ranking de regiões por quantidade de clientes, ou seja, em ordem decrescente de quantidade de clientes?

select regiao, count(distinct cod_cliente) 
from estados join cidades using (uf)
join enderecos using (cod_cidade)
join clientes_enderecos using (cod_endereco)
join clientes using (cod_cliente)
group by regiao
order by count (distinct cod_cliente) desc;

--EC5.   Qual a quantidade de pedidos por região?



--EC6.   Qual a quantidade de pedidos por ano e por região, considerando apenas os pedidos feitos nos anos de 2000 até 2004?


--EC7.   Qual o valor total gasto por cliente, ordenado em ordem decrescente de valor total?


--EC8.   Qual o valor total gasto por cliente, ordenado em ordem decrescente de valor total, considerando apenas os clientes do Rio Grande do Sul?


--EC9.   Qual o valor total vendido por autor?


--EC10.  Qual o valor médio faturado com as vendas por produto?


--EC11.  Qual o valor total de cada pedido?


--EC12.  Qual o valor médio dos pedidos por estado?