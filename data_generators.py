import pandas as pd
import numpy as np
from faker import Faker
from datetime import timedelta, datetime

fake = Faker('pt_BR')

def gen_areas(n, p=0.5):
    """
        n -> número de registros
        p -> probabilidade de repetir cidade já adicionada
    """
    
    cidades = {}
    for _ in range(n):
        if cidades and np.random.rand() < p:
            cidade = np.random.choice(list(cidades.keys()))
            bairro = fake.city()
            while bairro in cidades[cidade]:
                bairro = fake.city()
            cidades[cidade].append(bairro)
        else:
            cidade = fake.city()
            while cidade in cidades:
                cidade = fake.city()
            cidades[cidade] = [fake.city()]        
            
    areas = {'IdÁrea':[], 'Cidade':[], 'Bairro':[]}
    i     = 1
    for cidade, bairros in cidades.items():
        if len(bairros) == 1:
            areas['IdÁrea'].append(i)
            areas['Cidade'].append(cidade)
            areas['Bairro'].append("")
            i += 1
        else:
            for bairro in bairros:
                areas['IdÁrea'].append(i)
                areas['Cidade'].append(cidade)
                areas['Bairro'].append(bairro) 
                i += 1
    
    return pd.DataFrame(areas)

def gen_clientes(n):
    clientes = {'IdCliente':[], 'Nome':[], 'Telefone':[], 'CPF':[], 'Endereço':[]}
    for i in range(1, n+1):
        clientes['IdCliente'].append(i)
        clientes['Nome'].append(fake.name())
        clientes['Telefone'].append(fake.phone_number())
        clientes['CPF'].append(fake.cpf())
        clientes['Endereço'].append(fake.address())
    
    return pd.DataFrame(clientes)

def gen_funcionarios(n, funcoes, relacionamento):
    funcionarios = {'IdFuncionario':[], 'Nome':[], 'Telefone':[], 'CPF':[],
                    'Endereço':[], 'IdFunção':[], 'IdRelacionamento':[]}
    for i in range(1, n+1):
        funcionarios['IdFuncionario'].append(i)
        funcionarios['Nome'].append(fake.name())
        funcionarios['Telefone'].append(fake.phone_number())
        funcionarios['CPF'].append(fake.cpf())
        funcionarios['Endereço'].append(fake.address())
        
        fun = np.random.choice(funcoes['IdFunção'], p=funcoes['Probabilidade'])
        funcionarios['IdFunção'].append(fun)
        if fun == 1:
            rel = np.random.choice(relacionamento['IdRelacionamento'], p=relacionamento['Probabilidade'])
        else:
            rel = 2
        funcionarios['IdRelacionamento'].append(rel)
    
    return pd.DataFrame(funcionarios)

def gen_corretores(funcionarios, fun_bugdet=lambda: max(0, int(np.random.normal(2500, 1000)))):
    """
        fun_bugdet -> função para gerar o valor do bugedt
    """
    
    ids        = funcionarios['IdFuncionario'][funcionarios['IdFunção'] == 1].values
    corretores = {'IdCorretor':[], 'Bugdet':[], 'CRECI':[], 'IdFuncionario':ids}
    for i in range(1, len(ids)+1):
        corretores['IdCorretor'].append(i)
        corretores['Bugdet'].append(fun_bugdet())
        creci = np.random.randint(100000, 999999)
        while creci in corretores['Bugdet']:
            creci = np.random.randint(100000, 999999)
        corretores['CRECI'].append(creci)
        
    return pd.DataFrame(corretores)

def gen_imoveis(n, areas, fun_valor=lambda: max(100000, int(np.random.normal(500000, 500000)))):
    """
        fun_valor -> função para gerar o valor do imóvel
    """

    imoveis = {'IdImóvel':[], 'IdÁrea':[], 'Endereço':[], 'Valor':[]}
    for i in range(1, n+1):
        imoveis['IdImóvel'].append(i)
        imoveis['IdÁrea'].append(np.random.choice(areas['IdÁrea']))
        imoveis['Endereço'].append(fake.address())
        imoveis['Valor'].append(fun_valor())
    
    return pd.DataFrame(imoveis)

