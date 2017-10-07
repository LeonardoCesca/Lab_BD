-- NOME : LEONARDO CESCA FLACH

--1--
CREATE TABLE paciente(
  cod_paciente number(5) not null,
  nome varchar(100) not null,
  email varchar(30) not null,
  sexo char(1) not null,
  constraint pk_paciente primary key (cod_paciente)
);

CREATE TABLE atendimento(
  cod_atendimento number(9) not null,
  cod_paciente number(5) not null,
  data_atendimento date not null,
  constraint pk_atendimento primary key (cod_atendimento)
);

CREATE TABLE viagem(
  cod_viagem number(9) not null,
  cod_atendimento number(9) not null,
  origem varchar(30) not null,
  destino varchar(30) not null,
  constraint pk_viagem primary key (cod_viagem)
);

ALTER TABLE atendimento 
add constraint fk_paciente_atendimento
foreign key (cod_paciente)
references paciente (cod_paciente);

alter table viagem
add constraint fk_atendimento_viagem
foreign key (cod_atendimento)
references atendimento (cod_atendimento);

--2--
--MARIA
insert into paciente(cod_paciente, nome, email, sexo)
values (1, 'Maria', 'Maria@pucrs.br', 'F');
insert into atendimento(cod_atendimento, cod_paciente, data_atendimento)
values (1, 1, to_date('05/10/2017', 'dd/mm/yyyy'));
insert into atendimento(cod_atendimento, cod_paciente, data_atendimento)
values (2, 1, to_date('06/10/2017', 'dd/mm/yyyy'));
insert into viagem(cod_viagem, cod_atendimento, origem, destino)
values (1, 1, 'porto alegre', 'medellin');
insert into viagem(cod_viagem, cod_atendimento, origem, destino)
values (2, 1, 'porto', 'pelotas');
insert into viagem(cod_viagem, cod_atendimento, origem, destino)
values (3, 2, 'mexico', 'porto alegre');

--JOAO
insert into paciente(cod_paciente, nome, email, sexo)
values (2, 'Joao', 'Joao@xyz.br', 'M');
insert into atendimento(cod_atendimento, cod_paciente, data_atendimento)
values (3, 2, to_date('06/10/2017', 'dd/mm/yyyy'));
insert into viagem(cod_viagem, cod_atendimento, origem, destino)
values (3, 3, 'Brasil', 'Paris');

--PAULO
insert into paciente(cod_paciente, nome, email, sexo)
values (3, 'Paulo', 'Paulo@pucrs.br', 'M');
insert into atendimento(cod_atendimento, cod_paciente, data_atendimento)
values (4, 3, to_date('07/10/2017', 'dd/mm/yyyy'));

--3--
select p.nome, p.sexo
from pacientes p
where p.email LIKE = '%@pucrs.br%'
order by p.nome;

--4-- 
select p.nome, a.data_atendimento, v.origem, v.destino
from paciente p
join atendimento a
on p.cod_paciente = a.cod_paciente
join viagem v
on a.cod_atendimento = v.cod_atendimento
order by p.nome;

--5--
select p.nome, a.data_atendimento, v.destino
from paciente p 
join atendimento a
on p.COD_PACIENTE = a.COD_PACIENTE
left join viagem v
on v.cod_atendimento = a.cod_atendimento
order by p.nome;

