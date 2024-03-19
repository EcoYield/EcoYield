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
    PRIMARY KEY (idAmbiente),
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