def gen_proprietarios(imoveis, clientes):
    ids           = imoveis['IdImóvel']
    proprietarios = {'IdImóvel':ids, 'IdCliente':[]}
    for _ in ids:
        proprietarios['IdCliente'].append(np.random.choice(clientes['IdCliente']))
        
    return pd.DataFrame(proprietarios)

def gen_coberturas(areas, corretores):
    ids           = areas['IdÁrea']
    proprietarios = {'IdÁrea':ids, 'IdCorretor':[]}
    for _ in ids:
        proprietarios['IdCorretor'].append(np.random.choice(corretores['IdCorretor']))

    return pd.DataFrame(proprietarios)

def random_date(start, end):
    d1            = datetime.strptime(start, '%Y-%m-%d')
    d2            = datetime.strptime(end, '%Y-%m-%d')
    delta         = d2 - d1
    int_delta     = (delta.days * 24 * 60 * 60) + delta.seconds
    random_second = np.random.randint(int_delta)
    date          = d1 + timedelta(seconds=random_second)
    return date.strftime('%Y-%m-%d') 

def gn_compras(n, imoveis, clientes, corretores, coberturas,
                fun_data=lambda: random_date('2021-1-1', '2021-12-31'), 
                fun_reduc=lambda: max(0, int(np.random.normal(5000, 5000)))):
    """
        fun_data  -> função para gerar a data
        fun_reduc -> função para gerar a redução no valor do imóvel 
    """
    
    compras = {'IdCompra':[], 'Data':[], 'Valor':[], 'IdImóvel':[], 'IdCorretor':[], 'IdCliente':[]}
    for i in range(1, n+1):
        compras['IdCompra'].append(i)
        compras['Data'].append(fun_data())
        imovel = imoveis[imoveis['IdImóvel'] == np.random.choice(imoveis['IdImóvel'])]
        compras['Valor'].append(imovel['Valor'].values[0] - fun_reduc())
        compras['IdImóvel'].append(imovel['IdImóvel'].values[0])
        compras['IdCorretor'].append(coberturas['IdCorretor'][coberturas['IdÁrea'] 
                                                              == imovel['IdÁrea'].values[0]].values[0])
        compras['IdCliente'].append(np.random.choice(clientes['IdCliente']))
        
    return pd.DataFrame(compras)

def gen_publicidades(n, imoveis, corretores, midias, coberturas,
                     fun_orca=lambda: max(200, int(np.random.normal(1000, 1000))),
                     fun_data=lambda: random_date('2021-1-1', '2021-12-31'),
                     fun_dias=lambda: max(1, int(np.random.normal(10, 5)))):
    """
        fun_orca -> função para gerar o valor da publicidade
        fun_data -> função para gerar a data
        fun_dias -> função para gerar a quantidade de dias da publicidade
    """
    
    publicidades = {'IdPublicidade':[], 'Orçamento':[], 'IdImóvel':[], 'IdCorretor':[], 'IdMídia':[], 
                    'DataInício':[], 'DataFim':[]}
    for i in range(1, n+1):
        publicidades['IdPublicidade'].append(i)
        publicidades['Orçamento'].append(fun_orca())
        imovel = imoveis[imoveis['IdImóvel'] == np.random.choice(imoveis['IdImóvel'])]
        publicidades['IdImóvel'].append(imovel['IdImóvel'].values[0])
        publicidades['IdCorretor'].append(coberturas['IdCorretor'][coberturas['IdÁrea'] 
                                                                   == imovel['IdÁrea'].values[0]].values[0])
        publicidades['IdMídia'].append(np.random.choice(midias['IdMídia'], p=midias['Probabilidade']))
        data_inicio = fun_data()
        publicidades['DataInício'].append(data_inicio)
        publicidades['DataFim'].append((datetime.strptime(data_inicio, '%Y-%m-%d')
                                        +timedelta(fun_dias())).strftime('%Y-%m-%d'))
        
    return pd.DataFrame(publicidades)
