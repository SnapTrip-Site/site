CREATE TABLE Usuarios(
idUsuario INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) 	NOT NULL,
sobrenome VARCHAR(50),
email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE UsuarioViagem(
idUsuarioViagem INT AUTO_INCREMENT PRIMARY KEY,
fkUsuario INT,
fkViagem INT
);

CREATE TABLE Cidades(
id INT AUTO_INCREMENT PRIMARY KEY,
nomeCidade VARCHAR(100),
estado VARCHAR(100),
tipoCidade INT,
rodoviaria VARCHAR(100),
latRodoviaria DECIMAL(10,8),
longRodoviaria DECIMAL(11,8),
aeroporto VARCHAR(100),
latAeroporto DECIMAL(10,8),
longAeroporto DECIMAL(11,8)
);

CREATE TABLE LocaisEvento(
idLocalDovento INT AUTO_INCREMENT PRIMARY KEY,
fkCidade INT,
nome VARCHAR(50),
cep VARCHAR(50),
rua VARCHAR(50),
numero INT,
bairro VARCHAR(50),
latEvento DECIMAL(10,8),
longEvento DECIMAL(11,8)
);

CREATE TABLE Passagens(
passagens INT PRIMARY KEY AUTO_INCREMENT,
fkCidadeOrigem INT,
fkCidadeDestino INT,
meio VARCHAR(50),
lugar VARCHAR(50),
tarifa DECIMAL(6,2),
data DATE,
horarioSaida TIME,
horarioChegada TIME
);

CREATE TABLE Estadias(
idEstadia INT PRIMARY KEY AUTO_INCREMENT,
fkCidade INT,
tipoEstadia VARCHAR(100),
tipoAcomodacao VARCHAR(100),
nomeEstadia VARCHAR(100),
cep VARCHAR(100),
rua VARCHAR(100),
numero INT,
bairro VARCHAR(100),
latitude DECIMAL(10,2),
longitude DECIMAL(10,2),
avaliacao DECIMAL(2,1),
totalAvaliacao VARCHAR(100),
diaria DECIMAL(6,2),
tipoCama VARCHAR(50),
cafeDaManha VARCHAR(50)
);
ALTER TABLE cidades
DROP tipoCidade

;

ALTER TABLE cidadeScidades
ADD tipoCidade TINYINT(1)

;
ALTER TABLE usuarioviagem
ADD CONSTRAINT fkUsuario FOREIGN KEY (fkUsuario) REFERENCES usuarios (idUsuario)

;

ALTER TABLE usuarioviagem
ADD CONSTRAINT fkViagem FOREIGN KEY (fkViagem) REFERENCES viagens (idViagem)

;

ALTER TABLE locaisevento
ADD CONSTRAINT fkCidade FOREIGN KEY (fkCidade) REFERENCES cidades (idCidade)

;

ALTER TABLE Passagens
ADD CONSTRAINT fkCidadeOrigem FOREIGN KEY (fkCidadeOrigem) REFERENCES cidades (idCidade)

;

ALTER TABLE Passagens 
ADD CONSTRAINT fkCidadeDestino FOREIGN KEY (fkCidadeDestino) REFERENCES cidades (idCidade)

;

ALTER TABLE estadias
ADD CONSTRAINT fkCidade FOREIGN KEY (fkCidade) REFERENCES cidades (idCidade)

