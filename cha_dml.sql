USE DBCHA;

INSERT INTO Mídia VALUES
(1, 'Jornal'),
(2, 'Instagram'),
(3, 'YouTube'),
(4, 'TV'),
(5, 'Google'),
(6, 'Facebook'),
(7, 'Panfletagem');

INSERT INTO Função VALUES
(1, 'Corretor'),
(2, 'Secretário'),
(3, 'Estagiário');

INSERT INTO Relacionamento VALUES
(1, 'Sócio'),
(2, 'Contratado');

INSERT INTO Área VALUES
(1, 'Rio de Janeiro', 'Farias Verde'),
(2, 'Niterói', 'Alves'),
(3, 'Nova Iguaçu', 'Correia'),
(4, 'Rio de Janeiro', 'Porto'),
(5, 'Rio de Janeiro', 'Cardoso'),
(6, 'Rio de Janeiro', 'Cunha'),
(7, 'São Gonçalo', 'Martins do Amparo'),
(8, 'Rio de Janeiro', 'Martins'),
(9, 'Duque de Caxias', 'Pinto de da Luz'),
(10, 'Duque de Caxias', 'Rocha Alegre');

INSERT INTO Cliente VALUES
(1, 'Sra. Maria Vitória Duarte', '0300 476 9897', '063.825.974-65', 'Avenida Kevin da Cunha, 20\nNossa Senhora Da Aparecida\n75624-487 da Luz / ES'),
(2, 'Lara da Rosa', '31 9144-9690', '540.328.196-70', 'Distrito Vieira, 7\nSão Marcos\n00552921 da Costa do Sul / TO'),
(3, 'Dr. Luiz Henrique Ramos', '51 5768 5301', '092.384.675-10', 'Parque de Barbosa, 11\nEtelvina Carneiro\n47464769 Pereira Verde / SP'),
(4, 'Emanuelly das Neves', '11 0612-7514', '532.170.946-70', 'Alameda Leandro Fogaça, 203\nCandelaria\n80970282 da Conceição / PR'),
(5, 'Igor da Cruz', '+55 (021) 2881-1674', '671.425.980-85', 'Conjunto de Araújo, 69\nPalmeiras\n17177856 Rocha do Norte / RN'),
(6, 'André Campos', '(021) 3159 7007', '298.706.314-87', 'Esplanada da Cunha, 88\nPilar\n85035-213 Teixeira / PR'),
(7, 'Igor Carvalho', '(031) 7131-9224', '385.216.907-03', 'Praça Santos, 197\nAlto Barroca\n86218101 Carvalho de Minas / AP'),
(8, 'Arthur Porto', '(031) 5163 5488', '982.763.514-09', 'Trecho Luiz Otávio Novaes, 1\nVila União\n09449535 Mendes do Amparo / PB'),
(9, 'Noah Fogaça', '71 6700-2844', '308.192.745-50', 'Viela de Farias, 988\nUnião\n97440204 da Rosa de Minas / PB'),
(10, 'Thales Cardoso', '(084) 6540-1678', '281.476.309-13', 'Vale de das Neves, 261\nEmbaúbas\n31328-063 Alves Verde / GO'),
(11, 'Emilly Almeida', '+55 51 9137 4216', '290.615.437-70', 'Esplanada Rafael Barbosa, 83\nJardim Dos Comerciarios\n34968776 Barbosa Paulista / PI'),
(12, 'Julia Porto', '(011) 7590 1015', '435.207.618-07', 'Praça Maitê da Luz, 1\nVila Nova Cachoeirinha 3ª Seção\n12973727 Mendes de Silva / MS'),
(13, 'Lucas Gabriel Melo', '84 8077 3228', '251.649.870-58', 'Vereda Campos, 2\nVarzea Da Palma\n95000232 Sales de Ribeiro / AC'),
(14, 'Enzo Gabriel Costela', '0300-521-2391', '306.254.718-90', 'Jardim Theo Pires, 5\nSuzana\n64407080 Porto do Galho / PE'),
(15, 'Sra. Nicole Monteiro', '+55 (041) 5766-9638', '853.672.490-00', 'Lago de Souza, 46\nMala E Cuia\n68487-560 Cardoso / AC'),
(16, 'Arthur Moreira', '+55 21 5645 2854', '389.067.521-21', 'Parque Pires, 3\nConjunto Califórnia Ii\n85177837 Duarte / MT'),
(17, 'Milena Freitas', '(031) 1123 9694', '167.903.482-04', 'Quadra de das Neves, 71\nCinquentenário\n99770-827 Pinto de Alves / SP'),
(18, 'Stephany das Neves', '+55 (011) 3486-2869', '376.124.850-44', 'Rua de Farias, 243\nSion\n88811236 Freitas de da Costa / RO'),
(19, 'Nicole Gomes', '51 6356 0098', '061.879.425-58', 'Vale Larissa da Conceição, 48\nXodo-Marize\n36037996 Fernandes da Prata / MA'),
(20, 'Samuel Moreira', '+55 51 9102 4982', '253.871.469-91', 'Viaduto Luna Ramos\nMangueiras\n85689547 Cavalcanti / GO'),
(21, 'Antônio Nunes', '(031) 4253 5899', '739.645.018-75', 'Viela Brenda Barros, 81\nAguas Claras\n44400-218 Aragão de Viana / GO'),
(22, 'Sr. Otávio Peixoto', '0900-096-2183', '251.048.397-88', 'Loteamento de Pires\nFlamengo\n09699487 da Rocha / MT'),
(23, 'Joana Almeida', '(041) 5124-0269', '296.034.581-98', 'Vila de da Conceição, 95\nVila Atila De Paiva\n93942933 das Neves de Minas / MS'),
(24, 'Yuri Cavalcanti', '(041) 5705-2943', '635.942.708-74', 'Condomínio Ramos\nCalifórnia\n41296-651 Teixeira / RJ'),
(25, 'Vitor Hugo Nogueira', '+55 (011) 2732-1031', '935.824.701-05', 'Viela de da Conceição, 91\nTiradentes\n19697-118 Melo / BA'),
(26, 'Heloísa Carvalho', '(021) 0871-5948', '071.864.529-49', 'Passarela Barros\nSão Jorge 1ª Seção\n58212110 Cardoso / RO'),
(27, 'Leandro Cunha', '+55 (084) 4566 7045', '415.302.796-07', 'Vale Enrico Campos\nEmbaúbas\n96401827 Cardoso / RR'),
(28, 'Pedro Ramos', '0500-014-8792', '498.127.650-85', 'Quadra Sarah Cunha, 193\nUniverso\n69794282 Moraes de Goiás / PI'),
(29, 'Ana Mendes', '71 8966-5695', '564.317.289-55', 'Fazenda Campos, 95\nRibeiro De Abreu\n74919-579 Silveira das Pedras / MT'),
(30, 'Sra. Alícia Gomes', '+55 (071) 8775 8653', '934.708.216-31', 'Núcleo de Aragão, 229\nGlória\n03153125 Moura Grande / AP'),
(31, 'Theo Ribeiro', '+55 81 5608-9215', '763.214.950-34', 'Feira Rocha, 1\nGlória\n47149-119 Almeida / AP'),
(32, 'Sra. Maria Alice Aragão', '+55 (061) 4373 5296', '290.576.143-16', 'Via Amanda Caldeira, 82\nAntonio Ribeiro De Abreu 1ª Seção\n45076229 Pinto / MS'),
(33, 'Nicole Oliveira', '+55 (061) 0913 5848', '264.735.910-52', 'Estação Costela\nCarmo\n09786865 Campos do Sul / SC'),
(34, 'Davi Lucca Costa', '+55 31 5787 6873', '930.748.265-92', 'Quadra da Cunha, 403\nErnesto Nascimento\n88908543 Nascimento da Serra / SP'),
(35, 'Marcos Vinicius Martins', '+55 81 3954 1739', '873.149.025-50', 'Trecho Duarte, 11\nJuliana\n91992-358 Silva da Praia / RS'),
(36, 'Sr. Diogo Melo', '+55 (071) 9157 6782', '927.461.803-40', 'Avenida de Gonçalves, 88\nJoão Pinheiro\n00009-117 Dias / SC'),
(37, 'Marcelo Rezende', '(041) 8325-0104', '481.590.236-42', 'Núcleo Rodrigo Fernandes, 2\nCarlos Prates\n12211-320 Oliveira / MG'),
(38, 'Gabrielly Farias', '+55 (071) 3359 5897', '278.354.960-38', 'Feira Ferreira, 869\nVila Santa Monica 2ª Seção\n54336-517 Santos / RJ'),
(39, 'Marcelo Pires', '(021) 0306-2695', '453.789.162-91', 'Trecho Viana, 3\nVila Ipiranga\n24473-148 da Paz / ES'),
(40, 'Juan Silveira', '+55 (031) 6717-0637', '173.895.240-14', 'Trecho Viana, 18\nSavassi\n39228983 Nogueira das Flores / AL'),
(41, 'Maria Vitória da Cunha', '81 9367-5189', '268.971.453-19', 'Sítio Lucas Gabriel Peixoto, 4\nGranja Werneck\n60916441 Azevedo / AM'),
(42, 'Anthony da Mata', '21 9933 1393', '897.610.354-84', 'Esplanada Viana\nJuliana\n72814368 Rezende de Mendes / RJ'),
(43, 'Lucas Nascimento', '(031) 1748 5673', '391.572.068-21', 'Lagoa da Rocha, 7\nDom Cabral\n39457877 Cardoso / MG'),
(44, 'Olivia Cardoso', '+55 (061) 8489 0556', '892.307.164-13', 'Recanto de Lima\nSão Jorge 2ª Seção\n52651-570 da Paz da Mata / BA'),
(45, 'Bruna Aragão', '71 8155 9240', '762.095.481-30', 'Praia Murilo da Luz, 957\nUniversitário\n98118390 das Neves / SC'),
(46, 'Valentina Mendes', '(031) 7972 1502', '748.569.302-65', 'Sítio Silveira, 32\nEmbaúbas\n30022-298 Cunha / PE'),
(47, 'Isabel da Rocha', '84 3439 1225', '169.274.530-16', 'Sítio Cardoso, 6\nGrota\n25888-809 Cavalcanti de Minas / CE'),
(48, 'Otávio Monteiro', '(071) 4381 0574', '087.269.153-59', 'Área Pereira, 2\nPilar\n91739-437 Peixoto do Galho / RS'),
(49, 'Caio Caldeira', '(084) 8461 3127', '078.629.315-21', 'Núcleo Costa, 385\nVila Engenho Nogueira\n06516-131 Cardoso do Amparo / RO'),
(50, 'Paulo Nunes', '(041) 2240 0631', '710.963.428-04', 'Vila Nunes, 3\nProvidencia\n99249827 Lima / AM'),
(51, 'Vitor Mendes', '21 0275-0882', '096.487.315-00', 'Núcleo Agatha da Cruz, 57\nAlta Tensão 2ª Seção\n67012-479 Ramos / AP'),
(52, 'Luana Costa', '+55 (084) 6784-8259', '182.705.346-17', 'Estrada de da Cruz\nRio Branco\n35963107 Moreira / PI'),
(53, 'Thiago Almeida', '11 4246-9748', '064.723.815-26', 'Condomínio Nogueira, 580\nSanta Rita\n87804387 Fernandes de Goiás / AL'),
(54, 'Mirella Aragão', '+55 (051) 6575 9314', '369.240.718-13', 'Via Maria Fernanda Ribeiro, 977\nConjunto Celso Machado\n35432-114 Melo / PI'),
(55, 'Maria Alice Almeida', '(061) 7273-5442', '267.943.085-92', 'Estrada de Cardoso, 32\nMangabeiras\n79815-703 Freitas de Pereira / PA'),
(56, 'Maria Julia Ramos', '(021) 7086 3282', '623.487.590-47', 'Setor de Gonçalves, 4\nMinas Caixa\n49782-912 Pinto de Caldeira / TO'),
(57, 'Dr. Cauã Almeida', '81 1502-4680', '417.025.893-23', 'Vale de Duarte, 48\nBaleia\n43197-482 da Conceição / RN'),
(58, 'Benício Porto', '(051) 5015-8908', '231.069.845-89', 'Praça de Araújo, 3\nÁlvaro Camargos\n69089432 da Mota / MA'),
(59, 'Laura Ribeiro', '+55 84 7697-2208', '526.138.947-09', 'Área de Cavalcanti, 79\nConjunto Providencia\n42450678 Peixoto / RS'),
(60, 'Dra. Daniela Barros', '(021) 0728-3935', '361.742.890-87', 'Viaduto Raul Mendes, 886\nBarão Homem De Melo 3ª Seção\n54475-385 Silveira do Galho / CE'),
(61, 'Júlia Aragão', '61 2766 9372', '987.435.016-48', 'Campo João Miguel Cardoso, 58\nConcórdia\n68071072 Melo / RR'),
(62, 'Cauê Aragão', '84 5001-5654', '749.123.560-34', 'Parque Rezende, 2\nVila São Gabriel Jacui\n82305-934 Monteiro / AL'),
(63, 'Dr. Luigi da Rocha', '+55 (084) 1718-3674', '317.094.652-80', 'Rodovia de Almeida, 19\nSanta Amelia\n63768403 da Cruz Alegre / GO'),
(64, 'Clarice Rodrigues', '(031) 9900 4019', '436.251.908-42', 'Jardim de da Conceição, 60\nFlavio Marques Lisboa\n11830616 das Neves / GO'),
(65, 'Leonardo da Cunha', '0800-025-4708', '136.097.845-39', 'Loteamento de Pereira, 36\nAmbrosina\n11274982 Melo Alegre / SP'),
(66, 'Dra. Ana Carolina Porto', '31 6499-3265', '196.748.032-03', 'Fazenda Ramos, 41\nVila Nova Cachoeirinha 2ª Seção\n05451-090 Teixeira de Teixeira / AL'),
(67, 'Srta. Eloah Oliveira', '(084) 0205 4330', '286.395.017-77', 'Morro Beatriz Mendes, 72\nPirineus\n14129-015 Costela do Oeste / SE'),
(68, 'Isabelly Lima', '0300 125 3587', '657.831.094-01', 'Conjunto da Paz, 31\nNovo Aarão Reis\n54602424 Silva / AM'),
(69, 'João Miguel Lopes', '(031) 0294-8974', '697.805.314-75', 'Vereda Matheus Caldeira, 83\nPenha\n46731361 Peixoto de das Neves / PE'),
(70, 'Heitor Porto', '(031) 2124 0630', '612.539.478-64', 'Chácara da Costa\nJaqueline\n96768485 Silveira Paulista / PB'),
(71, 'Valentina Freitas', '+55 (021) 9580 2015', '908.341.265-24', 'Vila de Duarte, 80\nItaipu\n89856924 Martins / RO'),
(72, 'Yuri Nogueira', '31 4517-4949', '091.825.637-21', 'Viela Aragão, 10\nJaraguá\n19076642 Martins de Goiás / SP'),
(73, 'Larissa Silveira', '+55 51 7804 6211', '079.461.523-61', 'Distrito Benício Fogaça, 87\nSerra Do Curral\n41627775 Azevedo / AM'),
(74, 'Carlos Eduardo Ramos', '+55 71 5072 6316', '123.789.460-31', 'Colônia Jesus\nConjunto Taquaril\n28063-790 Ribeiro de Cunha / PA'),
(75, 'Maria Vitória Cunha', '71 8176-6990', '917.530.682-40', 'Vereda Carlos Eduardo Cardoso, 47\nSão Lucas\n92947-532 Rocha / PB'),
(76, 'Joaquim Teixeira', '+55 51 0911 6682', '725.941.806-02', 'Avenida Farias, 655\nRenascença\n76645-709 Nunes / CE'),
(77, 'Bryan Porto', '+55 84 0007 5627', '278.905.361-86', 'Vale Marcelo Nogueira, 92\nVila Nova Gameleira 2ª Seção\n06196-400 Jesus / AC'),
(78, 'Maria Vitória Gonçalves', '+55 11 3280 8798', '159.706.824-11', 'Avenida de Souza\nMarieta 2ª Seção\n43504199 Teixeira / CE'),
(79, 'Matheus Lopes', '51 5608 6704', '980.135.762-21', 'Quadra Teixeira, 462\nVista Alegre\n80768-095 Cardoso / RR'),
(80, 'Sr. Davi Luiz Aragão', '+55 (051) 5096 2841', '712.890.356-95', 'Viaduto Dias, 11\nJardim América\n61820936 Moura do Galho / TO'),
(81, 'Julia Pereira', '(071) 4100-9878', '513.290.478-50', 'Área de Caldeira, 83\nVila Madre Gertrudes 1ª Seção\n06849017 Moreira / RR'),
(82, 'Ana Beatriz Rezende', '31 7887 3868', '425.608.391-05', 'Estrada Lívia Correia, 170\nVila Do Pombal\n46685-497 Rocha / CE'),
(83, 'Sra. Mariane da Paz', '0800 847 0252', '016.978.543-20', 'Parque de Fogaça, 570\nBairro Das Indústrias Ii\n38825166 da Cunha / BA'),
(84, 'Nathan Cardoso', '+55 61 1515 5503', '436.280.759-47', 'Lago Gabriel da Mata, 36\nVila Do Pombal\n63793268 da Mata do Galho / RR'),
(85, 'Isabelly Santos', '+55 (011) 3410-8232', '948.506.173-01', 'Área Caroline Gomes, 25\nConjunto Bonsucesso\n83742833 Campos / CE'),
(86, 'Ana Beatriz Ferreira', '31 9714-8778', '716.493.052-06', 'Condomínio Freitas, 22\nXodo-Marize\n85575-701 Souza / MS'),
(87, 'Giovanna Pinto', '(071) 6380 8657', '853.162.047-35', 'Vereda Mendes, 695\nCidade Nova\n68899350 Viana / BA'),
(88, 'Luiz Otávio Cardoso', '0800-516-2439', '895.463.170-39', 'Jardim Nina da Rocha, 77\nJardim Alvorada\n38677-609 Nascimento / RS'),
(89, 'Mariana Carvalho', '+55 31 7755-9976', '485.017.239-32', 'Viaduto de Rocha, 11\nAcaba Mundo\n48333-114 Jesus / PA'),
(90, 'João Gabriel da Rosa', '(031) 0899-7872', '810.374.652-53', 'Vale da Rosa, 69\nSanta Sofia\n08234-842 Souza / MS'),
(91, 'Marcos Vinicius Araújo', '(051) 6952-8440', '930.815.627-59', 'Rodovia Bruna Cardoso, 404\nLagoa\n29122138 Fernandes de Minas / GO'),
(92, 'Miguel Pires', '+55 51 3947 3544', '932.150.478-88', 'Vereda de da Mata, 32\nPindura Saia\n05504-359 Gonçalves / MG'),
(93, 'João Vitor Rodrigues', '+55 81 4109-3472', '328.091.654-24', 'Travessa de Rocha, 6\nEtelvina Carneiro\n24238557 Moreira de Gomes / PA'),
(94, 'Fernanda Aragão', '0900-377-7757', '637.429.058-56', 'Campo Ferreira, 649\nNova Esperança\n90440-603 Costa Verde / PE'),
(95, 'Sr. Benício Teixeira', '+55 (071) 3437 2159', '832.197.504-60', 'Praia Natália Silva, 94\nUnião\n61505-646 Pereira da Serra / TO'),
(96, 'Yasmin Cardoso', '71 6770 1784', '264.931.780-96', 'Setor Catarina Barbosa, 14\nIpe\n43369263 Nascimento / RO'),
(97, 'Lucas Fernandes', '(051) 2631 6794', '583.926.041-05', 'Ladeira de Moreira, 32\nNova Suíça\n57383872 Pereira de Barbosa / PR'),
(98, 'João Miguel Moreira', '0300 069 5256', '836.710.249-50', 'Travessa Pereira, 8\nVentosa\n41086009 Rezende de Minas / GO'),
(99, 'Maria Luiza Correia', '+55 (031) 6084-7620', '541.982.607-02', 'Parque da Paz, 652\nCdi Jatoba\n35880342 da Rocha da Prata / MS'),
(100, 'Carlos Eduardo Ramos', '21 2346-5673', '891.602.574-58', 'Condomínio Pinto, 288\nSanta Rosa\n26879-280 Oliveira / SP');

