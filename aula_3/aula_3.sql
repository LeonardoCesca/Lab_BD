CREATE TABLE ESTADOS (
  uf VARCHAR(2),
  NOME VARCHAR(50),
  REGIAO VARCHAR(100)

);

CREATE TABLE CIDADE(
  COD_CIDADE INT PRIMARY KEY,
  NOME VARCHAR(50),
  UF VARCHAR (2)
);
  
DROP TABLE ALUNOS;

CREATE TABLE ALUNOS(
  nroMatricula VARCHAR(10) NOT NULL,
  cpf VARCHAR(20) NOT NULL,
  email VARCHAR(100) NOT NULL,
  nome VARCHAR(150) NOT NULL,
  anoIngresso NUMBER(4) NOT NULL,
  endereco VARCHAR(150) NULL,
  sexo CHAR(1) NOT NULL 
  
);

ALTER TABLE ALUNOS ADD CONSTRAINT PK_ALUNOS PRIMARY KEY (nroMatricula);
ALTER TABLE ALUNOS ADD CONSTRAINT AK1_ALUNOS UNIQUE (cpf);
ALTER TABLE ALUNOS ADD CONSTRAINT AK2_ALUNOS UNIQUE (email);

SELECT * FROM ALUNOS;

ALTER TABLE ALUNOS
ADD CONSTRAINT CK_AnoIng CHECK (anoIngresso > 2000);

ALTER TABLE ALUNOS
ADD CONSTRAINT CK_sexo CHECK (sexo IN ('M', 'F')); 

ALTER TABLE ESTADOS ADD CONSTRAINT  PK_ESTADOS PRIMARY KEY (uf);

ALTER TABLE ESTADOS MODIFY UF CHAR(2) NOT NULL;

ALTER TABLE ESTADOS MODIFY NOME VARCHAR(40) NOT NULL;

ALTER TABLE ESTADOS MODIFY REGIAO CHAR(2) NOT NULL;

insert into estados values ('AC','Acre','N');
insert into estados values ('AL','Alagoas','NE');
insert into estados values ('AP','Amap�','N');
insert into estados values ('AM','Amazonas','N');
insert into estados values ('BA','Bahia','NE');
insert into estados values ('CE','Cear�','NE');
insert into estados values ('DF','Distrito Federal','CO');
insert into estados values ('ES','Esp�rito Santo','SE');
insert into estados values ('GO','Goi�s','CO');
insert into estados values ('MA','Maranh�o','NE');
insert into estados values ('MT','Mato Grosso','CO');
insert into estados values ('MS','Mato Grosso do Sul','CO');
insert into estados values ('MG','Minas Gerais','SE');
insert into estados values ('PA','Par�','N');
insert into estados values ('PB','Para�ba','NE');
insert into estados values ('PR','Paran�','S');
insert into estados values ('PE','Pernambuco','NE');
insert into estados values ('PI','Piau�','NE');
insert into estados values ('RJ','Rio de Janeiro','SE');
insert into estados values ('RN','Rio Grande do Norte','NE');
insert into estados values ('RS','Rio Grande do Sul','S');
insert into estados values ('RO','Rond�nia','N');
insert into estados values ('RR','Roraima','N');
insert into estados values ('SC','Santa Catarina','S');
insert into estados values ('SP','S�o Paulo','SE');
insert into estados values ('SE','Sergipe','NE');
insert into estados values ('TO','Tocantins','N');


ALTER TABLE cidade MODIFY cod_cidade NUMBER(4) NOT NULL;

ALTER TABLE cidade MODIFY nome VARCHAR(60) NOT NULL;

ALTER TABLE cidade MODIFY uf char(2) NOT NULL;

ALTER TABLE cidade ADD CONSTRAINT FK_EST_CID FOREIGN KEY (uf) REFERENCES ESTADOS (uf);