;
insert into cidades (nomeCidade, estado, tipoCidade, rodoviaria, latRodoviaria, longRodoviaria, aeroporto, latAeroporto, longAeroporto) values('São Paulo', 'SP', 1, 'Terminal Rodoviário Tietê', -23.515988853434944, -46.624770703127325, 'CGH (Congonhas)', -23.627088677492438, -46.656648576140455);
insert into cidades (nomeCidade, estado, tipoCidade, rodoviaria, latRodoviaria, longRodoviaria, aeroporto, latAeroporto, longAeroporto) values('Rio de Janeiro', 'RJ', 1, 'Terminal Rodoviário Novo Rio', -22.899132318947782, -43.20876000314427, 'SDU (Santos Dumont)', -22.91093625371206, -43.164961333832146);
insert into cidades (nomeCidade, estado, tipoCidade, rodoviaria, latRodoviaria, longRodoviaria, aeroporto, latAeroporto, longAeroporto) values('Salvador', 'BA', 1, 'Terminal Rodoviário de Salvador', -12.977488166089849, -38.46583927452794, 'SSA (Aeroporto Internacional de Salvador)', -12.910972818107643, -38.33142570336519);
insert into cidades (nomeCidade, estado, tipoCidade, rodoviaria, latRodoviaria, longRodoviaria, aeroporto, latAeroporto, longAeroporto) values('Florianópolis', 'SC', '1', 'Terminal Rodoviário de Salvador', -12.977488166089849, -38.46583927452794, 'SSA (Aeroporto Internacional de Salvador)', -12.910972818107643, -38.33142570336519);
insert into cidades (nomeCidade, estado, tipoCidade, rodoviaria, latRodoviaria, longRodoviaria, aeroporto, latAeroporto, longAeroporto) values('Brasilia', 'DF', 1, 'Terminal Rodoviário de Brasília', -15.830128918724167, -47.94955464563883, 'BSB (Aeroporto Internacional de Brasília)', -15.86979880848112, -47.917363549342305);
insert into cidades (nomeCidade, estado, tipoCidade, rodoviaria, latRodoviaria, longRodoviaria, aeroporto, latAeroporto, longAeroporto) values('Vitória', 'SE', 0, 'Terminal Rodoviária de Vitória Carlos Alberto V. Campos', -20.3217603, -40.351616755447665, 'Aeroporto de Vitória - Eurico de Aguiar Salles', -20.256092950000003, -40.28135718192593);
insert into cidades (nomeCidade, estado, tipoCidade, rodoviaria, latRodoviaria, longRodoviaria, aeroporto, latAeroporto, longAeroporto) values('Belo Horizonte', 'MG', 0, 'Rodoviária de Belo Horizonte - Terminal Gov. Israel Pinheiro ', -19.913940500000002, -43.9419157394947, 'Aeroporto Carlos Drummond de Andrade - Pampulha', -19.84964565865374, -43.95491136085489);
insert into cidades (nomeCidade, estado, tipoCidade, rodoviaria, latRodoviaria, longRodoviaria, aeroporto, latAeroporto, longAeroporto) values('Guarulhos', 'SP', 0, 'Rodoviária de Guarulhos', -23.4489342202504, -46.49711047028638, 'Aeroporto de Guarulhos', -23.42906724149629, -46.472486986569756);
insert into cidades (nomeCidade, estado, tipoCidade, rodoviaria, latRodoviaria, longRodoviaria, aeroporto, latAeroporto, longAeroporto) values('Uberlândia', 'MG', 0, 'Terminal Rodoviário Uberlândia', -18.90531623718798, -48.28503552833934, 'Aeroporto de Uberlândia - Ten. Cel. Aviador César Bombonato', -18.882273650000002, -48.22479831961242);
insert into cidades (nomeCidade, estado, tipoCidade, rodoviaria, latRodoviaria, longRodoviaria, aeroporto, latAeroporto, longAeroporto) values('Porto Alegre', 'RS', 0, 'Estação Rodoviária de Porto Alegre', -30.022733449999997, -51.21904796581997, 'Aeroporto Internacional Porto Alegre Salgado Filho', -29.995268449999998, -51.16639779619565);
insert into cidades (nomeCidade, estado, tipoCidade, rodoviaria, latRodoviaria, longRodoviaria, aeroporto, latAeroporto, longAeroporto) values('Curitiba', 'PR', 0, 'Rodoferroviária de Curitiba', -25.436021609036615, -49.25807476229068, 'Afonso Pena International Airport', -25.53248083821487, -49.17245964536236);
insert into cidades (nomeCidade, estado, tipoCidade, rodoviaria, latRodoviaria, longRodoviaria, aeroporto, latAeroporto, longAeroporto) values('Goiânia', 'GO', 0, 'Terminal Rodoviário Goiânia', -16.659345718458756, -49.25969587441772, 'Santa Genoveva International Airport', -16.634240650000002, -49.2155620047253);
insert into cidades (nomeCidade, estado, tipoCidade, rodoviaria, latRodoviaria, longRodoviaria, aeroporto, latAeroporto, longAeroporto) values('Cuiabá', 'MT', 0, 'Rodoviária de Cuiabá', -15.580314300934763,  -56.08984073211094, 'Cuiabá International Airport - Marechal Rondon', -15.652838308349605, -56.11729558978119);
insert into cidades (nomeCidade, estado, tipoCidade, rodoviaria, latRodoviaria, longRodoviaria, aeroporto, latAeroporto, longAeroporto) values('Campo Grande', 'MS', 0, 'Terminal Rodoviário Antônio Mendes Canale', -20.449901850407507, -54.69989469375737, '(CGR)Aeroporto Internacional De Campo Grande ', -20.455551170440113,  -54.6686756775672);
insert into cidades (nomeCidade, estado, tipoCidade, rodoviaria, latRodoviaria, longRodoviaria, aeroporto, latAeroporto, longAeroporto) values('Boa Vista','RR', 0, 'Rodoviária Internacional de Boa Vista ', 2.8076666237699373, -60.68860635684279, 'Boa Vista International Airport', 2.8413905482724013, -60.69218180161088);
insert into cidades (nomeCidade, estado, tipoCidade, rodoviaria, latRodoviaria, longRodoviaria, aeroporto, latAeroporto, longAeroporto) values('Belém', 'PR', 0, 'Terminal Rodoviário de Belém', -1.4489009686616683,  -48.46621060344939, 'Aeroporto de Belém/Val-de-Cans - Júlio Cezar Ribeiro', -1.3752366087277044, -48.478584449907686);
insert into cidades (nomeCidade, estado, tipoCidade, rodoviaria, latRodoviaria, longRodoviaria, aeroporto, latAeroporto, longAeroporto) values('São Luís', 'MA', 0, 'Terminal Rodoviário de São Luís', -2.5637780352466737,  -44.24469564577127, 'Aeroporto Internacional de São Luís - Marechal Cunha Machado', -2.583488447073695, -44.236182016935395);
insert into cidades (nomeCidade, estado, tipoCidade, rodoviaria, latRodoviaria, longRodoviaria, aeroporto, latAeroporto, longAeroporto) values('Fortaleza','CE', 0, 'Terminal Rodoviário Eng. João Thomé', -3.750538112103546,  -38.53231348293691, 'Aeroporto Internacional de Fortaleza - Pinto Martins', -3.776457721371129, -38.53272736738559);
insert into cidades (nomeCidade, estado, tipoCidade, rodoviaria, latRodoviaria, longRodoviaria, aeroporto, latAeroporto, longAeroporto) values('Natal', 'RN', 0, 'Rodoviária de Natal', -5.81946854555584, -35.23499563040228, 'Aeroporto Internacional de Natal', -5.7662345180465, -35.36598617074979);
insert into cidades (nomeCidade, estado, tipoCidade, rodoviaria, latRodoviaria, longRodoviaria, aeroporto, latAeroporto, longAeroporto) values('Recife', 'PE', 0, 'Terminal Rodoviário do Recife', -8.048901037245264, -34.98112248976138, 'Aeroporto Internacional do Recife/Guararapes - Gilberto Freyre', -8.125719071736428, -34.9240154033924);
insert into cidades (nomeCidade, estado, tipoCidade, rodoviaria, latRodoviaria, longRodoviaria, aeroporto, latAeroporto, longAeroporto) values('Aracaju', 'SE', 0, 'Terminal Rodoviário Gov. José Rollemberg Leite', -10.9163729718173, -37.088701461026695, 'Aeroporto Internacional de Aracaju - Santa Maria', -10.986841141553988, -37.07263303218972);