INSERT INTO Funcionário VALUES
(1, 'Dra. Alana da Luz', '+55 (081) 6183-3272', '438.152.607-44', 'Estação Moura, 1\nNovo Tupi\n49241050 Rezende de Martins / SE', 1, 2),
(2, 'Sr. Yago Araújo', '(031) 6010 0079', '067.914.283-50', 'Morro Moraes, 9\nSion\n10481952 Oliveira / SC', 2, 2),
(3, 'Sr. Kaique Rodrigues', '(051) 2123-0300', '467.805.321-26', 'Praça Luiz Gustavo Dias, 42\nEstrela Do Oriente\n97655108 Jesus Grande / SC', 1, 2),
(4, 'Isabel Moreira', '+55 (021) 7873 5743', '712.680.594-20', 'Travessa Moura, 266\nSão Jorge 3ª Seção\n18203-832 Caldeira / CE', 2, 2),
(5, 'Renan Lopes', '84 6982 2782', '835.609.472-00', 'Jardim de Nascimento, 16\nSanto André\n95720937 Moraes de Santos / PB', 1, 2),
(6, 'Olivia da Mata', '(081) 9167 5166', '326.951.780-77', 'Chácara da Cruz, 4\nVila Aeroporto Jaraguá\n83227262 Novaes do Norte / PR', 2, 2),
(7, 'Luiz Fernando Barros', '0300-032-0651', '475.893.026-00', 'Vale de Aragão, 1\nVila Oeste\n10023436 Moraes de da Rocha / ES', 1, 2),
(8, 'Rodrigo da Paz', '11 6879 0590', '072.583.194-41', 'Viela Vieira, 981\nBoa Viagem\n46994-742 da Paz do Campo / RR', 2, 2),
(9, 'Rafaela da Mota', '+55 (031) 5154 0484', '789.432.610-04', 'Parque Dias\nAntonio Ribeiro De Abreu 1ª Seção\n70121-202 Pires do Sul / AL', 1, 1),
(10, 'João Gabriel Gonçalves', '+55 84 4990-0910', '048.579.321-05', 'Passarela João Miguel da Cunha, 62\nVila Nossa Senhora Do Rosário\n17278969 Barros de Oliveira / DF', 3, 2),
(11, 'Sr. Vinicius Azevedo', '+55 71 8248-1411', '246.931.058-05', 'Lagoa Viana, 85\nVila Trinta E Um De Março\n56708586 Moreira / PR', 1, 2),
(12, 'Helena Barbosa', '(031) 7224 3983', '608.123.947-04', 'Distrito Emilly Fogaça\nMariquinhas\n34215911 Gomes do Oeste / RN', 1, 1),
(13, 'Gabriel Cardoso', '+55 84 8183-7807', '134.207.859-41', 'Campo Barros, 22\nAlto Dos Pinheiros\n43317-671 Gonçalves / PI', 1, 2),
(14, 'Maria Sophia Pinto', '(011) 4555 0282', '945.023.176-16', 'Estação Rodrigues, 66\nConjunto São Francisco De Assis\n15812056 Oliveira das Pedras / MS', 1, 1),
(15, 'Thales da Rocha', '0500 772 3577', '189.034.765-57', 'Quadra Correia, 34\nVila Nova Cachoeirinha 1ª Seção\n66635-729 da Luz / PB', 2, 2),
(16, 'Srta. Bianca da Conceição', '+55 41 8580-2441', '026.459.387-10', 'Vale Manuela Vieira, 2\nVila Paris\n36186-731 Rodrigues / AM', 1, 2),
(17, 'Kamilly Peixoto', '0500-191-5526', '753.809.214-50', 'Lago Ana Julia da Cruz\nSerra\n78795-833 Nogueira / PB', 1, 2),
(18, 'Emanuel Teixeira', '0900 498 3456', '168.754.032-26', 'Viela Pires, 4\nNossa Senhora Da Conceição\n99121106 Teixeira / RS', 2, 2),
(19, 'Pedro Henrique Pinto', '+55 (084) 6175-2383', '495.731.806-93', 'Trecho Guilherme da Mota, 464\nSerra Do Curral\n21258-548 Monteiro / RR', 3, 2),
(20, 'Ana Luiza Teixeira', '+55 61 3099-2454', '852.416.073-07', 'Estação Cardoso, 386\nDom Cabral\n54411999 Moura / TO', 2, 2),
(21, 'Srta. Lívia Almeida', '+55 (011) 1143 9289', '640.725.381-08', 'Lago João Guilherme Rocha\nDiamante\n95231-218 Aragão de Caldeira / CE', 1, 2),
(22, 'Maria Fernanda Dias', '+55 (081) 9694-3637', '182.304.796-31', 'Pátio Caio Pires, 96\nDom Joaquim\n01425319 Rezende / RJ', 1, 1),
(23, 'Bryan Barros', '+55 84 6653-2214', '847.123.569-28', 'Viaduto Anthony Rezende, 3\nVila Mangueiras\n06688-540 Peixoto / CE', 2, 2),
(24, 'Dr. Enrico Dias', '84 8542-5370', '890.673.241-40', 'Alameda de Moura\nVila São Gabriel\n64416067 da Luz / MS', 2, 2),
(25, 'Thales Ferreira', '+55 71 8668 3588', '153.870.629-68', 'Rodovia Calebe das Neves, 45\nVila Nova Cachoeirinha 1ª Seção\n26135944 Cavalcanti / BA', 1, 2),
(26, 'Sr. Luiz Henrique Lima', '(061) 8866-4023', '017.546.932-61', 'Viela Vitor Gabriel Moraes, 354\nVentosa\n50958371 Novaes / RN', 1, 2),
(27, 'Cecília Cunha', '+55 (084) 7450 3159', '089.271.653-30', 'Feira Cardoso, 724\nCônego Pinheiro 1ª Seção\n22163-462 Castro do Amparo / RJ', 2, 2),
(28, 'Matheus Freitas', '(011) 2947-2043', '345.786.910-39', 'Feira Heitor Nascimento, 7\nSão Jorge 3ª Seção\n31543-965 Pires / GO', 2, 2),
(29, 'Pietro Gonçalves', '41 6482-3526', '463.729.051-16', 'Ladeira Teixeira\nItatiaia\n51832-716 Ribeiro / SC', 1, 2),
(30, 'Sra. Caroline Monteiro', '+55 21 4314-5140', '638.512.097-02', 'Setor Teixeira, 45\nMaria Helena\n66495804 da Paz do Oeste / AC', 1, 2);

