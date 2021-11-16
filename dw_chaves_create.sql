-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-11-13 19:22:10.742

-- tables
-- Table: cliente

USE DWCHA;

drop table fato_venda_det;
drop table fato_venda_agreg;
drop table cliente;
drop table corretor;
drop table dia;
drop table endereco_area;

CREATE TABLE cliente (
    chave_cliente int  NOT NULL auto_increment, # uniqueidentifier
    id_cliente int  NOT NULL,
    nome varchar(250)  NOT NULL,
    telefone varchar(20)  NOT NULL,
    CPF varchar(14)  NOT NULL,
    endereco varchar(300)  NOT NULL,
    status varchar(10)  NOT NULL,
    effective_startdate datetime  NOT NULL,
    effective_enddate datetime,
    CONSTRAINT cliente_pk PRIMARY KEY  (chave_cliente)
);

-- Table: corretor
CREATE TABLE corretor (
    chave_corretor int  NOT NULL auto_increment, # uniqueidentifier
    id_corretor int  NOT NULL,
    nome varchar(250)  NOT NULL,
    telefone varchar(20)  NOT NULL,
    CPF varchar(14)  NOT NULL,
    endereco varchar(300)  NOT NULL,
    socio varchar(10)  NOT NULL,
    registro_CRECI varchar(6)  NOT NULL,
    budget_publi decimal(10,2)  NOT NULL,
    status varchar(10)  NOT NULL,
    effective_startdate datetime  NOT NULL,
    effective_enddate datetime,
    CONSTRAINT corretor_pk PRIMARY KEY  (chave_corretor)
);

-- Table: dia
CREATE TABLE dia (
    id_dia int  NOT NULL auto_increment,  # uniqueidentifier
    data_completa datetime  NOT NULL,
    dia_semana varchar(20)  NOT NULL,
    dia_mes int  NOT NULL,
    mes int  NOT NULL,
    trimestre int  NOT NULL,
    ano int  NOT NULL,
    CONSTRAINT dia_pk PRIMARY KEY  (id_dia)
);

-- Table: endereco_area
CREATE TABLE endereco_area (
    chave_area int  NOT NULL auto_increment, # uniqueidentifier
    id_area int  NOT NULL,
    nome_cidade varchar(200)  NOT NULL,
    nome_bairo varchar(200)  NULL,
    codigo_cidade varchar(6),
    percentual_vacinacao float(5),
    status varchar(10)  NOT NULL,
    effective_startdate datetime  NOT NULL,
    effective_enddate datetime,
    CONSTRAINT endereco_area_pk PRIMARY KEY  (chave_area)
);

-- Table: fato_venda_agreg
CREATE TABLE fato_venda_agreg (
    id_dia int  NOT NULL auto_increment, # uniqueidentifier
    id_area int  NOT NULL,
    comissao decimal(12,2)  NOT NULL,
    CONSTRAINT fato_venda_agreg_pk PRIMARY KEY  (id_dia,id_area)
);

-- Table: fato_venda_det
CREATE TABLE fato_venda_det (
    id_venda int  NOT NULL auto_increment, # uniqueidentifier
    id_corretor int  NOT NULL,
    id_area int  NOT NULL,
    id_comprador int  NOT NULL,
    id_vendedor int  NOT NULL,
    id_dia int  NOT NULL,
    comissao decimal(12,2)  NOT NULL,
    CONSTRAINT fato_venda_det_pk PRIMARY KEY  (id_venda)
);

-- foreign keys
-- Reference: fato_venda_agreg_dia (table: fato_venda_agreg)
ALTER TABLE fato_venda_agreg ADD CONSTRAINT fato_venda_agreg_dia
    FOREIGN KEY (id_dia)
    REFERENCES dia (id_dia);

-- Reference: fato_venda_agreg_endereco_area (table: fato_venda_agreg)
ALTER TABLE fato_venda_agreg ADD CONSTRAINT fato_venda_agreg_endereco_area
    FOREIGN KEY (id_area)
    REFERENCES endereco_area (chave_area);

-- Reference: fato_venda_comprador (table: fato_venda_det)
ALTER TABLE fato_venda_det ADD CONSTRAINT fato_venda_comprador
    FOREIGN KEY (id_comprador)
    REFERENCES cliente (chave_cliente);

-- Reference: fato_venda_corretor (table: fato_venda_det)
ALTER TABLE fato_venda_det ADD CONSTRAINT fato_venda_corretor
    FOREIGN KEY (id_corretor)
    REFERENCES corretor (chave_corretor);

-- Reference: fato_venda_dia (table: fato_venda_det)
ALTER TABLE fato_venda_det ADD CONSTRAINT fato_venda_dia
    FOREIGN KEY (id_dia)
    REFERENCES dia (id_dia);

-- Reference: fato_venda_endereco_area (table: fato_venda_det)
ALTER TABLE fato_venda_det ADD CONSTRAINT fato_venda_endereco_area
    FOREIGN KEY (id_area)
    REFERENCES endereco_area (chave_area);

-- Reference: fato_venda_vendedor (table: fato_venda_det)
ALTER TABLE fato_venda_det ADD CONSTRAINT fato_venda_vendedor
    FOREIGN KEY (id_vendedor)
    REFERENCES cliente (chave_cliente);

-- End of file.

