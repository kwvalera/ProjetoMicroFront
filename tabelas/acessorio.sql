USE csMicroBD;

CREATE TABLE Acessorio(
    id_acessorio INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    descricao_acessorio VARCHAR(100) NOT NULL
);

CREATE TABLE OSAcessorio(
    id_os_acessorio INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_os INT /* FK */ NOT NULL,
    id_acessorio INT /* FK */ NOT NULL
);
