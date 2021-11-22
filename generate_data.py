import pandas as pd

from data_generators import (gen_areas, gen_clientes, gen_coberturas,
                             gen_compras, gen_corretores, gen_funcionarios,
                             gen_imoveis, gen_proprietarios, gen_publicidades,
                             random_date)

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
funcionarios = gen_funcionarios(30, funcoes, relacionamentos)
corretores = gen_corretores(funcionarios)
imoveis = gen_imoveis(50, areas)
proprietarios = gen_proprietarios(imoveis, clientes)
coberturas = gen_coberturas(areas, corretores)
compras = gen_compras(25, imoveis, clientes, coberturas,
                      lambda: random_date('2021-10-01', '2021-10-31'))
publicidades = gen_publicidades(50, imoveis, midias, coberturas)

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
publicidades.to_csv('data/publicidades.csv', index=False)

areas2 = pd.concat([areas, gen_areas(3)]).reset_index(drop=True)
clientes2 = pd.concat([clientes, gen_clientes(60)]).reset_index(drop=True)
funcionarios2 = pd.concat([funcionarios,
                           gen_funcionarios(5, funcoes, relacionamentos)]).reset_index(drop=True)
corretores2 = gen_corretores(funcionarios).reset_index(drop=True)
imoveis2 = pd.concat([imoveis, gen_imoveis(40, areas)]).reset_index(drop=True)
proprietarios2 = gen_proprietarios(imoveis, clientes2).reset_index(drop=True)
coberturas2 = gen_coberturas(areas2, corretores2).reset_index(drop=True)
compras2 = gen_compras(30, imoveis2, clientes2, coberturas2,
                       lambda: random_date('2021-11-01', '2021-11-30')).reset_index(drop=True)
publicidades2 = pd.concat([publicidades,
                           gen_publicidades(40, imoveis2, midias,
                                            coberturas2)]).reset_index(drop=True)

areas2.to_csv('data/areas2.csv', index=False)
clientes2.to_csv('data/clientes2.csv', index=False)
funcionarios2.to_csv('data/funcionarios2.csv', index=False)
corretores2.to_csv('data/corretores2.csv', index=False)
imoveis2.to_csv('data/imoveis2.csv', index=False)
proprietarios2.to_csv('data/proprietarios2.csv', index=False)
coberturas2.to_csv('data/coberturas2.csv', index=False)
compras2.to_csv('data/compras2.csv', index=False)
publicidades2.to_csv('data/publicidades2.csv', index=False)
