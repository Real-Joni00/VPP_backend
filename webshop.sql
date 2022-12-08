drop database if exists webshop;
create database webshop;
use webshop;

create table tuotekategoriat (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nimi VARCHAR(50) NOT NULL
);

insert into tuotekategoriat (nimi) values ('Grafiikkakortit');
insert into tuotekategoriat (nimi) values ('Kiintolevyt');
insert into tuotekategoriat (nimi) values ('Muistit');
insert into tuotekategoriat (nimi) values ('Prosessorit');
insert into tuotekategoriat (nimi) values ('Äänikortit');
insert into tuotekategoriat (nimi) values ('Emolevyt');
insert into tuotekategoriat (nimi) values ('Tuulettimet');

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

insert into tuotteet (nimi,hinta,kategoria_id) values ('Perusmallin grafiikkakortti', 100,1);
insert into tuotteet (nimi,hinta,kategoria_id) values ('Parempi grafiikkakortti', 200,1);
insert into tuotteet (nimi,hinta,kategoria_id) values ('Huippuluokan grafiikkakortti', 567,1);

insert into tuotteet (nimi,hinta,kategoria_id) values ('Perusmallin kiintolevy', 50,2);
insert into tuotteet (nimi,hinta,kategoria_id) values ('Parempi kiintolevy', 130,2);
insert into tuotteet (nimi,hinta,kategoria_id) values ('Huippuluokan kiintolevy', 190,2);

insert into tuotteet (nimi,hinta,kategoria_id) values ('Perusmallin muistimoduli', 90,3);
insert into tuotteet (nimi,hinta,kategoria_id) values ('Parempi muistimoduli', 154,3);
insert into tuotteet (nimi,hinta,kategoria_id) values ('Huippuluokan muistimoduli', 273,3);

insert into tuotteet (nimi,hinta,kategoria_id) values ('Perusmallin prosessori', 100,4);
insert into tuotteet (nimi,hinta,kategoria_id) values ('Parempi prosessori', 200,4);
insert into tuotteet (nimi,hinta,kategoria_id) values ('Huippuluokan prosessori', 800,4);

insert into tuotteet (nimi,hinta,kategoria_id) values ('Perusmallin äänikortti', 30,5);
insert into tuotteet (nimi,hinta,kategoria_id) values ('Parempi äänikortti', 70,5);
insert into tuotteet (nimi,hinta,kategoria_id) values ('Huippuluokan äänikortti', 110,5);

insert into tuotteet (nimi,hinta,kategoria_id) values ('Perusmallin emolevy', 170,6);
insert into tuotteet (nimi,hinta,kategoria_id) values ('Parempi emolevy', 250,6);
insert into tuotteet (nimi,hinta,kategoria_id) values ('Huippuluokan emolevy', 776,6);

insert into tuotteet (nimi,hinta,kategoria_id) values ('Perusmallin tuuletin', 6,7);
insert into tuotteet (nimi,hinta,kategoria_id) values ('Parempi tuuletin', 30,7);
insert into tuotteet (nimi,hinta,kategoria_id) values ('Huippuluokan tuuletin', 90,7);

create table asiakas (
    id int primary key auto_increment,
    etunimi varchar(50) not null,
    sukunimi varchar(50) not null,
    osoite varchar(50) not null,
    postinro varchar(50) not null,
    postitmp varchar(50) not null
);

create table tilaus (
    id int primary key auto_increment,
    tilauspvm timestamp default current_timestamp,
    asiakasnro int not null,
    index asiakasnro(asiakasnro),
    foreign key (asiakasnro) references asiakas(id)
    on delete restrict
);

create table tilausrivi (
    tilausnro int not null,
    index tilausnro(tilausnro),
    foreign key (tilausnro) references tilaus (id)
    on delete restrict,
    tuotenro int not null,
    index tuotenro(tuotenro),
    foreign key (tuotenro) references tuotteet(id)
    on delete restrict
);