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
    tuotekuvaus_lyhyt TEXT,
    tuotekuvaus_pitka TEXT,
    tekniset_tiedot TEXT,
    tuotekoodi VARCHAR(255),
    kategoria_id INT NOT NULL,
    index kategoria_id(kategoria_id),
    FOREIGN KEY (kategoria_id) REFERENCES tuotekategoriat(id)
    ON DELETE RESTRICT
);

INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_pitka, tuotekoodi, kategoria_id) VALUES ('Asus GeForce RTX 3060 -näytönohjain, 12GB', 449.90, 
'ASUS Dual GeForce RTX™ 3060 tarjoaa uusimman NVIDIA Ampere -arkkitehtuurin puhtaimmassa muodossaan yhdistäen suorituskyvyn ja yksinkertaisuuden parhaalla tavalla. 
Dual hyödyntää huipputason näytönohjaimien edistyneitä jäähdytysteknologioita. Siinä painotetaan tyylin sijaan sisältöä, joten se on täydellinen valinta tasapainoiseen kokoonpanoon. 
Lähde mukaan nauttimaan huippuluokan pelitehosta.','Tuotekoodi: DUAL-RTX3060-O12G-V2
EAN: 4711081309925',4);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_pitka, tuotekoodi, kategoria_id) VALUES ('MSI GeForce RTX 3060 -näytönohjain, 12GB', 549.90, 
'GeForce RTX™ 30 -sarjan grafiikkasuorittimet antavat äärimmäisen suorituskyvyn niin pelaajien kuin luovan työn tekijöidenkin käyttöön Tehon salaisuus on Ampere – NVIDIAN toisen 
sukupolven RTX-arkkitehtuuri, jonka uudistetut RT- ja Tensor-ytimet sekä SM-monisuorittimet varmistavat tähän asti realistisimman säteenseurantagrafiikan ja huippuluokan tekoälytoiminnot.',
'Tuotekoodi: RTX-3060-VENTUS-2X-12G-OC
EAN: 4719072793814', 4);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_pitka, tuotekoodi, kategoria_id) VALUES ('KFA2 GeForce RTX 4090 -näytönohjain, 24GB', 2479.90, 
'NVIDIA® GeForce RTX® 40 -sarjan grafiikkasuorittimet tarjoavat pelaajille ja luovan työntekijöille paljon muutakin kuin huippunopean grafiikan.
 Niiden teho on peräisin ultratehokkaasta NVIDIA Ada Lovelace -arkkitehtuurista, joka edustaa suoranaista kvanttiloikkaa suorituskyvyssä ja grafiikan tekoälytehostuksessa. 
 Säteenseurannan ja ultrasuurten FPS-pelinopeuksien ansiosta pääset kokemaan virtuaaliset maailmat todella elävän tuntuisina. Pääset myös tutustumaan mullistaviin uusiin tapoihin
  luoda ja nopeuttaa työnkulkuja.', 'Tuotekoodi: 49NXM5MD6DSK
EAN: 4895147150055',4);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_pitka, tuotekoodi, kategoria_id) VALUES ('Gigabyte GeForce RTX 3070 -näytönohjain, 8GB', 779.90, 
'GeForce RTX™ 30 -sarjan grafiikkasuorittimet antavat äärimmäisen suorituskyvyn niin pelaajien kuin luovan työn tekijöidenkin käyttöön Tehon salaisuus on Ampere – 
NVIDIAN toisen sukupolven RTX-arkkitehtuuri, jonka uudistetut RT- ja Tensor-ytimet sekä SM-monisuorittimet varmistavat tähän asti realistisimman säteenseurantagrafiikan 
ja huippuluokan tekoälytoiminnot.','Tuotekoodi: GV-N307TGAMING-8GD
EAN: 4719331310974',4);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_pitka, tuotekoodi, kategoria_id) VALUES ('Asus GeForce RTX 4090 -näytönohjain, 24GB', 2399.90, 
'NVIDIA® GeForce RTX® 40 -sarjan grafiikkasuorittimet tarjoavat pelaajille ja luovan työntekijöille paljon muutakin kuin huippunopean grafiikan. 
Niiden teho on peräisin ultratehokkaasta NVIDIA Ada Lovelace -arkkitehtuurista, joka edustaa suoranaista kvanttiloikkaa suorituskyvyssä ja grafiikan tekoälytehostuksessa. 
Säteenseurannan ja ultrasuurten FPS-pelinopeuksien ansiosta pääset kokemaan virtuaaliset maailmat todella elävän tuntuisina. Pääset myös tutustumaan mullistaviin uusiin 
tapoihin luoda ja nopeuttaa työnkulkuja.', 'Tuotekoodi: TUF-RTX4090-O24G-GAMING
EAN: 4711081936916', 4);

INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_lyhyt, tuotekuvaus_pitka, tekniset_tiedot, tuotekoodi, kategoria_id) VALUES ('Asus TUF B550 ATX -emolevy', 179.90,'Kestävä. vakaa. luotettava.
TUF GAMING B550 PRO tislaa uusimman AMD-alustan olennaiset osat ja yhdistää ne pelivalmiisiin ominaisuuksiin ja todistettuun kestävyyteen. Tämä emolevy on suunniteltu sotilaskäyttöön tarkoitetuilla komponenteilla, päivitetyllä tehoratkaisulla ja kattavilla jäähdytysvaihtoehdoilla. Kun rakennat TUF Gaming -emolevyllä, hyödyt myös TUF Gaming Alliancesta - ASUS-yhteistyöstä luotettujen teollisuuskumppaneiden kanssa, mikä takaa helpomman rakentamisen, parhaan yhteensopivuuden ja täydentävän estetiikan komponenteista toiseen.', 'Kestävä. vakaa. luotettava.
TUF GAMING B550 PRO tislaa uusimman AMD-alustan olennaiset osat ja yhdistää ne pelivalmiisiin ominaisuuksiin ja todistettuun kestävyyteen. Tämä emolevy on suunniteltu sotilaskäyttöön tarkoitetuilla komponenteilla, päivitetyllä tehoratkaisulla ja kattavilla jäähdytysvaihtoehdoilla. Kun rakennat TUF Gaming -emolevyllä, hyödyt myös TUF Gaming Alliancesta - ASUS-yhteistyöstä luotettujen teollisuuskumppaneiden kanssa, mikä takaa helpomman rakentamisen, parhaan yhteensopivuuden ja täydentävän estetiikan komponenteista toiseen.

Vakaa suorituskyky:
Päivitetyllä virransyötöllä ja kattavilla jäähdytysvaihtoehdoilla viimeisimpien AMD Ryzen -prosessorien polttoaineeksi sekä nopeamman muistin ja tallennustilan tueksi TUF Gaming B550 PRO on täydellinen perusta seuraavalle ydinsisällön taistelulaitteellesi.

DrMOS:
TUF Gaming B550 PRO: n sisäinen VRM hyödyntää 12 + 2 DrMOS-tehovaihetta, joissa yhdistyvät korkean ja matalan sivun MOSFETit ja ohjaimet yhdeksi paketiksi, mikä tuottaa AMD Ryzen ™ 5000 -sarjan / 4000 G-sarjan / 3000-sarjan prosessorien vaatiman tehon ja tehokkuuden. .

Stack Cool 3+:
2 unssin kuparikerrokset vetävät lämpöä pois kriittisistä komponenteista pitääkseen ne optimaalisissa käyttölämpötiloissaan ja antavat enemmän tilaa tilaa siirtää keskusyksiköt varastojen nopeuksiin.

ProCool-liitäntä:
Parannettu 8-nastainen + 4-nastainen liitin
Erittäin kestävä
Estä kuormittajat ja liitinvirheet

Verrattuna perinteisiin virtalähteisiin, ProCool-pistorasiat on rakennettu tiukkojen vaatimusten mukaisesti, jotta varmistetaan tasainen kosketus virtalähteisiin. Tuloksena oleva matalampi impedanssi auttaa estämään kuormittajat ja liitinvirheet.

Tuf-kuristimet:
Sertifioidut sotilasluokan TUF-rikastimet tuottavat kalliota tasaista tehoa prosessorille, mikä parantaa järjestelmän vakautta.

Tuf-kondensaattorit:
Alkuperäiskondensaattorit tarjoavat jopa 20% paremman lämpötilatoleranssin ja viisi kertaa pidemmän käyttöiän.

Digi + VRM:
Integroitu Digi + VRM -jännitesäätömoduuli (VRM) on yksi alan hienoimmista, mikä takaa erittäin sujuvan ja erittäin puhtaan virransyötön prosessorille jatkuvasti.

Helppo pc DIY:
TUF Gaming -emolevyt on suunniteltu siten, että ne on helppo asentaa ja konfiguroida juuri haluamallasi tavalla - myös ensimmäistä kertaa rakentajille. TUF Gaming Alliance -ekosysteemi tekee yhteensopivien osien valinnasta helppoa, kun taas Armory Crate -ohjelmisto tarjoaa järjestelmän asetusten täydellisen hallinnan yhden kojelaudan kautta. TUF Gaming -emolevyt tarjoavat sinulle kaiken mitä tarvitset unelmiesi pelilaitteen rakentamiseen lisäämättä monimutkaisuutta.

Rakenna luottavaisin mielin:
TUF Gaming Alliance on ASUS: n ja luotettavien PC-komponenttimerkkien välinen yhteistyö, joka varmistaa yhteensopivuuden useiden osien kanssa, kuten PC-kotelot, virtalähteet, suorittimen jäähdyttimet, muistisarjat ja paljon muuta. Kun lisää kumppanuuksia ja komponentteja lisätään säännöllisesti, TUF Gaming Alliance kasvaa edelleen. Lisätietoja

Mukaansatempaava pelaaminen:
TUF Gaming B550 PRO tarjoaa täydellisen, korkean suorituskyvyn pelipaketin, jolla on pitkä luettelo ominaisuuksista, jotka parantavat kokemustasi, mukaan lukien huippunopea verkkoyhteys sujuvampaan online-pelaamiseen, koskematon ääni FPS-pelaamiseen tarkoitetuilla paikannusmerkeillä ja sisäinen RGB-valaistus, joka synkronoituu liitettyjen lisävarusteiden kanssa auttaa luomaan henkilökohtaisen pelitunnelman.

Ainutlaatuinen 2,5 gigabitin ethernet:
2,5 G: n sisäinen Ethernet-kaapeli nostaa lähiverkkoyhteytesi loveen jopa 2,5-kertaisella kaistanleveydellä. Olemassa olevan LAN-kaapelin avulla voit hyödyntää tätä verkkopäivitystä saadaksesi sujuvamman, viiveettömän pelaamisen, suoratoista korkean resoluution videoita ja nauttia nopeammista tiedostojen siirroista.

Turbo LAN:
Verkkooptimointiohjelmisto muokattavaan pakettien priorisointiin:
Turbo LAN on verkon optimointiohjelmisto räätälöitäviin pakettien priorisointiin. CFosSpeed-liikenteen muotoilutekniikan avulla voit määrittää sovelluksen prioriteetin intuitiivisen käyttöliittymän kautta ja vähentää verkon viivettä.', 

'Prosessorituki:
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
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_lyhyt, tuotekuvaus_pitka, tekniset_tiedot, tuotekoodi, kategoria_id) VALUES ('Asus ROG B550 ATX -emolevy', 219.90,'Asus ROG STRIX B550-F GAMING on 
AMD B550 -piirisarjalla varustettu AM4-kantainen emolevy 3. sukupolven AMD Ryzen prosessoreille. 
Emolevy tukee myös BIOS-päivityksellä tulevan sukupolven AMD Ryzen prosessoreita. 
B550 piirisarjan PCIe 4.0 -tuki tarjoaa tarvittavan kaistan huippunopeille SSD-levyille ja seuraavan sukupolven näytönohjaimille!', 

'Asus ROG STRIX B550-F GAMING on 
AMD B550 -piirisarjalla varustettu AM4-kantainen emolevy 3. sukupolven AMD Ryzen prosessoreille. 
Emolevy tukee myös BIOS-päivityksellä tulevan sukupolven AMD Ryzen prosessoreita. 
B550 piirisarjan PCIe 4.0 -tuki tarjoaa tarvittavan kaistan huippunopeille SSD-levyille ja seuraavan sukupolven näytönohjaimille!',

'Prosessorituki:
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
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_lyhyt, tuotekuvaus_pitka, tekniset_tiedot, tuotekoodi, kategoria_id) VALUES ('Asus PRIME B660 ATX -emolevy', 169.90,'Asus PRIME B660-PLUS 
D4 on Intel B660 -piirisarjalla varustettu Intel LGA 1700-kantainen emolevy 12. sukupolven Intel prosessoreille.
PRIME B660 sarjan emolevyt tarjoavat tärkeimmät ominaisuudet laadukkaan kokoonpanon kokoamiseen edulliseen hintaan. 
PRIME-emolevyt soveltuvat hyvin peli- ja työkäyttöön tarjoten laadukkaan virransyötön myös tehokkaimmille Intel Core-prosessoreille.','Asus PRIME B660-PLUS 
D4 on Intel B660 -piirisarjalla varustettu Intel LGA 1700-kantainen emolevy 12. sukupolven Intel prosessoreille.
PRIME B660 sarjan emolevyt tarjoavat tärkeimmät ominaisuudet laadukkaan kokoonpanon kokoamiseen edulliseen hintaan. 
PRIME-emolevyt soveltuvat hyvin peli- ja työkäyttöön tarjoten laadukkaan virransyötön myös tehokkaimmille Intel Core-prosessoreille.',
'Prosessorituki:
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
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_lyhyt, tuotekuvaus_pitka, tekniset_tiedot, tuotekoodi, kategoria_id) VALUES ('MSI PRO Z690 ATX -emolevy', 219.90,'MSI PRO Z690-A DDR4 
on suunniteltu tarjoamaan uskomaton suorituskyky hintaan verrattuna. Emolevy käyttää 12. sukupolven Intel® Core™ -prosessoreita ja tukee jopa 128 Gt DDR4-RAM-muistia.
Tehokas ja viileä samaan aikaan. Emolevy on suunniteltu suurilla jäähdytyselementeillä, jotka mahdollistavat 12. sukupolven Intel® Core™ -prosessoreiden käytön täydellä teholla. 
Emolevyn rakenne on optimoitu kuljettamaan raskasta mutta silti tasaista virtaa koko emolevyn läpi, jotta voit nauttia tietokoneesta sillä tavalla kuin se on tarkoitettu.','MSI PRO Z690-A DDR4 
on suunniteltu tarjoamaan uskomaton suorituskyky hintaan verrattuna. Emolevy käyttää 12. sukupolven Intel® Core™ -prosessoreita ja tukee jopa 128 Gt DDR4-RAM-muistia.
Tehokas ja viileä samaan aikaan. Emolevy on suunniteltu suurilla jäähdytyselementeillä, jotka mahdollistavat 12. sukupolven Intel® Core™ -prosessoreiden käytön täydellä teholla. 
Emolevyn rakenne on optimoitu kuljettamaan raskasta mutta silti tasaista virtaa koko emolevyn läpi, jotta voit nauttia tietokoneesta sillä tavalla kuin se on tarkoitettu.','Prosessorituki:
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
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_lyhyt, tuotekuvaus_pitka, tekniset_tiedot, tuotekoodi, kategoria_id) VALUES ('Asus TUF B650 ATX -emolevy', 279.90,'ASUS TUF GAMING B650M-PLUS 
on AM5-kantainen mATX -peliemolevy Ryzen 7000-sarjan prosessoreille, jossa on PCIe 5.0 M.2-tuki, kaksi M.2-liitäntää, 2,5 Gb LAN, DDR5-muistituki, 12+2 tehoporrasta ja 
runsaasti liitäntöjä erilaisiin tarpeisiin, unohtamatta Asus Aura Sync RGB-tukea.','ASUS TUF GAMING B650M-PLUS on AM5-kantainen mATX -peliemolevy Ryzen 7000-sarjan prosessoreille, 
jossa on PCIe 5.0 M.2-tuki, kaksi M.2-liitäntää, 2,5 Gb LAN, DDR5-muistituki, 12+2 tehoporrasta ja runsaasti liitäntöjä erilaisiin tarpeisiin, unohtamatta Asus Aura Sync RGB-tukea.

ASUS TUF GAMING B650M-PLUS WIFI sisältää kaikki uusimpien AMD Ryzen 7000 -sarjan prosessoreiden olennaiset elementit ja yhdistää ne pelikäyttöön soveltuviin ominaisuuksiin 
ja todistettuun kestävyyteen. Tämä emolevy on suunniteltu sotilasluokan komponenteilla, päivitetyllä virtaratkaisulla ja kattavalla jäähdytysjärjestelmällä, 
ja se ylittää odotukset maratonpeleissä kivikovalla ja vakaalla suorituskyvyllä. TUF GAMING -emolevyille tehdään myös tiukat kestävyystestit, 
joilla varmistetaan, että ne kestävät olosuhteet, joissa muut saattavat epäonnistua. Esteettisesti tässä mallissa on käytetty mustia ja geometrisiä muotoiluelementtejä, 
jotka kuvastavat TUF GAMING -sarjalle ominaista luotettavuutta ja vakautta.',
'Prosessorituki:
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

INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_pitka, tuotekoodi, kategoria_id) VALUES ('AMD Ryzen 7 5800X3D', 459.90,'Tekniset tiedot:

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
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_pitka, tuotekoodi, kategoria_id) VALUES ('AMD Ryzen 5 5600X', 209.90,'Tekniset tiedot:

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
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_pitka, tuotekoodi, kategoria_id) VALUES ('AMD Ryzen 5 7600X', 319.90,'Puhdasta pelisuorituskykyä - hanki 6-ytiminen prosessori, joka on suunniteltu intensiiviseen pelitoimintaan!

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
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_pitka, tuotekoodi, kategoria_id) VALUES ('Intel Core i7-13700K', 569.90,'Tekniset tiedot:

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
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_pitka, tuotekoodi, kategoria_id) VALUES ('Intel Core i5-13600K', 429.90,'Tekniset tiedot:

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

INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_lyhyt, tuotekuvaus_pitka, tekniset_tiedot, tuotekoodi, kategoria_id) VALUES ('Kingston 16GB Fury Beast', 73.90, 'Matalaprofiilinen lämmönlevittimen design.
Kustannustehokas ja suorituskykyinen DDR4-päivitys.
Intel XMP-valmis.
Valmis AMD Ryzenille.
Valitse nopeus ja kapasiteetti omien tarpeidesi mukaan.
','Matalaprofiilinen lämmönlevittimen design.
Kustannustehokas ja suorituskykyinen DDR4-päivitys.
Intel XMP-valmis.
Valmis AMD Ryzenille.
Valitse nopeus ja kapasiteetti omien tarpeidesi mukaan.
','Kapasiteetti: 16GB (2 x 8GB)
Nopeus: 3200MHz
Latenssi: CL16 (16-18-18)
Jännite: 1.35 V
Rank: Single Rank (1R)', 'Tuotekoodi: KF432C16BBK2/16
EAN: 0740617319903', 3);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_lyhyt, tuotekuvaus_pitka, tekniset_tiedot, tuotekoodi, kategoria_id) VALUES ('Kingston 32GB Fury Renegade', 159.90, 'Korkeat nopeudet ja matalat latenssit toimittavat äärimmäistä suorituskykyä.
Intel XMP-profiilit optimoituja Intelin tuoreimmille piirisarjoille.
Valmis AMD Ryzenille.
Sähäkkä musta alumiininen lämmönlevitin.','Korkeat nopeudet ja matalat latenssit toimittavat äärimmäistä suorituskykyä.
Intel XMP-profiilit optimoituja Intelin tuoreimmille piirisarjoille.
Valmis AMD Ryzenille.
Sähäkkä musta alumiininen lämmönlevitin.',
'Kapasiteetti: 32GB (2 x 16GB)
Nopeus: 3600MHz
Latenssi: CL16 (16-20-20)
Jännite: 1.35 V
Rank: Dual Rank (2R)', 'Tuotekoodi: KF436C16RB1K2/32
EAN: 0740617322514', 3);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_lyhyt, tuotekuvaus_pitka, tekniset_tiedot, tuotekoodi, kategoria_id) VALUES ('Corsair 16GB Vengeance', 79.90, '	Musta jäähdytyslevy, kaksikanavainen, 8 kerroksen PCB-muistinjäähdytin, Black PCB, anodized aluminum heatspreader, Intel Extreme Memory Profiles (XMP 2.0), Vengeance LPX low profile heatspreader, puskuroimaton',
'Musta jäähdytyslevy, kaksikanavainen, 8 kerroksen PCB-muistinjäähdytin, Black PCB, anodized aluminum heatspreader, Intel Extreme Memory Profiles (XMP 2.0), Vengeance LPX low profile heatspreader, puskuroimaton. Corsair Vengeance LPX . Komponentti (tuotteelle): PC/palvelin, Sisäinen muisti: 16 GB, Muistin sijoitus (moduulit x koko): 2 x 8 GB, Sisäisen muistin tyyppi: DDR4, Muistin kellotaajuus: 3200 MHz, Muisti: 288-pin DIMM, CAS-viive: 16, Tuotteen väri: Musta',
'Kapasiteetti: 16GB (2 x 8GB)
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
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_lyhyt, tuotekuvaus_pitka, tekniset_tiedot, tuotekoodi, kategoria_id) VALUES ('Corsair 32GB Vengeance', 129.90, 'VENGEANCE LPX -muisti on suunniteltu erittäin suorituskykyiseen ylikellotukseen. Lämmönkestäjä on valmistettu puhtaasta alumiinista nopeamman lämmönpoiston aikaansaamiseksi. Kahdeksan kerroksen piirilevy auttaa hallitsemaan lämpöä ja tarjoaa ylivoimaisen ylikellotuksen ylätilaan.',
'VENGEANCE LPX -muisti on suunniteltu erittäin suorituskykyiseen ylikellotukseen. Lämmönkestäjä on valmistettu puhtaasta alumiinista nopeamman lämmönpoiston aikaansaamiseksi. Kahdeksan kerroksen piirilevy auttaa hallitsemaan lämpöä ja tarjoaa ylivoimaisen ylikellotuksen ylätilaan.


Ominaisuudet:

Suunniteltu korkean suorituskyvyn ylikellotukseen:
VENGEANCE LPX -muisti on suunniteltu erittäin suorituskykyiseen ylikellotukseen. Lämmitin on valmistettu puhtaasta alumiinista nopeamman lämmön haihtumisen varalta. Mukautettu suorituskykyinen piirilevy auttaa hallitsemaan lämpöä ja tarjoaa ylivoimaisen ylikellotuksen. Jokainen IC seulotaan erikseen huipputehopotentiaalin suhteen.

Yhteensopivuus testattu:
Osa tyhjentävästä testausprosessistamme sisältää suorituskyvyn ja yhteensopivuuden testauksen melkein jokaisella markkinoilla olevalla emolevyllä - ja harvoilla, jotka eivät ole.

XMP 2.0 -tuki:
Yksi asetus on kaikki, jotta säädetään automaattisesti VENGEANCE LPX -sarjan nopeimmalle turvalliselle nopeudelle. Saat uskomattoman, luotettavan suorituskyvyn ilman lukitusta tai muuta outoa käyttäytymistä.

Alumiininen lämmönlevitin:
Ylikellotusta yläpuolella rajoittaa käyttölämpötila. VENGEANCE LPX -lämpölevittimen ainutlaatuinen muotoilu vie optimaalisesti lämmön pois integroiduista komponenteista järjestelmän jäähdytyspolulle, joten voit työntää sitä kovemmin.

Suunniteltu korkean suorituskyvyn ylikellotukseen:
Jokainen VENGEANCE LPX -moduuli on rakennettu mukautetusta suorituskyvyn piirilevystä ja erittäin turvatarkistetusta muistin IC: stä. Tehokas lämmönlevitin tarjoaa tehokkaan jäähdytyksen ylikelloituspotentiaalin parantamiseksi.

Matalan profiilin muotoilu:
Pieni muotokerroin tekee siitä ihanteellisen pienissä tapauksissa tai muissa järjestelmissä, joissa sisätila on huippuluokkaa.

Vastaa järjestelmääsi:
Paras korkea suorituskykyinen järjestelmä näyttää yhtä hyvältä kuin se toimii. VENGEANCE LPX on saatavana useissa väreissä vastaamaan emolevyäsi, muita komponenttejasi, koteloa tai vain suosikkivärisi.
DDR4-muotokerroin on optimoitu viimeisimpiin DDR4-järjestelmiin ja tarjoaa korkeammat taajuudet, suuremman kaistanleveyden ja pienemmän virrankulutuksen kuin DDR3-moduulit. VENGEANCE LPX DDR4 -moduulit ovat yhteensopivuustestattuja DDR4-järjestelmissä luotettavan nopean suorituskyvyn saavuttamiseksi. Siellä on XMP 2.0 -tuki ongelmattomalle automaattiselle ylikellotukselle. Ja niitä on saatavana useissa väreissä vastaamaan henkilökohtaisia mieltymyksiäsi.

Maailmankuulu luotettavuus:
On syytä, miksi maailmanmestaruuden ylikellottajat, äärimmäisen pelin harrastajat ja huippuluokan järjestelmien rakentajat luottavat kaikki CORSAIRiin korkean suorituskyvyn muistiin, jonka ne voivat asentaa luottavaisesti ja ylpeänä. Rikotatko CORSAIR-muistia riippumatta siitä, rikotko omia levyjäsi tai rakennat vain unelmapelaamista.',
'Kapasiteetti: 32GB (2 x 16GB)
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
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_lyhyt, tuotekuvaus_pitka, tekniset_tiedot, tuotekoodi, kategoria_id) VALUES ('G.Skill 16GB Ripjaws V', 68.90, 'Klassisen Ripjaws-perheen viimeisin lisäys Ripjaws V -sarja on uusin kaksikanavainen DDR4-muisti, joka on suunniteltu maksimaaliseen yhteensopivuuteen ja huippuluokan suorituskykyyn Z170-sarjan piirisarjan kuudennen sukupolven Intel Core™ -prosessorin kanssa. Hienoimmista komponenteista valmistettu, tiukimmissa olosuhteissa testattu ja viisi värivaihtoehtoa tarjoava Ripjaws V on täydellinen valinta uuden suorituskykyjärjestelmän rakentamiseen tai yksinkertaiseen muistin päivitykseen.',
'Klassisen Ripjaws-perheen viimeisin lisäys Ripjaws V -sarja on uusin kaksikanavainen DDR4-muisti, joka on suunniteltu maksimaaliseen yhteensopivuuteen ja huippuluokan suorituskykyyn Z170-sarjan piirisarjan kuudennen sukupolven Intel Core™ -prosessorin kanssa. Hienoimmista komponenteista valmistettu, tiukimmissa olosuhteissa testattu ja viisi värivaihtoehtoa tarjoava Ripjaws V on täydellinen valinta uuden suorituskykyjärjestelmän rakentamiseen tai yksinkertaiseen muistin päivitykseen.

Huippunopea siirtonopeus
Saatavana laajalla valikoimalla taajuusvaihtoehtoja vakio-DDR4-2133MHz:stä kaksoiskanavaiseen DDR4-3733MHz:iin. Ripjaws V antaa sinun nauttia nopeammasta tietokonekokemuksesta pelaamista, videoiden ja kuvien muokkausta, renderöintiä ja tietojenkäsittelyä varten.

Testattu tiukasti yhteensopivuuden ja luotettavuuden suhteen
Jokainen Ripjaws V DDR4 -muistisarja on testattu G.SKILLin tiukan validointiprosessin avulla kaikilla tärkeimmillä suorituskykyisillä emolevymerkeillä, jotta varmistetaan luokkansa paras luotettavuus ja yhteensopivuus laajimmassa emolevyvalikoimassa.

Väritä se
Ripjaws V ei ole vain suunniteltu uudella tyylikkäällä ulkoasulla, vaan se on saatavana myös viidessä eri värissä: Blazing Red, Steel Blue, Radiant Silver, Gunmetal Grey ja Classic Black. Olitpa sitten moderaattori, joka etsii yhteensopivia sävyjä tai haluat rakentaa upean uuden järjestelmän, Ripjaws V on loistava valikoima.

Moduulin korkeus 42 mm
Jatkaen jälkimarkkinoiden CPU-jäähdyttimen yhteensopivuuden perinnettä, Ripjaws V on suunniteltu 42 mm:n moduulikorkeudella, joka sopii useimpiin ylimitoitettuihin suorittimen jäähdytyslevyihin.

Jopa 64 Gt Ultra High Kapasiteetti
Ripjaws V tarjoaa erilaisia kapasiteettikokoonpanoja, ei vain 4 Gt:n ja 8 Gt:n moduuleilla, vaan myös erittäin suurilla 16 Gt:n kapasiteetilla jopa 64 Gt (16 Gt x 4) asti. Mahdollisuudet ovat rajattomat!

Tehotehokas
Suunniteltu pienelle jännitteelle 1,2 V ~ 1,35 V DDR4-standardilla, tämä alentaa muistin jännitevaatimusta 20 % DDR3-muistisarjoista! Nyt järjestelmäsi voi toimia entistä nopeammin ilman, että siitä tulee kallis laitelämmitin.

XMP 2.0 -tuki
Aseta ja aloita. Uusimmilla Intel XMP 2.0 -profiileilla ohjelmoituna ainoa asia sinun ja äärimmäisen suorituskyvyn välillä on yksinkertainen asetus.','Malli: Ripjaws V
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

INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_lyhyt, tuotekuvaus_pitka, tekniset_tiedot, tuotekoodi, kategoria_id) VALUES ('Samsung 1TB 980 SSD-levy', 114.90,'Päivitä NVMe:n huippunopeuksiin
On aika ottaa kaikki irti tietokoneesi potentiaalista 980-mallin avulla. Riippumatta siitä tarvitsetko lisää sujuvuutta pelaamiseen vai tehoa vaativan grafiikan käsittelyyn työtehtävissäsi,
980 on erinomainen valinta. Se tarjoaa luokkansa parasta SSD-suorituskykyä, joka perustuu NVMe- ja PCIe 3.0 -tekniikkaan.', 'Päivitä NVMe:n huippunopeuksiin
On aika ottaa kaikki irti tietokoneesi potentiaalista 980-mallin avulla. Riippumatta siitä tarvitsetko lisää sujuvuutta pelaamiseen vai tehoa vaativan grafiikan käsittelyyn työtehtävissäsi, 
980 on erinomainen valinta. Se tarjoaa luokkansa parasta SSD-suorituskykyä, joka perustuu NVMe- ja PCIe 3.0 -tekniikkaan.

Salamannopea
Täyttä vauhtia eteenpäin. 980 hyödyntää PCIe 3.0 -väylän tarjoamia nopeusetuja HMB-tekniikan ja merkittävästi parantuneen NVMe-tehokkuuden kautta. Rakenne ei sisällä DRAM-muistia ja levy tarjoaa erinomaista vastinetta rahoille sillä sen sekventiaaliset luku-/kirjoitusnopeudet ovat jopa 3 500/3 000 Mt/s* – yli 6,2 kertaa nopeampia kuin SATA SSD -levyillä.

Full Power Mode auttaa työskentelemään ilman taukoja
Pidä SSD-levysi jatkuvasti tasaisen suorituskykyisenä Full Power Mode -tilan avulla joka aktivoidaan Samsung Magician -ohjelmassa.

Pitkäkestoista suorituskykyä
Tallenna tiedostosi varmasti SSD-levylle, joka on valmistettu pitkäaikaiseen käyttöön. Jopa 600 TBW ja viiden vuoden rajoitettu takuu. 980-mallin optimoitu kestävyys ja luotettavuus perustuvat Samsungin omiin ratkaisuihin – viimeisimmästä ohjaimesta V-NAND-tekniikkaan ja uusimpaan laiteohjelmistoon.

Luotettavaa lämmönhallintaa
Suorituskykyiset SSD-levyt vaativat yleensä huipputehokasta lämmönhallintaa. Vakaan suorituskyvyn takaamiseksi 980:ssä on nikkelipinnoite, joka auttaa hallitsemaan lämpötasoa. Lisäksi lämpöä pois johtava levy varmistaa NAND-piirin tehokkaan lämmönhallinnan.

Samsung Magician -ohjelmisto
Hyödynnä 980:n teho kokonaisuudessaan Samsung Magicianin helppokäyttöisten mutta samalla edistyneiden optimointityökalujen avulla.
Voit valvoa levyn terveyttä, optimoida sen suorituskyvyn, suojata tärkeitä tietoja ja saada tärkeitä päivityksiä, kun Magician varmistaa SSD:n optimaalisen suorituskyvyn.',
'Väylä: PCIe Gen3 X4, NVMe 1.4
Form Factor: M.2 (2280)
Rauta:

NAND: V6(12xL) V-NAND 3bit MLC
Kontrolleri: Pablo
Cache muisti: DRAMless, Host Memory Buffer
Käytettävissä oleva kapasiteetti: 1TB
Vaiheittainen luku/kirjoitusnopeus: Jopa 3500 / 3000 MB/s
Random Read/Write (QD1): 17 000 / 54 000 IOPS
Random Read/Write (QD32): 500 000 / 480 000 IOPS
Virta:

Active/Peak: 4.6 W / 5.3 W
Device Sleep (L1.2): 5 mW
Salaus: Class 0 (AES 256), TCG/Opal v2.0, MS eDrive (IEEE1667)
Total Bytes Written: 600 TB','Tuotekoodi: MZ-V8V1T0BW
EAN: 8806090572210', 2);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_lyhyt, tuotekuvaus_pitka, tekniset_tiedot, tuotekoodi, kategoria_id) VALUES ('Samsung 1TB PRO 980 SSD-levy', 134.90,'Samsung PCIe 4.0 NVMe SSD 980 PRO antaa tehoa, jolla viet tietokoneen käytön seuraavalle tasolle. 980 PRO:n PCIe 4.0 -liitäntä merkitsee kaksinkertaista tiedonsiirtonopeutta PCIe 3.0 -liitäntään verrattuna.

Taaksepäin yhteensopivuus PCIe 3.0:n kanssa lisää käyttömahdollisuuksia.','Samsung PCIe 4.0 NVMe SSD 980 PRO antaa tehoa, jolla viet tietokoneen käytön seuraavalle tasolle. 980 PRO:n PCIe 4.0 -liitäntä merkitsee kaksinkertaista tiedonsiirtonopeutta PCIe 3.0 -liitäntään verrattuna.

Taaksepäin yhteensopivuus PCIe 3.0:n kanssa lisää käyttömahdollisuuksia.

Enimmäisnopeus - 980 PRO:ssa on Samsungin oma Elpis Controller, joka varmistaa PCIe 4.0 SSD -liitännän optimoidun nopeuden. Lukunopeus on jopa 7 000 Mt/s, mikä on kaksi kertaa nopeampi kuin PCIe 3.0 SSD -levyillä ja 12,7 kertaa nopeampi kuin SATA SSD  levyillä. 980 PRO saavuttaa enimmäisnopeuden PCIe 4.0 -liitännällä ja nopeus voi vaihdella muissa ympäristöissä.

Voittoisa yhdistelmä - Hardcore-pelaajille ja tekniikan ystäville suunniteltu 980 PRO tarjoaa korkeaa suorituskykyä ja tehoa vaativiin sovelluksiin kuten peleihin, grafiikkaan, data-analyyseihin, ym. Pelit latautuvat nopeasti, joten voit pelata enemmän ja odotella vähemmän.

Tehokas M.2 SSD - 980 PRO -levy on kompakti M.2 2280 -malli, joka on helppo liittää pöytämallisiin ja kannettaviin tietokoneisiin halutulla tavalla. Se sopii erinomaisesti suorituskykyisten tietokonejärjestelmien rakentamiseen optimoidun virtatehokkuutensa ansiosta.

Luotettava lämmönhallinta - Suorituskykyiset SSD-levyt vaativat yleensä tehokasta lämmönhallintaa. Vakaan toiminnan varmistamiseksi 980 PRO:ssa on nikkelipinnoitus, joka auttaa ohjaimen lämmönhallinnassa sekä lämmönjakaja, joka tehostaa NAND-piirin lämmönhallintaa.

Älykäs lämmönhallintaratkaisu - Samsungin edistynyt lämmönhallintaalgoritmi auttaa varmistamaan, että 980 PRO pitää lämmön hallinnassa luotettavan ja kestävän toiminnan varmistamiseksi. Jotta suorituskyvyn vaihtelut voidaan minimoida, Samsungin Dynamic Thermal Guard -teknologia pitää 980 PRO:n lämpötilan optimaalisella tasolla.

Samsung Magician -ohjelmisto - Hyödynnä 980 PRO:n teho Samsung Magician -ohjelmiston helppokäyttöisillä mutta edistyneillä optimointitoiminnoilla. Magicianin avulla voit tarkistaa levyn terveyden, optimoida suorituskyvyn, suojata arvokkaita tietoja ja saada tärkeitä päivityksiä. Siten varmistat, että SSD-levy säilyttää parhaan mahdollisen suorituskyvyn.',
'Yleistä
Kapasiteetti: 1TB
Form Factor: M.2 (2280)
Väylä: PCIe Gen 4.0 x4, NVMe 1.3c
Mitat (LxKxS): 80,15 x 22,15 x 2,38 mm
Paino: Maks. 9,0 g
Tallennusmuisti: Samsung V-NAND 3-bit MLC
Kontrolleri: Samsung Elpis Controller
Cache muisti: Samsung 1GB Low Power DDR4 SDRAM

Erikoisominaisuudet
 - TRIM -tuki
 - S.M.A.R.T -tuki
 - Garbage Collection
 - Salaustuki: AES 256-bit Encryption (Class 0), TCG/Opal, IEEE1667 (Encrypted drive)
 - Device Sleep Mode -tuki

Suorituskyky
Vaiheittainen luku: Jopa 6900 MB/s
Vaiheittainen kirjoitus: Jopa 5000 MB/s
Random Read (4KB, QD32): Jopa 1 000 000 IOPS
Random Write (4KB, QD32): Jopa 1 000 000 IOPS
Random Read (4KB, QD1): Jopa 22 000 IOPS
Random Write (4KB, QD1): Jopa 60 000 IOPS

Kestävyys
Luotettavuus (MTBF): 1,5 miljoonaa tuntia
Takuu: 5 vuotta tai 600 TBW', 
'Tuotekoodi: MZ-V8P1T0BW
EAN: 8806090295546', 2);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_lyhyt, tuotekuvaus_pitka, tekniset_tiedot, tuotekoodi, kategoria_id) VALUES ('Samsung 2TB PRO 980 SSD-levy', 269.90,'Samsung PCIe 4.0 NVMe SSD 980 PRO antaa tehoa, 
jolla viet tietokoneen käytön seuraavalle tasolle. 980 PRO:n PCIe 4.0 -liitäntä merkitsee kaksinkertaista tiedonsiirtonopeutta PCIe 3.0 -liitäntään verrattuna.

Taaksepäin yhteensopivuus PCIe 3.0:n kanssa lisää käyttömahdollisuuksia.','Samsung PCIe 4.0 NVMe SSD 980 PRO antaa tehoa, jolla viet tietokoneen käytön seuraavalle tasolle. 980 PRO:n PCIe 4.0 -liitäntä merkitsee kaksinkertaista tiedonsiirtonopeutta PCIe 3.0 -liitäntään verrattuna.

Taaksepäin yhteensopivuus PCIe 3.0:n kanssa lisää käyttömahdollisuuksia.

Enimmäisnopeus - 980 PRO:ssa on Samsungin oma Elpis Controller, joka varmistaa PCIe 4.0 SSD -liitännän optimoidun nopeuden. 
Lukunopeus on jopa 7 000 Mt/s, mikä on kaksi kertaa nopeampi kuin PCIe 3.0 SSD -levyillä ja 12,7 kertaa nopeampi kuin SATA SSD  levyillä. 
980 PRO saavuttaa enimmäisnopeuden PCIe 4.0 -liitännällä ja nopeus voi vaihdella muissa ympäristöissä.Voittoisa yhdistelmä - Hardcore-pelaajille ja tekniikan ystäville suunniteltu 980 PRO tarjoaa korkeaa suorituskykyä ja tehoa vaativiin sovelluksiin kuten peleihin, grafiikkaan, data-analyyseihin, ym. Pelit latautuvat nopeasti, joten voit pelata enemmän ja odotella vähemmän.

Tehokas M.2 SSD - 980 PRO -levy on kompakti M.2 2280 -malli, joka on helppo liittää pöytämallisiin ja kannettaviin tietokoneisiin halutulla tavalla. Se sopii erinomaisesti suorituskykyisten tietokonejärjestelmien rakentamiseen optimoidun virtatehokkuutensa ansiosta.

Luotettava lämmönhallinta - Suorituskykyiset SSD-levyt vaativat yleensä tehokasta lämmönhallintaa. Vakaan toiminnan varmistamiseksi 980 PRO:ssa on nikkelipinnoitus, joka auttaa ohjaimen lämmönhallinnassa sekä lämmönjakaja, joka tehostaa NAND-piirin lämmönhallintaa.

Älykäs lämmönhallintaratkaisu - Samsungin edistynyt lämmönhallintaalgoritmi auttaa varmistamaan, että 980 PRO pitää lämmön hallinnassa luotettavan ja kestävän toiminnan varmistamiseksi. Jotta suorituskyvyn vaihtelut voidaan minimoida, Samsungin Dynamic Thermal Guard -teknologia pitää 980 PRO:n lämpötilan optimaalisella tasolla.

Samsung Magician -ohjelmisto - Hyödynnä 980 PRO:n teho Samsung Magician -ohjelmiston helppokäyttöisillä mutta edistyneillä optimointitoiminnoilla. Magicianin avulla voit tarkistaa levyn terveyden, optimoida suorituskyvyn, suojata arvokkaita tietoja ja saada tärkeitä päivityksiä. Siten varmistat, että SSD-levy säilyttää parhaan mahdollisen suorituskyvyn.',
'Yleistä
Laitteen tyyppi: Puolijohdeasema - sisäinen
Muistin koko: 2 TB
Laitteistosalaus: Kyllä
Salausalgoritmi: AES 256 bittiä
Koko tai muoto: M.2 2280
Liitäntä: PCI Express 4.0 x4 (NVMe)
Puskurin koko: 2 Gt
Ominaisuudet: TRIM-tuki, unitila, Auto Garbage Collection Algorithm, TurboWrite Technology, Low Power DDR4 SDRAM Cache, NVM Express (NVMe) 1.3c, Samsung V-NAND 3bit MLC Technology, Samsung Elpis Controller, S.M.A.R.T.
Leveys: 22.15 mm
Syvyys: 80.15 mm
Korkeus: 2.38 mm
Paino: 9 g
 
Suorituskyky
Puolijohdeaseman kestokyky: 1200 TB
Sisäinen tiedonsiirtonopeus: Jopa 7000 MBps (luku) / Jopa 5100 MBps (kirjoitus)
4KB, QD1 Random Read: 22 000 IOPS
4KB, QD1 Random Write: 60 000 IOPS
Maximum 4KB Random Write: 1 000 000 IOPS
4KB enimmäissatunnaistoisto: 1 000 000 IOPS
 
Luotettavuus
Keskimääräinen vikaväli (MTBF): 1,500,000 tuntia
 
Laajennus & Liitäntä
Liitännät: PCI Express 4.0 x4 (NVMe) - M.2 Card
Yhteensopiva paikka: M.2 2280
 
Virransyöttö
Virrankulutus: 
6.1 watt (keskimäärä)
7.2 watt (maksimi)
35 mW (joutokäynnillä)
 
Ohjelmisto & Järjestelmävaatimukset
Mukana tulevat ohjelmistot: Samsung Magician Software',
'Tuotekoodi: MZ-V8P2T0BW
EAN: 8806090696534', 2);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_lyhyt, tuotekuvaus_pitka, tekniset_tiedot, tuotekoodi, kategoria_id) VALUES ('Kingston 1TB NV2 SSD-levy', 89.90,'Edistyksellinen lisälaite ohuisiin kannettaviin tietokoneisiin ja muihin järjestelmiin

Kingstonin NV2 PCIe 4.0 NVMe SSD on varteenotettava uuden sukupolven tallennusratkaisu, jossa on Gen 4x4 NVMe -ohjain. NV2:n luku- ja kirjoitusnopeudet ovat jopa 3 500 ja 2 800 Mt/s alhaisella virrantarpeella ja vähäisellä lämmöntuotolla, mikä auttaa optimoimaan järjestelmän toimintaa ja tuomaan lisäarvoa ilman kompromisseja.',
'Edistyksellinen lisälaite ohuisiin kannettaviin tietokoneisiin ja muihin järjestelmiin

Kingstonin NV2 PCIe 4.0 NVMe SSD on varteenotettava uuden sukupolven tallennusratkaisu, jossa on Gen 4x4 NVMe -ohjain. NV2:n luku- ja kirjoitusnopeudet ovat jopa 3 500 ja 2 800 Mt/s alhaisella virrantarpeella ja vähäisellä lämmöntuotolla, mikä auttaa optimoimaan järjestelmän toimintaa ja tuomaan lisäarvoa ilman kompromisseja. Kompakti toispuoleinen M.2 2280 -malli (22 x 80 mm) laajentaa tallennustilaa jopa 2 teratavuun samalla kun se jättää tilaa vapaaksi muille komponenteille. Näin NV2 on ihanteellinen valinta ohuisiin kannettaviin tietokoneisiin, pienikokoisiin järjestelmiin ja omatoimisten tietokoneharrastajien emolevyihin.

Tuotetta on saatavilla 250 gigatavun - 2 teratavun kapasiteeteilla. Näin saadaan käyttöön kaikki tarvittava tila sovelluksille, asiakirjoille, valokuville, videoille ym. sisällölle.    

Ominaisuudet:                        

Gen 4x4 NVMe PCIe -suorituskyky
Ihanteellinen kannettaviin tietokoneisiin ja pienikokoisiin tietokonejärjestelmiin
Kapasiteetti jopa 2 Tt',
'Kapasiteetti: 1TB
Nopeus: 3500 / 2100 Mt/s
Käyttökestävyys (kirjoitetut teratavut): 320 Tt
Virrankulutus: 1,2 W joutokäynti / 1,4 W keskim. / 2,2 W (maks.) luku / 5,0 W (maks.) kirjoitus
Varastointilämpötila: -40 °C ~ 85 °C
Käyttölämpötila-alue: 0°C ~ 70°C
Värähtelyn kestävyys käyttötilassa: 2,17 G (7–800 Hz)
Värähtelyn kestävyys lepotilassa: 20 G (20–1000 Hz)    
MTBF: 1 500 000 h
Mitat: 80 x 22 x 3,5 mm
Nettopaino: 7 g',
'Tuotekoodi: SNV2S/1000G
EAN: 0740617329919', 2);
INSERT INTO tuotteet (nimi, hinta, tuotekuvaus_lyhyt, tuotekuvaus_pitka, tekniset_tiedot, tuotekoodi, kategoria_id) VALUES ('Kingston 480GB A400 SSD-levy', 49.90,'Kingston A400 SSD-kovalevy on helppo ja erittäin edullinen tapa päivittää tietokoneen suorituskykyä. SSD-kovalevy on perinteistä HDD-kovalevyä nopeampi, hiljaisempi ja viileämpi. SSD-kovalevy ei sisällä liikkuvia osia, joten se on myös kestävämpi ja pitkäikäisempi.',
'Kingston A400 SSD-kovalevy on helppo ja erittäin edullinen tapa päivittää tietokoneen suorituskykyä. SSD-kovalevy on perinteistä HDD-kovalevyä nopeampi, hiljaisempi ja viileämpi. SSD-kovalevy ei sisällä liikkuvia osia, joten se on myös kestävämpi ja pitkäikäisempi.

Lukunopeus 500 Mt/s
Kirjoitusnopeus 450 Mt/s
2,5"
SATA III (6 Gt/s) -väylään
7 mm slim-kotelointi',
'Form Factor: 2.5"
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