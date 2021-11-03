insert into estado(id,nome,sigla,regiao) values (1,'Acre', 'AC', 'Norte');
insert into estado(id,nome,sigla,regiao) values (2, 'Alagoas', 'AL', 'Nordeste');
insert into estado(id,nome,sigla,regiao) values (3, 'Amapá', 'AP', 'Norte');
insert into estado(id,nome,sigla,regiao) values (4,'Amazonas', 'AM', 'Norte');
insert into estado(id,nome,sigla,regiao) values (5, 'Bahia', 'BA', 'Nordeste');
insert into estado(id,nome,sigla,regiao) values (6, 'Ceará', 'CE', 'Nordeste');
insert into estado(id,nome,sigla,regiao) values (7, 'Distrito Federal', 'DF','Centro-Oeste');
insert into estado(id,nome,sigla,regiao) values (8, 'Espírito Santo', 'ES', 'Sudeste');
insert into estado(id,nome,sigla,regiao) values (9, 'Goiás', 'GO', 'Centro-Oeste');
insert into estado(id,nome,sigla,regiao) values (10, 'Maranhão', 'MA', 'Nordeste');
insert into estado(id,nome,sigla,regiao) values (11, 'Mato Grosso', 'MT','Centro-Oeste');
insert into estado(id,nome,sigla,regiao) values (12, 'Mato Grosso do Sul', 'MS','Centro-Oeste');
insert into estado(id,nome,sigla,regiao) values (13, 'Minas Gerais', 'MG', 'Sudeste');
insert into estado(id,nome,sigla,regiao) values (14, 'Pará', 'PA', 'Norte');
insert into estado(id,nome,sigla,regiao) values (15, 'Paraíba', 'PB', 'Nordeste');
insert into estado(id,nome,sigla,regiao) values (16, 'Paraná', 'PR', 'Sul');
insert into estado(id,nome,sigla,regiao) values (17, 'Pernambuco', 'PE', 'Nordeste');
insert into estado(id,nome,sigla,regiao) values (18, 'Piauí', 'PI', 'Nordeste');
insert into estado(id,nome,sigla,regiao) values (19, 'Rio de Janeiro', 'RJ', 'Sudeste');
insert into estado(id,nome,sigla,regiao) values (20, 'Rio Grande do Norte', 'RN', 'Nordeste');
insert into estado(id,nome,sigla,regiao) values (21, 'Rio Grande do Sul', 'RS', 'Sul');
insert into estado(id,nome,sigla,regiao) values (22, 'Rondônia', 'RO', 'Norte');
insert into estado(id,nome,sigla,regiao) values (23, 'Roraima', 'RR', 'Norte');
insert into estado(id,nome,sigla,regiao) values (24, 'São Paulo', 'SP', 'Sudeste');
insert into estado(id,nome,sigla,regiao) values (25, 'Santa Catarina', 'SC', 'Sul');
insert into estado(id,nome,sigla,regiao) values (26, 'Sergipe', 'SE', 'Nordeste');
insert into estado(id,nome,sigla,regiao) values (27, 'Tocantins', 'TO', 'Norte');

