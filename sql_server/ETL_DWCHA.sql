
USE DWCHA;

INSERT INTO Corretor
SELECT NEWID() as uniqueidentifier,
       cor.IdCorretor,
       fun.Nome,
       fun.Telefone,
       fun.CPF,
       fun.Endereço,
       rel.Tipo,
       cor.CRECI,
       cor.Budget,
       'Current',
       GETDATE(),
       null
  FROM DBCHA.dbo.Corretor as cor
       inner join DBCHA.dbo.Funcionário as fun on fun.IdFuncionário = cor.IdFuncionário
       inner join DBCHA.dbo.Relacionamento as rel on rel.IdRelacionamento = fun.IdRelacionamento;

INSERT INTO Cliente
SELECT NEWID() as uniqueidentifier,
       cli.IdCliente,
       cli.Nome,
       cli.Telefone,
       cli.CPF,
       cli.Endereço,
       'Current',
       GETDATE(),
       null
  FROM DBCHA.dbo.Cliente as cli;

INSERT INTO Endereco_area
SELECT NEWID() as uniqueidentifier,
       ar.IdÁrea,
       ar.Cidade,
       ar.Bairro,
       vac.IdCidade,
       vac.Porcentagem,
       'Current',
       GETDATE(),
       null
  FROM DBCHA.dbo.Área as ar
       inner join DBCHA.dbo.Vacinação as vac on vac.Nome = ar.Cidade;

INSERT INTO Dia
SELECT
  NEWID() as uniqueidentifier,
  data,
  datename(weekday, data),
  datepart(day, data),
  datepart(month, data),
  datepart(quarter, data),
  datepart(year, data)
  From (SELECT DISTINCT com.Data FROM DBCHA.dbo.Compra as com) as data;

INSERT INTO fato_venda_det
SELECT com0.idCompra,
       ar.chave_area,
       cor.chave_corretor,
       com.chave_cliente,
       ven.chave_cliente,
       dia.id_dia,
       com0.Valor*0.06
  From DBCHA.dbo.Compra as com0
       inner join DBCHA.dbo.Corretor as cor0 on cor0.IdCorretor = com0.IdCorretor

       inner join DBCHA.dbo.Imóvel as imo0 on imo0.IdImóvel = com0.IdImóvel
       inner join DBCHA.dbo.Área as ar0 on ar0.IdÁrea = imo0.IdÁrea

       inner join DBCHA.dbo.Cliente as comp0 on comp0.IdCliente = com0.IdCliente

       inner join DBCHA.dbo.Proprietário as pro0 on pro0.IdImóvel = com0.IdImóvel
       inner join DBCHA.dbo.Cliente as ven0 on ven0.IdCliente = pro0.IdCliente

       inner join Corretor as cor on cor.id_corretor = cor0.IdCorretor
       inner join Endereco_area as ar on ar.id_area = ar0.IdÁrea
       inner join Cliente as com on com.id_cliente = comp0.IdCliente
       inner join Cliente as ven on ven.id_cliente = ven0.IdCliente
       inner join Dia as dia on dia.data_completa = com0.Data;

INSERT INTO fato_venda_agreg
SELECT det.id_dia,
       det.id_area,
       sum(det.comissao)
  FROM fato_venda_det as det
 group by det.id_dia, det.id_area;
