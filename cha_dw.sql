
USE DWCHA;

drop table fato_venda_det;
drop table fato_venda_agreg;
drop table cliente;
drop table corretor;
drop table dia;
drop table endereco_area;

CREATE TABLE cliente (
  chave_cliente int NOT NULL auto_increment, # remove auto_increment
  id_cliente int NOT NULL,
  nome varchar(250) NOT NULL,
  telefone varchar(20) NOT NULL,
  CPF varchar(14) NOT NULL,
  endereco varchar(300) NOT NULL,
  status varchar(10) NOT NULL,
  effective_startdate datetime NOT NULL,
  effective_enddate datetime,
  PRIMARY KEY (chave_cliente)
);

CREATE TABLE corretor (
  chave_corretor int NOT NULL auto_increment, # remove auto_increment
  id_corretor int NOT NULL,
  nome varchar(250) NOT NULL,
  telefone varchar(20) NOT NULL,
  CPF varchar(14) NOT NULL,
  endereco varchar(300) NOT NULL,
  socio varchar(10) NOT NULL,
  registro_CRECI varchar(6) NOT NULL,
  budget_publi decimal(10,2) NOT NULL,
  status varchar(10) NOT NULL,
  effective_startdate datetime NOT NULL,
  effective_enddate datetime,
  PRIMARY KEY (chave_corretor)
);

CREATE TABLE dia (
  id_dia int NOT NULL auto_increment, # remove auto_increment
  data_completa datetime NOT NULL,
  dia_semana varchar(20) NOT NULL,
  dia_mes int NOT NULL,
  mes int NOT NULL,
  trimestre int NOT NULL,
  ano int NOT NULL,
  PRIMARY KEY (id_dia)
);

CREATE TABLE endereco_area (
  chave_area int NOT NULL auto_increment, # remove auto_increment
  id_area int NOT NULL,
  nome_cidade varchar(200) NOT NULL,
  nome_bairo varchar(200) NULL,
  codigo_cidade varchar(6),
  percentual_vacinacao float(5),
  status varchar(10) NOT NULL,
  effective_startdate datetime NOT NULL,
  effective_enddate datetime,
  PRIMARY KEY (chave_area)
);

CREATE TABLE fato_venda_det (
  id_venda int NOT NULL auto_increment, # remove auto_increment
  id_area int NOT NULL,
  id_corretor int NOT NULL,
  id_comprador int NOT NULL,
  id_vendedor int NOT NULL,
  id_dia int NOT NULL,
  comissao decimal(12,2) NOT NULL,
  PRIMARY KEY (id_venda, id_area),
  FOREIGN KEY (id_area) REFERENCES endereco_area (chave_area),
  FOREIGN KEY (id_corretor) REFERENCES corretor (chave_corretor),
  FOREIGN KEY (id_comprador) REFERENCES cliente (chave_cliente),
  FOREIGN KEY (id_vendedor) REFERENCES cliente (chave_cliente),
  FOREIGN KEY (id_dia) REFERENCES dia (id_dia)
);

CREATE TABLE fato_venda_agreg (
  id_dia int NOT NULL auto_increment, # remove auto_increment
  id_area int NOT NULL,
  comissao decimal(12,2) NOT NULL,
  PRIMARY KEY (id_dia, id_area),
  FOREIGN KEY (id_dia) REFERENCES dia (id_dia),
  FOREIGN KEY (id_area) REFERENCES endereco_area (chave_area)
);
