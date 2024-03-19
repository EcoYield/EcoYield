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
    tipo char (4) not null,
    quantidade int not null,
    alertaVerde int,
    alertaAmarelo int,
    alertaVermelho int,
    primary key (idSensor),
    CONSTRAINT chk_tipo check (tipo in('UMID','TEMP'))
);

create table leituraSensor (
    idLeitura int PRIMARY KEY auto_increment,
    valorTemperaturaDht float,
    valorTemperaturaLm float,
    valorUmidadeDht float,
    dataHora datetime
);

insert into cadastroEmpresa values
(null, 'C6 Bank', '31872495000172', 'Financeiro', 01406100, 3186, 'Isabela', 'isabela@sptech.school', 'Isabela1234'),
(null, 'Jazz Tech', '35496855000130', 'Financeiro',  05402100, 1368, 'Paulo', 'paulo@sptech.school', 'Paulo1234'),
(null, 'Itaú', '60701190000104', 'Financeiro', 04310050, 306, 'Matheus', 'matheus@sptech.school', 'Matheus1234'),
(null, 'Accenture', '96534094000158', 'Consultoria', 04717004, 2051, 'Gustavo', 'gustavo@sptech.school', 'Gustavo1234'),
(null, 'Safra', '58160789000128', 'Financeiro', 01310300, 2100, 'João', 'joao@sptech.school', 'Joao1234');

insert into loginEmpresa values
(null, 'IsabelaR', 'isabelar@sptech.school', 'Isabela1234', '2024-03-18 18:47:02'),
(null, 'Paulo', 'paulo@sptech.school', 'Paulo1234', '2024-03-16 17:35:22'),
(null, 'Matheus', 'matheus@sptech.school', 'Matheus1234', '2024-03-19 17:40:32'),
(null, 'Gustavo', 'gustavo@sptech.school', 'Gustavo1234', '2024-03-21 19:42:22'),
(null, 'Joao', 'joao@sptech.school', 'Joao1234', '2024-03-21 22:12:02');

insert into suporte values
(null, 'Fábio', 'fabiio@gmail.com', '1198754321', 'Preciso de ajuda na Dashboard'),
(null, 'Maria', 'mariaa@gmail.com', '11231465798', 'Preciso de ajuda no registro de ambiente'),
(null, 'Lucas', 'luucas@gmail.com', '11246897531', 'Preciso de ajuda com o monitoramento'); 

insert into ambienteEmpresa values
(null, "Escritório Gestor Batatinha"),
(null, "Escritório TI"),
(null,"Escritório Laptops"),
(null,"Escritório Geral"),
(null, "Escritório RH");

insert into sensor (tipo, quantidade) values
('TEMP', 2),
('UMID', 1),
('TEMP', 3),
('TEMP', 1),
('UMID', 2);

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

select nomeEmpresa, nomeUsuario from cadastroEmpresa where nomeUsuario like '_a%';

select nomeEmpresa, nomeUsuario from cadastroEmpresa where emailUsuario like '%@sptech%';

select descricao from ambienteEmpresa where idAmbiente in (2,3,5);

select * from suporte order by nomeUsuario;

select idLeitura, valorTemperaturaDht, valorUmidadeDht, dataHora from leituraSensor where valorUmidadeDht = 65;

select idSensor, tipo, quantidade from sensor where tipo = 'TEMP';

select nomeEmpresa as Empresa,
	   nomeUsuario as Representante,
       segmentoEmpresa as Segmento from cadastroEmpresa;
