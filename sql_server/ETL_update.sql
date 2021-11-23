-- UPDATE 

-- Habilitar o DW
use DBCHA;

--DIMENSÃO CORRETOR

drop table DWCHA.dbo.staging_corretor
-- TABELA CORRETOR
-- Habilitar as tabelas
EXEC sys.sp_cdc_enable_table
@source_schema = N'dbo',
@source_name = N'Corretor',
@role_name = Null,
@supports_net_changes = 1
go

-- Colocar em staging
declare @S binary(10);
declare @E binary(10);
SET @S = sys.fn_cdc_get_min_lsn('dbo_corretor');
SET @E = sys.fn_cdc_get_max_lsn();
SELECT IdCorretor, Budget,CRECI, IdFuncionário
into DWCHA.dbo.staging_corretor FROM
[cdc].[fn_cdc_get_net_changes_dbo_corretor]
(
@S,@E,'all'
);

drop table DWCHA.dbo.staging_funcionário;
-- TABELA FUNCIONÁRIO
-- Habilitar as tabelas
EXEC sys.sp_cdc_enable_table
@source_schema = N'dbo',
@source_name = N'Funcionário',
@role_name = Null,
@supports_net_changes = 1
go

-- Colocar em staging
declare @S binary(10);
declare @E binary(10);
SET @S = sys.fn_cdc_get_min_lsn('dbo_funcionário');
SET @E = sys.fn_cdc_get_max_lsn();
SELECT IdFuncionário, Nome, Telefone, CPF, Endereço, IdFunção, IdRelacionamento
into DWCHA.dbo.staging_funcionário FROM
[cdc].[fn_cdc_get_net_changes_dbo_funcionário]
(
@S,@E,'all'
);

drop table DWCHA.dbo.temp_corretor ;
SELECT
       cor.IdCorretor,
       fun.Nome,
       fun.Telefone,
       fun.CPF,
       fun.Endereço,
       rel.Tipo,
       cor.CRECI,
       cor.Budget,
       'Current' as status,
       GETDATE() as effective_startdate,
       null as effective_enddate
into DWCHA.dbo.temp_corretor
FROM DBCHA.dbo.corretor as cor
    inner join DWCHA.dbo.staging_funcionário as fun on fun.IdFuncionário = cor.IdFuncionário
    inner join DBCHA.dbo.Relacionamento as rel on rel.IdRelacionamento = fun.IdRelacionamento
union
SELECT
       cor.IdCorretor,
       fun.Nome,
       fun.Telefone,
       fun.CPF,
       fun.Endereço,
       rel.Tipo,
       cor.CRECI,
       cor.Budget,
       'Current' as status,
       GETDATE() as effective_startdate,
       null as effective_enddate
  FROM DWCHA.dbo.staging_corretor as cor
       inner join DBCHA.dbo.Funcionário as fun on fun.IdFuncionário = cor.IdFuncionário
       inner join DBCHA.dbo.Relacionamento as rel on rel.IdRelacionamento = fun.IdRelacionamento;

UPDATE DWCHA.dbo.corretor
SET status='Notcurrent', effective_enddate=GETDATE()
--SELECT * FROM DWCHA.dbo.corretor
WHERE id_corretor in (SELECT IdCorretor from DWCHA.dbo.temp_corretor) and status='Current';

INSERT INTO DWCHA.dbo.corretor
SELECT NEWID()as uniqueidentifier
	  ,[IdCorretor]
      ,[Nome]
      ,[Telefone]
      ,[CPF]
      ,[Endereço]
      ,[Tipo]
      ,[CRECI]
      ,[Budget]
      ,[status]
      ,[effective_startdate]
      ,[effective_enddate]
  FROM [DWCHA].[dbo].[temp_corretor];


  --DIMENSÃO CLIENTE

drop table DWCHA.dbo.staging_cliente;

-- TABELA CLIENTE
-- Habilitar as tabelas
EXEC sys.sp_cdc_enable_table
@source_schema = N'dbo',
@source_name = N'Cliente',
@role_name = Null,
@supports_net_changes = 1
go