INSERT INTO Corretor VALUES
(1, 1411, 962122, 1),
(2, 2977, 652601, 3),
(3, 2059, 578188, 5),
(4, 2517, 237343, 7),
(5, 2445, 226173, 9),
(6, 4592, 127180, 11),
(7, 2425, 861118, 12),
(8, 3920, 890384, 13),
(9, 1977, 880367, 14),
(10, 1617, 465936, 16),
(11, 1896, 879239, 17),
(12, 1930, 564408, 21),
(13, 2691, 359747, 22),
(14, 2870, 997487, 25),
(15, 1752, 613473, 26),
(16, 2958, 382339, 29),
(17, 3047, 565550, 30);

INSERT INTO Imóvel VALUES
(1, 10, 'Recanto Valentina Ribeiro, 43\nConjunto Jardim Filadélfia\n19403101 Santos Alegre / AC', 100000),
(2, 6, 'Favela Alexia Monteiro, 4\nCustodinha\n03450-159 Viana / TO', 537993),
(3, 4, 'Setor Cardoso, 669\nTirol\n56526971 da Cunha / PI', 1029791),
(4, 8, 'Fazenda Jesus, 2\nSão Jorge 1ª Seção\n64130-589 Oliveira / AL', 1170632),
(5, 8, 'Avenida Freitas, 40\nMarçola\n70188-566 Carvalho / PI', 401950),
(6, 1, 'Ladeira de Oliveira\nVila Nova Gameleira 2ª Seção\n30282986 Ramos Grande / MG', 253943),
(7, 6, 'Vale Bruna Ribeiro, 60\nVila Do Pombal\n40858-923 Cunha das Flores / RO', 790879),
(8, 1, 'Parque de Almeida, 1\nSerra Verde\n89944299 da Luz de Ferreira / PI', 265695),
(9, 8, 'Aeroporto de Viana, 940\nSanta Terezinha\n22835306 Jesus / RN', 367829),
(10, 7, 'Avenida de da Mota\nVila Madre Gertrudes 3ª Seção\n45225-273 Nunes / RJ', 100000),
(11, 3, 'Vale de Azevedo, 35\nFuncionários\n97480-750 Ramos do Galho / PA', 1350789),
(12, 10, 'Rodovia de Pereira, 13\nCanadá\n26368404 Carvalho de da Cruz / PA', 586394),
(13, 6, 'Campo de da Cunha, 997\nNovo Ouro Preto\n47742-951 Caldeira das Flores / PE', 307081),
(14, 6, 'Rodovia de Cunha, 26\nMineirão\n14682115 Melo / CE', 1561736),
(15, 10, 'Favela de Caldeira, 95\nEymard\n35664331 Pereira / AP', 708375),
(16, 5, 'Trecho da Mota, 42\nCaiçaras\n31489619 Cavalcanti de Araújo / RN', 100000),
(17, 9, 'Jardim Almeida, 36\nLeonina\n27988163 Moraes / AC', 100000),
(18, 5, 'Setor Gonçalves, 97\nTeixeira Dias\n92705507 Fernandes da Prata / AC', 863882),
(19, 1, 'Praia de Rezende, 7\nMangabeiras\n44525-429 Freitas / MT', 1993973),
(20, 3, 'Loteamento Maria Vitória Moura, 2\nSão Paulo\n24685-580 Pires / RJ', 202353),
(21, 1, 'Praça Almeida, 71\nZilah Sposito\n93095395 Dias / RN', 190525),
(22, 2, 'Estrada João Gabriel Silveira, 5\nGuarani\n32005059 Cardoso / PB', 100000),
(23, 2, 'Trecho de Teixeira, 1\nVila Ecológica\n11444-913 Alves / MS', 551691),
(24, 8, 'Viela Joaquim Silva\nConjunto Lagoa\n36536088 Araújo dos Dourados / AC', 362034),
(25, 10, 'Favela Isabella Barbosa, 3\nUrca\n81764-273 da Rosa de da Cunha / PI', 100000),
(26, 2, 'Viaduto de Teixeira, 675\nJaraguá\n86138-828 da Conceição do Sul / PR', 116267),
(27, 3, 'Viaduto Alana Porto, 47\nVila Aeroporto\n15384-899 da Luz / MG', 513331),
(28, 6, 'Rua Novaes, 5\nVila Tirol\n60241-795 Azevedo / AC', 100000),
(29, 10, 'Lagoa de da Cunha, 802\nMonsenhor Messias\n30708244 da Conceição do Amparo / MS', 1671597),
(30, 10, 'Rua João Peixoto, 585\nBoa União 1ª Seção\n47921450 Gonçalves de Minas / PA', 100000),
(31, 3, 'Largo de Pereira, 63\nNova Granada\n82533925 Cavalcanti / RO', 100000),
(32, 9, 'Área Alice Fernandes, 729\nConjunto Paulo Vi\n27373234 Farias / RO', 441215),
(33, 10, 'Campo Joana Porto, 43\nUnidas\n76526-478 Freitas / AP', 288465),
(34, 9, 'Ladeira da Mota, 73\nVila Engenho Nogueira\n48674012 Barros / SP', 391622),
(35, 9, 'Estrada de Santos, 227\nPantanal\n55776777 da Luz / SC', 100000),
(36, 6, 'Vale da Luz, 85\nConjunto Providencia\n19642-936 Peixoto de Ribeiro / AP', 690570),
(37, 6, 'Campo de Ramos, 99\nSão Tomaz\n52130-327 da Rocha do Galho / TO', 599777),
(38, 3, 'Ladeira de Dias, 41\nBarroca\n68012256 da Mata das Flores / MA', 100000),
(39, 5, 'Área Natália Azevedo, 50\nMaria Helena\n04087980 Gomes / MS', 1482351),
(40, 10, 'Largo Júlia Cunha, 399\nAarão Reis\n70719-922 Araújo / DF', 1208080),
(41, 2, 'Conjunto Maria Alice Fernandes, 453\nBairro Das Indústrias Ii\n37762-671 da Mota da Praia / AM', 100000),
(42, 1, 'Morro de Correia, 70\nBrasil Industrial\n71565-852 da Cunha do Oeste / RS', 881273),
(43, 1, 'Núcleo Maria Alice Ribeiro, 6\nLeonina\n98296-669 Alves de Goiás / MA', 576329),
(44, 3, 'Ladeira de da Cruz, 83\nConjunto Celso Machado\n22559-604 Fogaça do Sul / MS', 695684),
(45, 8, 'Vale Eloah Freitas\nVila Canto Do Sabiá\n82321-669 Lima / PB', 709232),
(46, 6, 'Esplanada Bernardo da Mata\nGarças\n10913-786 Moraes / RS', 531182),
(47, 1, 'Praia Castro\nDas Industrias I\n13209347 Pereira / SP', 896140),
(48, 4, 'Campo Barbosa, 5\nMantiqueira\n53940-945 Carvalho de Farias / RR', 341252),
(49, 8, 'Trevo das Neves, 13\nCaetano Furquim\n36222-350 Araújo de Ferreira / SP', 781514),
(50, 3, 'Loteamento de Porto, 56\nIndependência\n82479-192 Monteiro de Goiás / PE', 150616);

