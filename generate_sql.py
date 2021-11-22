import csv


def convert(value):
    if value == '':
        return None
    for typ in [int, float]:
        try:
            return typ(value)
        except ValueError:
            continue
    return value.replace('\'', '')


def csv2sql(file_path, table_name):
    with open(file_path, 'r') as outfile:
        reader = csv.reader(outfile)
        next(reader)
        rows = '),\n('.join([[convert(x) for x in row].__str__()[1:-1].replace('None', 'NULL')
                             for row in reader])
        string_sql = f'INSERT INTO {table_name} VALUES\n({rows});\n\n'

    return string_sql


midias = csv2sql('data/midias.csv', 'Mídia')
funcoes = csv2sql('data/funcoes.csv', 'Função')
relacionamentos = csv2sql('data/relacionamentos.csv', 'Relacionamento')
areas = csv2sql('data/areas.csv', 'Área')
clientes = csv2sql('data/clientes.csv', 'Cliente')
funcionarios = csv2sql('data/funcionarios.csv', 'Funcionário')
corretores = csv2sql('data/corretores.csv', 'Corretor')
imoveis = csv2sql('data/imoveis.csv', 'Imóvel')
proprietarios = csv2sql('data/proprietarios.csv', 'Proprietário')
coberturas = csv2sql('data/coberturas.csv', 'Cobertura')
compras = csv2sql('data/compras.csv', 'Compra')
publicidade = csv2sql('data/publicidades.csv', 'Publicidade')
vacinacao = csv2sql('data/vacinacao.csv', 'Vacinação')

script = ('USE DBCHA;\n\n' + midias + funcoes + relacionamentos + areas + clientes + funcionarios +
          corretores + imoveis + proprietarios + coberturas + compras + publicidade +
          vacinacao).replace('\"', '\'')

with open('cha_dml.sql', 'w') as file:
    file.write(script)

areas2 = csv2sql('data/areas2.csv', 'Área')
clientes2 = csv2sql('data/clientes2.csv', 'Cliente')
funcionarios2 = csv2sql('data/funcionarios2.csv', 'Funcionário')
corretores2 = csv2sql('data/corretores2.csv', 'Corretor')
imoveis2 = csv2sql('data/imoveis2.csv', 'Imóvel')
proprietarios2 = csv2sql('data/proprietarios2.csv', 'Proprietário')
coberturas2 = csv2sql('data/coberturas2.csv', 'Cobertura')
compras2 = csv2sql('data/compras2.csv', 'Compra')
publicidade2 = csv2sql('data/publicidades2.csv', 'Publicidade')

script2 = ('USE DBCHA;\n\n' + areas2 + clientes2 + funcionarios2 + corretores2 + imoveis2 +
           proprietarios2 + coberturas2 + compras2 + publicidade2).replace('\"', '\'')

with open('cha_dml2.sql', 'w') as file:
    file.write(script2)
