drop database if exists webshop;
create database webshop;
use webshop;

create table tuotekategoriat (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nimi VARCHAR(50) NOT NULL
);

insert into tuotekategoriat (nimi) values ('grafiikkakortit');
insert into tuotekategoriat (nimi) values ('prosessorit');