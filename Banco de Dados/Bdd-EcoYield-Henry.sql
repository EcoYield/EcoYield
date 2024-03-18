CREATE DATABASE EcoYield;
USE EcoYield;

CREATE TABLE Monitoramento (
    
    sala INT AUTO_INCREMENT PRIMARY KEY,
    temperatura DECIMAL(5, 2),
    umidade DECIMAL(5, 2),
    data_hora DATETIME
);
drop table Monitoramento;

CREATE TABLE OcupacaoSala (
    id_sala INT AUTO_INCREMENT PRIMARY KEY,
    sala VARCHAR(50),
    funcionario VARCHAR(100),
    entrada DATETIME,
    saida DATETIME
    
);

INSERT INTO Monitoramento ( temperatura, umidade, data_hora) 
VALUES 
(25.5, 60.2, '2024-03-17 08:00:00'),
( 24.8, 58.7, '2024-03-17 09:15:00'),
( 26.3, 62.1, '2024-03-17 09:30:00'),
( 25.9, 59.5, '2024-03-17 10:20:00'),
( 24.2, 57.8, '2024-03-17 11:00:00');

INSERT INTO OcupacaoSala (sala, funcionario, entrada, saida) 
VALUES 
('Sala 1', 'João Silva', '2024-03-17 08:00:00', '2024-03-17 16:00:00'),
('Sala 2', 'Maria Santos', '2024-03-17 09:15:00', '2024-03-17 17:15:00'),
('Sala 3', 'Pedro Oliveira', '2024-03-17 09:30:00', '2024-03-17 17:30:00'),
('Sala 1', 'Ana Costa', '2024-03-17 10:20:00', '2024-03-17 08:20:00'),
('Sala 2', 'Carlos Pereira', '2024-03-17 11:00:00', '2024-03-17 19:00:00');

select*from Monitoramento;
select*from OcupacaoSala;