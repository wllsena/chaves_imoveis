import pandas as pd

from data_generators import (gen_areas, gen_clientes, gen_coberturas,
                             gen_compras, gen_corretores, gen_funcionarios,
                             gen_imoveis, gen_proprietarios, gen_publicidades)

midias = pd.DataFrame({
    'IdMídia': [1, 2, 3, 4, 5, 6, 7],
    'Tipo': ['Jornal', 'Instagram', 'YouTube', 'TV', 'Google', 'Facebook', 'Panfletagem'],
    'Probabilidade': [0.2, 0.1, 0.1, 0.2, 0.1, 0.1, 0.2]
})

funcoes = pd.DataFrame({
    'IdFunção': [1, 2, 3],
    'Tipo': ['Corretor', 'Secretário', 'Estagiário'],
    'Probabilidade': [0.7, 0.2, 0.1]
})

relacionamentos = pd.DataFrame({
    'IdRelacionamento': [1, 2],
    'Tipo': ['Sócio', 'Contratado'],
    'Probabilidade': [0.1, 0.9]
})

areas = gen_areas(10)
clientes = gen_clientes(100)
funcionarios = gen_funcionarios(20, funcoes, relacionamentos)
corretores = gen_corretores(funcionarios)
imoveis = gen_imoveis(40, areas)
proprietarios = gen_proprietarios(imoveis, clientes)
coberturas = gen_coberturas(areas, corretores)
compras = gen_compras(30, imoveis, clientes, coberturas)
publicidade = gen_publicidades(50, imoveis, midias, coberturas)

midias.to_csv('data/midias.csv', index=False, columns=['IdMídia', 'Tipo'])
funcoes.to_csv('data/funcoes.csv', index=False, columns=['IdFunção', 'Tipo'])
relacionamentos.to_csv('data/relacionamentos.csv',
                       index=False,
                       columns=['IdRelacionamento', 'Tipo'])
areas.to_csv('data/areas.csv', index=False)
clientes.to_csv('data/clientes.csv', index=False)
funcionarios.to_csv('data/funcionarios.csv', index=False)
corretores.to_csv('data/corretores.csv', index=False)
imoveis.to_csv('data/imoveis.csv', index=False)
proprietarios.to_csv('data/proprietarios.csv', index=False)
coberturas.to_csv('data/coberturas.csv', index=False)
compras.to_csv('data/compras.csv', index=False)
publicidade.to_csv('data/publicidades.csv', index=False)
