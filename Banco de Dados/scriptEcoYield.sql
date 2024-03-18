create database ecoyield;
use ecoyield;

create table cadastroEmpresa (
    idEmpresa INT auto_increment,
    nomeEmpresa VARCHAR(50) NOT NULL,
    CNPJ CHAR(14) NOT NULL,
    segmentoEmpresa VARCHAR(45),
    CEP CHAR(8) NOT NULL,
    numero char(4),
    nomeUsuario VARCHAR(50) NOT NULL,
    emailUsuario VARCHAR(45)NOT NULL,
    senha VARCHAR(20) NOT NULL,
    PRIMARY KEY (idEmpresa)
);

-- precisa colocar um check no email?

create table loginEmpresa (
    nomeUsuario VARCHAR(50) NOT NULL,
    emailUsuario VARCHAR(45)NOT NULL,
    senha VARCHAR(20) NOT NULL,
    dataHora datetime
);

create table ambienteEmpresa (
    idAmbiente int PRIMARY KEY auto_increment,
    departamento VARCHAR(45),
	qntDHT11 int,
    qntLM35 int
    -- alertaVerde 
    -- alertaAmarelo
    -- alertaVermelho
);

create table dadosSensor (
    idDados int PRIMARY KEY auto_increment,
    valorTemperaturaDht float,
    valorTemperaturaLm float,
    valorUmidadeDht float,
    dataHora datetime
);

create table suporte (
    idOcorrencia int PRIMARY KEY auto_increment,
    nomeUsuario VARCHAR(50) NOT NULL,
    emailUsuario VARCHAR(45)NOT NULL,
    telefoneUsuario CHAR(11) NOT NULL,
    campoMensagem text NOT NULL
);

insert into cadastroEmpresa values
(null, 'C6 Bank', '31872495000172', 'Financeiro', 01406100, 3186, 'IsabelaR', 'isabelar@sptech.school', 'isabela1234'),
(null, 'Jazz Tech', '35496855000130', 'Financeiro',  05402100, 1368, 'Paulo', 'paulo@sptech.school', 'paulo1234'),
(null, 'Itaú', '60701190000104', 'Financeiro', 04310050, 306, 'Luiz', 'luiz@sptech.school', 'luiz123'),
(null, 'Accenture', '96534094000158', 'Consultoria', 04717004, 2051, 'Gustavo', 'gustavo@sptech.school', 'gustavo1234'),
(null, 'Safra', '58160789000128', 'Financeiro', 01310300, 2100, 'João', 'joao@sptech.school', 'joao1234');

insert into loginEmpresa values
('IsabelaR', 'isabelar@sptech.school', 'isabela1234', '2024-03-18 18:47:02'),
('Paulo', 'paulo@sptech.school', 'paulo1234', '2024-03-16 17:35:22')