-- Colocar em staging
declare @S binary(10);
declare @E binary(10);
SET @S = sys.fn_cdc_get_min_lsn('dbo_cliente');
SET @E = sys.fn_cdc_get_max_lsn();
SELECT IdCliente, Nome,Telefone, CPF, Endereço
into DWCHA.dbo.staging_cliente FROM
[cdc].[fn_cdc_get_net_changes_dbo_cliente]
(
@S,@E,'all'
);


--SELECT IdCliente, Nome,Telefone, CPF, Endereço FROM DWCHA.dbo.staging_cliente;

UPDATE DWCHA.dbo.cliente
SET status='Notcurrent', effective_enddate=GETDATE()
--SELECT * FROM DWCHA.dbo.cliente
WHERE id_cliente in (SELECT IdCliente from DWCHA.dbo.staging_cliente) and status='Current';


INSERT INTO DWCHA.dbo.cliente
SELECT NEWID() as uniqueidentifier,
       cli.IdCliente,
       cli.Nome,
       cli.Telefone,
       cli.CPF,
       cli.Endereço,
       'Current',
        GETDATE(),
       null
  FROM DWCHA.dbo.staging_cliente as cli;

--DIMENSÃO ENDERECO_AREA

 drop table DWCHA.dbo.staging_área;

-- TABELA AREA
-- Habilitar as tabelas
EXEC sys.sp_cdc_enable_table
@source_schema = N'dbo',
@source_name = N'Área',
@role_name = Null,
@supports_net_changes = 1
go

-- Colocar em staging
declare @S binary(10);
declare @E binary(10);
SET @S = sys.fn_cdc_get_min_lsn('dbo_área');
SET @E = sys.fn_cdc_get_max_lsn();
SELECT IdÁrea, Cidade, Bairro 
into DWCHA.dbo.staging_área FROM
[cdc].[fn_cdc_get_net_changes_dbo_área]
(
@S,@E,'all'
);


--SELECT IdÁrea, Cidade, Bairro FROM DWCHA.dbo.staging_área;

 drop table DWCHA.dbo.staging_vacinacao;

-- TABELA vacinacao
-- Habilitar as tabelas
EXEC sys.sp_cdc_enable_table
@source_schema = N'dbo',
@source_name = N'Vacinação',
@role_name = Null,
@supports_net_changes = 1
go

-- Colocar em staging
declare @S binary(10);
declare @E binary(10);
SET @S = sys.fn_cdc_get_min_lsn('dbo_vacinação');
SET @E = sys.fn_cdc_get_max_lsn();
SELECT IdCidade, Nome, Vacinados, População, Porcentagem
into DWCHA.dbo.staging_vacinacao FROM
[cdc].[fn_cdc_get_net_changes_dbo_vacinação]
(
@S,@E,'all'
);

--SELECT IdCidade, Nome, Vacinados, População, Porcentagem from DWCHA.dbo.staging_vacinacao;

drop table DWCHA.dbo.temp_endereco_area;
SELECT
       ar.IdÁrea,
       ar.Cidade,
       ar.Bairro,
       vac.IdCidade,
       vac.Porcentagem,
       'Current' as status,
       GETDATE() as effective_startdate,
       null as effective_enddate
into DWCHA.dbo.temp_endereco_area
  FROM DBCHA.dbo.Área as ar
       inner join DWCHA.dbo.staging_vacinacao as vac on vac.Nome = ar.Cidade;
union
SELECT
       ar.IdÁrea,
       ar.Cidade,
       ar.Bairro,
       vac.IdCidade,
       vac.Porcentagem,
       'Current' as status,
       GETDATE() as effective_startdate,
       null as effective_enddate
  FROM DWCHA.dbo.staging_área as ar
       inner join DWCHA.dbo.staging_vacinacao as vac on vac.Nome = ar.Cidade;	   
	   
