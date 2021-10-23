-- CREATE DATABASE DBCHA;

USE DBCHA;

drop table Publicidade;
drop table Compra;
drop table Cobertura;
drop table Proprietário;
drop table Imóvel;
drop table Corretor;
drop table Funcionário;
drop table Cliente;
drop table Área;
drop table Relacionamento;
drop table Função;
drop table Mídia;

CREATE TABLE Mídia
  (
    IdMídia INT NOT NULL,
    Tipo VARCHAR(30) NOT NULL,
    PRIMARY KEY (IdMídia),
    UNIQUE (Tipo)
  );

CREATE TABLE Cliente
  (
    IdCliente INT NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Telefone VARCHAR(50) NOT NULL,
    CPF VARCHAR(50) NOT NULL,
    Endereço VARCHAR(100) NOT NULL,
    PRIMARY KEY (IdCliente),
    UNIQUE (CPF)
  );

CREATE TABLE Área
  (
    IdÁrea INT NOT NULL,
    Cidade VARCHAR(50) NOT NULL,
    Bairro VARCHAR(50),
    PRIMARY KEY (IdÁrea)
  );

CREATE TABLE Função
  (
    IdFunção INT NOT NULL,
    Tipo VARCHAR(30) NOT NULL,
    PRIMARY KEY (IdFunção),
    UNIQUE (Tipo)
  );

CREATE TABLE Relacionamento
  (
    IdRelacionamento INT NOT NULL,
    Tipo VARCHAR(20) NOT NULL,
    PRIMARY KEY (IdRelacionamento),
    UNIQUE (Tipo)
  );

CREATE TABLE Imóvel
  (
    IdImóvel INT NOT NULL,
    IdÁrea INT NOT NULL,
    Endereço VARCHAR(100) NOT NULL,
    Valor FLOAT NOT NULL,
    PRIMARY KEY (IdImóvel),
    FOREIGN KEY (IdÁrea) REFERENCES Área(IdÁrea)
  );

CREATE TABLE Proprietário
  (
    IdImóvel INT NOT NULL,
    IdCliente INT NOT NULL,
    FOREIGN KEY (IdImóvel) REFERENCES Imóvel(IdImóvel),
    FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente)
  );

CREATE TABLE Funcionário
  (
    IdFuncionário INT NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Telefone VARCHAR(50) NOT NULL,
    CPF VARCHAR(50) NOT NULL,
    Endereço VARCHAR(100) NOT NULL,
    IdFunção INT NOT NULL,
    IdRelacionamento INT NOT NULL,
    PRIMARY KEY (IdFuncionário),
    FOREIGN KEY (IdFunção) REFERENCES Função(IdFunção),
    FOREIGN KEY (IdRelacionamento) REFERENCES Relacionamento(IdRelacionamento),
    UNIQUE (CPF)
  );

CREATE TABLE Corretor
  (
    IdCorretor INT NOT NULL,
    Budget FLOAT NOT NULL,
    CRECI INT NOT NULL,
    IdFuncionário INT NOT NULL,
    PRIMARY KEY (IdCorretor),
    FOREIGN KEY (IdFuncionário) REFERENCES Funcionário(IdFuncionário),
    UNIQUE (CRECI)
  );

CREATE TABLE Publicidade
  (
    IdPublicidade INT NOT NULL,
    Orçamento FLOAT NOT NULL,
    IdImóvel INT NOT NULL,
    IdCorretor INT NOT NULL,
    IdMídia INT NOT NULL,
    DataInício DATE NOT NULL,
    DataFim DATE NOT NULL,
    PRIMARY KEY (IdPublicidade),
    FOREIGN KEY (IdImóvel) REFERENCES Imóvel(IdImóvel),
    FOREIGN KEY (IdCorretor) REFERENCES Corretor(IdCorretor),
    FOREIGN KEY (IdMídia) REFERENCES Mídia(IdMídia)
  );

CREATE TABLE Compra
  (
    IdCompra INT NOT NULL,
    Data DATE NOT NULL,
    Valor FLOAT NOT NULL,
    IdImóvel INT NOT NULL,
    IdCorretor INT NOT NULL,
    IdCliente INT NOT NULL,
    PRIMARY KEY (IdCompra),
    FOREIGN KEY (IdImóvel) REFERENCES Imóvel(IdImóvel),
    FOREIGN KEY (IdCorretor) REFERENCES Corretor(IdCorretor),
    FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente)
  );

CREATE TABLE Cobertura
  (
    IdÁrea INT NOT NULL,
    IdCorretor INT NOT NULL,
    FOREIGN KEY (IdÁrea) REFERENCES Área(IdÁrea),
    FOREIGN KEY (IdCorretor) REFERENCES Corretor(IdCorretor)
  );
