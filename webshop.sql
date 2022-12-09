drop database if exists webshop;
create database webshop;

create table tuotekategoriat ( id INT PRIMARY KEY AUTO_INCREMENT,
    nimi VARCHAR(50) NOT NULL
);

insert into tuotekategoriat (nimi) values ('Grafiikkakortit');
insert into tuotekategoriat (nimi) values ('Kovalevyt');
insert into tuotekategoriat (nimi) values ('Muistit');
insert into tuotekategoriat (nimi) values ('Näytönohjaimet');
insert into tuotekategoriat (nimi) values ('Prosessorit');
insert into tuotekategoriat (nimi) values ('Äänikortit');



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

INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('Asus GeForce RTX 3060 -näytönohjain, 12GB', 449, 4);
INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('MSI GeForce RTX 3060 -näytönohjain, 12GB', 549, 4);
INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('KFA2 GeForce RTX 4090 -näytönohjain, 24GB', 409, 4);
INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('Gigabyte GeForce RTX 3070 -näytönohjain, 8GB', 779, 4);
INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('Asus GeForce RTX 4090 -näytönohjain, 24GB ', 2399, 4);

INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('Asus TUF B550 ATX -emolevy', 179, 1);
INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('Asus ROG B550 ATX -emolevy', 219, 1);
INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('Asus PRIME B550 ATX -emolevy', 169, 1);
INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('MSI PRO Z690 ATX -emolevy', 219, 1);
INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('Asus TUF B650 ATX -emolevy', 179, 1);

INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('AMD Ryzen 7 5800X3D', 459, 5);
INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('AMD Ryzen 5 5600X', 209, 5);
INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('AMD Ryzen 5 7600X', 319, 5);
INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('Intel Core i7-13700K', 569, 5);
INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('Intel Core i5-13600K', 429, 5);

INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('Kingston 16GB Fury Beast', 73, 3);
INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('Kingston 32GB Fury Renegade', 159, 3);
INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('Corsair 16GB Vengeance', 79, 3);
INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('Corsair 32GB Vengeance', 129, 3);
INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('G.Skill 16GB Ripjaws V', 68, 3);

INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('Samsung 1TB 980 SSD-levy', 115, 2);
INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('Samsung 1TB PRO 980 SSD-levy', 135, 2);
INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('Samsung 2TB PRO 980 SSD-levy', 270, 2);
INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('Kingston 1TB NV2 SSD-levy', 90, 2);
INSERT INTO tuoteet (nimi, hinta, kategoria_id) VALUES ('Kingston 480GB A400 SSD-levy', 49, 2);


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