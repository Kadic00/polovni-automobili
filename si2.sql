-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2023 at 05:59 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si2`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `idKorisnika` int(11) NOT NULL,
  `ime` varchar(40) NOT NULL,
  `prezime` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `sifra` text NOT NULL,
  `broj` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`idKorisnika`, `ime`, `prezime`, `email`, `sifra`, `broj`) VALUES
(3, 'Kristina', 'Mojsic', 'kmojsic00@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '066000000'),
(6, 'Sonja', 'Arsic', 'sonjaarsic11@gmail.com', '1111', '0652006344'),
(15, 'Ana', 'Jovicic', 'anica2@gmail.com', 'ZGI2NTVkODQxYWFhMmEyNjdmMjZlY2M0ZmJiY2QwMTM=', '05346555'),
(14, 'Ana', 'Majic', 'anica@gmail.com', '1111', '0563355'),
(17, 'Anka', 'Babic', 'anka2@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', '0575535'),
(20, 'Nikola', 'Kadic', 'nikolakadic1@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '06079897967'),
(25, 'Sonja', 'Arsic', 'sonja@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '0646603000');

-- --------------------------------------------------------

--
-- Table structure for table `oglas`
--

CREATE TABLE `oglas` (
  `idOglasa` int(11) NOT NULL,
  `idKorisnika` int(11) NOT NULL,
  `nazivOglasa` text NOT NULL,
  `opis` text NOT NULL,
  `godinaProizvodnje` int(11) NOT NULL,
  `marka` varchar(20) NOT NULL,
  `predjeniKilometri` double NOT NULL,
  `cena` double NOT NULL,
  `vrstaPogona` enum('prednji','zadnji','4x4') NOT NULL,
  `tip` varchar(20) NOT NULL,
  `vrstaMenjaca` enum('automatski','manuelni') NOT NULL,
  `datumPostavljanja` date NOT NULL,
  `aktivan` tinyint(1) NOT NULL DEFAULT 2,
  `img` varchar(255) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oglas`
--