INSERT INTO Proprietário VALUES
(1, 33),
(2, 87),
(3, 10),
(4, 3),
(5, 76),
(6, 87),
(7, 46),
(8, 12),
(9, 37),
(10, 33),
(11, 25),
(12, 54),
(13, 66),
(14, 25),
(15, 10),
(16, 30),
(17, 8),
(18, 17),
(19, 22),
(20, 58),
(21, 3),
(22, 60),
(23, 59),
(24, 16),
(25, 49),
(26, 26),
(27, 55),
(28, 38),
(29, 85),
(30, 13),
(31, 70),
(32, 67),
(33, 76),
(34, 98),
(35, 58),
(36, 52),
(37, 69),
(38, 40),
(39, 17),
(40, 92),
(41, 2),
(42, 2),
(43, 52),
(44, 23),
(45, 45),
(46, 29),
(47, 41),
(48, 45),
(49, 96),
(50, 26);

INSERT INTO Cobertura VALUES
(1, 7),
(2, 6),
(3, 14),
(4, 4),
(5, 9),
(6, 6),
(7, 17),
(8, 15),
(9, 9),
(10, 2);

INSERT INTO Compra VALUES
(1, '2021-10-05', 875231, 42, 7, 13),
(2, '2021-10-22', 437955, 32, 9, 68),
(3, '2021-10-29', 297658, 13, 6, 29),
(4, '2021-10-04', 93124, 35, 9, 3),
(5, '2021-10-18', 881058, 47, 7, 79),
(6, '2021-10-11', 1200321, 40, 2, 22),
(7, '2021-10-19', 92012, 17, 9, 82),
(8, '2021-10-30', 859767, 18, 9, 20),
(9, '2021-10-16', 707159, 15, 2, 85),
(10, '2021-10-19', 536946, 2, 6, 27),
(11, '2021-10-07', 1207751, 40, 2, 53),
(12, '2021-10-06', 1558645, 14, 6, 32),
(13, '2021-10-14', 1988381, 19, 7, 9),
(14, '2021-10-23', 690147, 36, 6, 11),
(15, '2021-10-30', 855563, 18, 9, 38),
(16, '2021-10-14', 693710, 44, 14, 1),
(17, '2021-10-22', 362034, 24, 15, 11),
(18, '2021-10-28', 88996, 16, 9, 60),
(19, '2021-10-08', 401791, 5, 15, 29),
(20, '2021-10-08', 691326, 44, 14, 12),
(21, '2021-10-30', 361349, 24, 15, 100),
(22, '2021-10-16', 1335334, 11, 14, 49),
(23, '2021-10-09', 99841, 1, 2, 88),
(24, '2021-10-15', 95795, 31, 14, 90),
(25, '2021-10-27', 88835, 22, 6, 12);

