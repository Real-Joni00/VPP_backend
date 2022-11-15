drop database if exists webshop;
create database webshop;
use webshop;

create table tuotekategoriat (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nimi VARCHAR(50) NOT NULL
);

insert into tuotekategoriat (nimi) values ('grafiikkakortit');
insert into tuotekategoriat (nimi) values ('prosessorit');

create table tuotteet (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nimi VARCHAR(100) NOT NULL,
    hinta DOUBLE (10,2) NOT NULL,
    kuva VARCHAR(50),
    kategoria_id INT NOT NULL,
    index kategoria_id(kategoria_id),
    FOREIGN KEY (kategoria_id) REFERENCES tuotekategoriat(id)
    ON DELETE RESTRICT
);

insert into tuotteet (nimi,hinta,kategoria_id) values ('Testi tuote 1', 100,1);
insert into tuotteet (nimi,hinta,kategoria_id) values ('Testi tuote 2', 200,1);