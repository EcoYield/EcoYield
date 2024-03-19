create database ecoYield;
use ecoYield;

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

-- não preciso do campo de confirmar senha, pois é desnecessário, afinal, o banco irá consultar a tabela login e o campo senha

create table loginEmpresa (
    idLogin INT auto_increment,
    nomeUsuario VARCHAR(50) not null,
    emailUsuario VARCHAR(45) not null,
    senha VARCHAR(20) not null,
    dataHora datetime,
    PRIMARY KEY (idLogin)
);

create table suporte (
    idOcorrencia int PRIMARY KEY auto_increment,
    nomeUsuario VARCHAR(50) not null,
    emailUsuario VARCHAR(45) not null,
    telefoneUsuario CHAR(11) not null,
    campoMensagem text not null
);

create table ambienteEmpresa (
    idAmbiente int auto_increment,
    descricao VARCHAR(45) DEFAULT 'Adicionar Descrição',
    PRIMARY KEY (idAmbiente)
);

create table sensor (
    idSensor int auto_increment,
    tipo char (3) not null,
    quantidade int not null,
    alertaVerde int,
    alertaAmarelo int,
    alertaVermelho int,
    CONSTRAINT check_tipo check (tipo('UMI','TEM'))
);

create table leituraSensor (
    idLeitura int PRIMARY KEY auto_increment,
    valorTemperaturaDht float,
    valorTemperaturaLm float,
    valorUmidadeDht float,
    dataHora datetime
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