insert into instituicao(id, nome, sigla,endereco, idestado) values (1,'Instituto Federal De Educação, Ciência E Tecnologia Do Acre','IFAC','Rua Coronel José Galdino, , Bairro Bosque.',1);
insert into cidade(id, nome, idestado) values (1, 'Rio Branco',1);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (1, 'Campus Avançado Rio Branco Baixada Do Sol','Rua Rio Grande do Sul, , Aeroporto Velho.', 1, 1, '()');
insert into cidade(id, nome, idestado) values (2, 'Cruzeiro do Sul',1);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (2, 'Campus Cruzeiro Do Sul','Rua Paraná, , 25 de Agosto.', 1, 2, '(49 ) 9982-0966');
insert into cidade(id, nome, idestado) values (3, 'Rio Branco',1);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (3, 'Campus Rio Branco','Av. Brasil, , Xavier Maia.', 1, 3, '(68 ) 2106-5910');
insert into cidade(id, nome, idestado) values (4, 'Sena Madureira',1);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (4, 'Campus Sena Madureira','TRAVESSA GUILHERME, , Pista.', 1, 4, '(68 ) 3612-2797');
insert into cidade(id, nome, idestado) values (5, 'Tarauacá',1);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (5, 'Campus Tarauacá','Rua Coronel Juvêncio de Menezes, Rua João Pessoa esq c/ rua João de Paiva, Bairro Senador Pompeu, Centro.', 1, 5, '(68 ) 3462-1709');
insert into cidade(id, nome, idestado) values (6, 'Xapuri',1);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (6, 'Campus Xapuri','Rua Seis de Agosto, , Centro.', 1, 6, '()');
insert into instituicao(id, nome, sigla,endereco, idestado) values (2,'Instituto Federal De Educação, Ciência E Tecnologia De Alagoas','IFAL','Rua Odilon Vasconcelos 103 (Esquina com Av. Júlio Marques Luz), Ao lado do Colégio Santa Úrsula, Jatiúca.',2);
insert into cidade(id, nome, idestado) values (7, 'Arapiraca',2);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (7, 'Campus Arapiraca','Rodovia AL-110, Próximo Rotatória Polícia Rodoviária Estadual - Acesso Taquarana, Senador Arnon de Melo.', 2, 7, '(82 ) 3194-1150');
insert into cidade(id, nome, idestado) values (8, 'Maceió',2);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (8, 'Campus Avançado Maceió Benedito Bentes','Avenida Benedito Bentes, , Benedito Bentes.', 2, 8, '()');
insert into cidade(id, nome, idestado) values (9, 'Batalha',2);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (9, 'Campus Batalha','Rua Governador Afrânio Lages, , Centro.', 2, 9, '()');
insert into cidade(id, nome, idestado) values (10, 'Coruripe',2);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (10, 'Campus Coruripe','Rua Maria Petrucia dos Santos, , Zequinha Azevedo.', 2, 10, '(82 ) 3194-1150');
insert into cidade(id, nome, idestado) values (11, 'Maceió',2);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (11, 'Campus Maceió','Rua Mizael Domingues, Esquina com a Rua Barão de Atalaia, Centro.', 2, 11, '(82 ) 2126-7000');
insert into cidade(id, nome, idestado) values (12, 'Maragogi',2);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (12, 'Campus Maragogi','Rua Luiz Holanda Cavalcante, , Centro.', 2, 12, '( )');
insert into cidade(id, nome, idestado) values (13, 'Marechal Deodoro',2);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (13, 'Campus Marechal Deodoro','Rua Lourival Alfredo, Antiga Rua da Matança, POEIRA.', 2, 13, '(82 ) 3263-1100');
insert into cidade(id, nome, idestado) values (14, 'Murici',2);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (14, 'Campus Murici','Avenida Presidente Vargas, Loteamento Prefeito Pedro Tenório Raposo, Rodovia BR 104, Centro.', 2, 14, '(82 ) 3194-1150');
insert into cidade(id, nome, idestado) values (15, 'Palmeira dos Índios',2);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (15, 'Campus Palmeira Dos Índios','Avenida Alagoas, Av. das Alagoas, s/nº - Palmeira de Fora - Palmeira dos Índios - AL , Palmeira de Fora.', 2, 15, '(82 ) 3194-1150');
insert into cidade(id, nome, idestado) values (16, 'Penedo',2);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (16, 'Campus Penedo','Rodovia Engenheiro Joaquim Gonçalves, , Dom Constantino.', 2, 16, '(82 ) 3194-1150');
insert into cidade(id, nome, idestado) values (17, 'Piranhas',2);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (17, 'Campus Piranhas','AVENIDA SERGIPE, Próximo ao antigo Clube Atalaia, XINGÓ .', 2, 17, '(82 ) 3194-1150');
insert into cidade(id, nome, idestado) values (18, 'Rio Largo',2);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (18, 'Campus Rio Largo','Aeroporto Zumbi dos Palmares, antigo espaço Reviver, Tabuleiro do Pinto.', 2, 18, '(82 ) 3194-1150');
insert into cidade(id, nome, idestado) values (19, 'Santana do Ipanema',2);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (19, 'Campus Santana Do Ipanema','BR 316, Km 87,5, , Centro.', 2, 19, '() 8101-3339');
insert into cidade(id, nome, idestado) values (20, 'São Miguel dos Campos',2);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (20, 'Campus São Miguel Dos Campos','Rua Visconde de Sinimbu, , Centro.', 2, 20, '(82 ) 3194-1150');
insert into cidade(id, nome, idestado) values (21, 'Satuba',2);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (21, 'Campus Satuba','Satuba, RUA 17 DE AGOSTO , CENTRO.', 2, 21, '(82 ) 2126-6500');
insert into cidade(id, nome, idestado) values (22, 'Viçosa',2);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (22, 'Campus Viçosa','Rua Mota Lima,, , Centro.', 2, 22, '(82 ) 3194-1171');
insert into cidade(id, nome, idestado) values (23, 'Maceió',2);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (23, 'Escola Técnica De Artes/ufal','Praça Visconde de Sinimbú, , Centro.', 2, 23, '()');
insert into instituicao(id, nome, sigla,endereco, idestado) values (3,'Instituto Federal De Educação, Ciência E Tecnologia Do Amapá','IFAP','Rodovia BR-210, Reitoria, Brasil Novo.',3);
insert into cidade(id, nome, idestado) values (24, 'Oiapoque',3);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (24, 'Campus Avançado Oiapoque','Rua Joaquim Caetano da Silva, Antigo hotel de Trânsito do Governo do Estado do Amapá., Centro.', 3, 24, '()');
insert into cidade(id, nome, idestado) values (25, 'Laranjal do Jari',3);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (25, 'Campus Laranjal Do Jari','Rua Nilo Peçanha, CAMPUS, CAJARI.', 3, 25, '(96 ) 9181-2165');
insert into cidade(id, nome, idestado) values (26, 'Macapá',3);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (26, 'Campus Macapá','Rodovia BR-210, KM 3, Brasil Novo.', 3, 26, '(96 ) 3223-5510');
insert into cidade(id, nome, idestado) values (27, 'Porto Grande',3);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (27, 'Campus Porto Grande','Rua Getúlio Vargas, RODOVIA BR 210, KM 103, S/N, REITOR DOS PINHAIS, GLEBA MATAPI.', 3, 27, '(96 ) 3198-2152');
insert into cidade(id, nome, idestado) values (28, 'Santana',3);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (28, 'Campus Santana','Rodovia Duca Serra , , Nova Brasilia.', 3, 28, '(96 ) 9151-2695');
insert into instituicao(id, nome, sigla,endereco, idestado) values (4,'Instituto Federal De Educação, Ciência E Tecnologia Do Amazonas','IFAM','Rua Ferreira Pena, , Centro.',4);
insert into cidade(id, nome, idestado) values (29, 'Manacapuru',4);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (29, 'Campus Avançado Manacapuru','Estrada Manoel Urbano, km 77, Zona Rural, , Zona Rural.', 4, 29, '(92 )');
insert into cidade(id, nome, idestado) values (30, 'Coari',4);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (30, 'Campus Coari','Estrada do Itapéua, Km 2, Itamaraty.', 4, 30, '(97 ) 3561-3330');
insert into cidade(id, nome, idestado) values (31, 'Eirunepé',4);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (31, 'Campus Eirunepé','RUA OTAVIANO MELO, , NOSSA SENHORA DE FATIMA.', 4, 31, '(92 ) 9302-0009');
insert into cidade(id, nome, idestado) values (32, 'Humaitá',4);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (32, 'Campus Humaitá','Rua Padre José de Souza Pena, RUA PEDRO DE ALCANTÂRA BACELAR, São Pedro.', 4, 32, '(92 ) 9188-4021');
insert into cidade(id, nome, idestado) values (33, 'Itacoatiara',4);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (33, 'Campus Itacoatiara','Rua Borba, , Pedreiras.', 4, 33, '(92 ) 8187-5776');
insert into cidade(id, nome, idestado) values (34, 'Lábrea',4);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (34, 'Campus Lábrea','RUA 22 DE OUTUBRO, , VILLA FALCÃO.', 4, 34, '(97 ) 3331-2064');
insert into cidade(id, nome, idestado) values (35, 'Manaus',4);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (35, 'Campus Manaus Centro','Avenida 7 de Setembro, , Centro.', 4, 35, '(92 ) 3621-6700');
insert into cidade(id, nome, idestado) values (36, 'Manaus',4);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (36, 'Campus Manaus Distrito Industrial','Avenida Danilo Matos Areosa, , Distrito Industrial.', 4, 36, '(92 ) 3237-5800');
insert into cidade(id, nome, idestado) values (37, 'Manaus',4);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (37, 'Campus Manaus Zona Leste','Avenida Cosme Ferreira, , Gilberto Mestrinho.', 4, 37, '(92 ) 9843-5005');
insert into cidade(id, nome, idestado) values (38, 'Maués',4);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (38, 'Campus Maués','Estrada dos Moraes, , Senador José Esteves.', 4, 38, '()');
insert into cidade(id, nome, idestado) values (39, 'Parintins',4);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (39, 'Campus Parintins','Estrada Odovaldo Novo, , Djard Vieira.', 4, 39, '(92 ) 5333-4607');
insert into cidade(id, nome, idestado) values (40, 'Presidente Figueiredo',4);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (40, 'Campus Presidente Figueiredo','AVENIDA ONÇA PINTADA, , GALO DA SERRA.', 4, 40, '(92 ) 3324-1030');
insert into cidade(id, nome, idestado) values (41, 'São Gabriel da Cachoeira',4);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (41, 'Campus São Gabriel Da Cachoeira','BR 307, KM 0, BAIRRO CACHOEIRINHA, Centro.', 4, 41, '(97 ) 3471-1894');
insert into cidade(id, nome, idestado) values (42, 'Tabatinga',4);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (42, 'Campus Tabatinga','Avenida SANTOS DUMONT, BAIRRO VILA VERDE, Centro.', 4, 42, '(97 ) 3412-5142');
insert into cidade(id, nome, idestado) values (43, 'Tefé',4);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (43, 'Campus Tefé','Beco João Estéfano, PRÉDIO DA ESCOLA MUNICIPAL LUZIVALDO CASTRO - PÓLO UAB , São José.', 4, 43, '(92 ) 8419-2030');
insert into instituicao(id, nome, sigla,endereco, idestado) values (5,'Instituto Federal De Educação, Ciência E Tecnologia Da Bahia','IFBA','Avenida Araújo Pinho, , Canela.',5);
insert into cidade(id, nome, idestado) values (44, 'Ubaitaba',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (44, 'Campus Avançado Ubaitaba','Rua Pedro Pascoal, , Faisqueira.', 5, 44, '()');
insert into cidade(id, nome, idestado) values (45, 'Barreiras',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (45, 'Campus Barreiras','Rua das Várzeas , , Centro.', 5, 45, '(77 ) 3611-5023');
insert into cidade(id, nome, idestado) values (46, 'Brumado',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (46, 'Campus Brumado','Avenida Centenário, , Centro.', 5, 46, '()');
insert into cidade(id, nome, idestado) values (47, 'Camaçari',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (47, 'Campus Camaçarí','Avenida Eixo Urbano Central, , Centro.', 5, 47, '(71 ) 3621-0708');
insert into cidade(id, nome, idestado) values (48, 'Euclides da Cunha',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (48, 'Campus Euclides Da Cunha','Rua Almerindo Rehem, , Centro.', 5, 48, '()');
insert into cidade(id, nome, idestado) values (49, 'Eunápolis',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (49, 'Campus Eunápolis','Avenida David Jonas Fadini, , Juca Rosa.', 5, 49, '(73 ) 3281-2266');
insert into cidade(id, nome, idestado) values (50, 'Feira de Santana',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (50, 'Campus Feira De Santana','Rodovia BR 324, Km. 102, , Subaé.', 5, 50, '( )');
insert into cidade(id, nome, idestado) values (51, 'Ilhéus',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (51, 'Campus Ilhéus','Rodovia Ilhéus  Itabuna, BR 415, , Vila Cachoeira.', 5, 51, '( )');
insert into cidade(id, nome, idestado) values (52, 'Irecê',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (52, 'Campus Irecê','Rodovia BA 148, Km 04, , Vila Esperança.', 5, 52, '( )');
insert into cidade(id, nome, idestado) values (53, 'Jacobina',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (53, 'Campus Jacobina','Avenida Centenário, Rodovia BA, saída para Ourolândia , , Jacobina II.', 5, 53, '( )');
insert into cidade(id, nome, idestado) values (54, 'Jequié',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (54, 'Campus Jequié','Loteamento Cidade Nova, Rua F, Jonh Kennedy .', 5, 54, '( )');
insert into cidade(id, nome, idestado) values (55, 'Juazeiro',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (55, 'Campus Juazeiro','Avenida Raul Alves, , Santo Antônio.', 5, 55, '()');
insert into cidade(id, nome, idestado) values (56, 'Lauro de Freitas',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (56, 'Campus Lauro De Freitas','Avenida São Cristovão, Espaço Cidade Cidadã, Itinga.', 5, 56, '()');
insert into cidade(id, nome, idestado) values (57, 'Paulo Afonso',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (57, 'Campus Paulo Afonso','Avenida Marcondes Ferraz, , General Dutra.', 5, 57, '(75 ) 3282-1191');
insert into cidade(id, nome, idestado) values (58, 'Porto Seguro',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (58, 'Campus Porto Seguro','BR-367, Km 57,5, , Fontana I.', 5, 58, '(73 ) 3288-6686');
insert into cidade(id, nome, idestado) values (59, 'Salvador',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (59, 'Campus Salvador','Rua Emídio dos Santos, , Barbalho.', 5, 59, '(71 ) 2102-9552');
insert into cidade(id, nome, idestado) values (60, 'Santo Amaro',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (60, 'Campus Santo Amaro','Travessa do Bonfim, , Bonfim.', 5, 60, '(75 ) 3241-0845');
insert into cidade(id, nome, idestado) values (61, 'Santo Antônio de Jesus',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (61, 'Campus Santo Antônio De Jesus','Rua Rui Barbosa, , Centro.', 5, 61, '()');
insert into cidade(id, nome, idestado) values (62, 'Seabra',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (62, 'Campus Seabra','Estrada vicinal para a tenda , , Lagoa da Boa Vista.', 5, 62, '( )');
insert into cidade(id, nome, idestado) values (63, 'Simões Filho',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (63, 'Campus Simões Filho','Rodovia BR-324, Avenida Universitária, Centro Industrial de Aratu, Pitanguinha.', 5, 63, '(71 ) 3396-7326');
insert into cidade(id, nome, idestado) values (64, 'Valença',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (64, 'Campus Valença-tento','Rua do Arame, Condomínio, Tento.', 5, 64, '(75 ) 3641-3051');
insert into cidade(id, nome, idestado) values (65, 'Vitória da Conquista',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (65, 'Campus Vitória Da Conquista','Avenida Amazonas, , Zabelê.', 5, 65, '(77 ) 3426-2271');
insert into cidade(id, nome, idestado) values (66, 'Salvador',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (66, 'Polo De Inovação Salvador','Rua Emídio dos Santos, , Barbalho.', 5, 66, '()');
insert into instituicao(id, nome, sigla,endereco, idestado) values (6,'Instituto Federal De Educação, Ciência E Tecnologia Baiano','IFBA','Rua do Rouxinol, , Imbuí.',5);
insert into cidade(id, nome, idestado) values (67, 'Alagoinhas',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (67, 'Campus Alagoinhas','Rua Elvira Dórea, , Centro.', 6, 67, '()');
insert into cidade(id, nome, idestado) values (68, 'Bom Jesus da Lapa',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (68, 'Campus Bom Jesus Da Lapa','BR 349, KM 14, Caixa Postal 34, Zona Rural.', 6, 68, '(77 ) 3481-5012');
insert into cidade(id, nome, idestado) values (69, 'Catu',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (69, 'Campus Catu','Rua Barão de Camaçari, Estabelecimento de ensino, Barão de Camaçari.', 6, 69, '(71 ) 3641-7900');
insert into cidade(id, nome, idestado) values (70, 'Governador Mangabeira',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (70, 'Campus Governador Mangabeira','Rua Waldemar Mascarenhas, , Portão.', 6, 70, '(71 ) 9687-8526');
insert into cidade(id, nome, idestado) values (71, 'Guanambi',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (71, 'Campus Guanambi','Zona Rural, Distrito de Ceraima, Ceraima.', 6, 71, '(77 ) 3493-2100');
insert into cidade(id, nome, idestado) values (72, 'Itaberaba',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (72, 'Campus Itaberaba','Av. Luis Viana Filho, Estrada Ipirá/Itaberaba, Aeroporto.', 6, 72, '()');
insert into cidade(id, nome, idestado) values (73, 'Itapetinga',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (73, 'Campus Itapetinga','Km 2, Rodovia Itapetinga/Itororó, , Clerolândia.', 6, 73, '(77 ) 3261-2213');
insert into cidade(id, nome, idestado) values (74, 'Santa Inês',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (74, 'Campus Santa Inês','km 2,5 BR 420 RODOVIA SANTA INES/UBAIRA, IFBAINAO Campus Santa Inês, ZONA RURAL.', 6, 74, '(73 ) 3536-1210');
insert into cidade(id, nome, idestado) values (75, 'Senhor do Bonfim',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (75, 'Campus Senhor Do Bonfim','km 04 da estrada de Igara, Zona Rural - Caixa Postal 55, Zona Rural.', 6, 75, '(74 ) 3541-3676');
insert into cidade(id, nome, idestado) values (76, 'Serrinha',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (76, 'Campus Serrinha','Rua Vicinal de Aparecida, , .', 6, 76, '(75 ) 8301-8269');
insert into cidade(id, nome, idestado) values (77, 'Teixeira de Freitas',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (77, 'Campus Teixeira De Freitas','BR 101, Km 882, Caixa Postal 66, Centro.', 6, 77, '(73 ) 3665-1023');
insert into cidade(id, nome, idestado) values (78, 'Uruçuca',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (78, 'Campus Uruçuca','Rua Dr. João Nascimento, , Centro.', 6, 78, '(73 ) 3239-2160');
insert into cidade(id, nome, idestado) values (79, 'Valença',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (79, 'Campus Valença','Rua Glicério Tavares, , Bate Quente.', 6, 79, '(75 ) 3641-5270');
insert into cidade(id, nome, idestado) values (80, 'Xique-Xique',5);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (80, 'Campus Xique-xique','Rua Coronel Manoel Teixeira, , Centro.', 6, 80, '()');
insert into instituicao(id, nome, sigla,endereco, idestado) values (7,'Instituto Federal De Educação, Ciência E Tecnologia Do Ceará','IFCE','Rua Jorge Dumar, , Jardim América.',6);
insert into cidade(id, nome, idestado) values (81, 'Acaraú',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (81, 'Campus Acaraú','Av. Desembargador Armando de Sales Louzada, S/N, , Monsenhor José Edson Magalhães.', 7, 81, '(88 ) 3661-4103');
insert into cidade(id, nome, idestado) values (82, 'Aracati',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (82, 'Campus Aracati','CE 040 - 123, , Centro.', 7, 82, '(88 ) 3421-1010');
insert into cidade(id, nome, idestado) values (83, 'Guaramiranga',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (83, 'Campus Avançado Guaramiranga','Rua Joaquim Alves Nogueira, , Centro.', 7, 83, '(85 ) 3401-2313');
insert into cidade(id, nome, idestado) values (84, 'Jaguaruana',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (84, 'Campus Avançado Jaguaruana','Avenida Doutor Antônio da Rocha Freitas, , Centro.', 7, 84, '(85 ) 3401-2313');
insert into cidade(id, nome, idestado) values (85, 'Caucaia',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (85, 'Campus Avançado Pecém','Rodovia BR-222, CE 422, altura do km 04., Parque das Nações.', 7, 85, '(85 ) 8811-6053');
insert into cidade(id, nome, idestado) values (86, 'Baturité',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (86, 'Campus Baturité','Avenida Sete de Setembro, Rua Ouvidor Mor Vitoriano Soares Barbosa , Sanharão.', 7, 86, '(85 ) 3347-0266');
insert into cidade(id, nome, idestado) values (87, 'Boa Viagem',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (87, 'Campus Boa Viagem','Rodovia Presidente Juscelino Kubitschek, , Centro.', 7, 87, '(85 ) 3401-2313');
insert into cidade(id, nome, idestado) values (88, 'Camocim',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (88, 'Campus Camocim','Rua Dr. Raimundo Cals, , Cidade com Deus.', 7, 88, '(88 ) 3621-0138');
insert into cidade(id, nome, idestado) values (89, 'Canindé',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (89, 'Campus Canindé','BR 020, Localidade Jubaia, Centro.', 7, 89, '(85 ) 3343-0572');
insert into cidade(id, nome, idestado) values (90, 'Caucaia',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (90, 'Campus Caucaia','Rua da Lagoa, Via de acesso 001, Parque Potira (Jurema).', 7, 90, '(85 ) 3387-1450');
insert into cidade(id, nome, idestado) values (91, 'Cedro',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (91, 'Campus Cedro','Rua Adauto Castelo, , Centro.', 7, 91, '(88 ) 3564-1000');
insert into cidade(id, nome, idestado) values (92, 'Crateús',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (92, 'Campus Crateús','Av. Geraldo Marques Barbosa, , Venâncios.', 7, 92, '(88 ) 3692-3864');
insert into cidade(id, nome, idestado) values (93, 'Crato',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (93, 'Campus Crato','Rodovia BR - 292, Km 15, Gisélia Pinheiro.', 7, 93, '(88 ) 3586-8100');
insert into cidade(id, nome, idestado) values (94, 'Fortaleza',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (94, 'Campus Fortaleza','Avenida Treze de Maio, Benfica, Fátima.', 7, 94, '(85 ) 3307-3666');
insert into cidade(id, nome, idestado) values (95, 'Horizonte',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (95, 'Campus Horizonte','Rua Francisca Cecilia de Sousa, , Zumbi.', 7, 95, '(85 ) 3401-2313');
insert into cidade(id, nome, idestado) values (96, 'Iguatu',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (96, 'Campus Iguatu','Rua Deoclecio Lima Verde,, Existe uma unidade na Rodovia Iguatu - Várzea Alegre, Km 05 Iguatu/CE, Brasil CEP: 63500-000, Centro.', 7, 96, '(88 ) 3582-1000');
insert into cidade(id, nome, idestado) values (97, 'Itapipoca',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (97, 'Campus Itapipoca','Avenida Anastácio Braga, , Centro.', 7, 97, '(88 ) 9843-0014');
insert into cidade(id, nome, idestado) values (98, 'Jaguaribe',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (98, 'Campus Jaguaribe','Rua Pedro Bezerra de Meneses, , Cohab.', 7, 98, '(88 ) 3522-1117');
insert into cidade(id, nome, idestado) values (99, 'Juazeiro do Norte',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (99, 'Campus Juazeiro Do Norte','Avenida Plácido Aderaldo Castelo, , Lagoa Seca.', 7, 99, '(88 ) 2101-5300');
insert into cidade(id, nome, idestado) values (100, 'Limoeiro do Norte',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (100, 'Campus Limoeiro Do Norte','Rua Estevão Remígio,, , Centro.', 7, 100, '(88 ) 3447-6400');
insert into cidade(id, nome, idestado) values (101, 'Maracanaú',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (101, 'Campus Maracanaú','Avenida Parque Central, Parque Central, Distrito Industrial I.', 7, 101, '(85 ) 3878-6300');
insert into cidade(id, nome, idestado) values (102, 'Morada Nova',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (102, 'Campus Morada Nova','Rua Coronel José Epifânio, , Centro.', 7, 102, '(88 ) 3422-3727');
insert into cidade(id, nome, idestado) values (103, 'Paracuru',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (103, 'Campus Paracuru','Rua Sete de Setembro, , Centro.', 7, 103, '(85 ) 3401-2313');
insert into cidade(id, nome, idestado) values (104, 'Quixadá',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (104, 'Campus Quixadá','Estrada do Cedro, Km 05, Centro.', 7, 104, '(88 ) 3412-0111');
insert into cidade(id, nome, idestado) values (105, 'Sobral',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (105, 'Campus Sobral','Avenida Doutor Guarani, , Derby Clube.', 7, 105, '(88 ) 3112-8100');
insert into cidade(id, nome, idestado) values (106, 'Tabuleiro do Norte',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (106, 'Campus Tabuleiro Do Norte','Rua Maia Alarcon, Sítio Taperinha, Centro.', 7, 106, '(88 ) 3424-2266');
insert into cidade(id, nome, idestado) values (107, 'Tauá',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (107, 'Campus Tauá','Rua Antônio Teixeira Benevides, No google maps : Rua Juscelino Kubitscheck de Oliveira, 450-530 - Planalto dos Calibris, Tauá - CE, 63660-000, Centro.', 7, 107, '(88 ) 3437-4249');
insert into cidade(id, nome, idestado) values (108, 'Tianguá',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (108, 'Campus Tianguá','Rodovia CE 187, , Estádio.', 7, 108, '(88 ) 3671-2299');
insert into cidade(id, nome, idestado) values (109, 'Ubajara',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (109, 'Campus Ubajara','Rua Trinta e Um de Dezembro, , Centro.', 7, 109, '(88 ) 3112-8163');
insert into cidade(id, nome, idestado) values (110, 'Umirim',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (110, 'Campus Umirim','Rua Carlos Antônio Sales, Floresta, Centro.', 7, 110, '(88 ) 3364-4502');
insert into cidade(id, nome, idestado) values (111, 'Fortaleza',6);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (111, 'Polo De Inovação Fortaleza','Avenida Treze de Maio, , Fátima.', 7, 111, '(85 ) 3307-4000');
insert into instituicao(id, nome, sigla,endereco, idestado) values (8,'Instituto Federal De Educação, Ciência E Tecnologia De Brasília','IFDF',' SAUS Quadra 2 , Bloco E, Asa Sul.',7);
insert into cidade(id, nome, idestado) values (112, 'Brasília',7);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (112, 'Campus Avançado Sobradinho','Quadra 8 Comércio Local, lotes 5 e 6, Sobradinho.', 8, 112, '(61 ) 2103-2139');
insert into cidade(id, nome, idestado) values (113, 'Brasília',7);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (113, 'Campus Brasília','Quadra SGAN 610, Módulo D, E, F e G, Asa Norte.', 8, 113, '(61 ) 2193-8051');
insert into cidade(id, nome, idestado) values (114, 'Brasília',7);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (114, 'Campus Ceilândia','Quadra EQNP 26/30 Bloco G, loja 5 Av. P3 Sul, Ceilândia Sul.', 8, 114, '(61 ) 2103-2170');
insert into cidade(id, nome, idestado) values (115, 'Brasília',7);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (115, 'Campus Estrutural','Quadra 16  Área Especial Nº 01, Cidade do Automóvel / SCIA / Estrutural, Cidade Estrutural.', 8, 115, '(61 ) 9388-3699');
insert into cidade(id, nome, idestado) values (116, 'Brasília',7);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (116, 'Campus Gama','Área Especial  Lado Oeste, Prédio da Biblioteca Pública do Gama, Setor Central.', 8, 116, '(61 ) 2103-2250');
insert into cidade(id, nome, idestado) values (117, 'Brasília',7);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (117, 'Campus Planaltina','DF 128 Km 21, Planaltina, Zona Rural.', 8, 117, '(61 ) 2196-2653');
insert into cidade(id, nome, idestado) values (118, 'Brasília',7);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (118, 'Campus Riacho Fundo','QOF 01 QN 7 Conjunto 22, , Riacho Fundo I.', 8, 118, '(61 ) 2103-2343');
insert into cidade(id, nome, idestado) values (119, 'Brasília',7);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (119, 'Campus Samambaia','CEF 619 - QN 619, Área Especial 01, SAMAMBAIA, SAMAMBAIA NORTE.', 8, 119, '(61 ) 2103-2300');
insert into cidade(id, nome, idestado) values (120, 'Brasília',7);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (120, 'Campus São Sebastião','Quadra 2, AE Área Especial 02 Centro de Múltiplas Funções, São Bartolomeu (São Sebastião).', 8, 120, '(61 ) 2193-8130');
insert into cidade(id, nome, idestado) values (121, 'Brasília',7);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (121, 'Campus Taguatinga','Quadra QNM 40, Área Especial 1, Taguatinga Norte (Taguatinga).', 8, 121, '(61 ) 2103-2200');
insert into cidade(id, nome, idestado) values (122, 'Brasília',7);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (122, 'Campus Taguatinga Centro','Quadra 300, Avenida Monjolo, Chácara 22, Núcleo Rural Monjolo, Recanto das Emas.', 8, 122, '(61 ) 2196-2050');
insert into instituicao(id, nome, sigla,endereco, idestado) values (9,'Instituto Federal De Educação, Ciência E Tecnologia Do Espírito Santo','IFES','Avenida Rio Branco, , Santa Lúcia.',8);
insert into cidade(id, nome, idestado) values (123, 'Alegre',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (123, 'Campus Alegre','Rua Principal , Caixa Postal 47, Distrito de Rive.', 9, 123, '(28 ) 3552-8131');
insert into cidade(id, nome, idestado) values (124, 'Aracruz',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (124, 'Campus Aracruz','Avenida Morobá, Adjacente a Prefeitura de Aracruz, Morobá.', 9, 124, '(27 ) 3256-0958');
insert into cidade(id, nome, idestado) values (125, 'Viana',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (125, 'Campus Avançado Viana','Rodovia BR 262, Km 12, , Universal.', 9, 125, '(27 ) 3246-1700');
insert into cidade(id, nome, idestado) values (126, 'Barra de São Francisco',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (126, 'Campus Barra De São Francisco','Av. Dona Minelvina Garcia de Lima , , Centro.', 9, 126, '(27 ) 3756-5536');
insert into cidade(id, nome, idestado) values (127, 'Cachoeiro de Itapemirim',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (127, 'Campus Cacheiro Do Itapemirim','AC Caixa Postal nº 727-29300-970, Bairro BNH, Cachoeiro de Itapemirim Praça Jerônimo Monteiro-ES, Br 482, Rodovia Cachoeiro x Alegre, Bairro Fazenda Morro Grande .', 9, 127, '(28 ) 3526-9020');
insert into cidade(id, nome, idestado) values (128, 'Cariacica',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (128, 'Campus Cariacica','Rodovia Governador José Sette, , Itacibá.', 9, 128, '(27 ) 3246-1600');
insert into cidade(id, nome, idestado) values (129, 'Santa Maria de Jetibá',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (129, 'Campus Centro Serrano',' Estrada Guilherme João Frederico Kruger, , Caramuru.', 9, 129, '(27 ) 2234');
insert into cidade(id, nome, idestado) values (130, 'Colatina',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (130, 'Campus Colatina','Avenida Arino Gomes Leal, , Santa Margarida.', 9, 130, '(27 ) 3723-1500');
insert into cidade(id, nome, idestado) values (131, 'Guarapari',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (131, 'Campus Guarapari','Estrada para Tartaruga, , Muquiçaba.', 9, 131, '(27 ) 3261-9900');
insert into cidade(id, nome, idestado) values (132, 'Ibatiba',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (132, 'Campus Ibatiba','Rua 7 de Novembro, , Centro.', 9, 132, '(28 ) 3543-1335');
insert into cidade(id, nome, idestado) values (133, 'Colatina',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (133, 'Campus Itapina','BR 259 KM 70, Caixa Postal 256, Ifes Campus Itapina - Antiga Escola Agrot. Fed. de Colatina.', 9, 133, '(27 ) 3723-1200');
insert into cidade(id, nome, idestado) values (134, 'Linhares',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (134, 'Campus Linhares','Avenida Filogônio Peixoto, Antiga Fanorte, Aviso.', 9, 134, '(27 ) 3264-5700');
insert into cidade(id, nome, idestado) values (135, 'Montanha',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (135, 'Campus Montanha','Rua Principal, , São Sebastião do Norte.', 9, 135, '(27 ) 3754-3950');
insert into cidade(id, nome, idestado) values (136, 'Nova Venécia',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (136, 'Campus Nova Venécia','Rodovia Miguel Curry Carneiro, , Santa Luzia.', 9, 136, '(27 ) 3752-4300');
insert into cidade(id, nome, idestado) values (137, 'Piúma',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (137, 'Campus Piúma','Rua Augusto Costa de Oliveira, , Praia Doce.', 9, 137, '(28 ) 3520-0600');
insert into cidade(id, nome, idestado) values (138, 'Santa Teresa',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (138, 'Campus Santa Teresa','Rodovia ES 080, Km 21, EAFST, São João de Petrópolis.', 9, 138, '(27 ) 3259-7878');
insert into cidade(id, nome, idestado) values (139, 'São Mateus',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (139, 'Campus São Mateus','Rodovia BR-101 Norte, , Litorâneo.', 9, 139, '(27 ) 3767-7000');
insert into cidade(id, nome, idestado) values (140, 'Serra',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (140, 'Campus Serra','Rodovia ES-010, km 6,5, Manguinhos.', 9, 140, '(27 ) 3348-9202');
insert into cidade(id, nome, idestado) values (141, 'Venda Nova do Imigrante',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (141, 'Campus Venda Nova Do Imigrante','Avenida Elizabeth Minete Perim, atrás do polentão, São Rafael.', 9, 141, '(28 ) 3546-2357');
insert into cidade(id, nome, idestado) values (142, 'Vila Velha',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (142, 'Campus Vila Velha','Avenida Ministro Salgado Filho, , Soteco.', 9, 142, '(27 ) 3149-0700');
insert into cidade(id, nome, idestado) values (143, 'Vitória',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (143, 'Campus Vitória','Avenida Vitória, , Jucutuquara.', 9, 143, '(27 ) 3331-2110');
insert into cidade(id, nome, idestado) values (144, 'Vitória',8);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (144, 'Polo De Inovação Vitória','Avenida Vitória, , Jucutuquara.', 9, 144, '()');
insert into instituicao(id, nome, sigla,endereco, idestado) values (10,'Instituto Federal De Educação, Ciência E Tecnologia De Goiás','IFGO','Avenida Assis Chateaubriand, , Setor Oeste.',9);
insert into cidade(id, nome, idestado) values (145, 'Anápolis',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (145, 'Campus Anápolis','Avenida Pedro Ludovico s/n, , Reni Cury.', 10, 145, '(62 ) 3310-2800');
insert into cidade(id, nome, idestado) values (146, 'Aparecida de Goiânia',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (146, 'Campus Aparecida De Goiânia','Avenida Universitária Vereador Vagner da Silva Ferreira, Qd. 1, Lt 1-A, Parque Itatiaia, Parque Itatiaia.', 10, 146, '(62 ) 3507-5950');
insert into cidade(id, nome, idestado) values (147, 'Formosa',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (147, 'Campus Formosa','Rua 64, Esquina com a rua 11, Parque Lago.', 10, 147, '(61 ) 3642-9450');
insert into cidade(id, nome, idestado) values (148, 'Goiânia',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (148, 'Campus Goiânia','Rua 75, PREDIO, Setor Central.', 10, 148, '(62 ) 3227-2767');
insert into cidade(id, nome, idestado) values (149, 'Goiânia',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (149, 'Campus Goiânia Oeste','Avenida C 198, Qd. 500, Jardim América.', 10, 149, '(62 ) 3251-9827');
insert into cidade(id, nome, idestado) values (150, 'Inhumas',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (150, 'Campus Inhumas','Avenida Universitária s/n, , Vale das Goiabeiras.', 10, 150, '(62 ) 3514-9501');
insert into cidade(id, nome, idestado) values (151, 'Itumbiara',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (151, 'Campus Itumbiara','Avenida Furnas, Village Imperial, Village Imperial.', 10, 151, '(64 ) 3432-5600');
insert into cidade(id, nome, idestado) values (152, 'Jataí',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (152, 'Campus Jataí','Rua Maria Vieira Cunha, Àrea Institucional 01, Residencial Flamboyant.', 10, 152, '(64 ) 3605-0800');
insert into cidade(id, nome, idestado) values (153, 'Luziânia',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (153, 'Campus Luziânia','Rua São Bartolomeu, área especial, Vila Esperança.', 10, 153, '(61 ) 3622-9700');
insert into cidade(id, nome, idestado) values (154, 'Senador Canedo',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (154, 'Campus Senador Canedo','Rua Firmino Rodrigues do Nascimento, Qd. 1F, Lotes 21 e 22, Jardim Todos os Santos.', 10, 154, '(62 ) 9374-1784');
insert into cidade(id, nome, idestado) values (155, 'Uruaçu',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (155, 'Campus Uruaçu','Rua Isabel Fernandes Carvalho, qd. 28 e 29, Setor Central.', 10, 155, '(62 ) 3357-3004');
insert into instituicao(id, nome, sigla,endereco, idestado) values (11,'Instituto Federal De Educação, Ciência E Tecnologia Goiano','IFGO','Rua 88, , Setor Sul.',9);
insert into cidade(id, nome, idestado) values (156, 'Catalão',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (156, 'Campus Avançado Catalão',', Av. 20 de Agosto , Centro.', 11, 156, '(64 ) 9206-9103');
insert into cidade(id, nome, idestado) values (157, 'Cristalina',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (157, 'Campus Avançado Cristalina','Rua Araguaia, Loteamento 71 - Caixa Postal 166, Setor Oeste.', 11, 157, '(61 ) 3612-8500');
insert into cidade(id, nome, idestado) values (158, 'Ipameri',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (158, 'Campus Avançado De Ipameri','Avenida Vereador José Benevenuto Filho Qd. 11, , Setor Universitário.', 11, 158, '(64 ) 3491-8400');
insert into cidade(id, nome, idestado) values (159, 'Hidrolândia',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (159, 'Campus Avançado Hidrolândia',', Estrada São Braz, Zona Rural.', 11, 159, '(64 ) 8404-9337');
insert into cidade(id, nome, idestado) values (160, 'Campos Belos',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (160, 'Campus Campos Belos','Rua B H Foreman, Chácara Asa Branca, Zona Rural.', 11, 160, '(62 ) 9826-8780');
insert into cidade(id, nome, idestado) values (161, 'Ceres',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (161, 'Campus Ceres','GO 154, KM 03, Cx. Postal 51, Zona Rural.', 11, 161, '(62 ) 3307-7100');
insert into cidade(id, nome, idestado) values (162, 'Iporá',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (162, 'Campus Iporá','Avenida Oeste S/N, Rodovia GO-060 - Saída para Piranhas, Santa Catarina.', 11, 162, '(64 ) 3674-0400');
insert into cidade(id, nome, idestado) values (163, 'Morrinhos',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (163, 'Campus Morrinhos','Br 153, Km 633, caixa postal , Zona Rural.', 11, 163, '(64 ) 3413-0737');
insert into cidade(id, nome, idestado) values (164, 'Posse',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (164, 'Campus Posse','Rua Correntina, , setor Dom Prudêncio.', 11, 164, '(62 ) 3481-3613');
insert into cidade(id, nome, idestado) values (165, 'Rio Verde',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (165, 'Campus Rio Verde','RodoviaSul Goiana km 01, , Zona Rural.', 11, 165, '(64 ) 3620-5600');
insert into cidade(id, nome, idestado) values (166, 'Trindade',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (166, 'Campus Trindade','Avenida Wilson Monteiro da Rocha c/ Hélio Nogueira Silva, , Setor Cristina II.', 11, 166, '(62 ) 3605-3600');
insert into cidade(id, nome, idestado) values (167, 'Urutaí',9);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (167, 'Campus Urutai','Rodovia Geraldo Silva Nascimento, Km 2.5, Zona Rural.', 11, 167, '(64 ) 3465-1900');
insert into instituicao(id, nome, sigla,endereco, idestado) values (12,'Instituto Federal De Educação, Ciência E Tecnologia De Mato Grosso','IFMT','Avenida Senador Filinto Müller, , Duque de Caxias .',11);
insert into cidade(id, nome, idestado) values (168, 'Alta Floresta',11);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (168, 'Campus Alta Floresta','Rua A, , Centro.', 12, 168, '(66 ) 3512-7000');
insert into cidade(id, nome, idestado) values (169, 'Diamantino',11);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (169, 'Campus Avançado Diamantino','Rodovia: Senador Roberto Campos, km 02, MT 240, Centro.', 12, 169, '(65 ) 3616-4100');
insert into cidade(id, nome, idestado) values (170, 'Guarantã do Norte',11);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (170, 'Campus Avançado Guarantã Do Norte','Rua dos Cajueiros, , Centro.', 12, 170, '(65 ) 9649-9668');
insert into cidade(id, nome, idestado) values (171, 'Lucas do Rio Verde',11);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (171, 'Campus Avançado Lucas De Rio Verde','Av. Universitária, , Parque das Emas .', 12, 171, '(65 ) 3616-4100');
insert into cidade(id, nome, idestado) values (172, 'Sinop',11);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (172, 'Campus Avançado Sinop','Rua das Avencas, , Setor Comercial.', 12, 172, '(65 ) 9676-4750');
insert into cidade(id, nome, idestado) values (173, 'Tangará da Serra',11);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (173, 'Campus Avançado Tangará Da Serra','Rua José de Oliveira, Setor Norte, Vila Horizonte.', 12, 173, '(65 ) 3616-4100');
insert into cidade(id, nome, idestado) values (174, 'Barra do Garças',11);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (174, 'Campus Barra Do Garças','RUA DE ACESSO A ESCOLA MUNICIPAL AGROPECUARIA, PROXIMA AO LOTEAMENTO BR 070, .', 12, 174, '(66 ) 3402-0100');
insert into cidade(id, nome, idestado) values (175, 'Cuiabá',11);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (175, 'Campus Bela Vista/cuiabá','Avenida Vereador Juliano da Costa Marques, , Bela Vista.', 12, 175, '(65 ) 3318-5100');
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (179, 'Campus Cuiabá','Rua Zulmira Canavarros, , Centro Norte.', 12, 175, '(65 ) 3318');
insert into cidade(id, nome, idestado) values (176, 'Cáceres',11);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (176, 'Campus Cáceres','Av. Dos Ramires, , Distrito Insdustrial.', 12, 176, '(65 ) 3221-2600');
insert into cidade(id, nome, idestado) values (177, 'Campo Novo do Parecis',11);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (177, 'Campus Campo Novo Do Parecis','Rodovia MT 235, km 12, Zona Rural,Cx. Postal nº 100 , , Zona Rural.', 12, 177, '(65 ) 3382-6201');
insert into cidade(id, nome, idestado) values (178, 'Confresa',11);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (178, 'Campus Confresa','Av. Vilmar Fernandes , , Setor Santa Luzia.', 12, 178, '(66 ) 3564-2600');
insert into cidade(id, nome, idestado) values (180, 'Juína',11);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (180, 'Campus Juína','Linha M, , Setor Chácara zona rural.', 12, 180, '(66 ) 3566-7300');
insert into cidade(id, nome, idestado) values (181, 'Pontes e Lacerda',11);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (181, 'Campus Pontes E Lacerda','Rodovia MT 473 esquina com Rodovia MT 246, acesso à Vila Matão, Estrada para Vila Matão, Zona Rural.', 12, 181, '(65 ) 3266-8210');
insert into cidade(id, nome, idestado) values (182, 'Primavera do Leste',11);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (182, 'Campus Primavera Do Leste','Rua Curitiba, , Centro.', 12, 182, '()');
insert into cidade(id, nome, idestado) values (183, 'Rondonópolis',11);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (183, 'Campus Rondonópolis','RUA ANANIAS MARTINS DE SOUZA, , VILA MINEIRA.', 12, 183, '(65 ) 3027-2305');
insert into cidade(id, nome, idestado) values (184, 'Santo Antônio do Leverger',11);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (184, 'Campus São Vicente','lllll, ççççç, Palmeiras.', 12, 184, '(65 ) 3341-2133');
insert into cidade(id, nome, idestado) values (185, 'Sorriso',11);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (185, 'Campus Sorriso','Avenida dos Universitários, caixa postal 1063, Santa Clara.', 12, 185, '(66 ) 3545-3700');
insert into cidade(id, nome, idestado) values (186, 'Várzea Grande',11);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (186, 'Campus Várzea Grande','Avenida Tiradentes, , Jardim Manaíra.', 12, 186, '(65 ) 3691-8000');
insert into instituicao(id, nome, sigla,endereco, idestado) values (13,'Instituto Federal De Educação, Ciência E Tecnologia Do Maranhão','IFMA','Avenida Marechal Castelo Branco, , São Francisco.',10);
insert into cidade(id, nome, idestado) values (187, 'Açailândia',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (187, 'Campus Açailândia','Avenida Projetada, , Vila Progresso.', 13, 187, '(99 ) 3592-2903');
insert into cidade(id, nome, idestado) values (188, 'Alcântara',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (188, 'Campus Alcântara','Rua Grande, , Centro.', 13, 188, '( )');
insert into cidade(id, nome, idestado) values (189, 'Araioses',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (189, 'Campus Araioses','Avenida Doutor Paulo Ramos, , Conceição.', 13, 189, '(98 ) 8421-2761');
insert into cidade(id, nome, idestado) values (190, 'Carolina',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (190, 'Campus Avançado Carolina','Praça do Estudante, , Centro.', 13, 190, '(99 ) 8402-6394');
insert into cidade(id, nome, idestado) values (191, 'Porto Franco',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (191, 'Campus Avançado Porto Franco','Praça da Bandeira, , Centro.', 13, 191, '()');
insert into cidade(id, nome, idestado) values (192, 'Rosário',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (192, 'Campus Avançado Rosário','Avenida Vitorino Freire , , Centro.', 13, 192, '(98 ) 8481-4133');
insert into cidade(id, nome, idestado) values (193, 'Bacabal',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (193, 'Campus Bacabal','Avenida João Alberto de Sousa, Bairrro Areal, Centro.', 13, 193, '(99 ) 8448-7697');
insert into cidade(id, nome, idestado) values (194, 'Barra do Corda',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (194, 'Campus Barra Do Corda','RODOVIA BR 226,Km 303, , VILA NENZIN.', 13, 194, '(99 ) 8419-7529');
insert into cidade(id, nome, idestado) values (195, 'Barreirinhas',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (195, 'Campus Barreirinhas','MA 225, Santa Cruz, Centro.', 13, 195, '(98 ) 8461-5242');
insert into cidade(id, nome, idestado) values (196, 'Buriticupu',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (196, 'Campus Buriticupu','Rua Deputado Gastão Vieira, , Vila Mansueto.', 13, 196, '(98 ) 3664-6457');
insert into cidade(id, nome, idestado) values (197, 'Caxias',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (197, 'Campus Caxias','MA 349 KM 02 GLEBA BURITI DO PARAÍSO, POVOADO LAMEGO, Rodovia MA 34, Zona rural.', 13, 197, '(99 ) 8809-3785');
insert into cidade(id, nome, idestado) values (198, 'São Luís',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (198, 'Campus Centro Histórico','Rua Afonso Pena, , Centro.', 13, 198, '(98 ) 3222-6374');
insert into cidade(id, nome, idestado) values (199, 'Codó',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (199, 'Campus Codó','Praça Ferreira Bayma, Antiga EAF - Codó, Centro.', 13, 199, '(99 ) 3669-3000');
insert into cidade(id, nome, idestado) values (200, 'Coelho Neto',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (200, 'Campus Coelho Neto','Avenida Antônio Guimarães, MA-034, Olho DAguinha.', 13, 200, '(98 ) 3473-4557');
insert into cidade(id, nome, idestado) values (201, 'Grajaú',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (201, 'Campus Grajaú','BR 226 SENTIDO GRAJAÚ BARRA DO CORDA, , VILA NOVA.', 13, 201, '(99 ) 8422-2630');
insert into cidade(id, nome, idestado) values (202, 'Imperatriz',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (202, 'Campus Imperatriz','Avenida Newton Bello, , Santa Rita.', 13, 202, '(99 ) 3525-4745');
insert into cidade(id, nome, idestado) values (203, 'Itapecuru Mirim',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (203, 'Campus Itapecuru Mirim','Rua Prof. João Batista Pereira dos Santos, , Centro.', 13, 203, '(98 ) 9992-1741');
insert into cidade(id, nome, idestado) values (204, 'São Luís',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (204, 'Campus Maracanã','Avenida dos Curiós, , Vila Esperança.', 13, 204, '(98 ) 3313-8585');
insert into cidade(id, nome, idestado) values (205, 'São Luís',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (205, 'Campus Monte Castelo','Avenida Getúlio Vargas, , Monte Castelo.', 13, 205, '(98 ) 3218-9136');
insert into cidade(id, nome, idestado) values (206, 'Pedreiras',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (206, 'Campus Pedreiras','Rodovia MA-381, km 0, S/N,, , Diogo.', 13, 206, '(99 )');
insert into cidade(id, nome, idestado) values (207, 'Pinheiro',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (207, 'Campus Pinheiro','ESTRADA DE PACAS, Enseada, Centro.', 13, 207, '( )');
insert into cidade(id, nome, idestado) values (208, 'Santa Inês',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (208, 'Campus Santa Inês','Avenida Marechal Castelo Branco, Proximo a AABB, Centro.', 13, 208, '(98 ) 8461-3403');
insert into cidade(id, nome, idestado) values (209, 'São João dos Patos',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (209, 'Campus São João Dos Patos','Avenida Pe. Santiago, , Santiago/Expossertão.', 13, 209, '(99 ) 9841-1996');
insert into cidade(id, nome, idestado) values (210, 'São José de Ribamar',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (210, 'Campus São José De Ribamar','MA 201, km 12, , Piçarreira.', 13, 210, '(98 ) 8435-7202');
insert into cidade(id, nome, idestado) values (211, 'São Raimundo das Mangabeiras',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (211, 'Campus São Raimundo Das Mangabeiras','Br 230, Km 319, Fazenda Paraíso, São João.', 13, 211, '(99 ) 3532-1804');
insert into cidade(id, nome, idestado) values (212, 'Timon',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (212, 'Campus Timon','Avenida Luís Firmino de Sousa, Vila Bandeirante, São Benedito.', 13, 212, '(99 ) 9842-2579');
insert into cidade(id, nome, idestado) values (213, 'Viana',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (213, 'Campus Viana','AV. LUIS ANTONIO ALMEIDA, S/N, CENTRO, Centro.', 13, 213, '(98 ) 3351-1800');
insert into cidade(id, nome, idestado) values (214, 'Zé Doca',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (214, 'Campus Zé Doca','Rua da Tecnologia, Rua da Tecnologia, 215 - Vila Amorim, Centro.', 13, 214, '(98 ) 3655-4951');
insert into cidade(id, nome, idestado) values (215, 'São Luís',10);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (215, 'Colégio Universitário/ufma','RUA GABRIELA MISTRAL, , VILA PALMEIRA.', 13, 215, '()');
insert into instituicao(id, nome, sigla,endereco, idestado) values (14,'Instituto Federal De Educação, Ciência E Tecnologia De Mato Grosso Do Sul','IFMS','Rua Ceará, , Santa Fé.',12);
insert into cidade(id, nome, idestado) values (216, 'Campo Grande',12);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (216, 'Campus Campo Grande','Rua Taquari, , Santo Antônio.', 14, 216, '(67 ) 3357-8509');
insert into cidade(id, nome, idestado) values (217, 'Aquidauana',12);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (217, 'Campus De Aquidauana','Rua José Tadao Arima, , Vila Ycaraí.', 14, 217, '(67 ) 3240-1600');
insert into cidade(id, nome, idestado) values (218, 'Corumbá',12);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (218, 'Campus De Corumbá','Rua Delamare, , Centro.', 14, 218, '(67 ) 3234-9100');
insert into cidade(id, nome, idestado) values (219, 'Coxim',12);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (219, 'Campus De Coxim','Rua Salime Tanure, , Santa Tereza.', 14, 219, '(67 ) 3291-9600');
insert into cidade(id, nome, idestado) values (220, 'Ponta Porã',12);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (220, 'Campus De Ponta Porã','Rodovia BR 463 km 14, Caixa Postal 287, Centro.', 14, 220, '(67 ) 3437-9600');
insert into cidade(id, nome, idestado) values (221, 'Três Lagoas',12);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (221, 'Campus De Três Lagoas','Rua Antônio Estevão Leal, , Jardim das Paineiras.', 14, 221, '(67 ) 3509-9500');
insert into cidade(id, nome, idestado) values (222, 'Dourados',12);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (222, 'Campus Dourados','Rua Filinto Müller, , Jardim Canaã I.', 14, 222, '(67 ) 3410-8500');
insert into cidade(id, nome, idestado) values (223, 'Jardim',12);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (223, 'Campus Jardim','Rodovia BR 060, Saída para Bela Vista, .', 14, 223, '(67 ) 3209-0200');
insert into cidade(id, nome, idestado) values (224, 'Naviraí',12);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (224, 'Campus Naviraí','Rua Hilda, , Boa Vista.', 14, 224, '(67 ) 3409-2500');
insert into cidade(id, nome, idestado) values (225, 'Nova Andradina',12);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (225, 'Campus Nova Andradina','Rodovia 473 MS km 23, Fazenda Santa Bárbara, .', 14, 225, '(67 ) 3378-9510');
insert into instituicao(id, nome, sigla,endereco, idestado) values (15,'Instituto Federal De Educação, Ciência E Tecnologia Do Sul De Minas','IFMG','Avenida Vicente Simões, , Nova Pouso Alegre.',13);
insert into cidade(id, nome, idestado) values (226, 'Carmo de Minas',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (226, 'Campus Avançado Carmo De Minas',' Rua Alameda Murilo Rubião, (Antiga FUNABEM ou antiga Escola Jerônimo Fernandes), Carmo de Minas/MG., (Antiga FUNABEM ou antiga Escola Jerônimo Fernandes), Carmo de Minas/MG., Centro.', 15, 226, '(35 ) 9922-7531');
insert into cidade(id, nome, idestado) values (227, 'Três Corações',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (227, 'Campus Avançado Três Corações',' RUA CORONEL EDGAR CAVALCANTI, , Chácara das Rosas..', 15, 227, '(35 ) 9851-2695');
insert into cidade(id, nome, idestado) values (228, 'Inconfidentes',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (228, 'Campus Inconfidentes','PRAÇA TIRADENTES, , Centro.', 15, 228, '(25 ) 3464-1200');
insert into cidade(id, nome, idestado) values (229, 'Machado',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (229, 'Campus Machado','Km 03 Rodovia Machado-Paraguaçu, , Bairro Santo Antonio.', 15, 229, '(35 ) 3295-9700');
insert into cidade(id, nome, idestado) values (230, 'Muzambinho',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (230, 'Campus Muzambinho','Estrada de Muzambinho, Km 35 - Bairro Morro Preto - Cx. Postal 02 - CEP: 37890-000 - Fone: (35) 3571-5051 - Muzambinho/MG., CAIXA POSTAL 02, MORRO PRETO.', 15, 230, '(35 ) 3571-5051');
insert into cidade(id, nome, idestado) values (231, 'Passos',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (231, 'Campus Passos',' Rua 3 ou Rua Mário Ribola , , Nossa Senhora da Penha II.', 15, 231, '(35 ) 3526-4856');
insert into cidade(id, nome, idestado) values (232, 'Poços de Caldas',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (232, 'Campus Poços De Caldas','Rua Coronel Virgílio Silva, , Vila Nova.', 15, 232, '(35 ) 3713-5120');
insert into cidade(id, nome, idestado) values (233, 'Pouso Alegre',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (233, 'Campus Pouso Alegre','Avenida Maria da Conceição Santos, Ao lado do Aeroporto Municipal de Pouso Alegre, Parque Real.', 15, 233, '(35 ) 3427-6600');
insert into cidade(id, nome, idestado) values (234, 'Araxá',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (234, 'Uned Araxa','Avenida Ministro Olavo Drummond, , São Geraldo .', 15, 234, '(34 ) 3669-4500');
insert into cidade(id, nome, idestado) values (235, 'Belo Horizonte',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (235, 'Uned Belo Horizonte','Avenida Amazonas, , Nova Suíssa.', 15, 235, '(31 ) 3319-7007');
insert into cidade(id, nome, idestado) values (236, 'Contagem',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (236, 'Uned Contagem','Avenida Doutor Antônio Chagas Diniz, , Cidade Industrial.', 15, 236, '()');
insert into cidade(id, nome, idestado) values (237, 'Curvelo',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (237, 'Uned Curvelo','rua Santa Rita, Bairro Alto Santa Rita, Centro.', 15, 237, '(38 ) 3729-3900');
insert into cidade(id, nome, idestado) values (238, 'Divinópolis',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (238, 'Uned Divinópolis','Rua Monte Santo, , Santo Antônio.', 15, 238, '( )');
insert into cidade(id, nome, idestado) values (239, 'Leopoldina',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (239, 'Uned Leopoldina','Rua Doutor Custódio Junqueira, , Centro.', 15, 239, '( )');
insert into cidade(id, nome, idestado) values (240, 'Nepomuceno',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (240, 'Uned Nepomuceno','Rua Ana Idalina, Av. Monsenhor Luiz de Gonzaga, 103, Centro, Centro.', 15, 240, '(35 ) 3861-2737');
insert into cidade(id, nome, idestado) values (241, 'Timóteo',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (241, 'Uned Timóteo','Rua Dezenove de Novembro, , Centro Norte.', 15, 241, '(31 ) 3849-1799');
insert into cidade(id, nome, idestado) values (242, 'Varginha',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (242, 'Uned Varginha','Avenida dos Imigrantes, Bairro Cidade Nova, Vargem.', 15, 242, '( )');
insert into cidade(id, nome, idestado) values (243, 'Arcos',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (243, 'Campus Avançado Arcos','Avenida JK, , Bairro Industrial II.', 15, 243, '(37 ) 3351-5173');
insert into cidade(id, nome, idestado) values (244, 'Conselheiro Lafaiete',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (244, 'Campus Avançado Conselheiro Lafaiete','Rua Padre Teófilo Reyn, , São Dimas.', 15, 244, '(31 ) 3769-2591');
insert into cidade(id, nome, idestado) values (245, 'Piumhi',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (245, 'Campus Avançado De Piumhi','Rua SEVERO VELOSO, , Nova Esperança.', 15, 245, '(37 ) 3371-3353');
insert into cidade(id, nome, idestado) values (246, 'Ipatinga',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (246, 'Campus Avançado Ipatinga','Rua Maria Silva, , Veneza.', 15, 246, '(31 ) 2513-5125');
insert into cidade(id, nome, idestado) values (247, 'Itabirito',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (247, 'Campus Avançado Itabirito','Rua José Benedito, , Santa Efigênia.', 15, 247, '(31 ) 3561-1269');
insert into cidade(id, nome, idestado) values (248, 'Ponte Nova',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (248, 'Campus Avançado Ponte Nova','Praça José Emiliano Dias, , Centro.', 15, 248, '(31 ) 9906-0889');
insert into cidade(id, nome, idestado) values (249, 'Bambuí',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (249, 'Campus Bambuí','FAZENDA VARGINHA, Estrada Bambuí/Medeiros, Km 05 - CAIXA POSTAL 05, ZONA RURAL.', 15, 249, '(37 ) 3431-4913');
insert into cidade(id, nome, idestado) values (250, 'Betim',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (250, 'Campus Betim','Rua Karen Lessa Rodrigues, , Arquipélago Verde.', 15, 250, '(31 ) 3532-5930');
insert into cidade(id, nome, idestado) values (251, 'Congonhas',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (251, 'Campus Congonhas','Avenida Michael Pereira De Souza, , Centro.', 15, 251, '(31 ) 3731-8104');
insert into cidade(id, nome, idestado) values (252, 'Formiga',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (252, 'Campus Formiga','Rua São Luiz Gonzaga, , São Luiz .', 15, 252, '(37 ) 3322-8434');
insert into cidade(id, nome, idestado) values (253, 'Governador Valadares',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (253, 'Campus Governador Valadares','Avenida Minas Gerais, Via de Prolongamento da Avenida Minas Gerais, Ouro Verde.', 15, 253, '(33 ) 3272-5400');
insert into cidade(id, nome, idestado) values (254, 'Ouro Branco',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (254, 'Campus Ouro Branco','Rua Afonso Sardinha, , Pioneiros.', 15, 254, '(31 ) 2137-5700');
insert into cidade(id, nome, idestado) values (255, 'Ouro Preto',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (255, 'Campus Ouro Preto','Rua Pandiá Calógeras,898, , Morro do Cruzeiro.', 15, 255, '(31 ) 3559-2110');
insert into cidade(id, nome, idestado) values (256, 'Ribeirão das Neves',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (256, 'Campus Ribeirão Das Neves','RUA TAIOBEIRAS, , SEVILHA B.', 15, 256, '(31 ) 3627-2303');
insert into cidade(id, nome, idestado) values (257, 'Sabará',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (257, 'Campus Sabará','Avenida Serra da Piedade, , Conjunto Morada da Serra.', 15, 257, '(31 ) 98667840');
insert into cidade(id, nome, idestado) values (258, 'Santa Luzia',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (258, 'Campus Santa Luzia','Rua Érico Veríssimo, , Londrina (São Benedito).', 15, 258, '(31 ) 3637-5283');
insert into cidade(id, nome, idestado) values (259, 'São João Evangelista',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (259, 'Campus São João Evangelista','Avenida Primeiro de Junho, Caixa Postal 01, Centro.', 15, 259, '(33 ) 3412-2900');
insert into cidade(id, nome, idestado) values (260, 'Formiga',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (260, 'Polo De Inovação Formiga','Rua Principal, , Boa Esperança.', 15, 260, '()');
insert into cidade(id, nome, idestado) values (261, 'Almenara',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (261, 'Campus Almenara','Rodovia BR-367, Km-111, , Zona Rural.', 15, 261, '(33 ) 3508-1106');
insert into cidade(id, nome, idestado) values (262, 'Araçuaí',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (262, 'Campus Araçuaí','Rodovia BR 367, Km 278, , Zona Rural.', 15, 262, '(38 ) 3201-3096');
insert into cidade(id, nome, idestado) values (263, 'Arinos',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (263, 'Campus Arinos','Rodovia MG 202, Km 407, , Zona Rural.', 15, 263, '(38 ) 8409-2948');
insert into cidade(id, nome, idestado) values (264, 'Janaúba',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (264, 'Campus Avançado Janaúba','AVENIDA BRASIL, , Centro.', 15, 264, '(38 ) 3201-3050');
insert into cidade(id, nome, idestado) values (265, 'Porteirinha',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (265, 'Campus Avançado Porteirinha','Praça da Matriz, , Mulungu de Minas.', 15, 265, '()');
insert into cidade(id, nome, idestado) values (266, 'Diamantina',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (266, 'Campus Diamantina','Fazenda Biri-Biri, , Zona Rural.', 15, 266, '()');
insert into cidade(id, nome, idestado) values (267, 'Januária',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (267, 'Campus Januária','Fazenda São Geraldo, Estrada Januária Km 6, , Bom Jardim.', 15, 267, '(38 ) 3629-4600');
insert into cidade(id, nome, idestado) values (268, 'Montes Claros',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (268, 'Campus Montes Claros','Rua Dois, , Village do Lago I.', 15, 268, '(38 ) 2103-4141');
insert into cidade(id, nome, idestado) values (269, 'Pirapora',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (269, 'Campus Pirapora','Rua Humberto Mallard, , Santos Dumont.', 15, 269, '(38 ) 3749-6950');
insert into cidade(id, nome, idestado) values (270, 'Salinas',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (270, 'Campus Salinas','Rodovia MG-404, Km 2, , Zona Rural.', 15, 270, '(38 ) 3841-7000');
insert into cidade(id, nome, idestado) values (271, 'Teófilo Otoni',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (271, 'Campus Teófilo Otoni','Rua Mocambi, , Padre Eustáquio.', 15, 271, '(38 ) 3201-3050');
insert into cidade(id, nome, idestado) values (272, 'Bom Sucesso',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (272, 'Campus Avançado Bom Sucesso','Praça São José, , SAO JOSE.', 15, 272, '(32 ) 8426-8681');
insert into cidade(id, nome, idestado) values (273, 'Cataguases',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (273, 'Campus Avançado Cataguases','Rua José Maria Figueiredo Reis, , Centro.', 15, 273, '()');
insert into cidade(id, nome, idestado) values (274, 'Ubá',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (274, 'Campus Avançado Ubá','Rua Cônego Abreu e Silva, , Centro.', 15, 274, '()');
insert into cidade(id, nome, idestado) values (275, 'Barbacena',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (275, 'Campus Barbacena','Rua Monsenhor José Augusto, , São José.', 15, 275, '(32 ) 3693-8607');
insert into cidade(id, nome, idestado) values (276, 'Juiz de Fora',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (276, 'Campus Juiz De Fora','Rua Bernardo Mascarenhas, , Fábrica.', 15, 276, '(32 ) 4009-3001');
insert into cidade(id, nome, idestado) values (277, 'Manhuaçu',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (277, 'Campus Manhuaçu','Rodovia Vitoria a Minas, km 593, Centro.', 15, 277, '(32 ) 3257-4100');
insert into cidade(id, nome, idestado) values (278, 'Muriaé',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (278, 'Campus Muriaé','Av. Monteiro de Castro, , Da Barra.', 15, 278, '(32 ) 3696-2850');
insert into cidade(id, nome, idestado) values (279, 'Rio Pomba',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (279, 'Campus Rio Pomba','Av. Dr. José Sebastião da Paixão, , Lindo Vale.', 15, 279, '(32 ) 3571-5700');
insert into cidade(id, nome, idestado) values (280, 'Santos Dumont',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (280, 'Campus Santos Dumont','Rua Técnico Panamá, 45, Quarto Depósito .', 15, 280, '(32 ) 3251-1565');
insert into cidade(id, nome, idestado) values (281, 'São João del Rei',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (281, 'Campus São João Del Rei','Rua Américo Davim Filho, Ao lado do Parque de Exposição, Vila São Paulo .', 15, 281, '(32 ) 3379-4500');
insert into cidade(id, nome, idestado) values (282, 'Campina Verde',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (282, 'Campus Avançado Campina Verde','Rodovia BR 364 KM 153, Fazenda Campo Belo, .', 15, 282, '(34 ) 3326-1102');
insert into cidade(id, nome, idestado) values (283, 'Uberaba',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (283, 'Campus Avançado Uberaba Parque Tecnológico','Avenida Doutor Florestan Fernandes, , Univerdecidade.', 15, 283, '(34 ) 3326-1400');
insert into cidade(id, nome, idestado) values (284, 'Ituiutaba',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (284, 'Campus Ituiutaba','Rua do Córrego Pirapitinga , , Ituiutaba/MG.', 15, 284, '(34 ) 3271-4000');
insert into cidade(id, nome, idestado) values (285, 'Paracatu',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (285, 'Campus Paracatu','Rodovia MG-188  KM 167, Km 167, Fazendinha.', 15, 285, '(38 ) 3365-0300');
insert into cidade(id, nome, idestado) values (286, 'Patos de Minas',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (286, 'Campus Patos De Minas','Rodovia BR-365, Em frente ao posto Patão, Planalto.', 15, 286, '(34 ) 3820-8700');
insert into cidade(id, nome, idestado) values (287, 'Patrocínio',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (287, 'Campus Patrocínio','Av Líria Terezinha Lassi Capuano, , Chácara das Rosas.', 15, 287, '(34 ) 3515-2100');
insert into cidade(id, nome, idestado) values (288, 'Uberaba',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (288, 'Campus Uberaba','Rua João Batista Ribeiro, , Distrito Industrial II.', 15, 288, '(34 ) 3319-6000');
insert into cidade(id, nome, idestado) values (289, 'Uberlândia',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (289, 'Campus Uberlândia','Fazenda Sobradinho, sn - caixa postal 592, , .', 15, 289, '(34 ) 3233-8899');
insert into cidade(id, nome, idestado) values (290, 'Uberlândia',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (290, 'Campus Uberlândia Centro','Rua Blanche Galassi, , Morada da Colina.', 15, 290, '(34 ) 3221-4801');
insert into cidade(id, nome, idestado) values (291, 'Uberlândia',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (291, 'Escola Técnica De Saúde/ufu','Universidade Federal de Uberlândia Avenida João Pinheiro, 565, , Centro.', 15, 291, '()');
insert into cidade(id, nome, idestado) values (292, 'Uberaba',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (292, 'Centro De Formação Em Saúde/uftm','Praça Manoel Terra, , Estados Unidos.', 15, 292, '()');
insert into cidade(id, nome, idestado) values (293, 'Florestal',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (293, 'Centro De Ensino E Desenvolvimento Agrário/ufv','Praça Francisco Valadares, , Centro.', 15, 293, '(31 ) 3536-2266');
insert into cidade(id, nome, idestado) values (294, 'Belo Horizonte',13);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (294, 'Colégio Técnico/ufmg','Universidade Federal de Minas Gerais Avenida Presidente Antônio Carlos, 6627, , Pampulha.', 15, 294, '()');
insert into instituicao(id, nome, sigla,endereco, idestado) values (16,'Instituto Federal De Educação, Ciência E Tecnologia Do Pará','IFPA','Avenida João Paulo II, , Castanheira.',14);
insert into cidade(id, nome, idestado) values (295, 'Abaetetuba',14);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (295, 'Campus Abaetetuba','Rua Rio de Janeiro, , Francilândia.', 16, 295, '( )');
insert into cidade(id, nome, idestado) values (296, 'Altamira',14);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (296, 'Campus Altamira','Rodovia Ernesto Acioly, KM 03, Nova Colina.', 16, 296, '()');
insert into cidade(id, nome, idestado) values (297, 'Ananindeua',14);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (297, 'Campus Ananindeua','Avenida Arterial - 5A, Antiga Granja do Governador, Cidade Nova.', 16, 297, '(91 ) 8823-9916');
insert into cidade(id, nome, idestado) values (298, 'Vigia',14);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (298, 'Campus Avançado Vigia','Rua São Sebastião, Próximo a orla do Arapiranga e a Igreja de São Sebastião, Arapiranga.', 16, 298, '(91 ) 9185-0023');
insert into cidade(id, nome, idestado) values (299, 'Belém',14);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (299, 'Campus Belém','Avenida Almirante Barroso, Entre Travessas Mariz e Barros e Timbó, São Brás.', 16, 299, '(91 ) 3201-1701');
insert into cidade(id, nome, idestado) values (300, 'Bragança',14);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (300, 'Campus Bragança','Rua da Escola Agrícola, , Vila Sinhá.', 16, 300, '( )');
insert into cidade(id, nome, idestado) values (301, 'Breves',14);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (301, 'Campus Breves','Rua Antonio Fulgencio, 2237, Parque Universitário, Aeroporto.', 16, 301, '()');
insert into cidade(id, nome, idestado) values (302, 'Cametá',14);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (302, 'Campus Cametá','Av. Gentil Bittencourt, , Centro.', 16, 302, '(91 ) 9917-7984');
insert into cidade(id, nome, idestado) values (303, 'Castanhal',14);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (303, 'Campus Castanhal','Rodovia BR 316, Km 63, , Saudade.', 16, 303, '(91 ) 3412-1604');
insert into cidade(id, nome, idestado) values (304, 'Conceição do Araguaia',14);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (304, 'Campus Conceição Do Araguaia','Avenida Couto Magalhães, , Centro.', 16, 304, '( )');
insert into cidade(id, nome, idestado) values (305, 'Itaituba',14);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (305, 'Campus Itaituba','Estrada do Jacarezinho, Km 05, Rodovia Transamazônica km 05, Fazenda Modelo s/n., Maria Madalena.', 16, 305, '(93 ) 9160-6045');
insert into cidade(id, nome, idestado) values (306, 'Marabá',14);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (306, 'Campus Marabá','Folha 22, Quadra Especial, Lote Especial II, , Nova Marabá.', 16, 306, '(94 ) 2101-6310');
insert into cidade(id, nome, idestado) values (307, 'Marabá',14);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (307, 'Campus Nova Marabá','Rodovia BR 155, km 25, Caixa Postal 41, Zona Rural.', 16, 307, '(94 ) 3324-5391');
insert into cidade(id, nome, idestado) values (308, 'Óbidos',14);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (308, 'Campus Óbidos','Avenida Prefeito Nelson Souza, , Distrito Industrial.', 16, 308, '()');
insert into cidade(id, nome, idestado) values (309, 'Paragominas',14);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (309, 'Campus Paragominas','Rua das Tulipas, quadras 62 e 63. Loteamento Cidade Jardim. , , Promissão I.', 16, 309, '()');
insert into cidade(id, nome, idestado) values (310, 'Parauapebas',14);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (310, 'Campus Parauapebas','Rodovia PA 275, ao lado da portaria Carajás, Km 68,8, , União.', 16, 310, '()');
insert into cidade(id, nome, idestado) values (311, 'Santarém',14);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (311, 'Campus Santarém','Avenida Marechal Castelo Branco, , Interventoria.', 16, 311, '(93 ) 210-1046');
insert into cidade(id, nome, idestado) values (312, 'Tucuruí',14);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (312, 'Campus Tucuruí','Rua Porto Colômbia, , Vila Permanente.', 16, 312, '(94 ) 3778-2101');
insert into cidade(id, nome, idestado) values (313, 'Belém',14);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (313, 'Escola De Teatro E Dança/ufpa','Trav. D. Romualdo de Seixas, , Umarizal.', 16, 313, '()');
insert into cidade(id, nome, idestado) values (314, 'Belém',14);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (314, 'Escola De Música/ufpa','Praça da República, , Campina.', 16, 314, '(91 ) 3241-5801');
insert into instituicao(id, nome, sigla,endereco, idestado) values (17,'Instituto Federal De Educação, Ciência E Tecnologia Da Paraíba','IFPB','Avenida João da Mata, , Jaguaribe.',15);
insert into cidade(id, nome, idestado) values (315, 'Cabedelo',15);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (315, 'Campus Avançado Cabedelo Centro','Rua Duque de Caxias, BR 230 Km1, Centro.', 17, 315, '(83 ) 8741-6168');
insert into cidade(id, nome, idestado) values (316, 'João Pessoa',15);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (316, 'Campus Avançado João Pessoa Mangabeira','Avenida Hilton Souto Maior, , Mangabeira.', 17, 316, '(83 ) 9928-0890');
insert into cidade(id, nome, idestado) values (317, 'Soledade',15);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (317, 'Campus Avançado Soledade','Rua Doutor Gouveia Nóbrega, , Centro.', 17, 317, '()');
insert into cidade(id, nome, idestado) values (318, 'Cabedelo',15);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (318, 'Campus Cabedelo','Rua Santa Rita de Cássia, , Jardim Camboinha.', 17, 318, '(83 ) 3248-5400');
insert into cidade(id, nome, idestado) values (319, 'Cajazeiras',15);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (319, 'Campus Cajazeiras','Rua José Antônio da Silva , , Jardim Oásis.', 17, 319, '(83 ) 3532-4100');
insert into cidade(id, nome, idestado) values (320, 'Campina Grande',15);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (320, 'Campus Campina Grande','Rua Tranquilino Coelho Lemos, , Dinamérica.', 17, 320, '(83 ) 2102-6200');
insert into cidade(id, nome, idestado) values (321, 'Catolé do Rocha',15);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (321, 'Campus Catolé Do Rocha','Rua Ruy Carneiro 293, , ão José .', 17, 321, '()');
insert into cidade(id, nome, idestado) values (322, 'Esperança',15);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (322, 'Campus Esperança','RODOVIA PB 121 , , Centro.', 17, 322, '(83 ) 9122-8014');
insert into cidade(id, nome, idestado) values (323, 'Guarabira',15);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (323, 'Campus Guarabira','Rua José Américo de Almeida  , , Nordeste I.', 17, 323, '(83 ) 8195-6465');
insert into cidade(id, nome, idestado) values (324, 'Itabaiana',15);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (324, 'Campus Itabaiana','PB 054 KM 16 , , Centro.', 17, 324, '()');
insert into cidade(id, nome, idestado) values (325, 'Itaporanga',15);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (325, 'Campus Itaporanga','BR 361 - , , Centro.', 17, 325, '()');
insert into cidade(id, nome, idestado) values (326, 'João Pessoa',15);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (326, 'Campus João Pessoa','Avenida Primeiro de Maio, , Jaguaribe.', 17, 326, '(83 ) 3612-1102');
insert into cidade(id, nome, idestado) values (327, 'Monteiro',15);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (327, 'Campus Monteiro','Ac. Rodovia PB-264, , Vila Santa Maria.', 17, 327, '(83 ) 3351-3700');
insert into cidade(id, nome, idestado) values (328, 'Patos',15);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (328, 'Campus Patos','AC Patos Rua Presidente Epitácio Pessoa, 69, , Jatobá-Alto da Tubiba.', 17, 328, '(83 ) 3423-9676');
insert into cidade(id, nome, idestado) values (329, 'Picuí',15);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (329, 'Campus Picuí','Acesso à Rodovia PB 151 , , Cenecista.', 17, 329, '(83 ) 3371-2727');
insert into cidade(id, nome, idestado) values (330, 'Princesa Isabel',15);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (330, 'Campus Princesa Isabel','AC Rodovia PB-426, S/N, Sítio Barro Vermelho, Zona Rural.', 17, 330, '(83 ) 9192-0331');
insert into cidade(id, nome, idestado) values (331, 'Santa Rita',15);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (331, 'Campus Santa Rita','km 48, Rodovia BR-230, , Popular.', 17, 331, '(83 ) 3217-1779');
insert into cidade(id, nome, idestado) values (332, 'Sousa',15);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (332, 'Campus Sousa','Rua Presidente Tancredo Neves , , JARDIM SORRILANDIA.', 17, 332, '(83 ) 3522-2727');
insert into cidade(id, nome, idestado) values (333, 'Bananeiras',15);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (333, 'Colégio Agrícola Vidal De Negreiros/ufpb','Rua Principal, , Distritos.', 17, 333, '()');
insert into cidade(id, nome, idestado) values (334, 'João Pessoa',15);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (334, 'Escola Técnica De Saúde/ufpb','Universidade Federal da Paraíba - Campus I Jardim Universitário, s/n, Centro de Ciências da Saúde, Castelo Branco.', 17, 334, '(83 ) 3216-7400');
insert into cidade(id, nome, idestado) values (335, 'Cajazeiras',15);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (335, 'Escola Técnica De Saúde De Cajazeiras/ufcg','Rua Sérgio Moreira de Figueiredo, , Casas Populares.', 17, 335, '(83 ) 3532-2061');
insert into instituicao(id, nome, sigla,endereco, idestado) values (18,'Universidade Tecnológica Federal Do Paraná','IFPR','CEFET PR - Centro Federal de Educação Tecnológica do Paraná Avenida Sete de Setembro, 3165, Qd, Centro.',16);
insert into cidade(id, nome, idestado) values (336, 'Apucarana',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (336, 'Campus Apucarana',', , .', 18, 336, '()');
insert into cidade(id, nome, idestado) values (337, 'Campo Mourão',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (337, 'Campus Campo Mourão',', , .', 18, 337, '()');
insert into cidade(id, nome, idestado) values (338, 'Cornélio Procópio',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (338, 'Campus Cornelio Procopio','Rua Principal, , Centro.', 18, 338, '( )');
insert into cidade(id, nome, idestado) values (339, 'Curitiba',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (339, 'Campus Curitiba','CEFET PR - Centro Federal de Educação Tecnológica do Paraná Avenida Sete de Setembro, 3165, , Centro.', 18, 339, '( )');
insert into cidade(id, nome, idestado) values (340, 'Dois Vizinhos',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (340, 'Campus Dois Vizinhos',', , .', 18, 340, '()');
insert into cidade(id, nome, idestado) values (341, 'Francisco Beltrão',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (341, 'Campus Francisco Beltrão',', , .', 18, 341, '()');
insert into cidade(id, nome, idestado) values (342, 'Londrina',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (342, 'Campus Londrina',', , .', 18, 342, '()');
insert into cidade(id, nome, idestado) values (343, 'Medianeira',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (343, 'Campus Medianeira',', , .', 18, 343, '()');
insert into cidade(id, nome, idestado) values (344, 'Pato Branco',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (344, 'Campus Pato Branco',', , .', 18, 344, '()');
insert into cidade(id, nome, idestado) values (345, 'Ponta Grossa',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (345, 'Campus Ponta Grossa','Rua Monteiro Lobato, , Jardim Carvalho.', 18, 345, '( )');
insert into cidade(id, nome, idestado) values (346, 'Toledo',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (346, 'Campus Toledo',', , .', 18, 346, '()');
insert into cidade(id, nome, idestado) values (347, 'Assis Chateaubriand',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (347, 'Campus Assis Chateaubriand','Avenida Cívica, , Centro Cívico.', 18, 347, '(44 ) 9760-6619');
insert into cidade(id, nome, idestado) values (348, 'Astorga',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (348, 'Campus Avançado Astorga','Rodovia PR 454, , Contorno Norte.', 18, 348, '(41 ) 3595-7646');
insert into cidade(id, nome, idestado) values (349, 'Barracão',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (349, 'Campus Avançado Barracão','Rodovia PRT 163, Km 01, , Parque Industrial.', 18, 349, '(46 ) 8816-6367');
insert into cidade(id, nome, idestado) values (350, 'Coronel Vivida',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (350, 'Campus Avançado Coronel Vivida','Rodovia PR 562, , Flor da Serra.', 18, 350, '(46 ) 3232-2960');
insert into cidade(id, nome, idestado) values (351, 'Goioerê',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (351, 'Campus Avançado Goioerê','Rodovia PR 180 Trevo UEM, Ao Lado da Polícia Rodoviária, Trevo UEM.', 18, 351, '(44 ) 3522-5432');
insert into cidade(id, nome, idestado) values (352, 'Quedas do Iguaçu',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (352, 'Campus Avançado Quedas Do Iguaçu','Rua Marginal Imbirama, Saída para Linha Tapuí, Rio das Cobras.', 18, 352, '(41 ) 8808-8973');
insert into cidade(id, nome, idestado) values (353, 'Campo Largo',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (353, 'Campus Campo Largo','Rua Engenheiro Tourinho, , Vila Solene.', 18, 353, '(41 ) 3208-8201');
insert into cidade(id, nome, idestado) values (354, 'Capanema',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (354, 'Campus Capanema','Rua Cariris, , .', 18, 354, '(46 ) 9916-3774');
insert into cidade(id, nome, idestado) values (355, 'Cascavel',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (355, 'Campus Cascavel','Avenida das Pombas, , Floresta.', 18, 355, '(45 ) 3305-2100');
insert into cidade(id, nome, idestado) values (356, 'Colombo',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (356, 'Campus Colombo','Rua Vereador Antônio Chemin, Próximo ao Sítio do Caqui, São Gabriel.', 18, 356, '(41 ) 3535-1835');
insert into cidade(id, nome, idestado) values (357, 'Curitiba',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (357, 'Campus Curitiba','Rua João Negrão, , Rebouças.', 18, 357, '(41 ) 3535-1651');
insert into cidade(id, nome, idestado) values (358, 'Foz do Iguaçu',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (358, 'Campus Foz Do Iguaçu','Avenida Araucária, , Vila Residencial A.', 18, 358, '(45 ) 3422-5322');
insert into cidade(id, nome, idestado) values (359, 'Irati',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (359, 'Campus Irati','Rua Pedro Koppe, , Vila Matilde.', 18, 359, '(42 ) 2104-0200');
insert into cidade(id, nome, idestado) values (360, 'Ivaiporã',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (360, 'Campus Ivaiporã','PR466 Gleba Pindaúva, Secção C, Parte 2, , Gleba Pindaúva.', 18, 360, '(43 ) 3472-1229');
insert into cidade(id, nome, idestado) values (361, 'Jacarezinho',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (361, 'Campus Jacarezinho','Avenida Doutor Tito, campus IFPR, Jardim Panorma.', 18, 361, '(43 ) 2122-0100');
insert into cidade(id, nome, idestado) values (362, 'Jaguariaíva',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (362, 'Campus Jaguariaíva','Rodovia PR 151, Km 23, Cidade Alta.', 18, 362, '(41 ) 8887-0260');
insert into cidade(id, nome, idestado) values (363, 'Londrina',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (363, 'Campus Londrina','Rua João XXIII, Praça Horace Wells, Judith.', 18, 363, '(43 ) 3878-6100');
insert into cidade(id, nome, idestado) values (364, 'Palmas',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (364, 'Campus Palmas','Avenida Bento Munhoz da Rocha Neto, , Rodovia PRT 280 - Trevo Codapar.', 18, 364, '(46 ) 3263-8950');
insert into cidade(id, nome, idestado) values (365, 'Paranaguá',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (365, 'Campus Paranaguá','Rua Antonio Carlos Rodrigues, PR 407 com a Rua Antonio Carlos Rodrigues, PortoSeguro.', 18, 365, '(41 ) 3721-8300');
insert into cidade(id, nome, idestado) values (366, 'Paranavaí',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (366, 'Campus Paranavaí','Avenida Jose Felipe Tequinha, , Jardim das Nações.', 18, 366, '(44 ) 3482-0100');
insert into cidade(id, nome, idestado) values (367, 'Pinhais',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (367, 'Campus Pinhais','Rua Humberto de Alencar Castello Branco, , Jardim Amélia.', 18, 367, '(41 ) 8852-5280');
insert into cidade(id, nome, idestado) values (368, 'Pitanga',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (368, 'Campus Pitanga','Rua Jose de Alencar, , Jardim Planalto.', 18, 368, '(41 ) 8808-8920');
insert into cidade(id, nome, idestado) values (369, 'Telêmaco Borba',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (369, 'Campus Telêmaco Borba','Rodovia PR-160, Km 19,5, Bandeirantes.', 18, 369, '(42 ) 3221-3000');
insert into cidade(id, nome, idestado) values (370, 'Umuarama',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (370, 'Campus Umuarama','Rodovia PR 323, , Parque Industrial.', 18, 370, '(44 ) 3361-6200');
insert into cidade(id, nome, idestado) values (371, 'União da Vitória',16);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (371, 'Campus União Da Vitória','Avenida Paula Freitas, , São Braz.', 18, 371, '(42 ) 3135-4800');
insert into instituicao(id, nome, sigla,endereco, idestado) values (19,'Instituto Federal De Educação, Ciência E Tecnologia De Pernambuco','IFPE','Avenida Professor Luiz Freire, Cidade Universitária, Curado.',17);
insert into cidade(id, nome, idestado) values (372, 'Afogados da Ingazeira',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (372, 'Campus Afogados Da Ingazeira','Rua Édson de Barbosa de Araújo, Rua Projetada, Campinho (área de expansão urbana a 500 m do estádio de Futebol Vianão)., Manoela Valadares.', 19, 372, '(87 ) 8863-9073');
insert into cidade(id, nome, idestado) values (373, 'Barreiros',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (373, 'Campus Barreiros','Fazenda Sapé , , SAPÉ.', 19, 373, '(81 ) 3675-1268');
insert into cidade(id, nome, idestado) values (374, 'Belo Jardim',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (374, 'Campus Belo Jardim','Avenida Sebastião Rodrigues da Costa, , São Pedro.', 19, 374, '(81 ) 3726-1355');
insert into cidade(id, nome, idestado) values (375, 'Cabo de Santo Agostinho',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (375, 'Campus Cabo De Santo Agostinho','RUA SEBASTIAO JOVENTINO, , DESTILARIA CENTRAL PRESIDENTE VARGAS.', 19, 375, '(81 ) 8193-6240');
insert into cidade(id, nome, idestado) values (376, 'Caruaru',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (376, 'Campus Caruaru','Estrada Alto do Moura, , Alto do Moura.', 19, 376, '(81 ) 8193-5479');
insert into cidade(id, nome, idestado) values (377, 'Garanhuns',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (377, 'Campus Garanhuns','Rua Padre Agobar Valença, , Severiano Moraes Filho.', 19, 377, '(87 ) 3761-9106');
insert into cidade(id, nome, idestado) values (378, 'Igarassu',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (378, 'Campus Igarassu','RODOVIA BR-101 NORTE, KM 44, , CRUZ DE REBOUÇAS.', 19, 378, '(81 ) 8804-2000');
insert into cidade(id, nome, idestado) values (379, 'Ipojuca',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (379, 'Campus Ipojuca','Rod PE 60, Km 14, , Centro.', 19, 379, '(81 ) 3311-2531');
insert into cidade(id, nome, idestado) values (380, 'Jaboatão dos Guararapes',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (380, 'Campus Jaboatão Dos Guararapes','RUA JOSÉ BRAZ MOSCOW, , PIEDADE.', 19, 380, '(81 ) 9949-4044');
insert into cidade(id, nome, idestado) values (381, 'Olinda',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (381, 'Campus Olinda','RUA SÉRGIO GODOY DE VASCONCELOS, , JARDIM ATLÂNTICO.', 19, 381, '(81 ) 8193-6396');
insert into cidade(id, nome, idestado) values (382, 'Palmares',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (382, 'Campus Palmares','RODOVIA BR-101 SUL, KM 185, , CAMPUS UNIVERSITÁRIO.', 19, 382, '(81 ) 9627-3113');
insert into cidade(id, nome, idestado) values (383, 'Paulista',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (383, 'Campus Paulista','Avenida Rodolfo Aureliano, , Vila Torres Galvão.', 19, 383, '(81 ) 9243-8756');
insert into cidade(id, nome, idestado) values (384, 'Pesqueira',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (384, 'Campus Pesqueira','Rod BR 232, Km 214, , Prado.', 19, 384, '(81 ) 3835-1796');
insert into cidade(id, nome, idestado) values (385, 'Recife',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (385, 'Campus Recife','Avenida Professor Luiz Freire, , Curado.', 19, 385, '(81 ) 2125-1640');
insert into cidade(id, nome, idestado) values (386, 'Vitória de Santo Antão',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (386, 'Campus Vitória De Santo Antão','Propriedade Terra Preta, Zona rural, Matriz.', 19, 386, '(81 ) 3523-1130');
insert into cidade(id, nome, idestado) values (387, 'Floresta',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (387, 'Campus Floresta','Rua Projetada, Bairro Caetano II, Caetano II.', 19, 387, '(87 ) 3877-1104');
insert into cidade(id, nome, idestado) values (388, 'Ouricuri',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (388, 'Campus Ouricuri','Rua Adolfo Soares, ESTRADA DO TAMBORIL, Centro.', 19, 388, '(87 ) 8122-2215');
insert into cidade(id, nome, idestado) values (389, 'Petrolina',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (389, 'Campus Petrolina','Rodovia BR-407, , Jardim São Paulo.', 19, 389, '(87 ) 2101-4300');
insert into cidade(id, nome, idestado) values (390, 'Petrolina',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (390, 'Campus Petrolina Zona Rural','AC Petrolina Praça Dom Malan, 63, Instituto Federal, Centro.', 19, 390, '(87 ) 2101-8050');
insert into cidade(id, nome, idestado) values (391, 'Salgueiro',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (391, 'Campus Salgueiro','BR 232 kM 808 S/N, Instituto Federal, Zona Rural.', 19, 391, '(87 ) 2101-2360');
insert into cidade(id, nome, idestado) values (392, 'Santa Maria da Boa Vista',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (392, 'Campus Santa Maria Da Boa Vista','Rua Dr. Sousa Filho, Campus Santa Maria, Centro.', 19, 392, '(87 ) 3869-2920');
insert into cidade(id, nome, idestado) values (393, 'Serra Talhada',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (393, 'Campus Serra Talhada','Rodovia PE 320, a 9 Km do centro, (87) 8106-6368, Zona Rural do município.', 19, 393, '(87 ) 9901-5677');
insert into cidade(id, nome, idestado) values (394, 'São Lourenço da Mata',17);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (394, 'Colégio Agrícola Dom Agostinho Ikas/ufrpe','Avenida Doutor Francisco Correia, , Centro.', 19, 394, '()');
insert into instituicao(id, nome, sigla,endereco, idestado) values (20,'Instituto Federal De Educação, Ciência E Tecnologia Do Piauí','IFPI','Avenida Jânio Quadros, , Santa Izabel.',18);
insert into cidade(id, nome, idestado) values (395, 'Angical do Piauí',18);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (395, 'Campus Angical','Rua Nascimento, , Centro.', 20, 395, '( )');
insert into cidade(id, nome, idestado) values (396, 'Teresina',18);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (396, 'Campus Avançado Dirceu Arcoverde','Rua Dona Amélia Rubim, , Renascença.', 20, 396, '(86 ) 3131-1444');
insert into cidade(id, nome, idestado) values (397, 'José de Freitas',18);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (397, 'Campus Avançado José De Freitas','Pi 115 KM 3, , Centro.', 20, 397, '(86 ) 3131-1444');
insert into cidade(id, nome, idestado) values (398, 'Pio IX',18);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (398, 'Campus Avançado Pio Ix','PI 142, , .', 20, 398, '(86 ) 3131-1444');
insert into cidade(id, nome, idestado) values (399, 'Campo Maior',18);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (399, 'Campus Campo Maior','AC Campo Maior Avenida José Paulino, 353, , Centro.', 20, 399, '()');
insert into cidade(id, nome, idestado) values (400, 'Cocal',18);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (400, 'Campus Cocal','AC Cocal Avenida Joaquim Vieira Brito, 227, , Centro.', 20, 400, '()');
insert into cidade(id, nome, idestado) values (401, 'Corrente',18);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (401, 'Campus Corrente','Rua 06, , Nova Corrente.', 20, 401, '( )');
insert into cidade(id, nome, idestado) values (402, 'Floriano',18);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (402, 'Campus Floriano','Rua Francisco Urquiza Machado, , Meladão.', 20, 402, '(89 ) 3515-2246');
insert into cidade(id, nome, idestado) values (403, 'Oeiras',18);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (403, 'Campus Oeiras','Praça da Vitória, , Centro.', 20, 403, '()');
insert into cidade(id, nome, idestado) values (404, 'Parnaíba',18);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (404, 'Campus Parnaíba','BR 402 - ESTRADA PARNAÍBA-CHAVAL(CE) - KM 3, , BAIXA DO ARAGÃO.', 20, 404, '(86 ) 3323-7466');
insert into cidade(id, nome, idestado) values (405, 'Paulistana',18);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (405, 'Campus Paulistana','Rodovia BR 407, , Centro.', 20, 405, '( )');
insert into cidade(id, nome, idestado) values (406, 'Pedro II',18);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (406, 'Campus Pedro Ii','Travessa João Mendes, , Centro.', 20, 406, '()');
insert into cidade(id, nome, idestado) values (407, 'Picos',18);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (407, 'Campus Picos','RUA PROJETADA, VILA PANTANAL, .', 20, 407, '(89 ) 3422-7767');
insert into cidade(id, nome, idestado) values (408, 'Piripiri',18);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (408, 'Campus Piripiri','Avenida Rios dos Matos, , Germano.', 20, 408, '( )');
insert into cidade(id, nome, idestado) values (409, 'São Raimundo Nonato',18);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (409, 'Campus São Raimundo Nonato','Rodovia BR 020 s/n - Primavera, Rodovia, Primavera.', 20, 409, '( )');
insert into cidade(id, nome, idestado) values (410, 'Teresina',18);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (410, 'Campus Teresina - Central','Praça da Liberdade, , Centro.', 20, 410, '(86 ) 3215-5203');
insert into cidade(id, nome, idestado) values (411, 'Teresina',18);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (411, 'Campus Teresina Zona Sul','Avenida Pedro Freitas, , São Pedro.', 20, 411, '(86 ) 3211-6608');
insert into cidade(id, nome, idestado) values (412, 'Uruçuí',18);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (412, 'Campus Uruçuí','Rodovia PI 247, , Centro.', 20, 412, '( )');
insert into cidade(id, nome, idestado) values (413, 'Floriano',18);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (413, 'Colégio Amilcar Ferreira Sobral/ufpi','Br 343 Km 3,5, , Meladão.', 20, 413, '(89 ) 3522-1768');
insert into cidade(id, nome, idestado) values (414, 'Teresina',18);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (414, 'Colégio Agrícola De Teresina/ufpi','Avenida Universitária, , Ininga.', 20, 414, '()');
insert into cidade(id, nome, idestado) values (415, 'Bom Jesus',18);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (415, 'Colégio Agrícola De Bom Jesus/ufpi','Planalto Horizonte, , Centro.', 20, 415, '(89 ) 3562-2067');
insert into cidade(id, nome, idestado) values (416, 'Rio de Janeiro',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (416, 'Colégio Pedro Ii','CAMPO DE SÃO CRISTÓVÃO, 3º ANDAR, São Cristóvão.', 20, 416, '(21 ) 3891-1026');
insert into cidade(id, nome, idestado) values (417, 'Rio de Janeiro',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (417, 'Campus Centro','Avenida Marechal Floriano, , Centro.', 20, 417, '(21 ) 3213-3101');
insert into cidade(id, nome, idestado) values (418, 'Duque de Caxias',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (418, 'Campus Duque De Caxias','Rua Doutor Manoel Reis, , CENTENÁRIO.', 20, 418, '(21 ) 2652-2915');
insert into cidade(id, nome, idestado) values (419, 'Rio de Janeiro',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (419, 'Campus Engenho Novo I','Rua Barão do Bom Retiro, , Engenho Novo.', 20, 419, '(21 ) 3297-9425');
insert into cidade(id, nome, idestado) values (420, 'Rio de Janeiro',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (420, 'Campus Engenho Novo Ii','Rua Barão do Bom Retiro, , Engenho Novo.', 20, 420, '(21 ) 3297-9400');
insert into cidade(id, nome, idestado) values (421, 'Rio de Janeiro',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (421, 'Campus Humaitá I','Rua João Afonso, , Humaitá.', 20, 421, '(21 ) 2536-2840');
insert into cidade(id, nome, idestado) values (422, 'Rio de Janeiro',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (422, 'Campus Humaitá Ii','Rua do Humaitá, , Humaitá.', 20, 422, '(21 ) 2536-2800');
insert into cidade(id, nome, idestado) values (423, 'Niterói',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (423, 'Campus Niterói','Rua General Castrioto, , Barreto.', 20, 423, '(21 ) 2628-0966');
insert into cidade(id, nome, idestado) values (424, 'Rio de Janeiro',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (424, 'Campus Realengo I','Rua Professor Carlos Wenceslau, , Realengo.', 20, 424, '()');
insert into cidade(id, nome, idestado) values (425, 'Rio de Janeiro',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (425, 'Campus Realengo Ii','Rua Bernardo de Vasconcelos, , Realengo.', 20, 425, '()');
insert into cidade(id, nome, idestado) values (426, 'Rio de Janeiro',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (426, 'Campus São Cristovão I','Campo São Cristóvão, , São Cristóvão.', 20, 426, '()');
insert into cidade(id, nome, idestado) values (427, 'Rio de Janeiro',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (427, 'Campus São Cristóvão Ii','Campo São Cristóvão, , São Cristóvão.', 20, 427, '()');
insert into cidade(id, nome, idestado) values (428, 'Rio de Janeiro',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (428, 'Campus São Cristóvão Iii','Rua Pirauba, , São Cristóvão.', 20, 428, '()');
insert into cidade(id, nome, idestado) values (429, 'Rio de Janeiro',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (429, 'Campus Tijuca I','Rua Caruso, , Tijuca.', 20, 429, '()');
insert into cidade(id, nome, idestado) values (430, 'Rio de Janeiro',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (430, 'Campus Tijuca Ii','Rua São Francisco Xavier, , Tijuca.', 20, 430, '()');
insert into cidade(id, nome, idestado) values (431, 'Cambuci',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (431, 'Campus Avançado Cambuci','Estrada Cambuci-Três Irmãos, KM 5, Fazenda Santo Antão, Zona Rural.', 20, 431, '(22 ) 9883-7884');
insert into cidade(id, nome, idestado) values (432, 'Maricá',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (432, 'Campus Avançado Maricá','RJ-114, Estrada de Ubatiba, , Ubatiba, 2º distrito.', 20, 432, '(22 ) 2726-2810');
insert into cidade(id, nome, idestado) values (433, 'São João da Barra',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (433, 'Campus Avançado São João Da Barra','BR-356, Km 181, , Perigoso.', 20, 433, '(22 ) 2741-4069');
insert into cidade(id, nome, idestado) values (434, 'Bom Jesus do Itabapoana',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (434, 'Campus Bom Jesus De Itabapoana','Av. Dário Vieira Borges, , Parque do Trevo.', 20, 434, '(22 ) 3833-9850');
insert into cidade(id, nome, idestado) values (435, 'Cabo Frio',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (435, 'Campus Cabo Frio','RJ-102, ESTRADA CABO FRIO / BÚZIOS, KM 7, , BAÍA FORMOSA.', 20, 435, '(22 ) 2645-9516');
insert into cidade(id, nome, idestado) values (436, 'Campos dos Goytacazes',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (436, 'Campus Campos Centro','Rua Doutor Siqueira, , Parque Dom Bosco.', 20, 436, '(22 ) 2726-2906');
insert into cidade(id, nome, idestado) values (437, 'Campos dos Goytacazes',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (437, 'Campus Campos Guarus','Avenida Souza Mota, , Parque Fundão.', 20, 437, '(22 ) 2737-2400');
insert into cidade(id, nome, idestado) values (438, 'Itaperuna',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (438, 'Campus Itaperuna','BR 356, Km 3, Caixa Postal 121381, Cidade Nova.', 20, 438, '(22 ) 3826-2300');
insert into cidade(id, nome, idestado) values (439, 'Macaé',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (439, 'Campus Macaé','Rodovia Amaral Peixoto, km 164, , Imboassica.', 20, 439, '(22 ) 2796-5016');
insert into cidade(id, nome, idestado) values (440, 'Quissamã',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (440, 'Campus Quissamã','Av. Amilcar Pereira da Silva, , Piteiras.', 20, 440, '(22 ) 2768-9200');
insert into cidade(id, nome, idestado) values (441, 'Santo Antônio de Pádua',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (441, 'Campus Santo Antônio De Pádua','Rua João Jasbick, , Aeroporto.', 20, 441, '(22 ) 2726-2810');
insert into cidade(id, nome, idestado) values (442, 'Campos dos Goytacazes',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (442, 'Polo De Inovação Campos Dos Goytacazes','Rua Doutor Siqueira, , Parque Tamandaré.', 20, 442, '()');
insert into cidade(id, nome, idestado) values (443, 'Arraial do Cabo',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (443, 'Campus Arraial Do Cabo','Estrada da Figueira, Rua José Pinto de Macedo , Figueira.', 20, 443, '(22 ) 2622-9202');
insert into cidade(id, nome, idestado) values (444, 'Mesquita',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (444, 'Campus Avançado Mesquita','Rua Paulo I, Praça João Luiz do Nascimento, , Centro.', 20, 444, '(21 ) 2797-2507');
insert into cidade(id, nome, idestado) values (445, 'Resende',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (445, 'Campus Avançado Resende','Avenida Prefeito Botafogo, , Campos Elíseos.', 20, 445, '(24 ) 3383-4907');
insert into cidade(id, nome, idestado) values (446, 'Duque de Caxias',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (446, 'Campus Duque De Caxias','Avenida República do Paraguai, , Vila Sarapuí.', 20, 446, '(21 ) 2784-6109');
insert into cidade(id, nome, idestado) values (447, 'Engenheiro Paulo de Frontin',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (447, 'Campus Engenheiro Paulo De Frontin','Avenida Maria Luiza, , Sacra Família do Tinguá.', 20, 447, '()');
insert into cidade(id, nome, idestado) values (448, 'Nilópolis',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (448, 'Campus Nilópolis','Rua Lúcio Tavares, , Centro.', 20, 448, '( )');
insert into cidade(id, nome, idestado) values (449, 'Paracambi',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (449, 'Campus Paracambi','Rua Sebastião de Lacerda, , Fábrica.', 20, 449, '(21 ) 2683-9700');
insert into cidade(id, nome, idestado) values (450, 'Pinheiral',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (450, 'Campus Pinheiral','Rua José Breves, , Centro.', 20, 450, '(24 ) 3356-8200');
insert into cidade(id, nome, idestado) values (451, 'Rio de Janeiro',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (451, 'Campus Realengo','Rua Professor Carlos Wenceslau, , Realengo.', 20, 451, '(21 ) 2691-9802');
insert into cidade(id, nome, idestado) values (452, 'São Gonçalo',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (452, 'Campus São Gonçalo','Rua José Augusto Pereira dos Santos, , Neves.', 20, 452, '(21 ) 2624-9023');
insert into cidade(id, nome, idestado) values (453, 'Volta Redonda',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (453, 'Campus Volta Redonda','Rua Antônio Barreiros, , Nossa Senhora das Graças.', 20, 453, '(24 ) 3356-9190');
insert into cidade(id, nome, idestado) values (454, 'Valença',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (454, 'Campus Valença','Rua Voluntários da Pátria, , Belo Horizonte.', 20, 454, '(24 ) 2452-1932');
insert into cidade(id, nome, idestado) values (455, 'Angra dos Reis',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (455, 'Uned Angra Dos Reis','Rua do Areal, lote 06 Quadra G, Parque Perequê (Mambucaba).', 20, 455, '(24 ) 3362-3526');
insert into cidade(id, nome, idestado) values (456, 'Itaguaí',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (456, 'Uned Itaguaí','Rodovia Mario Covas, quadra J, Distrito Industrial de Itaguaí.', 20, 456, '(21 ) 2688-3570');
insert into cidade(id, nome, idestado) values (457, 'Rio de Janeiro',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (457, 'Uned Maria Da Graça','Rua Miguel Ângelo, , Maria da Graça.', 20, 457, '(21 ) 3297-7914');
insert into cidade(id, nome, idestado) values (458, 'Nova Friburgo',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (458, 'Uned Nova Friburgo','Avenida Governador Roberto Silveira, , Prado.', 20, 458, '(22 ) 2527-1727');
insert into cidade(id, nome, idestado) values (459, 'Nova Iguaçu',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (459, 'Uned Nova Iguaçu','Estrada Adrianópolis, , Santa Rita.', 20, 459, '(21 ) 2886-8911');
insert into cidade(id, nome, idestado) values (460, 'Petrópolis',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (460, 'Uned Petrópolis','Rua do Imperador, , Centro.', 20, 460, '(24 ) 2242-5716');
insert into instituicao(id, nome, sigla,endereco, idestado) values (21,'Uned Rio De Janeiro','IFRJ','Avenida Maracanã, , Maracanã.',19);
insert into cidade(id, nome, idestado) values (461, 'Seropédica',19);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (461, 'Colégio Técnico/ufrrj','Rodovia Rio-São Paulo, BR 465, KM 7, Seropédica.', 21, 461, '(21 ) 2682-1004');
insert into instituicao(id, nome, sigla,endereco, idestado) values (22,'Instituto Federal De Educação, Ciência E Tecnologia Do Rio Grande Do Norte','IFRN','RUA RAIMUNDO FIRMINO DE OLIVEIRA, 400, CONJ ULRICK GRAFF, , .',20);
insert into cidade(id, nome, idestado) values (462, 'Apodi',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (462, 'Campus Apodi','Sitio Lagoa do Clementino S/N Zona Rural, Rodovia RN 233 KM 02, Centro APODI.', 22, 462, '(84 ) 4005-0765');
insert into cidade(id, nome, idestado) values (463, 'Lajes',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (463, 'Campus Avançado Lajes','Rodovia BR 304, Km 120 Centro, Lajes-RN, , Centro.', 22, 463, '(84 ) 4005-4116');
insert into cidade(id, nome, idestado) values (464, 'Parelhas',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (464, 'Campus Avançado Parelhas','Rua Projetada, , Juazeiro.', 22, 464, '(84 ) 9988-3560');
insert into cidade(id, nome, idestado) values (465, 'Caicó',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (465, 'Campus Caicó','Rodovia RN 288 S/N, Bairro Nova Caicó, Centro.', 22, 465, '(84 ) 4005-4102');
insert into cidade(id, nome, idestado) values (466, 'Canguaretama',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (466, 'Campus Canguaretama','Rua Otávio Lima, , Centro.', 22, 466, '()');
insert into cidade(id, nome, idestado) values (467, 'Ceará-Mirim',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (467, 'Campus Ceará-mirim','AC Ceará-Mirim Rua Coronel Pedro Oliveira Correia, 181, , Centro.', 22, 467, '(84 ) 4005-4113');
insert into cidade(id, nome, idestado) values (468, 'Currais Novos',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (468, 'Campus Currais Novos','Praça Desembargador Tomaz Salustino, Rua Manoel Lopes Filho, Bairro Valfredo Galvão, Centro.', 22, 468, '(84 ) 3412-2018');
insert into cidade(id, nome, idestado) values (469, 'Ipanguaçu',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (469, 'Campus Ipanguaçu','RN118 - Base Física, , Centro.', 22, 469, '(84 ) 3335-2303');
insert into cidade(id, nome, idestado) values (470, 'João Câmara',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (470, 'Campus João Câmara','BR 406 Km 73, BR 406 - Km 73, Perímetro Rural.', 22, 470, '(84 ) 4005-4105');
insert into cidade(id, nome, idestado) values (471, 'Macau',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (471, 'Campus Macau','Rodovia RN 221 Km 1 s/n , Conjunto da COHAB, COHAB.', 22, 471, '(84 ) 4005-4106');
insert into cidade(id, nome, idestado) values (472, 'Mossoró',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (472, 'Campus Mossoró','Rua Raimundo Firmino de Oliveira, , Alto de São Manoel.', 22, 472, '(84 ) 3315-2752');
insert into cidade(id, nome, idestado) values (473, 'Natal',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (473, 'Campus Natal Cidade Alta','Avenida Rio Branco, , Cidade Alta.', 22, 473, '(84 ) 4005-0950');
insert into cidade(id, nome, idestado) values (474, 'Natal',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (474, 'Campus Natal - Zona Norte','Rua Campos, Rua Brusque, Conjunto Santa Catarina, Potengi.', 22, 474, '(84 ) 4006-9500');
insert into cidade(id, nome, idestado) values (475, 'Nova Cruz',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (475, 'Campus Nova Cruz','Rua Antônio Viana Barbosa, , Centro.', 22, 475, '(84 ) 4005-7201');
insert into cidade(id, nome, idestado) values (476, 'Parnamirim',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (476, 'Campus Parnamirim','Rua Antônia de Lima Paiva, , Nova Esperança.', 22, 476, '(84 ) 4005-4108');
insert into cidade(id, nome, idestado) values (477, 'Pau dos Ferros',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (477, 'Campus Pau Dos Ferros','BR 405 Km 154 , Pau dos Ferros, Chico Cajá.', 22, 477, '(84 ) 3351-4812');
insert into cidade(id, nome, idestado) values (478, 'Santa Cruz',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (478, 'Campus Santa Cruz','Avenida Barão do Rio Branco, Rua São Braz, Bairro Paraiso, Centro.', 22, 478, '(84 ) 4005-2710');
insert into cidade(id, nome, idestado) values (479, 'São Gonçalo do Amarante',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (479, 'Campus São Gonçalo Do Amarante','Rua Prof Carlos Guedes Alcoforado, , Centro.', 22, 479, '(84 ) 4005-4111');
insert into cidade(id, nome, idestado) values (480, 'São Paulo do Potengi',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (480, 'Campus São Paulo Do Potengi','Rua Coronel Freire, , Centro.', 22, 480, '()');
insert into cidade(id, nome, idestado) values (481, 'Macaíba',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (481, 'Escola Agrícola De Jundiaí/ufrn','Rua Principal, , Traíras.', 22, 481, '()');
insert into cidade(id, nome, idestado) values (482, 'Natal',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (482, 'Escola De Enfermagem/ufrn','AC Universidade Federal do Rio Grande do Norte Avenida Senador Salgado Filho, 3000, , Lagoa Nova.', 22, 482, '()');
insert into cidade(id, nome, idestado) values (483, 'Natal',20);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (483, 'Escola De Música/ufrn','Avenida Passeio dos Girassóis, , Capim Macio.', 22, 483, '()');
insert into instituicao(id, nome, sigla,endereco, idestado) values (23,'Instituto Federal De Educação, Ciência E Tecnologia Sul-rio-grandense','IFRS','Rua Gonçalves Chaves, , Centro.',21);
insert into cidade(id, nome, idestado) values (484, 'Jaguarão',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (484, 'Campus Avançado Jaguarão','Rua General Osório, , Centro.', 23, 484, '(53 ) 9923-4801');
insert into cidade(id, nome, idestado) values (485, 'Novo Hamburgo',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (485, 'Campus Avançado Novo Hamburgo','RUA PINHEIRO MACHADO , , INDUSTRIAL.', 23, 485, '(51 ) 9920-7224');
insert into cidade(id, nome, idestado) values (486, 'Bagé',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (486, 'Campus Bagé','Av. Leonel de Moura Brizola (antiga Estrada do Quebracho), , Pedras Brancas.', 23, 486, '(53 ) 3247-3237');
insert into cidade(id, nome, idestado) values (487, 'Camaquã',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (487, 'Campus Camaquã','RUA ANA GONÇALVES DA SILVA, Olaria, Capela Santo Antônio.', 23, 487, '(51 ) 3671-7350');
insert into cidade(id, nome, idestado) values (488, 'Charqueadas',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (488, 'Campus Charqueadas','Rua General Balbão, , Centro.', 23, 488, '(51 ) 3658-3775');
insert into cidade(id, nome, idestado) values (489, 'Gravataí',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (489, 'Campus Gravataí','Rua Men de Sá, , Bom Sucesso.', 23, 489, '(53 ) 9116-8007');
insert into cidade(id, nome, idestado) values (490, 'Lajeado',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (490, 'Campus Lajeado','Rua Paulo Harris, , Campestre.', 23, 490, '(53 ) 9923-4126');
insert into cidade(id, nome, idestado) values (491, 'Passo Fundo',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (491, 'Campus Passo Fundo','Estrada Perimetral Leste, , Loteamento São Cristóvão II.', 23, 491, '(54 ) 3311-2916');
insert into cidade(id, nome, idestado) values (492, 'Pelotas',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (492, 'Campus Pelotas','Praça Vinte de Setembro, , Centro.', 23, 492, '(53 ) 2123-1000');
insert into cidade(id, nome, idestado) values (493, 'Pelotas',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (493, 'Campus Pelotas - Visconde Da Graça','Avenida Engenheiro Ildefonso Simões Lopes, , Três Vendas.', 23, 493, '(53 ) 3309-5554');
insert into cidade(id, nome, idestado) values (494, 'Santana do Livramento',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (494, 'Campus Santana Do Livramento','Rua Paul Harris, , Centro.', 23, 494, '(55 ) 3242-9051');
insert into cidade(id, nome, idestado) values (495, 'Sapiranga',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (495, 'Campus Sapiranga','Avenida Carlos Gilberto Weis, , Quatro Colônias.', 23, 495, '(53 ) 3599-7600');
insert into cidade(id, nome, idestado) values (496, 'Sapucaia do Sul',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (496, 'Campus Sapucaia Do Sul','Avenida Copacabana, , Piratini.', 23, 496, '(51 ) 3452-9200');
insert into cidade(id, nome, idestado) values (497, 'Venâncio Aires',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (497, 'Campus Venâncio Aires','Avenida das Indústrias, , Universitário.', 23, 497, '(51 ) 3793-4200');
insert into cidade(id, nome, idestado) values (498, 'Alvorada',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (498, 'Campus Alvorada','Rua Professor Darci Ribeiro, , Umbu.', 23, 498, '(51 ) 3483-1802');
insert into cidade(id, nome, idestado) values (499, 'Veranópolis',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (499, 'Campus Avançado Veranópolis','Rodovia RSC 470 , km 175, Sapopema.', 23, 499, '(54 ) 9182-6736');
insert into cidade(id, nome, idestado) values (500, 'Bento Gonçalves',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (500, 'Campus Bento Gonçalves','RUA OSVALDO ARANHA, , JUVENTUDE.', 23, 500, '(54 ) 3455-3200');
insert into cidade(id, nome, idestado) values (501, 'Canoas',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (501, 'Campus Canoas','Rua Doutora Maria Zélia Carneiro de Figueiredo, , Igara III.', 23, 501, '(51 ) 3415-8200');
insert into cidade(id, nome, idestado) values (502, 'Caxias do Sul',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (502, 'Campus Caxias Do Sul','Rua Avelino Antônio de Souza, , Nossa Senhora de Fátima.', 23, 502, '(54 ) 3204-2100');
insert into cidade(id, nome, idestado) values (503, 'Erechim',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (503, 'Campus Erechim','Rua Domingos Zanella, , Três Vendas.', 23, 503, '(54 ) 3321-7500');
insert into cidade(id, nome, idestado) values (504, 'Farroupilha',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (504, 'Campus Farroupilha','Rua São Vicente, , Cinquentenário.', 23, 504, '(54 ) 3260-2400');
insert into cidade(id, nome, idestado) values (505, 'Feliz',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (505, 'Campus Feliz','Princesa Isabel, , Vila Rica.', 23, 505, '(51 ) 3637-4400');
insert into cidade(id, nome, idestado) values (506, 'Ibirubá',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (506, 'Campus Ibirubá','Rua Nelsi Ribas Fritsch, , Esperança.', 23, 506, '(54 ) 3324-8100');
insert into cidade(id, nome, idestado) values (507, 'Osório',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (507, 'Campus Osório','Avenida Santos Dumont, , Albatroz.', 23, 507, '(51 ) 3601-3500');
insert into cidade(id, nome, idestado) values (508, 'Porto Alegre',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (508, 'Campus Porto Alegre','Rua Coronel Vicente, , Centro Histórico.', 23, 508, '(51 ) 3930-6002');
insert into cidade(id, nome, idestado) values (509, 'Porto Alegre',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (509, 'Campus Porto Alegre Restinga','Rua Alberto Hoffmann, , Restinga.', 23, 509, '(51 ) 3247-8400');
insert into cidade(id, nome, idestado) values (510, 'Rio Grande',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (510, 'Campus Rio Grande','Rua Engenheiro Alfredo Huch, , Centro.', 23, 510, '(53 ) 3233-8603');
insert into cidade(id, nome, idestado) values (511, 'Rolante',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (511, 'Campus Rolante','RS 239 km 17 , , Zona Rural.', 23, 511, '(51 ) 9286-3081');
insert into cidade(id, nome, idestado) values (512, 'Sertão',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (512, 'Campus Sertão','Rodovia RS 135, Distrito Eng. Luiz Englert, Engenheiro Luiz Englert.', 23, 512, '(54 ) 3345-8000');
insert into cidade(id, nome, idestado) values (513, 'Vacaria',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (513, 'Campus Vacaria','Estrada João Viterbo de Oliveira , , Distrito Federal.', 23, 513, '(54 ) 9185-9012');
insert into cidade(id, nome, idestado) values (514, 'Viamão',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (514, 'Campus Viamão','Rua Marechal Deodoro, , Centro.', 23, 514, '(54 ) 3435-7437');
insert into cidade(id, nome, idestado) values (515, 'Alegrete',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (515, 'Campus Alegrete','AC Alegrete Rua Venâncio Aires, 539, , Centro.', 23, 515, '(55 ) 3421-9600');
insert into cidade(id, nome, idestado) values (516, 'Uruguaiana',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (516, 'Campus Avançado Uruguaiana','Rua Monteiro Lobato, , Cabo Luís Quevedo.', 23, 516, '(55 ) 3413-5381');
insert into cidade(id, nome, idestado) values (517, 'Jaguari',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (517, 'Campus Jaguari','Chapadão, , 1º Distrito.', 23, 517, '(55 ) 3257-1122');
insert into cidade(id, nome, idestado) values (518, 'Júlio de Castilhos',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (518, 'Campus Júlio De Castilhos','RS 527 - Estrada de Acesso Secundário a Tupanciretã, São João do Barro Preto - , Interior.', 23, 518, '(55 ) 3271-9500');
insert into cidade(id, nome, idestado) values (519, 'Panambi',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (519, 'Campus Panambi','AC Panambi Rua Andrade Neves, 55, , Centro.', 23, 519, '(55 ) 3376-8800');
insert into cidade(id, nome, idestado) values (520, 'Santa Rosa',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (520, 'Campus Santa Rosa','RUA URUGUAI, , Centro.', 23, 520, '(55 ) 3511-2575');
insert into cidade(id, nome, idestado) values (521, 'Santo Ângelo',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (521, 'Campus Santo Ângelo','Rua Antônio Manoel, , Centro.', 23, 521, '(55 ) 3218-9800');
insert into cidade(id, nome, idestado) values (522, 'Santo Augusto',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (522, 'Campus Santo Augusto','AC Santo Augusto Avenida do Comércio, 244, , Centro.', 23, 522, '(55 ) 3781-3555');
insert into cidade(id, nome, idestado) values (523, 'São Borja',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (523, 'Campus São Borja','Rua Barão do Rio Branco, Otaviano Mendes esquina Mauricio Machado, Bettin.', 23, 523, '(55 ) 3431-0500');
insert into cidade(id, nome, idestado) values (524, 'São Vicente do Sul',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (524, 'Campus São Vicente Do Sul','continuação da rua 20 de Setembro, , Campus.', 23, 524, '(55 ) 3257');
insert into cidade(id, nome, idestado) values (525, 'Frederico Westphalen',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (525, 'Colégio Técnico Frederico Westphalen/ufsm','Linha Sete de setembro, Br 386 Km 40, Centro.', 23, 525, '(55 ) 3744-8900');
insert into cidade(id, nome, idestado) values (526, 'Santa Maria',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (526, 'Colégio Politécnico De Santa Maria/ufsm','Universidade Federal de Santa Maria Avenida Roraima, 1000, , Camobi.', 23, 526, '(55 ) 3220-8273');
insert into cidade(id, nome, idestado) values (527, 'Santa Maria',21);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (527, 'Colégio Técnico Industrial Santa Maria/ufsm','Universidade Federal de Santa Maria Avenida Roraima, s/n, , Camobi.', 23, 527, '(55 ) 3220-8151');
insert into instituicao(id, nome, sigla,endereco, idestado) values (24,'Instituto Federal De Educação, Ciência E Tecnologia De Rondonia','IFRO','Av. Tiradentes, , Industrial.',22);
insert into cidade(id, nome, idestado) values (528, 'Ariquemes',22);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (528, 'Campus Ariquemes','Rodovia RO 257, KM 13, sentido Machadinho do Oeste, Zona Rural, Setor 4.', 24, 528, '(69 ) 2103-0100');
insert into cidade(id, nome, idestado) values (529, 'Jaru',22);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (529, 'Campus Avançado Jaru','Av. Vereador Otaviano Pereira Neto, , Setor 2.', 24, 529, '(69 ) 2182-9602');
insert into cidade(id, nome, idestado) values (530, 'Cacoal',22);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (530, 'Campus Cacoal','Rodovia BR-364, km 228, ZONA RURAL, .', 24, 530, '(69 ) 3443-2445');
insert into cidade(id, nome, idestado) values (531, 'Colorado do Oeste',22);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (531, 'Campus Colorado Do Oeste','BR 435; Km 63, , Zona Rural.', 24, 531, '(69 ) 9981-9122');
insert into cidade(id, nome, idestado) values (532, 'Guajará-Mirim',22);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (532, 'Campus Guajará-mirim','Avenida 15 de Novembro, , Bairro Planalto.', 24, 532, '(69 ) 9985-4314');
insert into cidade(id, nome, idestado) values (533, 'Ji-Paraná',22);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (533, 'Campus Ji-paraná','Rua Rio amazonas, , Jardim dos Migrantes.', 24, 533, '(69 ) 3421-5154');
insert into cidade(id, nome, idestado) values (534, 'Porto Velho',22);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (534, 'Campus Porto Velho Calama','Avenida Calama, Lote 0994 - Quadra 169, Flodoaldo Pontes Pinto.', 24, 534, '(69 ) 2182-8901');
insert into cidade(id, nome, idestado) values (535, 'Porto Velho',22);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (535, 'Campus Porto Velho Zona Norte','Avenida Governador Jorge Teixeira, , Industrial.', 24, 535, '(69 ) 2182-3801');
insert into cidade(id, nome, idestado) values (536, 'Vilhena',22);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (536, 'Campus Vilhena','Rodovia 174, Km 3, .', 24, 536, '(69 ) 2101-0700');
insert into instituicao(id, nome, sigla,endereco, idestado) values (25,'Instituto Federal De Educação, Ciência E Tecnologia De Roraima','IFRR','Rua Fernão Dias Paes Leme, , Calungá.',23);
insert into cidade(id, nome, idestado) values (537, 'Amajari',23);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (537, 'Campus Amajari','Rua Raul Lima, Km 3 - Vicinal de acesso que liga a balsa de Aparecida à Vila Brasil, Centro.', 25, 537, '(95 ) 3593-1098');
insert into cidade(id, nome, idestado) values (538, 'Bonfim',23);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (538, 'Campus Avançado Bonfim','RUA RODRIGO PIRES FIGUEIREDO, Funcionamento na Escola Estadual Argentina Castelo Branco, CENTRO.', 25, 538, '(95 ) 8115-8322');
insert into cidade(id, nome, idestado) values (539, 'Boa Vista',23);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (539, 'Campus Boa Vista','Avenida Glaycon de Paiva, , São Vicente.', 25, 539, '(95 ) 3621-8005');
insert into cidade(id, nome, idestado) values (540, 'Boa Vista',23);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (540, 'Campus Boa Vista Zona Oeste','RUA CC-15, BAIRRO SENADOR HELIO CAMPOS, ESCOLA ELZA BREVES, , Senador Hélio Campos.', 25, 540, '(95 ) 3624-1224');
insert into cidade(id, nome, idestado) values (541, 'Caracaraí',23);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (541, 'Campus Novo Paraíso','AGC Novo Paraíso Rodovia 174, Km 501, BR 174 KM 512, Centro.', 25, 541, '(95 ) 3624-1224');
insert into cidade(id, nome, idestado) values (542, 'Boa Vista',23);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (542, 'Escola Agrotécnica/ufrr','ACC I Boa Vista Praça Centro Cívico, 176, , Centro.', 25, 542, '()');
insert into instituicao(id, nome, sigla,endereco, idestado) values (26,'Instituto Federal De Educação, Ciência E Tecnologia De São Paulo','IFSP','Rua Pedro Vicente, sem complemento, Canindé.',24);
insert into cidade(id, nome, idestado) values (543, 'Araraquara',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (543, 'Campus Araraquara','Ramal de Acesso Engenheiro Heitor de Souza Pinheiro, sem complemento, Jardim dos Manacás.', 26, 543, '(16 ) 3303-2330');
insert into cidade(id, nome, idestado) values (544, 'Ilha Solteira',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (544, 'Campus Avançado Ilha Solteira','Alameda Tucuruí, , Centro.', 26, 544, '(18 ) 3748-8300');
insert into cidade(id, nome, idestado) values (545, 'Jundiaí',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (545, 'Campus Avançado Jundiaí','Avenida Doutor Cavalcanti, Complexo Educacional Argos, Vila Arens.', 26, 545, '(11 ) 4526-6230');
insert into cidade(id, nome, idestado) values (546, 'Limeira',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (546, 'Campus Avançado Limeira','Rua Baía, sem complemento, Vila Cristóvam.', 26, 546, '(11 ) 3775 4575');
insert into cidade(id, nome, idestado) values (547, 'Mococa',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (547, 'Campus Avançado Mococa','Rua Rovail Rodrigues Silva, , Mocoquinha.', 26, 547, '()');
insert into cidade(id, nome, idestado) values (548, 'Pirassununga',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (548, 'Campus Avançado Pirassununga','Rua Eni Albertina C. Krempell, , Vila Redenção.', 26, 548, '(11 ) 3775-4575');
insert into cidade(id, nome, idestado) values (549, 'Tupã',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (549, 'Campus Avançado Tupã','Avenida do Universitário, , Jardim Ipiranga.', 26, 549, '(14 ) 3404-3551');
insert into cidade(id, nome, idestado) values (550, 'Avaré',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (550, 'Campus Avaré','Avenida Professor Celso Ferreira da Silva, sem complemento, Jardim Europa .', 26, 550, '(14 ) 3711-1450');
insert into cidade(id, nome, idestado) values (551, 'Barretos',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (551, 'Campus Barretos','Avenida C 1, sem complemento, Residencial Ide Daher.', 26, 551, '(17 ) 3312-0700');
insert into cidade(id, nome, idestado) values (552, 'Birigui',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (552, 'Campus Birigui','Rua Pedro Cavalo, sem complemento, Residencial Portal da Pérola II.', 26, 552, '(18 ) 3643-1160');
insert into cidade(id, nome, idestado) values (553, 'Boituva',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (553, 'Campus Boituva','Avenida Zélia de Lima Rosa, sem complemento, Portal dos Pássaros.', 26, 553, '(15 ) 3363-8610');
insert into cidade(id, nome, idestado) values (554, 'Bragança Paulista',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (554, 'Campus Bragança Paulista','Rua Major Fernando Valle, sem complemento, Jardim São Miguel.', 26, 554, '(11 ) 4034-7800');
insert into cidade(id, nome, idestado) values (555, 'Campinas',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (555, 'Campus Campinas','Rodovia Dom Pedro I Km 143,6, Centro de Tecnologia da Informação Renato Archer - CTI, localizado nas salas 25 e 27 do prédio 4, Amarais.', 26, 555, '(19 ) 3746-6128');
insert into cidade(id, nome, idestado) values (556, 'Campos do Jordão',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (556, 'Campus Campos Do Jordão','Rua Monsenhor José Vita , sem complemento, Vila Abernéssia.', 26, 556, '(12 ) 3668-9620');
insert into cidade(id, nome, idestado) values (557, 'Capivari',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (557, 'Campus Capivari','Av. Dr. Ênio Pires de Camargo, sem complemento, São João Batista.', 26, 557, '(19 ) 3492-8585');
insert into cidade(id, nome, idestado) values (558, 'Caraguatatuba',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (558, 'Campus Caraguatatuba','Avenida Rio Grande do Norte, sem complemento, Indaiá.', 26, 558, '(12 ) 3885-2130');
insert into cidade(id, nome, idestado) values (559, 'Catanduva',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (559, 'Campus Catanduva','Avenida Pastor José Dutra de Moraes, sem complemento, Distrito Industrial Antônio Zácaro.', 26, 559, '(17 ) 3524-9710');
insert into cidade(id, nome, idestado) values (560, 'Cubatão',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (560, 'Campus Cubatão','Rua Maria Cristina, , Jardim Casqueiro.', 26, 560, '(13 ) 4009-5100');
insert into cidade(id, nome, idestado) values (561, 'Guarulhos',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (561, 'Campus Guarulhos','Avenida Salgado Filho, sem complemento, Vila Rio de Janeiro.', 26, 561, '(11 ) 2304-4255');
insert into cidade(id, nome, idestado) values (562, 'Hortolândia',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (562, 'Campus Hortolândia','Avenida Thereza Ana Cecon Breda, sem complemento, Vila São Pedro.', 26, 562, '(19 ) 3865-8070');
insert into cidade(id, nome, idestado) values (563, 'Itapetininga',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (563, 'Campus Itapetininga','Avenida João Olímpio de Oliveira, , Vila Asem.', 26, 563, '(15 ) 3376-9930');
insert into cidade(id, nome, idestado) values (564, 'Itaquaquecetuba',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (564, 'Campus Itaquaquecetuba','Rua Primeiro de Maio, , Estação.', 26, 564, '()');
insert into cidade(id, nome, idestado) values (565, 'Jacareí',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (565, 'Campus Jacareí','Rua Antônio Fogaça de Almeida, , Jardim América.', 26, 565, '(12 ) 9702-5100');
insert into cidade(id, nome, idestado) values (566, 'Matão',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (566, 'Campus Matão','Rua Estéfano Davassi, , Residencial Nova Cidade.', 26, 566, '(16 ) 3506-0713');
insert into cidade(id, nome, idestado) values (567, 'Piracicaba',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (567, 'Campus Piracicaba','Rua Diácono Jair de Oliveira, , Santa Rosa.', 26, 567, '(19 ) 3412-2700');
insert into cidade(id, nome, idestado) values (568, 'Presidente Epitácio',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (568, 'Campus Presidente Epitácio','Rua José Ramos Junior, , Jardim Tropical.', 26, 568, '(18 ) 3281-9599');
insert into cidade(id, nome, idestado) values (569, 'Registro',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (569, 'Campus Registro','Rua Clara Gianotti de Souza, , Agrocha.', 26, 569, '(13 ) 3828-2020');
insert into cidade(id, nome, idestado) values (570, 'Salto',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (570, 'Campus Salto','Rua Rio Branco, , Vila Teixeira.', 26, 570, '(11 ) 4602-9191');
insert into cidade(id, nome, idestado) values (571, 'São Carlos',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (571, 'Campus São Carlos','Rodovia Washington Luís , km 235, Prédio AT- 6 - salas 119,131, 132.1,132.2,134,136,138, 139 e 140, Monjolinho.', 26, 571, '(16 ) 3351-9608');
insert into cidade(id, nome, idestado) values (572, 'São João da Boa Vista',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (572, 'Campus São João Da Boa Vista','Acesso Dr. João Batista Merlin, Jardim Italia, Jardim Itália.', 26, 572, '(19 ) 3634-1112');
insert into cidade(id, nome, idestado) values (573, 'São José dos Campos',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (573, 'Campus São José Dos Campos','Rodovia Presidente Dutra Km 145, (Portão P4, Petrobras) , Jardim Diamante.', 26, 573, '(12 ) 3901-4440');
insert into cidade(id, nome, idestado) values (574, 'São Roque',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (574, 'Campus São Roque','Rodovia Prefeito Quintino de Lima, , Centro (Canguera).', 26, 574, '(11 ) 4719-9500');
insert into cidade(id, nome, idestado) values (575, 'Sertãozinho',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (575, 'Campus Sertãozinho','Rua Américo Ambrósio, , Jardim Canaã.', 26, 575, '(16 ) 3946-1170');
insert into cidade(id, nome, idestado) values (576, 'Sorocaba',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (576, 'Campus Sorocaba','Rua Paissandu, Antiga Superintendência da RFFSA, Jardim Santa Rosália.', 26, 576, '(11 ) 3775-4575');
insert into cidade(id, nome, idestado) values (577, 'Suzano',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (577, 'Campus Suzano','Avenida Mogi das Cruzes, , Parque Suzano.', 26, 577, '(11 ) 2146-1803');
insert into cidade(id, nome, idestado) values (578, 'Votuporanga',24);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (578, 'Campus Votuporanga','Rua Jerônimo Figueira da Costa, , Pozzobon.', 26, 578, '(17 ) 3426-6990');
insert into instituicao(id, nome, sigla,endereco, idestado) values (27,'Instituto Federal De Educação, Ciência E Tecnologia De Santa Catarina','IFSC','Rua Quatorze de Julho, , Coqueiros .',25);
insert into cidade(id, nome, idestado) values (579, 'Araranguá',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (579, 'Campus Araranguá','AV. XV DE NOVEMBRO, , AEROPORTO.', 27, 579, '(48 ) 3311-5000');
insert into cidade(id, nome, idestado) values (580, 'São Lourenço do Oeste',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (580, 'Campus Avançado São Lourenço Do Oeste','Rodovia SC-480, Distrito de Frederico Wastner, Centro.', 27, 580, '(49 ) 3344-8479');
insert into cidade(id, nome, idestado) values (581, 'Caçador',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (581, 'Campus Caçador','Av. Fahdo Thomé, , Champagnat.', 27, 581, '(49 ) 3561-5700');
insert into cidade(id, nome, idestado) values (582, 'Canoinhas',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (582, 'Campus Canoinhas','Rua Waldemiro Olsen, , Campo da Agua Verde.', 27, 582, '(47 ) 3627-4500');
insert into cidade(id, nome, idestado) values (583, 'Chapecó',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (583, 'Campus Chapecó','Avenida Nereu Ramos, , Seminário.', 27, 583, '(49 ) 3331-4651');
insert into cidade(id, nome, idestado) values (584, 'Florianópolis',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (584, 'Campus Continente','Rua Quatorze de Julho, Enseada dos Marinheiros, Coqueiros.', 27, 584, '(48 ) 3877-8419');
insert into cidade(id, nome, idestado) values (585, 'Criciúma',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (585, 'Campus Criciúma','Rodovia SC-443, Esquina com a Rua Antônio Daré, Vila Rica.', 27, 585, '(48 ) 3462-5000');
insert into cidade(id, nome, idestado) values (586, 'Florianópolis',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (586, 'Campus Florianópolis','Avenida Mauro Ramos, , Centro.', 27, 586, '(48 ) 3221-0500');
insert into cidade(id, nome, idestado) values (587, 'Garopaba',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (587, 'Campus Garopaba','Rua Maria Aparecida Barbosa , Campo Duna.', 27, 587, '(48 ) 3254-7300');
insert into cidade(id, nome, idestado) values (588, 'Gaspar',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (588, 'Campus Gaspar','Rua Adriano Kormann, , Bela Vista.', 27, 588, '(47 ) 3318-3700');
insert into cidade(id, nome, idestado) values (589, 'Itajaí',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (589, 'Campus Itajaí','Avenida Vereador Abrahão João Francisco, , Ressacada.', 27, 589, '(47 ) 3390-1200');
insert into cidade(id, nome, idestado) values (590, 'Jaraguá do Sul',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (590, 'Campus Jaraguá Do Sul','Avenida Getúlio Vargas, , Centro.', 27, 590, '(47 ) 3276-8705');
insert into cidade(id, nome, idestado) values (591, 'Jaraguá do Sul',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (591, 'Campus Jaraguá Do Sul Rau','Rua dos Imigrantes, , Rau.', 27, 591, '(47 ) 3276-9600');
insert into cidade(id, nome, idestado) values (592, 'Joinville',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (592, 'Campus Joinville','Rua Pavão, , Costa e Silva.', 27, 592, '(47 ) 3431-5600');
insert into cidade(id, nome, idestado) values (593, 'Lages',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (593, 'Campus Lages','Rua Heitor Villa-Lobos, , São Francisco.', 27, 593, '(49 ) 3221-4200');
insert into cidade(id, nome, idestado) values (594, 'Palhoça',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (594, 'Campus Palhoça','Rua João Bernadino da Rosa, , Cidade Universitária Pedra Branca.', 27, 594, '(48 ) 3341-9700');
insert into cidade(id, nome, idestado) values (595, 'São Carlos',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (595, 'Campus São Carlos','Rua Aloisio Sttofel , , Jardim Alvorada.', 27, 595, '(49 ) 3325-4149');
insert into cidade(id, nome, idestado) values (596, 'São José',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (596, 'Campus São José','Rua José Lino Kretzer, , Praia Comprida.', 27, 596, '(48 ) 3381-2800');
insert into cidade(id, nome, idestado) values (597, 'São Miguel do Oeste',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (597, 'Campus São Miguel Do Oeste','Rua 22 de Abril, , São Luiz.', 27, 597, '(49 ) 3631-0400');
insert into cidade(id, nome, idestado) values (598, 'Tubarão',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (598, 'Campus Tubarão','Rua Deputado Olices Pedro de Caldas, Margens da BR 101 - KM 336, Morrotes.', 27, 598, '(48 ) 3301-9100');
insert into cidade(id, nome, idestado) values (599, 'Urupema',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (599, 'Campus Urupema','Estrada do Senadinho, , Centro.', 27, 599, '(49 ) 3236-3100');
insert into cidade(id, nome, idestado) values (600, 'Xanxerê',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (600, 'Campus Xanxerê','Rua Euclides Hack, , Veneza.', 27, 600, '(49 ) 3441-7905');
insert into cidade(id, nome, idestado) values (601, 'Araquari',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (601, 'Campus Araquari','Rodovia BR 280 , Caixa Postal 21, Centro.', 27, 601, '(47 ) 3803-7200');
insert into cidade(id, nome, idestado) values (602, 'Abelardo Luz',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (602, 'Campus Avançado Abelardo Luz','Assentamento Jose Maria - Estrada da Produção KM 25, Interior, S/n, , Centro.', 27, 602, '(49 ) 3445-5577');
insert into cidade(id, nome, idestado) values (603, 'Sombrio',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (603, 'Campus Avançado Sombrio','Av. Prefeito Francisco Lummertz Junior, 818, , Januária.', 27, 603, '(48 ) 3533-4001');
insert into cidade(id, nome, idestado) values (604, 'Blumenau',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (604, 'Campus Blumenau','Rua Bernardino José de Oliveira, , Badenfurt.', 27, 604, '(47 ) 3337-5969');
insert into cidade(id, nome, idestado) values (605, 'Brusque',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (605, 'Campus Brusque','Avenida Hugo Schlosser, , Jardim Maluche.', 27, 605, '(47 ) 3212-0000');
insert into cidade(id, nome, idestado) values (606, 'Camboriú',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (606, 'Campus Camboriú','Rua Joaquim Garcia, , Centro.', 27, 606, '(47 ) 2104-0800');
insert into cidade(id, nome, idestado) values (607, 'Concórdia',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (607, 'Campus Concórdia','Rodovia SC 283 km 08, , Vila Fragosos.', 27, 607, '(49 ) 3441-4800');
insert into cidade(id, nome, idestado) values (608, 'Luzerna',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (608, 'Campus De Luzerna','Rua Vigário Frei João, , Centro.', 27, 608, '(49 ) 3523-4300');
insert into cidade(id, nome, idestado) values (609, 'Fraiburgo',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (609, 'Campus Fraiburgo','Rua Cruz E Souza, , Centro.', 27, 609, '(49 ) 3202-8800');
insert into cidade(id, nome, idestado) values (610, 'Ibirama',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (610, 'Campus Ibirama','Rua Dr. Getúlio Vargas, , Bela Vista.', 27, 610, '(47 ) 3357-6200');
insert into cidade(id, nome, idestado) values (611, 'Rio do Sul',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (611, 'Campus Rio Do Sul','Estrada do Redentor , Caixa Postal 441, Canta Galo.', 27, 611, '(47 ) 3531-3700');
insert into cidade(id, nome, idestado) values (612, 'São Bento do Sul',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (612, 'Campus São Bento Do Sul','Rua Paulo Chapiewsky, , Centenário.', 27, 612, '(47 ) 3626-7332');
insert into cidade(id, nome, idestado) values (613, 'São Francisco do Sul',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (613, 'Campus São Francisco Do Sul','Rodovia Duque de Caxias, Sem Número, km 6, Iperoba.', 27, 613, '(47 ) 3233-4000');
insert into cidade(id, nome, idestado) values (614, 'Videira',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (614, 'Campus Videira','Rodovia SC 135, KM 125, , Campo Experimental.', 27, 614, '(49 ) 3533-4900');
insert into cidade(id, nome, idestado) values (615, 'Santa Rosa do Sul',25);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (615, 'Santa Rosa Do Sul','Rua das Rosas, , Vila Nova.', 27, 615, '(48 ) 3534-8000');
insert into instituicao(id, nome, sigla,endereco, idestado) values (28,'Instituto Federal De Educação, Ciência E Tecnologia De Sergipe','IFSE','Avenida Jorge Amado, , Jardins.',26);
insert into cidade(id, nome, idestado) values (616, 'Aracaju',26);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (616, 'Campus Aracaju','Avenida Engenheiro Gentil Tavares, , Getúlio Vargas.', 28, 616, '(79 ) 3711-3110');
insert into cidade(id, nome, idestado) values (617, 'Estância',26);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (617, 'Campus Estância',', , .', 28, 617, '(79 ) 3711-3600');
insert into cidade(id, nome, idestado) values (618, 'Itabaiana',26);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (618, 'Campus Itabaiana','Travessa Augusto César Leite, Antigo Colégio Didático, Centro.', 28, 618, '(79 ) 3711-3504');
insert into cidade(id, nome, idestado) values (619, 'Lagarto',26);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (619, 'Campus Lagarto','Rua Cauby, Antiga Estrada da Barragem, Bairro jardim Campo Novo.', 28, 619, '(79 ) 3321-1505');
insert into cidade(id, nome, idestado) values (620, 'Nossa Senhora da Glória',26);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (620, 'Campus Nossa Senhora Da Glória','Rodovia Juscelino Kubtscheck, Parque de Exposições João de Oliveira Dantas, .', 28, 620, '(79 ) 9906-7145');
insert into cidade(id, nome, idestado) values (621, 'Nossa Senhora do Socorro',26);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (621, 'Campus Nossa Senhora Do Socorro','Praça Getulio Vargas, Av. Perimetral, B, Conjunto Marcos Freire I, Centro.', 28, 621, '(79 ) 3711-1420');
insert into cidade(id, nome, idestado) values (622, 'Propriá',26);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (622, 'Campus Propriá','Av. José Conrado de Araújo, , Centro.', 28, 622, '(79 ) 3711-3155');
insert into cidade(id, nome, idestado) values (623, 'São Cristóvão',26);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (623, 'Campus São Cristóvão','ROD. BR 101, km 96, , Quissamã.', 28, 623, '(79 ) 3711-3050');
insert into cidade(id, nome, idestado) values (624, 'Tobias Barreto',26);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (624, 'Campus Tobias Barreto','Rodovia Governador Antonio Carlos Valadares, conjunto Irmã Dulce, Centro.', 28, 624, '(79 ) 3711-3155');
insert into instituicao(id, nome, sigla,endereco, idestado) values (29,'Instituto Federal De Educação, Ciência E Tecnologia De Tocantins','IFTO','Quadra 202 Sul Avenida Joaquim Teotônio Segurado, ACSU-SE 20, Conjunto 01, Lote 08, Plano Diretor Sul.',27);
insert into cidade(id, nome, idestado) values (625, 'Araguaína',27);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (625, 'Campus Araguaína','Rua Paraguai, Quadra 56, Esquina com Av. Amazonas, .', 29, 625, '(63 ) 3411-0300');
insert into cidade(id, nome, idestado) values (626, 'Araguatins',27);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (626, 'Campus Araguatins','Povoado Santa Tereza km 05, , Zona Rural.', 29, 626, '(63 ) 3474-4800');
insert into cidade(id, nome, idestado) values (627, 'Formoso do Araguaia',27);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (627, 'Campus Avançado Formoso Do Araguaia','Rua do Açude/Lago Municipal, Próximo ao Lago Municipal, antigo Clube Municipal, Setor Central.', 29, 627, '(63 ) 3357-1982');
insert into cidade(id, nome, idestado) values (628, 'Lagoa da Confusão',27);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (628, 'Campus Avançado Lagoa Da Confusão','Rua João Maximino de Alencar, centro, Setor Central.', 29, 628, '(63 ) 9932-7580');
insert into cidade(id, nome, idestado) values (629, 'Pedro Afonso',27);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (629, 'Campus Avançado Pedro Afonso','Avenida das Mongubeiras, , Setor Aeroporto.', 29, 629, '(63 ) 8102-5186');
insert into cidade(id, nome, idestado) values (630, 'Dianópolis',27);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (630, 'Campus Dianópolis','Rodovia TO 040 KM 349, LOTE 01, Loteamento Rio Palmeira.', 29, 630, '(63 ) 9992-5276');
insert into cidade(id, nome, idestado) values (631, 'Gurupi',27);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (631, 'Campus Gurupi','Alameda Madrid, , Jardim Sevilha.', 29, 631, '(63 ) 3311-5400');
insert into cidade(id, nome, idestado) values (632, 'Palmas',27);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (632, 'Campus Palmas','Quadra AE 310 Sul Avenida NS 10, Esquina com LO-05, Plano Diretor Sul.', 29, 632, '(63 ) 3236-4000');
insert into cidade(id, nome, idestado) values (633, 'Porto Nacional',27);
insert into unidade(id, nome, endereco, idinstituicao, idcidade, telefone) values (633, 'Campus Porto Nacional','Avenida Tocantins AI, Loteamento Mãe Dedé, Jardim América.', 29, 633, '(63 ) 3363-9700');

INSERT INTO nivel VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E');

INSERT INTO "cargo" VALUES
    (1,'Técnico'),
    (2,'Técnico'),
    (3,'Técnico'),
    (4,'Técnico'),
    (5,'Técnico'),
    (6,'Técnico'),
    (7,'Técnico'),
    (8,'Técnico'),
    (9,'Técnico'),
    (10,'Técnico'),
    (11,'Técnico'),
    (12,'Técnico'),
    (13,'Técnico'),
    (14,'Técnico'),
    (15,'Técnico'),
    (16,'Técnico'),
    (17,'Técnico'),
    (18,'Técnico'),
    (19,'Técnico'),
    (20,'Técnico'),
    (21,'Técnico'),
    (22,'Técnico'),
    (23,'Técnico'),
    (24,'Técnico'),
    (25,'Técnico'),
    (26,'Técnico'),
    (27,'Técnico'),
    (28,'Técnico'),
    (29,'Técnico'),
    (30,'Técnico'),
    (31,'Técnico'),
    (32,'Técnico'),
    (33,'Técnico'),
    (34,'Técnico'),
    (35,'Técnico'),
    (36,'Técnico'),
    (37,'Técnico'),
    (38,'Técnico'),
    (39,'Técnico'),
    (40,'Técnico'),
    (41,'Técnico'),
    (42,'Técnico'),
    (43,'Técnico'),
    (44,'Técnico'),
    (45,'Técnico'),
    (46,'Técnico'),
    (47,'Técnico'),
    (48,'Técnico'),
    (49,'Técnico'),
    (50,'Técnico'),
    (51,'Técnico'),
    (52,'Técnico'),
    (53,'Técnico'),
    (54,'Técnico'),
    (55,'Técnico'),
    (56,'Técnico'),
    (57,'Técnico'),
    (58,'Técnico'),
    (59,'Técnico'),
    (60,'Técnico'),
    (61,'Técnico'),
    (62,'Técnico'),
    (63,'Técnico'),
    (64,'Técnico'),
    (65,'Técnico'),
    (66,'Técnico'),
    (67,'Técnico'),
    (68,'Técnico'),
    (69,'Técnico'),
    (70,'Técnico'),
    (71,'Técnico'),
    (72,'Técnico'),
    (73,'Técnico'),
    (74,'Técnico'),
    (75,'Técnico'),
    (76,'Técnico'),
    (77,'Técnico'),
    (78,'Técnico'),
    (79,'Técnico'),
    (80,'Técnico'),
    (81,'Técnico'),
    (82,'Técnico'),
    (83,'Técnico'),
    (84,'Técnico'),
    (85,'Técnico'),
    (86,'Técnico'),
    (87,'Técnico'),
    (88,'Técnico'),
    (89,'Técnico'),
    (90,'Técnico'),
    (91,'Técnico'),
    (92,'Técnico'),
    (93,'Técnico'),
    (94,'Técnico'),
    (95,'Técnico'),
    (96,'Técnico'),
    (97,'Técnico'),
    (98,'Técnico'),
    (99,'Técnico'),
    (100,'Técnico'),
    (101,'Técnico'),
    (102,'Técnico'),
    (103,'Técnico'),
    (104,'Técnico'),
    (105,'Técnico'),
    (106,'Técnico'),
    (107,'Técnico'),
    (108,'Técnico'),
    (109,'Técnico'),
    (110,'Técnico'),
    (111,'Técnico'),
    (112,'Técnico'),
    (113,'Técnico'),
    (114,'Técnico'),
    (115,'Técnico'),
    (116,'Técnico'),
    (117,'Técnico'),
    (118,'Técnico'),
    (119,'Técnico'),
    (120,'Técnico'),
    (121,'Técnico'),
    (122,'Técnico'),
    (123,'Técnico'),
    (124,'Técnico'),
    (125,'Técnico'),
    (126,'Técnico'),
    (127,'Técnico'),
    (128,'Técnico'),
    (129,'Técnico'),
    (130,'Técnico'),
    (131,'Técnico'),
    (132,'Técnico'),
    (133,'Técnico'),
    (134,'Técnico'),
    (135,'Técnico'),
    (136,'Técnico'),
    (137,'Técnico'),
    (138,'Técnico'),
    (139,'Técnico'),
    (140,'Técnico'),
    (141,'Técnico'),
    (142,'Técnico'),
    (143,'Técnico'),
    (144,'Técnico'),
    (145,'Técnico'),
    (146,'Técnico'),
    (147,'Técnico'),
    (148,'Técnico'),
    (149,'Técnico'),
    (150,'Técnico'),
    (151,'Técnico'),
    (152,'Técnico'),
    (153,'Técnico'),
    (154,'Técnico'),
    (155,'Técnico'),
    (156,'Técnico'),
    (157,'Técnico'),
    (158,'Técnico'),
    (159,'Técnico'),
    (160,'Técnico'),
    (161,'Técnico'),
    (162,'Técnico'),
    (163,'Técnico'),
    (164,'Técnico'),
    (165,'Técnico'),
    (166,'Técnico'),
    (167,'Técnico'),
    (168,'Técnico'),
    (169,'Técnico'),
    (170,'Técnico'),
    (171,'Técnico'),
    (172,'Técnico'),
    (173,'Técnico'),
    (174,'Técnico'),
    (175,'Técnico'),
    (176,'Técnico'),
    (177,'Técnico'),
    (178,'Técnico'),
    (179,'Técnico'),
    (180,'Técnico'),
    (181,'Técnico'),
    (182,'Técnico'),
    (183,'Técnico'),
    (184,'Técnico'),
    (185,'Técnico'),
    (186,'Técnico'),
    (187,'Técnico'),
    (188,'Técnico'),
    (189,'Técnico'),
    (190,'Técnico'),
    (191,'Técnico'),
    (192,'Técnico'),
    (193,'Técnico'),
    (194,'Técnico'),
    (195,'Técnico'),
    (196,'Técnico'),
    (197,'Técnico'),
    (198,'Técnico'),
    (199,'Técnico'),
    (200,'Técnico'),
    (201,'Técnico'),
    (202,'Técnico'),
    (203,'Técnico'),
    (204,'Técnico'),
    (205,'Técnico'),
    (206,'Técnico'),
    (207,'Técnico'),
    (208,'Técnico'),
    (209,'Técnico'),
    (210,'Técnico'),
    (211,'Técnico'),
    (212,'Técnico'),
    (213,'Técnico'),
    (214,'Técnico'),
    (215,'Técnico'),
    (216,'Técnico'),
    (217,'Técnico'),
    (218,'Técnico'),
    (219,'Técnico'),
    (220,'Técnico'),
    (221,'Técnico'),
    (222,'Técnico'),
    (223,'Técnico'),
    (224,'Técnico'),
    (225,'Técnico'),
    (226,'Técnico'),
    (227,'Técnico'),
    (228,'Técnico'),
    (229,'Técnico'),
    (230,'Técnico'),
    (231,'Técnico'),
    (232,'Técnico'),
    (233,'Técnico'),
    (234,'Técnico'),
    (235,'Técnico'),
    (236,'Técnico'),
    (237,'Técnico'),
    (238,'Técnico'),
    (239,'Técnico'),
    (240,'Técnico'),
    (241,'Técnico'),
    (242,'Técnico'),
    (243,'Técnico'),
    (244,'Técnico'),
    (245,'Técnico'),
    (246,'Técnico'),
    (247,'Técnico'),
    (248,'Técnico'),
    (249,'Técnico'),
    (250,'Técnico');
INSERT INTO "cargo" VALUES
    (251,'Técnico'),
    (252,'Técnico'),
    (253,'Técnico'),
    (254,'Técnico'),
    (255,'Técnico'),
    (256,'Técnico'),
    (257,'Técnico'),
    (258,'Técnico'),
    (259,'Técnico'),
    (260,'Técnico'),
    (261,'Técnico'),
    (262,'Técnico'),
    (263,'Técnico'),
    (264,'Técnico'),
    (265,'Técnico'),
    (266,'Técnico'),
    (267,'Técnico'),
    (268,'Técnico'),
    (269,'Técnico'),
    (270,'Técnico'),
    (271,'Técnico'),
    (272,'Técnico'),
    (273,'Técnico'),
    (274,'Técnico'),
    (275,'Técnico'),
    (276,'Técnico'),
    (277,'Técnico'),
    (278,'Técnico'),
    (279,'Técnico'),
    (280,'Técnico'),
    (281,'Técnico'),
    (282,'Técnico'),
    (283,'Técnico'),
    (284,'Técnico'),
    (285,'Técnico'),
    (286,'Técnico'),
    (287,'Técnico'),
    (288,'Técnico'),
    (289,'Técnico'),
    (290,'Técnico'),
    (291,'Técnico'),
    (292,'Técnico'),
    (293,'Técnico'),
    (294,'Técnico'),
    (295,'Técnico'),
    (296,'Técnico'),
    (297,'Técnico'),
    (298,'Técnico'),
    (299,'Técnico'),
    (300,'Técnico'),
    (301,'Técnico'),
    (302,'Técnico'),
    (303,'Técnico'),
    (304,'Técnico'),
    (305,'Técnico'),
    (306,'Técnico'),
    (307,'Técnico'),
    (308,'Técnico'),
    (309,'Técnico'),
    (310,'Técnico'),
    (311,'Técnico'),
    (312,'Técnico'),
    (313,'Técnico'),
    (314,'Técnico'),
    (315,'Técnico'),
    (316,'Técnico'),
    (317,'Técnico'),
    (318,'Técnico'),
    (319,'Técnico'),
    (320,'Técnico'),
    (321,'Técnico'),
    (322,'Técnico');




INSERT INTO "tecnico"(id, nivel_id, funcao, escolaridade) VALUES
    (1,1,'Assistente de Estúdio','Fundamental Incompleto'),
    (2,1,'Auxiliar de Alfaiate','Fundamental Incompleto'),
    (3,1,'Auxiliar de Carpintaria','Fundamental Incompleto'),
    (4,1,'Auxiliar de Dobrador','Fundamental Incompleto'),
    (5,1,'Auxiliar de Encanador','Fundamental Incompleto'),
    (6,1,'Auxiliar de Estofador','Fundamental Incompleto'),
    (7,1,'Auxiliar de Forjador de Metais','Fundamental Incompleto'),
    (8,1,'Auxiliar de Fundição de Metais','Fundamental Incompleto'),
    (9,1,'Auxiliar de Infra-estrutura e Manutenção/área','Fundamental Incompleto'),
    (10,1,'Auxiliar de Limpeza','Alfabetizado'),
    (11,1,'Auxiliar de Marcenaria','Fundamental Incompleto'),
    (12,1,'Auxiliar de Oficina de Instrumentos Musicais','Fundamental Incompleto'),
    (13,1,'Auxiliar de Padeiro','Fundamental Incompleto'),
    (14,1,'Auxiliar de Sapateiro','Alfabetizado'),
    (15,1,'Auxiliar de Serralheria','Fundamental Incompleto'),
    (16,1,'Auxiliar de Soldador','Fundamental Incompleto'),
    (17,1,'Auxiliar Operacional','Alfabetizado'),
    (18,1,'Auxiliar Rural','Fundamental Incompleto'),
    (19,1,'Carvoejador','Fundamental Incompleto'),
    (20,1,'Chaveiro','Fundamental Incompleto'),
    (21,1,'Lavadeiro','Alfabetizado'),
    (22,1,'Oleiro','Fundamental Incompleto'),
    (23,1,'Operador de Máquinas de Lavanderia','Alfabetizado'),
    (24,1,'Pescador Profissional','Fundamental Incompleto'),
    (25,1,'Redeiro','Fundamental Incompleto'),
    (26,1,'Servente de Limpeza','Alfabetizado'),
    (27,1,'Servente de Obras','Alfabetizado'),
    (28,1,'Taifeiro Fluvial','Fundamental Incompleto'),
    (29,1,'Taifeiro Marítimo','Fundamental Incompleto'),
    (30,1,'Vestiarista','Fundamental Incompleto'),
    (31,2,'Açougueiro','Fundamental Incompleto'),
    (32,2,'Ajustador Mecânico','Fundamental Incompleto'),
    (33,2,'Apontador','Fundamental Incompleto'),
    (34,2,'Armador','Fundamental Incompleto'),
    (35,2,'Armazenista','Fundamental Incompleto'),
    (36,2,'Arrais','Fundamental Completo + Habilitação'),
    (37,2,'Assistente de Câmera','Fundamental Completo'),
    (38,2,'Assistente de Montagem','Fundamental Completo'),
    (39,2,'Assistente de Som','Fundamental Completo'),
    (40,2,'Atendente de Consultório/área','Fundamental Completo'),
    (41,2,'Atendente de Enfermagem','Fundamental Completo'),
    (42,2,'Auxiliar de Agropecuária','Fundamental Incompleto'),
    (43,2,'Auxiliar de Anatomia e Necropsia','Fundamental Incompleto'),
    (44,2,'Auxiliar de Artes Gráficas','Fundamental Incompleto'),
    (45,2,'Auxiliar de Cenografia','Fundamental Completo'),
    (46,2,'Auxiliar de Cozinha','Alfabetizado'),
    (47,2,'Auxiliar de Curtume e Tanantes','Fundamental Incompleto'),
    (48,2,'Auxiliar de Eletricista','Fundamental Incompleto'),
    (49,2,'Auxiliar de Farmácia','Fundamental Incompleto'),
    (50,2,'Auxiliar de Figurino','Fundamental Completo'),
    (51,2,'Auxiliar de Industrialização e Conservação de Alimentos','Fundamental Incompleto'),
    (52,2,'Auxiliar de Laboratório','Fundamental Incompleto'),
    (53,2,'Auxiliar de Mecânica','Fundamental Incompleto'),
    (54,2,'Auxiliar de Meteorologia','Fundamental Completo'),
    (55,2,'Auxiliar de Microfilmagem','Fundamental Incompleto'),
    (56,2,'Auxiliar de Nutrição e Dietética','Fundamental Incompleto'),
    (57,2,'Auxiliar de Processamento de Dados','Fundamental Completo'),
    (58,2,'Barbeiro','Fundamental Incompleto'),
    (59,2,'Barqueiro','Fundamental Incompleto'),
    (60,2,'Bombeiro Hidráulico','Fundamental Incompleto'),
    (61,2,'Carpinteiro','Fundamental Incompleto'),
    (62,2,'Compositor Gráfico','Fundamental Incompleto'),
    (63,2,'Conservador de Pescado','Fundamental Incompleto'),
    (64,2,'Contramestre Fluvial/ Marítimo','Fundamental Completo'),
    (65,2,'Copeiro','Fundamental Incompleto'),
    (66,2,'Costureiro','Fundamental Completo'),
    (67,2,'Desenhista Copista','Fundamental Incompleto'),
    (68,2,'Eletricista de Embarcação','Fundamental Completo'),
    (69,2,'Estofador','Fundamental Incompleto'),
    (70,2,'Garçom','Fundamental Incompleto'),
    (71,2,'Jardineiro','Fundamental Incompleto'),
    (72,2,'Lancheiro','Fundamental Incompleto'),
    (73,2,'Marceneiro','Fundamental Incompleto'),
    (74,2,'Marinheiro','Fundamental Incompleto'),
    (75,2,'Marinheiro Fluvial','Fundamental Incompleto'),
    (76,2,'Massagista','Fundamental Incompleto'),
    (77,2,'Mestre de Rede','Fundamental Incompleto'),
    (78,2,'Montador/Soldador','Fundamental Incompleto'),
    (79,2,'Motociclista','Fundamental Incompleto'),
    (80,2,'Operador de Tele-impressora','Fundamental Completo'),
    (81,2,'Padeiro','Fundamental Incompleto'),
    (82,2,'Pedreiro','Fundamental Incompleto'),
    (83,2,'Pintor de Construção Cênica e Painéis','Fundamental Incompleto'),
    (84,2,'Pintor/área','Fundamental Incompleto'),
    (85,2,'Sapateiro','Fundamental Incompleto'),
    (86,2,'Seleiro','Fundamental Incompleto'),
    (87,2,'Tratorista','Fundamental Incompleto'),
    (88,2,'Vidraceiro','Fundamental Incompleto'),
    (89,3,'Aderecista','Médio completo'),
    (90,3,'Administrador de Edifícios','Médio completo'),
    (91,3,'Afinador de Instrumentos Musicais','Fundamental Completo'),
    (92,3,'Almoxarife','Médio completo'),
    (93,3,'Ascensorista','Médio completo'),
    (94,3,'Assistente de Alunos','Médio completo'),
    (95,3,'Auxiliar de Creche','Fundamental Completo'),
    (96,3,'Assistente de Laboratório','Fundamental Completo'),
    (97,3,'Assistente de Tecnologia da Informação','Médio completo'),
    (98,3,'Auxiliar de Biblioteca','Fundamental Completo'),
    (99,3,'Auxiliar de Enfermagem','Médio completo + Profissionalizante (COREN)'),
    (100,3,'Auxiliar de Saúde','Fundamental Completo'),
    (101,3,'Auxiliar de Topografia','Fundamental Completo'),
    (102,3,'Auxiliar de Veterinária e Zootecnia','Fundamental Completo'),
    (103,3,'Auxiliar em Administração','Fundamental Completo'),
    (104,3,'Auxiliar em Assuntos Educacionais','Médio completo'),
    (105,3,'Brigadista de Incêndio','Fundamental Completo'),
    (106,3,'Camareiro de Espetáculo','Médio completo'),
    (107,3,'Cenotécnico','Médio completo'),
    (108,3,'Condutor/Motorista Fluvial','Fundamental Completo + especialização + habilitação fluvial'),
    (109,3,'Contínuo','Fundamental Completo'),
    (110,3,'Contra-Mestre/Ofício','Fundamental Completo'),
    (111,3,'Contra-regra','Médio completo'),
    (112,3,'Costureiro de Espetáculo/Cenário','Médio completo'),
    (113,3,'Cozinheiro','Fundamental Incompleto até a 4ª série'),
    (114,3,'Cozinheiro de Embarcações','Fundamental Incompleto'),
    (115,3,'Datilógrafo de Textos Gráficos','Médio completo'),
    (116,3,'Detonador','Fundamental Completo'),
    (117,3,'Discotecário','Fundamental Completo'),
    (118,3,'Eletricista','Fundamental Completo'),
    (119,3,'Eletricista de Espetáculo','Médio completo'),
    (120,3,'Encadernador','Fundamental Incompleto'),
    (121,3,'Encanador/Bombeiro','Fundamental Completo'),
    (122,3,'Fotógrafo','Fundamental Completo'),
    (123,3,'Fotogravador','Fundamental Completo'),
    (124,3,'Impositor','Fundamental Completo'),
    (125,3,'Guarda Florestal','Fundamental Completo'),
    (126,3,'Hialotécnico','Fundamental Completo'),
    (127,3,'Impressor','Fundamental Completo'),
    (128,3,'Linotipista','Fundamental Completo'),
    (129,3,'Locutor','Médio completo'),
    (130,3,'Marinheiro de Máquinas','Fundamental Completo + especialização para marinheiro de máquinas'),
    (131,3,'Marinheiro Fluvial de Máquinas','Fundamental Completo + especialização para marinheiro de máquinas'),
    (132,3,'Maquinista de Artes Cênicas','Médio completo'),
    (133,3,'Mateiro','Fundamental Incompleto'),
    (134,3,'Mecânico','Fundamental Completo'),
    (135,3,'Mecânico de Montagem e Manutenção','Fundamental Completo'),
    (136,3,'Mestre de Embarcações de Pequeno Porte','Fundamental Incompleto'),
    (137,3,'Motorista','Fundamental Completo'),
    (138,3,'Operador de Caldeira','Fundamental Completo'),
    (139,3,'Operador de Central Hidroelétrica','Fundamental Completo'),
    (140,3,'Operador de Destilaria','Fundamental Completo'),
    (141,3,'Operador de Estação de Tratamento D’água e Esgoto','Fundamental Completo'),
    (142,3,'Operador de Luz','Médio completo'),
    (143,3,'Operador de Máquinas de Construção Civil','Fundamental Incompleto'),
    (144,3,'Operador de Máquina de Fotocompositora','Fundamental Completo'),
    (145,3,'Operador de Máquinas de Terraplanagem','Fundamental Incompleto'),
    (146,3,'Operador de Máquina Copiadora','Médio completo'),
    (147,3,'Operador de Máquinas Agrícolas','Fundamental Completo + curso profissionalizante'),
    (148,3,'Operador de Rádio-Telecomunicações','Médio completo'),
    (149,3,'Mecânico de Montagem e Manutenção','Fundamental Completo'),
    (150,3,'Porteiro','Médio completo'),
    (151,3,'Programador de Rádio e Televisão','Médio completo'),
    (152,3,'Recepcionista','Médio completo'),
    (153,3,'Revisor de Provas Tipográficas','Fundamental Completo'),
    (154,3,'Salva-vidas','Fundamental Incompleto'),
    (155,3,'Segundo Condutor','Fundamental Completo + especialização + habilitação como segundo condutor'),
    (156,3,'Seringueiro','Fundamental Incompleto'),
    (157,3,'Sonoplasta','Médio completo'),
    (158,3,'Telefonista','Fundamental Completo'),
    (159,3,'Tipógrafo','Fundamental Completo'),
    (160,3,'Torneiro Mecânico','Fundamental Completo'),
    (161,3,'Vidreiro','Fundamental Completo'),
    (162,4,'Assistente de Direção e Produção','Médio completo'),
    (163,4,'Assistente em Administração','Médio Profissionalizante ou Médio completo + experiência'),
    (164,4,'Confeccionador de Instrumentos Musicais','Médio completo'),
    (165,4,'Desenhista Técnico/ Especialidade','Médio Profissionalizante ou Médio completo + conhecimento de programas de editoração eletrônica e desenho'),
    (166,4,'Desenhista Projetista','Médio Profissionalizante ou Médio completo + experiência'),
    (167,4,'Diagramador','Médio Profissionalizante ou Médio completo + curso de editoração eletrônica'),
    (168,4,'Editor de Imagem','Médio Profissionalizante ou Médio completo + experiência'),
    (169,4,'Instrumentador Cirúrgico','Médio completo'),
    (170,4,'Mecânico (apoio marítimo)','Médio Completo + especialização + carta de primeiro condutor e de Mecânico'),
    (171,4,'Mestre de Edificações e Infra-estrutura','Médio completo'),
    (172,4,'Montador Cinematográfico','Médio completo'),
    (173,4,'Operador de Câmera de Cinema e TV','Médio Profissionalizante ou Médio completo + experiência'),
    (174,4,'Recreacionista','Médio completo'),
    (175,4,'Revisor de Texto Braille','Médio completo + habilitação específica'),
    (176,4,'Taxidermista','Médio completo'),
    (177,4,'Técnico de Aerofotogrametria','Médio completo + habilitação'),
    (178,4,'Técnico de Laboratório/área','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (179,4,'Técnico de Tecnologia da Informação','Médio Profissionalizante ou Médio completo + curso técnico em eletrônica com ênfase em sistemas computacionais'),
    (180,4,'Técnico em Agrimensura','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (181,4,'Técnico em Agropecuária','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (182,4,'Técnico em Alimentos e Laticínios','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (183,4,'Técnicos em Anatomia e Necropsia','Médio Profissionalizante ou Médio completo + experiência'),
    (184,4,'Técnico em Arquivo','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (185,4,'Técnico em Artes Gráficas','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (186,4,'Técnico em Audiovisual','Médio Profissionalizante ou Médio completo + experiência'),
    (187,4,'Técnico em Cartografia','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (188,4,'Técnico em Cinematografia','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (189,4,'Técnico em Contabilidade','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (190,4,'Técnico em Curtume e Tanagem','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (191,4,'Técnico em Economia Doméstica','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (192,4,'Técnico em Edificações','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (193,4,'Técnico em Educação Física','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (194,4,'Técnico em Eletricidade','Médio Profissionalizante ou Médio Completo + Especialização'),
    (195,4,'Técnico em Eletrônica','Médio Profissionalizante ou Médio Completo + Curso Técnico'),
    (196,4,'Técnico em Eletroeletrônica','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (197,4,'Técnico em Eletromecânica','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (198,4,'Técnico em Eletrotécnica','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (199,4,'Técnico em Enfermagem','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (200,4,'Técnico em Enfermagem do Trabalho','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (201,4,'Técnico em Enologia','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (202,4,'Técnico em Equipamentos Médico-Odontológico','Médio Profissionalizante ou Médio completo + experiência'),
    (203,4,'Técnico em Estatística','Médio Completo + Conhecimento específico'),
    (204,4,'Técnico em Estrada','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (205,4,'Técnico em Farmácia','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (206,4,'Técnico em Geologia','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (207,4,'Técnico em Herbário','Médio Profissionalizante ou Médio completo + experiência'),
    (208,4,'Técnico em Hidrologia','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (209,4,'Técnico em Higiene Dental','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (210,4,'Técnico em Instrumentação','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (211,4,'Técnico em Manutenção de Áudio/Vídeo','Médio Profissionalizante ou Médio Completo + Curso Técnico'),
    (212,4,'Técnico em Mecânica','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (213,4,'Técnico em Metalurgia','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (214,4,'Técnico em Meteorologia','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (215,4,'Técnico em Microfilmagem','Médio Profissionalizante ou Médio completo + experiência'),
    (216,4,'Técnico em Mineração','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (217,4,'Técnico em Móveis e Esquadrias','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (218,4,'Técnico em Música','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (219,4,'Técnico em Nutrição e Dietética','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (220,4,'Técnico em Ortóptica','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (221,4,'Técnico em Ótica','Médio Profissionalizante ou Médio completo + experiência'),
    (222,4,'Técnico em Prótese Dentária','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (223,4,'Técnico em Química','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (224,4,'Técnico em Radiologia','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (225,4,'Técnico em Reabilitação ou Fisioterapia','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (226,4,'Técnico em Refrigeração','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (227,4,'Técnico em Restauração','Médio Profissionalizante ou Médio completo + experiência'),
    (228,4,'Técnico em Saneamento','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (229,4,'Técnico em Secretariado','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (230,4,'Técnico em Segurança do Trabalho','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (231,4,'Técnico em Som','Médio Profissionalizante ou Médio completo + experiência'),
    (232,4,'Técnico em Telecomunicações','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (233,4,'Técnico em Telefonia','Médio Profissional ou Médio completo + experiência'),
    (234,4,'Tradutor e Intérprete de Linguagem de Sinais','Médio completo + proficiência em LIBRAS'),
    (235,4,'Transcritor de Sistema Braille','Médio completo'),
    (236,4,'Vigilante','Fundamental Completo e curso de formação'),
    (237,4,'Visitador Sanitário','Médio Profissionalizante ou Médio completo + curso Técnico'),
    (238,5,'Administrador','Curso Superior em Administração'),
    (239,5,'Analista de Tecnologia da Informação','Curso Superior na área'),
    (240,5,'Antropólogo','Curso Superior em Antropologia'),
    (241,5,'Arqueólogo','Curso Superior em Arqueologia'),
    (242,5,'Arquiteto e Urbanista','Curso Superior em Arquitetura e Urbanismo'),
    (243,5,'Arquivista','Curso Superior em Arquivologia'),
    (244,5,'Assistente Social','Curso Superior em Serviço Social'),
    (245,5,'Assistente Técnico em Embarcações','Lei Específica: Ensino Médio Completo, conhecimento especializado em arte naval e máquinas'),
    (246,5,'Astrônomo','Curso Superior em Astronomia'),
    (247,5,'Auditor','Curso Superior em Economia ou Direito ou Ciências Contábeis'),
    (248,5,'Bibliotecário-Documentalista','Curso Superior em Biblioteconomia ou Ciências da Informação'),
    (249,5,'Biólogo','Curso Superior em Ciências Biológicas'),
    (250,5,'Biomédico','Curso Superior em Biomedicina');
INSERT INTO "tecnico"(id,nivel_id,funcao, escolaridade) VALUES
    (251,5,'Cenógrafo','Curso Superior na área'),
    (252,5,'Comandante de Lancha','Lei Específica: Ensino Médio Completo, especialização na área e Carta de Patrão de Pesca'),
    (253,5,'Comandante de Navio','Lei Específica: Ensino Médio Completo, especialização na área e Carta de Patrão de Alto Mar'),
    (254,5,'Contador','Curso Superior em Ciências Contábeis'),
    (255,5,'Coreógrafo','Curso Superior em Artes Cênicas, Teatro ou Educação Física'),
    (256,5,'Decorador','Curso Superior em Artes Plásticas ou Arquitetura e Urbanismo'),
    (257,5,'Desenhista Industrial','Curso Superior em Desenho Industrial'),
    (258,5,'Diretor de Artes Cênicas','Curso Superior em Artes Cênicas'),
    (259,5,'Diretor de Fotografia','Curso Superior em Comunicação Social'),
    (260,5,'Diretor de Iluminação','Curso Superior em Comunicação Social ou Artes Cênicas'),
    (261,5,'Diretor de Imagem','Curso Superior em Comunicação Social'),
    (262,5,'Diretor de Produção','Curso Superior em Comunicação Social, Artes Plásticas e Artes Cênicas + habilitação'),
    (263,5,'Diretor de Programa','Curso Superior em Comunicação Social'),
    (264,5,'Diretor de Som','Curso Superior em Comunicação Social'),
    (265,5,'Economista','Curso Superior em Economia'),
    (266,5,'Economista Doméstico','Curso Superior em Economia Doméstica'),
    (267,5,'Editor de Publicações','Curso Superior em Comunicação Social, Jornalismo ou Letras'),
    (268,5,'Enfermeiro do Trabalho','Curso Superior em Enfermagem com Especialização em Enfermagem do Trabalho'),
    (269,5,'Enfermeiro/área','Curso Superior em Enfermagem'),
    (270,5,'Engenheiro de Segurança do Trabalho','Curso Superior em Engenharia com Especialização em Segurança do Trabalho'),
    (271,5,'Engenheiro/área','Curso Superior na área'),
    (272,5,'Engenheiro Agrônomo','Curso Superior na área'),
    (273,5,'Estatístico','Curso Superior em Ciências Estatísticas ou Atuariais'),
    (274,5,'Farmacêutico','Curso Superior na área'),
    (275,5,'Farmacêutico Bioquímico','Curso Superior na área'),
    (276,5,'Figurinista','Curso Superior em Artes Cênicas + habilitação em Indumentária'),
    (277,5,'Filósofo','Curso Superior em Filosofia'),
    (278,5,'Físico','Curso Superior na área'),
    (279,5,'Fisioterapeuta','Curso Superior em Fisioterapia'),
    (280,5,'Fonoaudiólogo','Curso Superior em Fonoaudiologia'),
    (281,5,'Geógrafo','Curso Superior em Geografia'),
    (282,5,'Geólogo','Curso Superior em Geologia'),
    (283,5,'Historiador','Curso Superior em História'),
    (284,5,'Imediato','Lei Específica: Médio Completo, Especialização na Área ou Carta de Patrão de Pesca'),
    (285,5,'Jornalista','Curso Superior em Jornalismo ou Comunicação Social com Habilitação em Jornalismo'),
    (286,5,'Matemático','Curso Superior em Matemática'),
    (287,5,'Médico Veterinário','Curso Superior em Medicina Veterinária'),
    (288,5,'Médico/área','Curso Superior em Medicina'),
    (289,5,'Mestre Fluvial','Lei Específica: Médio Completo e Especialização e Carta de Mestre Fluvial'),
    (290,5,'Mestre Regional','Lei Específica: Médio Completo e Especialização e Carta de Mestre Regional'),
    (291,5,'Meteorologista','Curso Superior na área'),
    (292,5,'Museólogo','Curso Superior em Museologia'),
    (293,5,'Músico','Curso Superior em Música'),
    (294,5,'Musicoterapeuta','Curso Superior em Musicoterapia'),
    (295,5,'Nutricionista/habilitação','Curso Superior em Nutrição'),
    (296,5,'Oceanólogo','Curso Superior em Oceanologia ou Oceanografia'),
    (297,5,'Odontólogo','Curso Superior em Odontologia'),
    (298,5,'Ortoptista','Curso Superior em Ortóptica'),
    (299,5,'Pedagogo/área','Curso Superior em Pedagogia'),
    (300,5,'Primeiro Condutor','Lei Específica: Fundamental Completo + Curso de Especialização'),
    (301,5,'Produtor Cultural','Curso Superior em Comunicação Social'),
    (302,5,'Programador Visual','Curso Superior em Comunicação Visual ou Comunicação Social com Habilitação em Publicidade ou Desenho Industrial com habilitação em Programação Visual'),
    (303,5,'Psicólogo/área','Curso Superior em Psicologia'),
    (304,5,'Publicitário','Curso Superior em Comunicação Social com Habilitação em Publicidade e Propaganda'),
    (305,5,'Químico','Curso Superior na área'),
    (306,5,'Redator','Curso Superior em Comunicação Social ou Jornalismo ou Letras'),
    (307,5,'Regente','Curso Superior em Música + Especialização em Regência'),
    (308,5,'Relações Públicas','Curso Superior em Comunicação Social com Habilitação em Relações Públicas'),
    (309,5,'Restaurador/área','Curso Superior na Área'),
    (310,5,'Revisor de Texto','Curso Superior em Comunicação Social ou Letras'),
    (311,5,'Roteirista','Curso Superior em Comunicação Social com Habilitação em Jornalismo ou Cinema ou Publicidade e Propaganda ou Letras'),
    (312,5,'Sanitarista','Curso Superior com Especialização na Área'),
    (313,5,'Secretário Executivo','Curso Superior em Letras ou Secretário Executivo Bilíngüe'),
    (314,5,'Sociólogo','Curso Superior em Sociologia'),
    (315,5,'Técnico Desportivo','Curso Superior em Educação Física'),
    (316,5,'Técnico em Assuntos Educacionais','Curso Superior em Pedagogia ou Licenciaturas'),
    (317,5,'Tecnólogo em Cooperativismo','Curso Superior em Administração ou Gestão de Cooperativas'),
    (318,5,'Tecnólogo/formação','Curso Superior na área'),
    (319,5,'Teólogo','Curso Superior em Teologia'),
    (320,5,'Terapeuta Ocupacional','Curso Superior em Terapia Ocupacional'),
    (321,5,'Tradutor Intérprete','Curso Superior em Letras'),
    (322,5,'Zootecnista','Curso Superior em Zootecnia');

INSERT INTO "role" VALUES
 (1, 'ROLE_USER'),
 (2, 'ROLE_ADMIN');