INSERT INTO `oglas` (`idOglasa`, `idKorisnika`, `nazivOglasa`, `opis`, `godinaProizvodnje`, `marka`, `predjeniKilometri`, `cena`, `vrstaPogona`, `tip`, `vrstaMenjaca`, `datumPostavljanja`, `aktivan`, `img`, `img1`, `img2`) VALUES
(19, 20, 'Mercedes-Benzova C-klasa Limuzina', 'Fenomenalno vozilo!', 2014, 'Mercedes', 28000, 26000, 'prednji', 'c250', 'automatski', '2023-01-23', 1, 'mecka.jpg', '63d3078a6a8ba.jpg', '63d3078a6a748.jpg'),
(20, 20, 'Mercedes-Benz GL', 'Odlicno vozilo za zimu.', 2014, 'Mercedes', 83000, 18000, '4x4', 'GL', 'manuelni', '2023-01-23', 1, 'gl.jpg', '63d307abc12ae.jpg', ''),
(21, 20, 'Volvo s40', 'Idealno vozilo.', 2007, 'Volvo', 134000, 6500, 'zadnji', 's40', 'manuelni', '2023-01-23', 1, 's40.jpg', '63d3074f3d76c.jpg', '63d3074f3d5fa.jpg'),
(22, 20, 'BMW X3', 'Odlicno vozilo,kao novo.', 2009, 'BMW', 54000, 9000, 'zadnji', 'X3', 'manuelni', '2023-01-23', 1, 'x3.jpg', '63d306956f45e.jpg', ''),
(23, 20, 'BMW 3', 'Ekstra vozilo.', 2006, 'BMW', 143000, 5000, 'prednji', 'Serija 3', 'manuelni', '2023-01-23', 1, 'stari.jpg', '63d3067004bdd.jpg', ''),
(24, 20, 'Peugeot 3008', 'Novo vozilo.', 2020, 'Peugeot', 15000, 39000, 'zadnji', '3008', 'automatski', '2023-01-23', 1, '1-Peugeot-3008.jpg', '63d30716cfe3f.jpg', ''),
(18, 20, 'Audi A3', 'Vrhunsko stanje vozila.', 2008, 'Audi', 98400, 9000, 'prednji', 'A3', 'manuelni', '2023-01-23', 1, 'Audi.jpg', '63d3063e27f8c.jpg', ''),
(17, 20, 'Nissan Qashqai', 'Odlicno vozilo,koa novo.', 2021, 'Nissan', 79800, 32000, 'prednji', 'Qashqai', 'automatski', '2023-01-23', 1, 'Qashqai.jpg', '63d306b5621f3.jpg', '63d306e564e3f.jpg'),
(25, 3, 'AUDI A1', 'Odlicno vozilo', 2015, 'Audi', 30000, 10000, 'prednji', 'tip', 'manuelni', '2023-01-25', 1, '63d10af0f07d7.jpg', '63dac59c5e2fa.jpg', ''),
(26, 17, 'Mercedes Benz G 500 AMG 4x4x2', 'Designo, carbon paket, harman kardon, chrom, schiber....Redovno odrzavan u ovlascenom servisu, odlicno stanje bez bilo kakvih ulaganja. Nove gume, odradjena keramicka zastita.', 2017, 'Mercedes', 44000, 210000, '4x4', 'Dzip/SUV', 'automatski', '2023-01-26', 1, '498b92b485a3-800x600.jpg', 'fd55063a16c1-800x600.jpg', 'ee76a2272126-800x600.jpg'),
(27, 17, 'Toyota Auris 2.0D4D', 'Automobil u odli?nom stanju Veoma mali potroša? Bez ulaganja', 2007, 'Toyota', 159000, 4700, 'prednji', 'Hecbek', 'manuelni', '2023-01-26', 1, '74afe64eeb01-800x600.jpg', '0648b04431f4-800x600.jpg', '691e8ef3e8cc-800x600.jpg'),
(28, 17, '2000 Mercedes E 320', 'Designo, carbon paket, harman kardon, chrom, schiber....Redovno odrzavan u ovlascenom servisu, odlicno stanje bez bilo kakvih ulaganja. Nove gume, odradjena keramicka zastita.', 2005, 'Mercedes', 34000, 3000000, 'zadnji', 'Limuzina', 'automatski', '2023-01-26', 1, '63d2795f80dbb.jpg', '63d27b14f38d5.jpg', '63d27b03ee7c8.jpg'),
(29, 3, 'Opel Astra K 1.6 CDTI SPORT', 'OPEL ASTRA SPORT TOURER INNOVATION, sa 1.6CDTI 81 kw,sa FULL OPREMOM,KOZA,LEDâ€¦.  VOZILO KAO NOVO', 2017, 'Opel', 183, 9, 'prednji', 'tip', 'manuelni', '2023-02-02', 1, '7d698427756c-800x600-dw.jpg', '66c0d86b3f9b-800x600-dw.jpg', ''),
(30, 3, 'Nissan Micra 1.0 turbo n-design', '', 2021, 'Nissan', 23, 16, 'prednji', 'tip', 'automatski', '2023-02-02', 1, 'b405a698e494-800x600-dw.jpg', '', ''),
(31, 17, 'Nissan Qashqai 1.6DCI N-CONNECT M/T', 'Designo, carbon paket, harman kardon, chrom, schiber....Redovno odrzavan u ovlascenom servisu, odlicno stanje bez bilo kakvih ulaganja. Nove gume, odradjena keramicka zastita.', 2000, 'Nissan', 3333, 23333, 'prednji', 'SUV', 'automatski', '2023-01-27', 2, 'nissan.jpg', '', ''),
(32, 25, 'Toyota Auris ', 'Popusti do 1000€! Stara cena : 19.999€  nova cena : 19.499€  Ušteda : 500€  • Vozilo kupljeno novo u Srbiji i registrovan do 24.10.2022. • 24 meseca ugovorne garancije ili 30.000 km • MAXX sertifikat i pregled u 110 ta?aka (kompletan detaljan pregled vozila,dostupan na uvid). • Originalna kilometraža • Redovno servisirano (servisna istorija ,dostupna na uvid).  • Ako posedujete isto vozilo (model) do 3 godina starije od oglašenog vozila – 500€ bonusa za zamenu (tako da vozilo za zamenu nije starije od 2012) • Vozilo je mogu?e kupiti putem kredita ili lizinga. Finansiranje putem kredita se obavlja na licu mesta, bez odlaska u banku. • Mogu?nost besplatnog pregleda kao i ponude za zamenu Vašeg vozila za novije uz Vašu ili jeftinije vozilo uz našu doplatu.  • Za više informacija o dodatnim garancijskim paketima za ovo vozilo potražite kod naših prodajnih savenika. • Istaknuta cena vozila je za uplatu u celosti, u slu?aju zamene cena vozila se koriguje u odre?enom procent', 2000, 'Toyota', 44444, 44444, 'prednji', 'SUV', 'automatski', '2023-01-27', 2, 'images.jpg', 'im.jpg', ''),
(33, 25, 'Peugeot 208 1.2 B Style ', 'Vozilo je uvezeno iz Svajcarske  Nikada nije bio teretno vozilo  ***GARANTUJEMO***  • Originalnu kilometrazu  • Tehni?ku ispravnost  • Legalnost vozila u zemlji i inostranstvu  • Originalnost propratne dokumentacije  • Redovno održavan u ovlaš?enim servisima.  ***OSTALE POGODNOSTI***  ZAPOSLENI SA UGOVOROM O RADU NA NEODRE?ENO VREME VLASNICI FIRMI – PAUŠALCI VLASNICI FIRMI – PREDUZETNICI KOJI SU PRESLI NA SAMOOPOREZIVANJE ADVOKATI VLASNICI FIRMI – D.O.O. PENZIONERI SA SRPSKOM PENZIJOM PENZIONERI SA STRANOM PENZIJOM  KREDITI SA U?EŠ?EM ZA KUPOVINU VOZILA U EURIMA PO SREDNJEM KURSU: Rok otplate – 13-84 meseci Kamatna stopa- 4,99 % godisnje - fiksna kamata Administrativni trosak – 2,95% - uklju?en u ratu kredita Ucesce – minimum 30% Starosna granica – do 70 godina starosti u momentu otplate kredita Za kredite preko 15.000 eur obavezno je Kasko osiguranje i zaloga.  ***U VEZI SA ZAMENAMA***  • U zamenu dolazi isklju?ivo jeftinije vozilo • Proverite trenutnu realnu tržišnu vrednost Vašeg vozila pre nego što nam ga ponudite u zamenu • Tako?e mogu?e je dati Vaš automobil u zameni kao u?eš?e, a ostatak kroz finansiranje putem beskamatnog kredita.  • Ukoliko ovaj auto ne ispunjava Vaše zahteve, obratite se našem prodajnom timu i poru?ite odgovaraju?i na 011/3292-295  Dobro došli u Imperial Auto', 2017, 'Peugeot ', 195000, 8300, 'prednji', 'Hecbek', 'manuelni', '2023-01-27', 1, 'p1.jpg', 'p2.jpg', 'p3.jpg'),
(34, 25, 'Volvo XC60 2.0d 4Wd R-Design', 'A K C I J A U JANUARU CENA SPUSTENA S 33000 NA 31000e AUTOMOBIL KAO NOV DIGITALNA SERVISNA AUTOMATIC DIGITALNA TABLA 2.0D 4X4 173KW 2018God FULLLL OPREMA R-DESIGN SVI SERVISI U OVLASCENOM BEZ OSTECENJA NA KAROSERIJI FULL LED MATRIX FAROVI XSENON SVETLA PARKING SENZORI NAVIGACIJA 360 kamere Head-UP DISPLAY RIKVERC KAMERA KOZNA SEDISTA FULLLLLLL. URADJEN PREGLED AMSS PROBA TABLE OBEZBEDJUJEMO ZA 15MIN A ZA KUPCE S TERITORIJE OPSTINE N.SAD MOZEMO REGISTROVATI AUTOMOBIL', 2018, 'Volvo', 230600, 28500, '4x4', 'Dzip/SUV', 'automatski', '2023-01-27', 1, 'c.jpg', 'cc.jpg', 'ccc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sacuvanioglasi`
--

CREATE TABLE `sacuvanioglasi` (
  `idOglasa` int(11) NOT NULL,
  `idKorisnika` int(11) NOT NULL,
  `idSacuvanog` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sacuvanioglasi`
--

INSERT INTO `sacuvanioglasi` (`idOglasa`, `idKorisnika`, `idSacuvanog`) VALUES
(25, 20, 1),
(25, 3, 4),
(19, 17, 6),
(30, 17, 7),
(17, 17, 8),
(26, 17, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`idKorisnika`);

--
-- Indexes for table `oglas`
--
ALTER TABLE `oglas`
  ADD PRIMARY KEY (`idOglasa`);

--
-- Indexes for table `sacuvanioglasi`
--
ALTER TABLE `sacuvanioglasi`
  ADD PRIMARY KEY (`idSacuvanog`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `idKorisnika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `oglas`
--
ALTER TABLE `oglas`
  MODIFY `idOglasa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sacuvanioglasi`
--
ALTER TABLE `sacuvanioglasi`
  MODIFY `idSacuvanog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