INSERT INTO Publicidade VALUES
(1, 2024, 37, 6, 7, '2021-09-28', '2021-10-12'),
(2, 200, 20, 14, 7, '2021-10-24', '2021-10-30'),
(3, 2145, 16, 9, 7, '2021-05-04', '2021-05-15'),
(4, 294, 8, 7, 4, '2021-04-18', '2021-05-04'),
(5, 3272, 46, 6, 6, '2021-10-17', '2021-11-02'),
(6, 869, 9, 15, 4, '2021-01-17', '2021-02-03'),
(7, 492, 5, 15, 7, '2021-05-27', '2021-06-02'),
(8, 996, 35, 9, 4, '2021-07-07', '2021-07-20'),
(9, 200, 41, 6, 7, '2021-11-19', '2021-12-05'),
(10, 200, 41, 6, 3, '2021-04-17', '2021-04-29'),
(11, 200, 30, 2, 6, '2021-06-27', '2021-07-01'),
(12, 1698, 24, 15, 7, '2021-01-19', '2021-01-22'),
(13, 200, 33, 2, 1, '2021-01-27', '2021-02-05'),
(14, 240, 30, 2, 1, '2021-01-18', '2021-01-30'),
(15, 1211, 17, 9, 6, '2021-07-12', '2021-07-22'),
(16, 1536, 26, 6, 7, '2021-12-04', '2021-12-21'),
(17, 1400, 38, 14, 1, '2021-09-19', '2021-09-21'),
(18, 2363, 29, 2, 6, '2021-05-09', '2021-05-24'),
(19, 200, 24, 15, 7, '2021-05-24', '2021-06-02'),
(20, 1116, 18, 9, 7, '2021-05-08', '2021-05-11'),
(21, 322, 10, 17, 3, '2021-04-27', '2021-04-28'),
(22, 200, 5, 15, 7, '2021-03-26', '2021-04-01'),
(23, 1476, 19, 7, 4, '2021-09-01', '2021-09-18'),
(24, 1175, 33, 2, 3, '2021-12-12', '2021-12-22'),
(25, 390, 43, 7, 1, '2021-01-16', '2021-01-23'),
(26, 2972, 9, 15, 2, '2021-11-08', '2021-11-13'),
(27, 2777, 20, 14, 1, '2021-09-01', '2021-09-12'),
(28, 211, 23, 6, 1, '2021-09-03', '2021-09-13'),
(29, 3149, 34, 9, 1, '2021-05-10', '2021-05-21'),
(30, 978, 50, 14, 7, '2021-10-11', '2021-10-25'),
(31, 2761, 7, 6, 4, '2021-12-03', '2021-12-10'),
(32, 2083, 48, 4, 4, '2021-06-05', '2021-06-13'),
(33, 501, 34, 9, 1, '2021-12-26', '2022-01-05'),
(34, 1877, 40, 2, 5, '2021-10-06', '2021-10-10'),
(35, 2300, 23, 6, 7, '2021-06-14', '2021-06-27'),
(36, 496, 16, 9, 1, '2021-03-23', '2021-03-30'),
(37, 906, 12, 2, 7, '2021-06-30', '2021-07-13'),
(38, 789, 27, 14, 1, '2021-08-24', '2021-09-05'),
(39, 626, 34, 9, 7, '2021-01-03', '2021-01-10'),
(40, 1756, 50, 14, 6, '2021-02-17', '2021-02-23'),
(41, 329, 44, 14, 4, '2021-03-13', '2021-03-17'),
(42, 805, 16, 9, 7, '2021-05-02', '2021-05-18'),
(43, 1234, 20, 14, 4, '2021-12-21', '2021-12-22'),
(44, 1294, 42, 7, 4, '2021-02-04', '2021-02-19'),
(45, 200, 49, 15, 6, '2021-09-24', '2021-10-12'),
(46, 1561, 16, 9, 6, '2021-10-24', '2021-11-07'),
(47, 2451, 13, 6, 7, '2021-06-09', '2021-06-22'),
(48, 200, 6, 7, 1, '2021-01-02', '2021-01-05'),
(49, 346, 21, 7, 6, '2021-12-13', '2021-12-24'),
(50, 811, 21, 7, 4, '2021-04-16', '2021-04-28');

INSERT INTO Vacinação VALUES
(330455, 'Rio de Janeiro', 5917212, 6775561, 87.33),
(330490, 'São Gonçalo', 651133, 1098357, 59.28),
(330170, 'Duque de Caxias', 568565, 929449, 61.17),
(330350, 'Nova Iguaçu', 569459, 825388, 68.99),
(330330, 'Niterói', 478335, 516981, 92.52);

