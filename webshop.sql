drop database if exists webshop;
create database webshop;
use webshop;

create table tuotekategoriat ( id INT PRIMARY KEY AUTO_INCREMENT,
    nimi VARCHAR(50) NOT NULL
);

insert into tuotekategoriat (nimi) values ('Emolevyt');
insert into tuotekategoriat (nimi) values ('SSD-levyt');
insert into tuotekategoriat (nimi) values ('Muistit');
insert into tuotekategoriat (nimi) values ('Näytönohjaimet');
insert into tuotekategoriat (nimi) values ('Prosessorit');

create table tuotteet (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nimi VARCHAR(100) NOT NULL,
    hinta DOUBLE (10,2) NOT NULL,
    kuva LONGBLOB,
    tuotekuvaus VARCHAR(1555),
    tuotekoodi VARCHAR(555),
    kategoria_id INT NOT NULL,
    index kategoria_id(kategoria_id),
    FOREIGN KEY (kategoria_id) REFERENCES tuotekategoriat(id)
    ON DELETE RESTRICT
);

INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('Asus GeForce RTX 3060 -näytönohjain, 12GB', 449.90, 
'ASUS Dual GeForce RTX™ 3060 tarjoaa uusimman NVIDIA Ampere -arkkitehtuurin puhtaimmassa muodossaan yhdistäen suorituskyvyn ja yksinkertaisuuden parhaalla tavalla. 
Dual hyödyntää huipputason näytönohjaimien edistyneitä jäähdytysteknologioita. Siinä painotetaan tyylin sijaan sisältöä, joten se on täydellinen valinta tasapainoiseen kokoonpanoon. 
Lähde mukaan nauttimaan huippuluokan pelitehosta.','Tuotekoodi: DUAL-RTX3060-O12G-V2
EAN: 4711081309925',4);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('MSI GeForce RTX 3060 -näytönohjain, 12GB', 549.90, 
'GeForce RTX™ 30 -sarjan grafiikkasuorittimet antavat äärimmäisen suorituskyvyn niin pelaajien kuin luovan työn tekijöidenkin käyttöön Tehon salaisuus on Ampere – NVIDIAN toisen 
sukupolven RTX-arkkitehtuuri, jonka uudistetut RT- ja Tensor-ytimet sekä SM-monisuorittimet varmistavat tähän asti realistisimman säteenseurantagrafiikan ja huippuluokan tekoälytoiminnot.',
'Tuotekoodi: RTX-3060-VENTUS-2X-12G-OC
EAN: 4719072793814', 4);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('KFA2 GeForce RTX 4090 -näytönohjain, 24GB', 2479.90, 
'NVIDIA® GeForce RTX® 40 -sarjan grafiikkasuorittimet tarjoavat pelaajille ja luovan työntekijöille paljon muutakin kuin huippunopean grafiikan.
 Niiden teho on peräisin ultratehokkaasta NVIDIA Ada Lovelace -arkkitehtuurista, joka edustaa suoranaista kvanttiloikkaa suorituskyvyssä ja grafiikan tekoälytehostuksessa. 
 Säteenseurannan ja ultrasuurten FPS-pelinopeuksien ansiosta pääset kokemaan virtuaaliset maailmat todella elävän tuntuisina. Pääset myös tutustumaan mullistaviin uusiin tapoihin
  luoda ja nopeuttaa työnkulkuja.', 'Tuotekoodi: 49NXM5MD6DSK
EAN: 4895147150055',4);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('Gigabyte GeForce RTX 3070 -näytönohjain, 8GB', 779.90, 
'GeForce RTX™ 30 -sarjan grafiikkasuorittimet antavat äärimmäisen suorituskyvyn niin pelaajien kuin luovan työn tekijöidenkin käyttöön Tehon salaisuus on Ampere – 
NVIDIAN toisen sukupolven RTX-arkkitehtuuri, jonka uudistetut RT- ja Tensor-ytimet sekä SM-monisuorittimet varmistavat tähän asti realistisimman säteenseurantagrafiikan 
ja huippuluokan tekoälytoiminnot.','Tuotekoodi: GV-N307TGAMING-8GD
EAN: 4719331310974',4);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('Asus GeForce RTX 4090 -näytönohjain, 24GB', 2399.90, 
'NVIDIA® GeForce RTX® 40 -sarjan grafiikkasuorittimet tarjoavat pelaajille ja luovan työntekijöille paljon muutakin kuin huippunopean grafiikan. 
Niiden teho on peräisin ultratehokkaasta NVIDIA Ada Lovelace -arkkitehtuurista, joka edustaa suoranaista kvanttiloikkaa suorituskyvyssä ja grafiikan tekoälytehostuksessa. 
Säteenseurannan ja ultrasuurten FPS-pelinopeuksien ansiosta pääset kokemaan virtuaaliset maailmat todella elävän tuntuisina. Pääset myös tutustumaan mullistaviin uusiin 
tapoihin luoda ja nopeuttaa työnkulkuja.', 'Tuotekoodi: TUF-RTX4090-O24G-GAMING
EAN: 4711081936916', 4);

INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('Asus TUF B550 ATX -emolevy', 179.90,'Tekniset tiedot:
Prosessorituki:
3. sukupolven AMD Ryzen -prosessorit
AM4

Piirisarja:
AMD B550
 
Muistituki:
4 x DDR4 DIMM, maks. 128GB
Dual Channel -muistiarkkitehtuuri
Tukee 4400(O.C.) / 4000(O.C.) / 3866(O.C.) / 3600(O.C.) / 3466(O.C.) / 3200 / 3000 / 2800 / 2666 / 2400 / 2133 MHz

Audio:
Realtek ALC S1200A 7.1-Channel High Definition Audio CODEC

Verkkokortti:
1 x Realtek RTL8125B 2.5Gb Ethernet

WLAN & Bluetooth:
M.2 slot (Key E)', 'Tuotekoodi: TUF-GAMING-B550-PLUS
EAN: 4718017749435', 1);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('Asus ROG B550 ATX -emolevy', 219.90,'Tekniset tiedot:

Prosessorituki:
3. sukupolven AMD Ryzen -prosessorit
AM4

Piirisarja:
AMD B550
 
Muistituki:
4 x DDR4 DIMM, maks. 128GB
Dual Channel -muistiarkkitehtuuri
Tukee 4400(O.C) / 4266(O.C) / 4133(O.C) / 4000(O.C) / 3866(O.C) / 3600(O.C) / 3466(O.C.) / 3200 / 3000 / 2800 / 2666 / 2400 / 2133 MHz

Audio:
ROG SupremeFX 7.1-Channel High Definition Audio CODEC S1220A

Verkkokortti:
1 x Intel® I225-V 2.5Gb Ethernet
', 'Tuotekoodi: ROG-STRIX-B550-F-GAMING
EAN: 4718017749688', 1);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('Asus PRIME B660 ATX -emolevy', 169.90,'Tekniset tiedot:

Prosessorituki:
LGA1700 kanta
Tukee 12. sukupolven Intel Core, Pentium Gold ja Celeron -prosessoreja

Piirisarja:
Intel B660

Muisti:
4 x DDR4, maks. 128GB
Dual Channel -muistiarkkitehtuuri
Tukee: DDR4 5000(OC) / 4800(OC) / 4600(OC) / 4400(OC) / 4266(OC) / 4000(OC) / 3733(OC) / 3600(OC) / 3466(OC) / 3400(OC) / 3333(OC) / 3200 / 3000 / 2933 / 2800 / 2666 / 2400 / 2133 MHz

Audio:
Realtek 7.1 Surround Sound High Definition Audio CODEC

Verkkokortti:
1 x Realtek 2.5Gb Ethernet

WLAN & Bluetooth:
M.2 slot only
', 'Tuotekoodi: PRIME-B660-PLUS-D4
EAN: 4711081523017', 1);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('MSI PRO Z690 ATX -emolevy', 219.90,'Tekniset tiedot:

Prosessorituki:
LGA1700 kanta
Tukee 12. sukupolven Intel Core, Pentium Gold ja Celeron -prosessoreja

Piirisarja:
Intel Z690

Muisti:
4 x DDR4, maks. 128GB
Dual Channel -muistiarkkitehtuuri
Tukee: 2133/ 2666/ 3200 MHz (by JEDEC & POR)
Max overclocking frequency:

1DPC 1R Max speed up to 5200+ MHz
1DPC 2R Max speed up to 4800+ MHz
2DPC 1R Max speed up to 4400+ MHz
2DPC 2R Max speed up to 4000+ MHz
Audio:
Realtek® ALC897 Codec

Verkkokortti:
1x Intel® L225V 2.5Gbps LAN controller', 'Tuotekoodi: PRO-Z690-A-DDR4
EAN: 4719072886622', 1);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('Asus TUF B650 ATX -emolevy', 279.90,'Tekniset tiedot:

Prosessorituki:
AMD AM5 -kanta
Tukee AMD Ryzen 7000 -sarjan työpöytäprosessoreja

Piirisarja:
AMD B650

Muisti:
4 x DDR5 DIMM, maks. 128GB
Dual Channel -muistiarkkitehtuuri
Tukee: DDR5 6400+(OC)/ 6200(OC)/ 6000(OC)/ 5800(OC)/ 5600/ 5400/ 5200/ 5000/ 4800 ECC & Non-ECC, Un-buffered Memory

Audio:
Realtek ALC S1200A 7.1 Surround Sound High Definition Audio CODEC

Verkkokortti:
1 x Realtek 2.5Gb Ethernet', 'Tuotekoodi: TUF-GAMING-B650-PLUS
EAN: 4711081912767', 1);

INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('AMD Ryzen 7 5800X3D', 459.90,'Tekniset tiedot:

Malli: Ryzen 7 5800X3D
Ydinten määrä: 8
Threadien määrä: 16
Kellotaajuus:

Base Clock: 3.4 GHz
Max Boost Clock: Jopa 4.5 GHz
Välimuisti:

L2 Cache: 4MB
L3 Cache: 96MB
CMOS: TSMC 7nm FinFET
Kanta: AM4
PCI Express -versio: PCIe 4.0
Jäähdytys: Ei sisälly
TDP: 105W

Erikoisominaisuudet:

AMD StoreMI Technology
AMD "Zen 3" Core Architecture
AMD Ryzen™ VR-Ready Premium', 'Tuotekoodi: 100-100000651WOF
EAN: 0730143313797',5);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('AMD Ryzen 5 5600X', 209.90,'Tekniset tiedot:

Malli: Ryzen 5 5600
Ydinten määrä: 6
Threadien määrä: 12
Kellotaajuus:

Base Clock: 3.5 GHz
Max Boost Clock: Jopa 4.4 GHz
Välimuisti:

L2 Cache: 3MB
L3 Cache: 32MB
CMOS: TSMC 7nm FinFET
Lukitsematon: Kyllä
Kanta: AM4
PCI Express -versio: PCIe 4.0
Jäähdytys: AMD Wraith Stealth
TDP: 65W

Erikoisominaisuudet:

AMD StoreMI Technology
AMD "Zen 3" Core Architecture
AMD Ryzen™ VR-Ready Premium', 'Tuotekoodi: 100-100000927BOX
EAN: 0730143314190', 5);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('AMD Ryzen 5 7600X', 319.90,'Puhdasta pelisuorituskykyä - hanki 6-ytiminen prosessori, joka on suunniteltu intensiiviseen pelitoimintaan!

Tekniset tiedot:

Yleistä
Malli: Ryzen 5 7600X
Ydinten määrä: 6
Threadien määrä: 12
Kellotaajuus:

Max Boost Clock: Jopa 5.3 GHz
Base Clock: 4.7 GHz
Välimuisti:

L1 Cache: 384KB
L2 Cache: 6MB
L3 Cache: 32MB
Oletus TDP: 105W
Prosessoriteknologia (CPU coret): TSMC 5nm FinFET
Lukitsematon: Kyllä
Kanta: AM5

Liitettävyys
Muistikanavat: 2
Maksimi muistinopeus: 

1x1R    5200 MT/s
1x2R    5200 MT/s
2x1R    3600 MT/s
2x2R    3600 MT/s
Grafiikka
Malli: AMD Radeon Graphics
Grafiikkaydinten määrä: 2
Kellotaajuus: 2200 MHz
GPU Base: 400 MHz

Avainominaisuudet
Tuetut teknologiat:

AMD EXPO™ Technology
AMD Ryzen™ Technologies', 'Tuotekoodi: 100-100000593WOF
EAN: 0730143314442', 5);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('Intel Core i7-13700K', 569.90,'Tekniset tiedot:

Malli: Core i7-13700K
Ydinten määrä: 16 (8P + 8E)
Threadien määrä: 24
Kellotaajuus: 3.40 GHz (Base, P-core) / 2.50 GHz (Base, E-core)
Maks turbotaajuus: 

Intel Turbo Boost Max Technology 3.0: Enintään 5.4 GHz
P-core Max Turbo Frequency: Enintään 5.3 GHz
E-core Max Turbo Frequency: Enintään 4.2 GHz
Välimuisti: 

Intel Smart Cache (L3): 30 MB
Total L2 Cache: 24 MB
Kanta: LGA1700
Lukitsematon: Kyllä
TDP: 125W (Processor Base Power)
Prosessorin näytönohjain: Intel® UHD Graphics 770
Yhteensopivuus: Intel® 700 Series / Intel 600 Series piirisarjoihin pohjautuvat emolevyt
Muistituki: 

Maksimi muistinopeus: DDR5 5600 / DDR4 3200 MT/s
Muistikanavat: 2
Maksimi muistikapasiteetti: 128 GB', 'Tuotekoodi: BX8071513700K
EAN: 5032037258708', 5);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('Intel Core i5-13600K', 429.90,'Tekniset tiedot:

Malli: Core i5-13600K
Ydinten määrä: 14 (6P + 8E)
Threadien määrä: 20
Kellotaajuus: 3.50 GHz (Base, P-core) / 2.60 GHz (Base, E-core)
Maks turbotaajuus: 

P-core Max Turbo Frequency: Enintään 5.1 GHz
E-core Max Turbo Frequency: Enintään 3.9 GHz
Välimuisti: 

Intel Smart Cache (L3): 24 MB
Total L2 Cache: 20 MB
Kanta: LGA1700
Lukitsematon: Kyllä
TDP: 125W (Processor Base Power)
Prosessorin näytönohjain: Intel® UHD Graphics 770
Yhteensopivuus: Intel® 700 Series / Intel 600 Series piirisarjoihin pohjautuvat emolevyt
Muistituki: 

Maksimi muistinopeus: DDR5 5600 / DDR4 3200 MT/s
Muistikanavat: 2
Maksimi muistikapasiteetti: 128 GB', 'Tuotekoodi: BX8071513600K
EAN: 5032037258746', 5);

INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('Kingston 16GB Fury Beast', 73.90, 'Ominaisuudet:

Matalaprofiilinen lämmönlevittimen design
Kustannustehokas ja suorituskykyinen DDR4-päivitys
Intel XMP-valmis
Valmis AMD Ryzenille
Valitse nopeus ja kapasiteetti omien tarpeidesi mukaan

Tekniset tiedot:

Kapasiteetti: 16GB (2 x 8GB)
Nopeus: 3200MHz
Latenssi: CL16 (16-18-18)
Jännite: 1.35 V
Rank: Single Rank (1R)', 'Tuotekoodi: KF432C16BBK2/16
EAN: 0740617319903', 3);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('Kingston 32GB Fury Renegade', 159.90, 'Ominaisuudet:

Korkeat nopeudet ja matalat latenssit toimittavat äärimmäistä suorituskykyä
Intel XMP-profiilit optimoituja Intelin tuoreimmille piirisarjoille
Valmis AMD Ryzenille
Sähäkkä musta alumiininen lämmönlevitin

Tekniset tiedot:

Kapasiteetti: 32GB (2 x 16GB)
Nopeus: 3600MHz
Latenssi: CL16 (16-20-20)
Jännite: 1.35 V
Rank: Dual Rank (2R)', 'Tuotekoodi: KF436C16RB1K2/32
EAN: 0740617322514', 3);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('Corsair 16GB Vengeance', 79.90, 'Tekniset tiedot:

Kapasiteetti: 16GB (2 x 8GB)
Muistityyppi: DDR4 DIMM 288-pin
Nopeus: 3600 MHz (PC4-28800)
Latenssi:  18-22-22-42
Jännite: 1.35 V
Ominaisuudet: Intel XMP 2.0 -tuki
Jäähdytys: Eloksoitu alumiini


SPD nopeus: 2133 MHz
SPD latenssi: 15-15-15-36
SPD jännite: 1.20 V', 'Tuotekoodi: CMK16GX4M2D3600C18
EAN: 0840006612971', 3);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('Corsair 32GB Vengeance', 129.90, 'Tekniset tiedot:

Kapasiteetti: 32GB (2 x 16GB)
Muistityyppi: DDR4 DIMM 288-pin
Nopeus: 3600 MHz (PC4-28800)
Latenssi: 18-22-22-42
Jännite: 1.35 V
Ominaisuudet: Intel XMP 2.0 -tuki
Jäähdytys: Eloksoitu alumiini

SPD nopeus: 2666 MHz
SPD latenssi: 18-18-18-43
SPD jännite: 1.20 V', 'Tuotekoodi: CMK32GX4M2Z3600C18
EAN: 0840006620990', 3);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('G.Skill 16GB Ripjaws V', 68.90, 'Tekniset tiedot:

Malli: Ripjaws V
Tyyppi: DDR4
Kapasitetti: 16GB (8GBx2)
Nopeus (testattu): 3200MHz
Latenssi (testattu): 16-18-18-38-2N
Jännite (testattu): 1.35 V
Unbuffered
Non-ECC
Nopeus (SPD): 2133MHz
Jännite (SPD): 1.20 V
Takuu: Elinikäinen
Ominaisuudet: Intel XMP 2.0 (Extreme Memory Profile) Ready', 'Tuotekoodi: F4-3200C16D-16GVKB
EAN: 4719692004970', 3);

INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('Samsung 1TB 980 SSD-levy', 114.90,'Päivitä NVMe:n huippunopeuksiin
On aika ottaa kaikki irti tietokoneesi potentiaalista 980-mallin avulla. Riippumatta siitä tarvitsetko lisää sujuvuutta pelaamiseen vai tehoa vaativan grafiikan käsittelyyn työtehtävissäsi, 980 on erinomainen valinta. Se tarjoaa luokkansa parasta SSD-suorituskykyä, joka perustuu NVMe- ja PCIe 3.0 -tekniikkaan.

Salamannopea
Täyttä vauhtia eteenpäin. 980 hyödyntää PCIe 3.0 -väylän tarjoamia nopeusetuja HMB-tekniikan ja merkittävästi parantuneen NVMe-tehokkuuden kautta. 
Rakenne ei sisällä DRAM-muistia ja levy tarjoaa erinomaista vastinetta rahoille sillä sen sekventiaaliset luku-/kirjoitusnopeudet ovat jopa 3 500/3 000 Mt/s* –
yli 6,2 kertaa nopeampia kuin SATA SSD -levyillä.', 'Tuotekoodi: MZ-V8V1T0BW
EAN: 8806090572210', 2);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('Samsung 1TB PRO 980 SSD-levy', 134.90,'Samsung PCIe 4.0 NVMe SSD 980 PRO antaa tehoa, jolla viet tietokoneen käytön seuraavalle tasolle. 980 PRO:n PCIe 4.0 -liitäntä merkitsee kaksinkertaista tiedonsiirtonopeutta PCIe 3.0 -liitäntään verrattuna.

Taaksepäin yhteensopivuus PCIe 3.0:n kanssa lisää käyttömahdollisuuksia.

Enimmäisnopeus - 980 PRO:ssa on Samsungin oma Elpis Controller, joka varmistaa PCIe 4.0 SSD -liitännän optimoidun nopeuden. 
Lukunopeus on jopa 7 000 Mt/s, mikä on kaksi kertaa nopeampi kuin PCIe 3.0 SSD -levyillä ja 12,7 kertaa nopeampi kuin SATA SSD  levyillä. 
980 PRO saavuttaa enimmäisnopeuden PCIe 4.0 -liitännällä ja nopeus voi vaihdella muissa ympäristöissä.', 'Tuotekoodi: MZ-V8P1T0BW
EAN: 8806090295546', 2);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('Samsung 2TB PRO 980 SSD-levy', 269.90,'Samsung PCIe 4.0 NVMe SSD 980 PRO antaa tehoa, 
jolla viet tietokoneen käytön seuraavalle tasolle. 980 PRO:n PCIe 4.0 -liitäntä merkitsee kaksinkertaista tiedonsiirtonopeutta PCIe 3.0 -liitäntään verrattuna.

Taaksepäin yhteensopivuus PCIe 3.0:n kanssa lisää käyttömahdollisuuksia.

Enimmäisnopeus - 980 PRO:ssa on Samsungin oma Elpis Controller, joka varmistaa PCIe 4.0 SSD -liitännän optimoidun nopeuden. Lukunopeus on jopa 7 000 Mt/s, 
mikä on kaksi kertaa nopeampi kuin PCIe 3.0 SSD -levyillä ja 12,7 kertaa nopeampi kuin SATA SSD  levyillä. 980 PRO saavuttaa enimmäisnopeuden PCIe 4.0 -liitännällä 
ja nopeus voi vaihdella muissa ympäristöissä.', 'Tuotekoodi: MZ-V8P2T0BW
EAN: 8806090696534', 2);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('Kingston 1TB NV2 SSD-levy', 89.90,'Edistyksellinen lisälaite ohuisiin kannettaviin tietokoneisiin ja muihin järjestelmiin

Kingstonin NV2 PCIe 4.0 NVMe SSD on varteenotettava uuden sukupolven tallennusratkaisu, jossa on Gen 4x4 NVMe -ohjain. NV2:n luku- ja kirjoitusnopeudet ovat jopa 3 500 ja 2 800 Mt/s alhaisella virrantarpeella ja vähäisellä lämmöntuotolla, mikä auttaa optimoimaan järjestelmän toimintaa ja tuomaan lisäarvoa ilman kompromisseja. Kompakti toispuoleinen M.2 2280 -malli (22 x 80 mm) laajentaa tallennustilaa jopa 2 teratavuun samalla kun se jättää tilaa vapaaksi muille komponenteille. Näin NV2 on ihanteellinen valinta ohuisiin kannettaviin tietokoneisiin, pienikokoisiin järjestelmiin ja omatoimisten tietokoneharrastajien emolevyihin.

Tuotetta on saatavilla 250 gigatavun - 2 teratavun kapasiteeteilla. Näin saadaan käyttöön kaikki tarvittava tila sovelluksille, asiakirjoille, valokuville, videoille ym. sisällölle.','Tuotekoodi: SNV2S/1000G
EAN: 0740617329919', 2);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus, tuotekoodi, kategoria_id) VALUES ('Kingston 480GB A400 SSD-levy', 49.90,'Tekniset tiedot:

Form Factor: 2.5"
Liitäntä: SATA Rev. 3.0 (6Gb/s) - taaksepäin yhteensopiva SATA Rev. 2.0 (3Gb/s)
Kapasiteetti: 480GB
Ohjain: 2Ch3
NAND: TLC
Tiedonsiirtonopeus (ATTO):
 - Luku: Jopa 500 MB/s
 - Kirjoitus: Jopa 450 MB/s

Mitat: 100 x 69,9 x 7 mm
Paino: 41g
Elinikäodotus: 1 000 000 h
Total Bytes Written (TBW): 160TB', 'Tuotekoodi: SA400S37/480G
EAN: 0740617263442', 2);



create table asiakas (
    id int primary key auto_increment,
    etunimi varchar(50) not null,
    sukunimi varchar(50) not null,
    osoite varchar(50) not null,
    postinro varchar(50) not null,
    postitmp varchar(50) not null,
    foreign key (id) references kayttaja(id)
    on delete restrict
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