UPDATE DWCHA.dbo.Endereco_area
SET status='Notcurrent', effective_enddate=GETDATE()
--SELECT * FROM DWCHA.dbo.endereco_area
WHERE id_area in (SELECT IdÁrea from DWCHA.dbo.temp_endereco_area) and status='Current';


INSERT INTO DWCHA.dbo.Endereco_area
SELECT NEWID()as uniqueidentifier
	  ,[IdÁrea]
      ,[Cidade]
      ,[Bairro]
      ,[IdCidade]
      ,[Porcentagem]
      ,[status]
      ,[effective_startdate]
      ,[effective_enddate]
  FROM [DWCHA].[dbo].[temp_endereco_area];
  

--DIMENSÃO DIA


INSERT INTO Dia
SELECT
	NEWID() as uniqueidentifier,
	a.DataCompleta,
	a.DiaSemana,
	a.DiaMes,
	a.Mes,
	a.Trimestre,
	a.Ano
FROM (
	SELECT DISTINCT
		cast(convert(varchar, t.Data, 23) as datetime) as DataCompleta,
		datename(weekday, t.Data) as DiaSemana,
		datepart(day, t.Data) as DiaMes,
		datepart(month, t.Data) as Mes,
		datepart(quarter, t.Data) as Trimestre,
		datepart(year, t.Data) as Ano
	FROM 
		DBCHA.dbo.Compra AS t 
	WHERE 
		t.Data not in (select [data_completa] from Dia)) as a;



---FACT TABLES


drop table DWCHA.dbo.staging_compra;

-- TABELA COMPRA
-- Habilitar as tabelas
EXEC sys.sp_cdc_enable_table
@source_schema = N'dbo',
@source_name = N'Compra',
@role_name = Null,
@supports_net_changes = 1
go

-- Colocar em staging
declare @S binary(10);
declare @E binary(10);
SET @S = sys.fn_cdc_get_min_lsn('dbo_compra');
SET @E = sys.fn_cdc_get_max_lsn();
SELECT IdCompra, Data, Valor, IdImóvel, IdCorretor, IdCliente
into DWCHA.dbo.staging_compra FROM
[cdc].[fn_cdc_get_net_changes_dbo_compra]
(
@S,@E,'all'
);


INSERT INTO fato_venda_det
SELECT com0.idCompra,
       ar.chave_area,
       cor.chave_corretor,
       com.chave_cliente,
       ven.chave_cliente,
       dia.id_dia,
       com0.Valor*0.06
  From DWCHA.dbo.staging_compra as com0
       inner join DBCHA.dbo.Corretor as cor0 on cor0.IdCorretor = com0.IdCorretor

       inner join DBCHA.dbo.Imóvel as imo0 on imo0.IdImóvel = com0.IdImóvel
       inner join DBCHA.dbo.Área as ar0 on ar0.IdÁrea = imo0.IdÁrea

       inner join DBCHA.dbo.Cliente as comp0 on comp0.IdCliente = com0.IdCliente

       inner join DBCHA.dbo.Proprietário as pro0 on pro0.IdImóvel = com0.IdImóvel
       inner join DBCHA.dbo.Cliente as ven0 on ven0.IdCliente = pro0.IdCliente

       inner join (SELECT * FROM DWCHA.dbo.Corretor WHERE status = 'Current') as cor on cor.id_corretor = cor0.IdCorretor
       inner join (SELECT * FROM DWCHA.dbo.Endereco_area WHERE status = 'Current') as ar on ar.id_area = ar0.IdÁrea
       inner join (SELECT * FROM DWCHA.dbo.Cliente WHERE status = 'Current') as com on com.id_cliente = comp0.IdCliente
       inner join (SELECT * FROM DWCHA.dbo.Cliente WHERE status = 'Current')  as ven on ven.id_cliente = ven0.IdCliente
       inner join DWCHA.dbo.Dia as dia on dia.data_completa = com0.Data;


INSERT INTO fato_venda_agreg
SELECT det.id_dia,
       det.id_area,
       sum(det.comissao)
  FROM fato_venda_det as det
 group by det.id_dia, det.id_area;