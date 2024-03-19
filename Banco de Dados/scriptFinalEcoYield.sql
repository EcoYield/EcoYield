create database ecoYield;
use ecoYield;

-- Criação da tabela de cadastro da empresa e usuário
create table cadastroEmpresa (
    idEmpresa INT auto_increment,
    nomeEmpresa VARCHAR(50) not null,
    CNPJ CHAR(14) not null,
    segmentoEmpresa VARCHAR(45),
    CEP CHAR(8) not null,
    numeroLocal char(4),
    nomeUsuario VARCHAR(50) not null,
    emailUsuario VARCHAR(45) not null,
    senha VARCHAR(20) not null,
    PRIMARY KEY (idEmpresa)
);

-- Criação da tabela de login do usuário
create table loginEmpresa (
    idLogin INT auto_increment,
    nomeUsuario VARCHAR(50) not null,
    emailUsuario VARCHAR(45) not null,
    senha VARCHAR(20) not null,
    dataHora datetime,
    PRIMARY KEY (idLogin)
);

-- Criação da tabela de suporte ao usuário
create table suporte (
    idOcorrencia int PRIMARY KEY auto_increment,
    nomeUsuario VARCHAR(50) not null,
    emailUsuario VARCHAR(45) not null,
    telefoneUsuario CHAR(11) not null,
    campoMensagem text not null
);

-- Criação da tabela de ambiente da empresa que será registrado
create table ambienteEmpresa (
    idAmbiente int auto_increment,
    descricao VARCHAR(45) DEFAULT 'Adicionar Descrição',
    PRIMARY KEY (idAmbiente)
);

-- Criação da tabela dos sensores
create table sensor (
    idSensor int auto_increment,
    tipo char (4) not null,
    quantidade int not null,
    alertaVerde int,
    alertaAmarelo int,
    alertaVermelho int,
    primary key (idSensor),
    CONSTRAINT chk_tipo check (tipo in('UMID','TEMP'))
);

-- Criação da tabela de dados dos sensores
create table leituraSensor (
    idLeitura int PRIMARY KEY auto_increment,
    valorTemperaturaDht float,
    valorTemperaturaLm float,
    valorUmidadeDht float,
    dataHora datetime
);

-- Inserção de dados na tabela "cadastroEmpresa"
insert into cadastroEmpresa values
(null, 'C6 Bank', '31872495000172', 'Financeiro', 01406100, 3186, 'Isabela', 'isabela@sptech.school', 'Isabela1234'),
(null, 'Jazz Tech', '35496855000130', 'Financeiro',  05402100, 1368, 'Paulo', 'paulo@sptech.school', 'Paulo1234'),
(null, 'Itaú', '60701190000104', 'Financeiro', 04310050, 306, 'Matheus', 'matheus@sptech.school', 'Matheus1234'),
(null, 'Accenture', '96534094000158', 'Consultoria', 04717004, 2051, 'Gustavo', 'gustavo@sptech.school', 'Gustavo1234'),
(null, 'Safra', '58160789000128', 'Financeiro', 01310300, 2100, 'João', 'joao@sptech.school', 'Joao1234');

-- Inserção de dados na tabela "loginEmpresa"
insert into loginEmpresa values
(null, 'IsabelaR', 'isabelar@sptech.school', 'Isabela1234', '2024-03-18 18:47:02'),
(null, 'Paulo', 'paulo@sptech.school', 'Paulo1234', '2024-03-16 17:35:22'),
(null, 'Matheus', 'matheus@sptech.school', 'Matheus1234', '2024-03-19 17:40:32'),
(null, 'Gustavo', 'gustavo@sptech.school', 'Gustavo1234', '2024-03-21 19:42:22'),
(null, 'Joao', 'joao@sptech.school', 'Joao1234', '2024-03-21 22:12:02');

-- Inserção de dados na tabela "suporte"
insert into suporte values
(null, 'Fábio', 'fabiio@gmail.com', '1198754321', 'Preciso de ajuda na Dashboard'),
(null, 'Maria', 'mariaa@gmail.com', '11231465798', 'Preciso de ajuda no registro de ambiente'),
(null, 'Lucas', 'luucas@gmail.com', '11246897531', 'Preciso de ajuda com o monitoramento'); 

-- Inserção de dados na tabela "ambienteEmpresa"
insert into ambienteEmpresa values
(null, "Escritório Gestor Batatinha"),
(null, "Escritório TI"),
(null,"Escritório Laptops"),
(null,"Escritório Geral"),
(null, "Escritório RH");

-- Inserção de dados na tabela "sensor"
insert into sensor (tipo, quantidade) values
('TEMP', 2),
('UMID', 1),
('TEMP', 3),
('TEMP', 1),
('UMID', 2);

-- Inserção de dados na tabela "leituraSensor"
insert into leituraSensor values
(null, 26, 25.8, 65, '2024-03-21 18:32:00'),
(null, 28, 27.6, 68, '2024-03-21 21:25:38'),
(null, 27, 26.9, 67, '2024-03-22 18:32:12'),
(null, 29, 28.7, 66, '2024-03-22 19:13:14'),
(null, 30, 29.5, 65, '2024-03-22 20:47:18');


select * from cadastroEmpresa;
select * from loginEmpresa;
select * from ambienteEmpresa;
select * from sensor;
select * from leituraSensor;

-- Selecionar o nome da empresa e nome do usuário na tabela cadastroEmpresa onde o nome do usuário tem como segunda letra 'a'
select nomeEmpresa, nomeUsuario from cadastroEmpresa where nomeUsuario like '_a%';

-- Selecionar o nome da empresa e nome do usuário na tabela cadastroEmpresa onde o email do usuário contem '@sptech'
select nomeEmpresa, nomeUsuario from cadastroEmpresa where emailUsuario like '%@sptech%';

-- Selecionar a descrição da tabela ambienteEmpresa onde o idAmbiente é 2, 3 e 5
select descricao from ambienteEmpresa where idAmbiente in (2,3,5);

-- Selecionar os dados da tabela suporte ordenados pelo nome do usuário
select * from suporte order by nomeUsuario;

-- Selecionar o id, valor da temperatura dht, valor da umidade dht e data, hora da tabela leituraSensor onde o valorUmidadeDht é 65
select idLeitura, valorTemperaturaDht, valorUmidadeDht, dataHora from leituraSensor where valorUmidadeDht = 65;

-- Selecionar o id, tipo e quantidade de sensores na tabela sensor onde o tipo é de temperatura
select idSensor, tipo, quantidade from sensor where tipo = 'TEMP';

-- Selecionar o nome da empresa, representante e segmento da tabela cadastroEmpresa
select nomeEmpresa as Empresa,
	   nomeUsuario as Representante,
       segmentoEmpresa as Segmento from cadastroEmpresa;
