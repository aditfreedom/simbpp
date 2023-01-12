-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 12, 2023 at 03:23 PM
-- Server version: 10.5.17-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1552610_simbpp`
--

-- --------------------------------------------------------

--
-- Table structure for table `biaya`
--

CREATE TABLE `biaya` (
  `id_biaya` int(11) NOT NULL,
  `nominal` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `biaya`
--

INSERT INTO `biaya` (`id_biaya`, `nominal`, `keterangan`) VALUES
(2, '300000', 'BPP SD'),
(4, '370000', 'BPP SMP'),
(5, '150000', 'BEASISWA SD'),
(6, '0', 'BEASISWA FULL'),
(7, '263000', 'BPP SD LAMA'),
(8, '430000', 'BPP SMA'),
(11, '131500', 'Subsidi Sekolah 2'),
(12, '185000', 'Subsidi Sekolah 3'),
(13, '225000', 'Subsidi Sekolah 4');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `nis` varchar(15) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `id_rombel` varchar(11) NOT NULL,
  `jenjang` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `jumlah_bulan` varchar(11) NOT NULL,
  `bpp_per_bulan` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`nis`, `nama`, `kelas`, `id_rombel`, `jenjang`, `status`, `keterangan`, `jumlah_bulan`, `bpp_per_bulan`, `total`) VALUES
('10153035', 'Nadya Ukhtiana', '8', '20', 'SMP', 'LUNAS', '    \nLUNAS 1 SEMESTER ', '0', '370000', '0'),
('10163006', 'Arifa Fitra', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS 1 SEMESTER', '0', '370000', '0'),
('10163008', 'CUT HAURA KHALISHAH', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10163010', 'ERIC JARVIS', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10163014', 'Gheena Ameera', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10163017', 'HAFIZ RIFIANSYAH', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10163025', 'Khansa Aurelia', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10163027', 'Leonardo Tandia', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10163028', 'Loetito Nanggroe', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10163036', 'Muhammad Rizky Alvatta', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10163042', 'Naylatul Salwa', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10163043', 'Naysyila Syahirah', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10163048', 'Saif Azizi Srinanda', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10163049', 'Saskya Dwi Anggreini', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10163050', 'Syafiq Shandiatha Fawwaz', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10163055', 'Yusuf Muharram', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS 1 SEMESTER', '0', '370000', '0'),
('10163056', 'Zahira Zawiya Putri Zalia', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10173003', 'AQEELA NAWAL FATHINA', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '263000', '0'),
('10173004', 'AQNATUNNISWAH', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173005', 'AZKA AL FATA', '6', '15', 'SD', 'LUNAS', '    \n    \r\nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173006', 'ATAYA EL RAFIF', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '263000', '0'),
('10173007', 'AURA SYAKILA', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173008', 'AQIL AZIZI', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '263000', '0'),
('10173009', 'CARRICK CLASSICO', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173010', 'DINAYRA PUTRI', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173011', 'DINASTI ARADHANA NASUTION', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173012', 'FARISYA KAMILA', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173013', 'FIRANNAZWAN WAHAB', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173014', 'FATHUR RAHMAN', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173015', 'FATIH MURADI RUZIQ', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173016', 'FIRYAL NABILA', '6', '16', 'SD', 'LUNAS', '    \n    \r\nLUNAS SEMESTER 1 ', '0', '263000', '0'),
('10173017', 'GWYNETHA MEYVANIA LISA', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173018', 'HAZIQ AKRAM', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173020', 'KAISAL KIRAM', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173022', 'KAHFI WAHYU PRATAMA', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173023', 'KHANSA LUTHFYA INDAH', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173024', 'KEVIN PRATAMA', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173025', 'MUHAMMAD LUTHFI', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173026', 'MUHAMMAD HANIF', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173027', 'MUHAMMAD ZAIDAN AZRA', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173028', 'M KHALILUL MUSYFIQ', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173029', 'M. GHAISAN AL-AZZAM', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '263000', '0'),
('10173031', 'MUHAMMAD AQIL SYAUQI', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173032', 'T. MUHAMMAD JIBRIL', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173034', 'MUHAMMAD HARIS AUFA', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '263000', '0'),
('10173035', 'MUHAMMAD AL GHIFARI', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '263000', '0'),
('10173036', 'MUHAMMAD FAIDZUL IZZI', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173038', 'MUHAMMAD AQILSUJA', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173039', 'MIFZAL GUSTAV AZMI', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173040', 'NAJWA NABILA', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173041', 'NAILA RAMADHANI', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173042', 'RAIZA FATIH ALNAZWAR', '6', '16', 'SD', 'LUNAS', '    \n    \r\nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173043', 'RAVI QUNNAS', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173044', 'REYAN EL FACHRI', '6', '15', 'SD', 'LUNAS', '    \nLunas semester 1', '0', '263000', '0'),
('10173045', 'RIFQA HUMAIRA', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173046', 'RAIHAN ULFA', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '263000', '0'),
('10173048', 'SAIF AL AZIZI', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173049', 'SAID NADHIF RIZA', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173050', 'SHAVIQ RIZKY ADITYA', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173051', 'SULTHAN PARISYA AL-KATIRY', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173052', 'SUQIA RAHMAH', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173053', 'TSAQIF AL-WAFI', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173054', 'ULFA KHAIRA FITRI', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173055', 'VANESA LIVIANA VENI', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173056', 'YASMIN ATHAMIMI', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10173059', 'BRYANT CLERESTA UTAMA', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10173060', 'MUHAMMAD KHALIL', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10183002', 'MUHAMMAD FATHIN ARFA', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183004', 'BALWA TAJUSA', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183006', 'AMIRA NURUL FAZLIA', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183007', 'MUHAMMAD ASYRAF RAHFAN', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '131500', '0'),
('10183009', 'MUBARAK ASKAFIA', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183010', 'YUSUF AL QARDHAWI', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183011', 'JOLIN KOEMARDI', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183013', 'ZINOYA HILMIRA', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183014', 'ZIFANA NAIRA LATISYA', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183015', 'NADA NADHIFA', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '263000', '0'),
('10183017', 'AERILYN BELLVANIA', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183018', 'ZULFIKRI', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183019', 'BENAZIR ZAHIRAH TAUFIQ', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '131500', '0'),
('10183020', 'ADAM FAIZ', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183021', 'MUHAMMAD ADIL', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183022', 'MUHAMMAD RIFAI', '5', '14', 'SD', 'LUNAS', '    \n    \r\nLUNAS SEMESTER 1 ', '0', '263000', '0'),
('10183023', 'MUHAMMAD RAZAN', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183024', 'RAFA KHAIRI ARKAN', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '263000', '0'),
('10183025', 'JASMINE NAURATUL FANNY', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '131500', '0'),
('10183027', 'FARIZ ASYRAF', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183029', 'IZA NAZIRA', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183030', 'DESTINY CINTA RIZVIE', '5', '14', 'SD', 'LUNAS', '    \n LUNAS SEMESTER 1', '0', '131500', '0'),
('10183031', 'SHAQUILLE ARSYADIWA FAWWAZ', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183033', 'MIFZAL HAFIZ', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '263000', '0'),
('10183034', 'AIDILA NATASYA', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183035', 'MUHAMMAD ALIF IZAZ', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '263000', '0'),
('10183036', 'WARDATUL ULAA', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '263000', '0'),
('10183037', 'MUNAYA KAMILA', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183039', 'HAFIDH AL KIRAM', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183040', 'ZIAD MUBARRAK', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183041', 'CUT ADILA FARADINA', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183042', 'ABBAS RAFIUDDIN', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183043', 'MUHAMMAD FARIS MAULANA', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183044', 'FARHANATUL HAFIDHAH', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183045', 'MUHAMMAD ZAFRIN AL GHIFARI', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '263000', '0'),
('10183046', 'IZZAH BADRINA HASRA', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183047', 'FATHIR SYAWALUL RIZAL', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183048', 'RAISA ZHAFIRA', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183049', 'INAYYAH FAUZIA HABIBIE', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183050', 'KEYSHA ATHA HUMAIRA', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '263000', '0'),
('10183052', 'MUHAMMAD AUFA', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183053', 'AUREN LEODRA UTAMA', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '263000', '0'),
('10183054', 'CHE THARA ALAMANDA', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183055', 'SAIF ASHRAF', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183056', 'GHINAA AQIILAH', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '131500', '0'),
('10183057', 'NADHA FILZAH DAYAHNA', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183058', 'LUXVI LATIVA', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183059', 'ATHALLAH ABIYU SIDDIK', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER I', '0', '131500', '0'),
('10183060', 'FRANKLIN RAU', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183061', 'NIZHAM JIRATULLAH SARIZ', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183062', 'NAJWA ZHAAFIRAH CAESAR', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '131500', '0'),
('10183063', 'MYIESHA NAFEEZA AMIRA', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183066', 'MUHAMMAD ALFI', '5', '14', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183067', 'AURA SALSABILA', '6', '16', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '263000', '0'),
('10183068', 'Fathi Yakan Alkafi', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMMESTER 1', '0', '370000', '0'),
('10183073', 'M. ALTHAF SYAHRIZAL', '6', '16', 'SD', 'LUNAS', '    \nLUNAS 1 SEMESTER', '0', '263000', '0'),
('10183075', 'MUHAMMAD RAYYAN', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10193006', 'ABDUL ARIQIN RAMADHANA', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193007', 'ABDULLAH BAHAUDDIN HASJMY', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193008', 'ADAM FATA HAFUZA', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10193009', 'AFIQA ALTHAFUNNISA', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193010', 'ALYA SYARIFA FAKHRI', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10193012', 'AMIRA CALISTA', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193013', 'ASYRAF NAUFAL GHIFARI', '4', '11', 'SD', 'LUNAS', '    \nLUNAS 1 SEMESTER', '0', '300000', '0'),
('10193014', 'ATHAYA YUDHA ANORAGA', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193015', 'ATHAYA YUDHIS ARADHANA', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193016', 'AUFA RINA', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193017', 'AZZAM ALFA RIZQI', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10193018', 'CHARISE COLLEN', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193019', 'FAIHA AQSA SHAFIYA', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193020', 'FAIZA ALYA', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193021', 'FAYYADH AZZUFAR', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193022', 'FAZKIA NAURA ANINDYA', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10193023', 'GIBRAN PUTRA RAHADIAN', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1\r\n', '0', '300000', '0'),
('10193024', 'HAFIZA KHAIRA LUBNA', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '150000', '0'),
('10193025', 'HAYDAR JAVIER EL GHAZZY', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193027', 'KHAIRANNAS', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10193028', 'M FATHAN HAYFA', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193029', 'MUHAMMAD AUFA THUFAILA', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193030', 'MIKHAILA CARISSA AZ-ZAHRA', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193031', 'MOEDA GHAZY AZMI', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193032', 'MUHAMMAD FATHUR AZZAM', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193033', 'MUHAMMAD KAMIL FAISYA', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193034', 'MUHAMMAD NASUHA', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193035', 'MUHAMMAD RAFA KHAIRUL AZAM', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193036', 'MUHAMMAD RAISSYAFIQ', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193037', 'MUHAMMAD RASYA ATHAYA', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193038', 'MUHAMMAD UZHAIR', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193039', 'NAJWA AUFA SHIDQIA', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193040', 'NASYIFA AYARA', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193041', 'NAWAL AZKA', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193042', 'NAZILATUL MAGHFIRAH', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '150000', '0'),
('10193043', 'PUTROE AZIZIA', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193045', 'RAFQA AZKA', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193046', 'RAHIL AZKIA FARIHA', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193047', 'RAYYAN UBAYDILLAH', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193048', 'REIKA NATHANIA', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193049', 'SAHAFA JALIA BR HASIBUAN', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193050', 'SAID MARDHATILLAH', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193051', 'SHARENNA ALDANISHA', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193052', 'SYAFIQAH APRILIA MAHARANI', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193053', 'SYAAKIRAH AZZAHRA', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193054', 'SYAKIRAH NURUL IZZAH', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193055', 'T M HANIF AL-QARASYI', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193056', 'TASMIRA QALBY', '4', '11', 'SD', 'LUNAS', '    \n    \r\nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193059', 'RAFA NAVARRO AL-AKRAM', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193060', 'HAIKAL FIQRI', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193061', 'MUHAMMAD RIZKIA', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193064', 'MUHAMMAD FATHAN AL GHIFARI', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10193065', 'ATIKA NURAINI', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10194004', 'ABIYU RAMZY ASLAM', '10', '24', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194007', 'ANNISA AZHARI PUTRI', '10', '23', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194008', 'ANNISA HUMAIRA HAMDANI', '10', '24', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194011', 'CHELSEA ALAMANDA', '10', '23', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194014', 'FAIZATUNNISA', '10', '23', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194016', 'FATHIYA MAHFUZA', '10', '38', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194018', 'M.AZRIL MAULANA BB', '10', '38', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '430000', '0'),
('10194020', 'M.HARIS MULASYIBI', '10', '38', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194021', 'MUHAMMAD IRGIE ASHABUL KAHFI', '10', '23', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194022', 'MUHAMMAD ARIF RIZKI', '10', '23', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194023', 'MUHAMMAD DANISH', '10', '23', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194026', 'NABIL RIZKYLLAH AKBAR ', '10', '38', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194027', 'NAILA NUZULA', '10', '24', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194028', 'NASHIRATUL KHANSA', '10', '24', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '430000', '0'),
('10194029', 'NAZIRA', '10', '24', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194030', 'QAISRA FATIN LATEEFA', '10', '24', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194031', 'REYASH ZILDJIANO LUVRA', '10', '24', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '', '430000', '0'),
('10194032', 'RASYA HUBILLAH', '10', '23', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194033', 'RICFIC KUMAR', '10', '38', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194034', 'RIZKA AZIFA', '10', '24', 'SMA', 'LUNAS', '    \n    LUNAS SEMESTER 1\r\n', '0', '430000', '0'),
('10194036', 'SAID DEYYAN DENANSYAH', '10', '24', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194037', 'SAID NAFIZ RIZA', '10', '23', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194038', 'SALWA ANNAFISAH', '10', '24', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194040', 'VARELIA PUTRI REVALDA', '10', '38', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194041', 'YOEL LIURENDO', '10', '24', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194042', 'MUHAMMAD RIZKI ', '10', '24', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194043', 'KHALIL SY BASYARAH ', '10', '23', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194047', 'NAJLA KHANSA', '10', '23', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194048', 'AISHA TALITHA FAHIRA', '10', '23', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10194050', 'IVA LATHIFAH', '10', '38', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '430000', '0'),
('10203001', 'KAINDRA AHYAN AHURAYAZDA LESMANA', '5', '13', 'SD', 'LUNAS', '    \n-Beasiswa full', '0', '300000', '0'),
('10203002', 'ASYRAFFA DIVIAN', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203018', 'TIJAN FATIN SAHIRA', '3', '9', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203019', 'DIWA ANUGRAH', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203020', 'NAUFAL AL KHALIFI', '3', '8', 'SD', 'LUNAS', '    \nLUNAS SEMESTER I', '0', '300000', '0'),
('10203021', 'MUHAMMAD FIRHAN', '3', '8', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10203022', 'KEENAND ATHARCHALIF', '3', '9', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203023', 'MUHAMMAD ABIDZAR AL GHIFARI', '3', '9', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203024', 'RASYA GIBRAN', '3', '8', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203025', 'MUHAMMAD BILAL GHUFFRAN ALKAUTSAR', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203026', 'MUHAMMAD FATA', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203027', 'MUHAMMAD ALFATIH', '3', '9', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '150000', '0'),
('10203028', 'AINA CALISTA SYAHIRA', '3', '8', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203029', 'PUTROE HANIFAH', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203031', 'SAILA SAVAIRA', '3', '9', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203032', 'RALINE AL KHAIRA', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10203033', 'CUT ANNISA FAIHA', '3', '8', 'SD', 'LUNAS', '    \n    LUNAS SEMESTER 1 \r\n', '0', '300000', '0'),
('10203034', 'ZAHIYA HUMAIRA', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10203035', 'AURORA PUTRI ZAHERLY', '3', '8', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203036', 'SYIFA THALITA ZAHRA', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203037', 'CUT ANISA LIDIYA ', '3', '8', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203039', 'FAYIZ ARKAN', '3', '9', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203040', 'MUHAMMAD TEUNGKU RIZAL AVIVAN', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203041', 'CUT LUTHFIA QATRUNNADA', '3', '8', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203042', 'MUHAMMAD AL GHAZALI', '3', '8', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203043', 'ALVARO GRAVIEL KOSIDIN', '3', '9', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203044', 'MUHAMMAD SATTAR', '3', '9', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203045', 'NADINE SHAFIYA', '3', '8', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203046', 'ZAHRATUL HUMAIRA', '3', '9', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203047', 'ABIDZAR AL FARISKI', '3', '8', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203048', 'TEUKU RAJA ALFATIH', '3', '8', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203049', 'RIFYAL ABIYYU IFFAT', '3', '9', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203050', 'KHALIS SAFNI', '3', '9', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203051', 'MUHAMMAD ZHAFRAN MUAZ', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '150000', '0'),
('10203052', 'MUHAMMAD FATIH PUTRA SHAFI NASUTION', '3', '9', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203053', 'SYUJA BASYSYAR', '3', '8', 'SD', 'LUNAS', '    \nLUNAS SEMESTER I', '0', '300000', '0'),
('10203054', 'KAISAR RAKA AL ISLAM', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203055', 'ISYATUN ASRIAH', '3', '9', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203056', 'MUHAMMAD ASYRAAF JAMALUDDIN', '3', '8', 'SD', 'LUNAS', '    \nLUNAS SEMESTER I', '0', '300000', '0'),
('10203057', 'MUHAMMAD ALKHALIFI HAMIZAN', '3', '8', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10203059', 'ATIKA ZAHRA RATIFA', '3', '8', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203061', 'INAYA TALITA SAKHI', '3', '8', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203062', 'CUT AMIRA SYAKIRA', '3', '9', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203063', 'RIFQAH RAJWAA', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203064', 'FAIQA ZAHIRA', '3', '9', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203066', 'HAURA TAMIMI', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10203067', 'QAIREEN AISYA SIDDIQA', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203068', 'FATHAN AFKAHUL RIZAL', '3', '9', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203069', 'MUHAMMAD ZHAFRAN', '3', '8', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203070', 'MUHAMMAD KHALIF', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203071', 'MUHAMMAD DAFA AL HAFIZ', '3', '8', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '150000', '0'),
('10203072', 'MUHAMMAD FARREL AL ZHARIEF', '3', '9', 'SD', 'BELUM LUNAS', 'JANUARI 2023   \n', '0', '300000', '0'),
('10203073', 'MUHAMMAD DZAKY ALMAEER', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203074', 'MUHAMMAD AQSA ZHEIN', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203075', 'MUHAMMAD KHALIL AZIZI', '3', '9', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10203076', 'TEUKU SABIQ EL-FATHIN', '3', '9', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10203077', 'GHUFRAN AL ZAIDAN', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203078', 'ARKAN ALFARIZI', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203079', 'BALQIS NAURA ATHIFA', '3', '9', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203080', 'BALQIS HUMAIRA', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203081', 'NADA FILZATUL MUNA', '5', '13', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '150000', '0'),
('10203086', 'INAYATUL LATHIFAH', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203088', 'KHADZIYA NISRINA INDAH', '3', '8', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203089', 'LUTHFATUN NAJA', '3', '8', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203090', 'MUHAMMAD NABIL FAYADH', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10203091', 'NAFISA ZUHRA', '3', '9', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10203092', 'RAJWA SHALIHA', '3', '9', 'SD', 'LUNAS', '    \n    \r\nLUNAS SEMESTER I', '0', '300000', '0'),
('10203094', 'SYAMIL KHALID ASLAM', '3', '8', 'SD', 'BELUM LUNAS', 'JANUARI 2023   \n', '0', '225000', '0'),
('10203095', 'TSURAYYA KHAYYIRAH', '3', '8', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10204002', 'MEYLA FAIZA ZUHRA', '10', '38', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10204004', 'SULTAN ARIF', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204005', 'MUHAMMAD NABIL ZAHRAN', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204006', 'NABIL ZA', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204007', 'ALIF', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204008', 'AISAR MUSAYYAR', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204009', 'ISLAH NAFIS FADILAH', '9', '22', 'SMP', 'LUNAS', '    \n    \r\nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204010', 'PATRIC VALENTINO', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204011', 'ALFA MUNIRA', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10204012', 'AKMAL SYARIF FAIZA', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204013', 'AINUN AYU RAHMANIAH', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204015', 'MUHAMMAD RAJA NAUFAL', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204016', 'DIVAUL KAMILA RAMADHANI', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204017', 'AL TSAQIF SALIM', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204018', 'HUSNIL MUBARAK', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204019', 'KHAIRA RADHWA', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204020', 'MUSAYYARATUL BARRARAH', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204022', 'ABDUL KADIR ILHAM', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204023', 'MUHAMMAD FARID ALGIFARI', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204024', 'MARIO MALTA SIHOMBING', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS 1 SEMESTER', '0', '370000', '0'),
('10204027', 'MEISYE HALIM', '10', '23', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10204029', 'AQIL GHOUFAR EFFENDY', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204030', 'RAIHANA QAYSHA AFIFAH', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204031', 'AZNIEL ASKHYA DAYAHNA', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204032', 'UKHTI TSABITHA', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204033', 'ARISTA NAZWA ANANDA', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204034', 'AMALIA RIZKA', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10204035', 'RACHEL AINAYA FAIZA', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204036', 'ANNISA AL MAQHVIRA', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10204037', 'ANGGI SANJANA', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204038', 'MUHAMMAD ALFUS', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204039', 'MUHAMMAD ASRUL FAIZIN', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204040', 'CUT AYLA AZZURA', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204041', 'M. THARIQ AL-AUSAD', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204042', 'ASYIFA MAHARANI', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204043', 'RIFQA DARUVA', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204044', 'ZIA SITI ZAYYANA', '9', '21', 'SMP', 'BELUM LUNAS', 'JANUARI 2023   \n', '0', '370000', '0'),
('10204045', 'YASMIN THUFAILAH', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204046', 'FRANCESCO RAU', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204047', 'NABIL DZAKWAAN ', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '185000', '0'),
('10204048', 'ZATA ZAMHARIRA', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204049', 'ALIA KARIMA', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204050', 'IVAN JARVIS', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204051', 'CUT SOFIE FARADILA', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204052', 'NASYWA FALISHA', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204053', 'ZALFA RAISAL ', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204055', 'DIVIA RAMADHANI', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204056', 'ARIVA GEBRILIA PUTRI', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204057', 'CUT NAMIRA', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204058', 'MUHAMMAD RAFA FAHLEVI', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204059', 'EGBERT AURICK LIMANDU', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204060', 'SYADIQ AL FAYET', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204062', 'AURELLYALLODIA FAIZA KUSUMA', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204064', 'MUHAMMAD ZHAFRAN SHIDQI', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS 1 SEMESTER', '0', '370000', '0'),
('10204066', 'QAISAR NABIL AL-FATHAN', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10205004', 'Syahreza Bantara Yudha', '12', '37', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205005', 'Rifa Fauhan', '12', '28', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205006', 'M. Fawwaz Al Kafa', '12', '28', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205007', 'Almira Zafira', '12', '28', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205008', 'Teuku Firman', '12', '37', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205009', 'Muhammad Fauzi', '12', '28', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205010', 'T.M Zaffa Abrar', '12', '28', 'SMA', 'LUNAS', '    \n    \r\nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205011', 'Nasya Dwi Lestari', '12', '29', 'SMA', 'LUNAS', '    \nLUNAS 1 SEMESTER', '0', '430000', '0'),
('10205012', 'Raudhatul Jannah', '12', '37', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205013', 'DOMINIC SHIFA', '12', '37', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205015', 'TAMLICHA', '12', '28', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205017', 'Muhammad fariq ulhaq', '12', '28', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205018', 'Lailan Thawila', '12', '29', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205019', 'Stella Nathania', '12', '37', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205020', 'Diefa Adilla Haz', '12', '37', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205021', 'Rafi Alkhairan', '12', '28', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205022', 'Muhammad Aufa', '12', '28', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205023', 'Hani Zafira Ramadhani', '12', '37', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205024', 'Muhammad Syauqi', '12', '29', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205025', 'Awfa Farrah Dhiba', '12', '29', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205027', 'Teuku Muhammad Arril Juliansyah', '12', '29', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205028', 'Muhammad Hanif', '12', '29', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205029', 'Naifa Shabira', '12', '29', 'SMA', 'LUNAS', '    \n    \r\nLUNAS SEMESTER 1\r\n', '0', '430000', '0'),
('10205030', 'Thariq Al Wafi ', '12', '29', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '430000', '0'),
('10205031', 'Yasmin Yumna', '12', '28', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205032', 'Ilham Adidian Triwijaksana', '12', '28', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205033', 'Bifawan Aulia', '12', '37', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205034', 'M. Arayki', '12', '29', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205035', 'Nahwa Al Islami Al Haq', '12', '28', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205036', 'Nasywan', '12', '28', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205037', 'Luqmanul Hakim', '12', '37', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205038', 'Nathaniel Abed Kianto', '12', '28', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '430000', '0'),
('10205039', 'Inas Amirah ', '12', '37', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205040', 'Nurul Hidayati Maulidna', '12', '28', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205041', 'Rajwa Rajiyya', '12', '29', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205042', 'Farahdila Saputri', '12', '37', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205043', 'Said Naufal Riza', '12', '29', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205044', 'Zian Ukmul Hafidh', '12', '29', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205045', 'Dilla Amanda Rizalmi', '12', '37', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205046', 'Muhammad Nauval Razan', '12', '29', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205047', 'MUNNA SALSABILA', '12', '37', 'SMA', 'LUNAS', '    \nLUNAS 1 SEMESTER', '0', '430000', '0'),
('10205049', 'T.M Agil Al Hafidh', '12', '29', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205050', 'Muhammad Rizki', '12', '37', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205051', 'Renal Zaky Muhammad', '12', '37', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205053', 'THIFAL AULIA', '12', '37', 'SMA', 'LUNAS', '    \nLUNAS 1 SEMESTER', '0', '430000', '0'),
('10205054', 'M.AL BARIQ ILL SAUWIR', '12', '29', 'SMA', 'LUNAS', '    \nLUNAS 1 SEMESTER', '0', '430000', '0'),
('10205055', 'ZIAUL MUBARAQ', '12', '37', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10213001', 'MUHAMMAD AZZAM', '4', '12', 'SD', 'LUNAS', '    \n    \r\nLUNAS', '0', '300000', '0'),
('10213003', 'ABDUL MALIK', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10213004', 'ABIZAR ALGHIFARI', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213005', 'ACHMAD AL SYAMEEL', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10213006', 'ADAM ZIA ULHAQ', '2', '7', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213007', 'ADZKIA TARISA', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213008', 'AHNAF MEUTUAH ARDYA', '2', '7', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213009', 'AISHA SAFIRA HUMAIRA', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213010', 'AKIFA NAILA', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213011', 'AL MUHTADEE BILLAH SIDDIK', '2', '7', 'SD', 'LUNAS', '    \n    \r\nLUNAS SEMESTER I\r\n', '0', '150000', '0'),
('10213012', 'ALAYYA AISY SYAVI', '2', '7', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213013', 'ALFATIH KHALIFA UMAR', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213014', 'ALISHA WILDA KHAIRA', '2', '7', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213015', 'AMIRA AZZAHRA', '2', '7', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213016', 'AMMAR FAIZ ZUBAIR', '2', '7', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213017', 'ATHAYA ALTHAFUNNISA', '2', '7', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213019', 'AZANAVID PHATAMAR BARIGHA', '2', '7', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213020', 'AZZALVA LATIVA', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213021', 'CECILY DONNELIA', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213022', 'CHELYONA COLLEN', '2', '7', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213023', 'CHEZAHRA ALAMANDA', '2', '7', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213024', 'CUT CARISSA PUTRI', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213025', 'DERA CHILSYA RYUMA', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213026', 'EMILI SHAFIYA KAWSIRAZY', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213027', 'GHAZIYA HAFIZA TK PEMBINA', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213028', 'GHAZIYA HAFIZA TK IT MUHAMMADIYAH', '2', '7', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213029', 'GIBRAN FAWWAZ', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10213030', 'ILKAY GHAUZAN', '2', '7', 'SD', 'LUNAS', '    \nLUNAS 1 SEMESTER', '0', '300000', '0'),
('10213032', 'JASMINE CALLISTA BALQIS', '2', '7', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213033', 'MAHARANI BELLVANIA', '2', '7', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213034', 'MUHAMMAD ABIDAL VIZAN', '2', '7', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213035', 'MUHAMMAD AZZAM ALKHAIRAN', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213036', 'MUHAMMAD KENZIE AL FARIZY', '2', '6', 'SD', 'LUNAS', '    \nLUNAS 1 SEMESTER', '0', '300000', '0'),
('10213037', 'MUHAMMAD LUTHFI ', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213038', 'MUHAMMAD YUDANTA RAIS', '2', '7', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213039', 'PUAN AISYAH NADHIRA', '2', '7', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213040', 'QAIREEN DAMIA YOVAN', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213041', 'QANITA ARSYFA', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213042', 'RANIA AVANTIKA LESMANA', '2', '7', 'SD', 'LUNAS', '    \n-Beasiswa full', '0', '0', '0'),
('10213043', 'SAUSAN HANIFA GINTING', '2', '7', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213044', 'SULTAN ALSIRAJ AUFAR', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213045', 'SYAMILA YASMINE', '2', '7', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213046', 'SYEIKHA HUMAIRA FAJRI', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213048', 'UMAR', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '150000', '0'),
('10213049', 'DARA QANITA', '2', '7', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213050', 'TEUKU MUHAMMAD AUFA ASSAIF', '2', '7', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213051', 'AFIFA AZKIYA', '2', '7', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10213053', 'MUHAMMAD AL FARASYI', '5', '13', 'SD', 'LUNAS', '    \nLUNAS 1 SEMESTER', '0', '300000', '0'),
('10213054', 'SYAUQIFA DIVIAN', '6', '15', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10214001', 'ARSYILA ', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214003', 'ADELIA MASTURA', '8', '20', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214004', 'ANINDYA ELVARETTA', '8', '20', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10214005', 'ATTAYA SHAPIRA', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214006', 'AUFA SYAHREZA AL FAKHRI', '8', '20', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10214007', 'BASITH RAFIQ FAUZAL', '8', '20', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214008', 'BIVITRI LAISYA AL KATIRY', '8', '20', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214009', 'BTARI AIESHA MEDINA', '8', '20', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10214010', 'CHELSIA LIUREN', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214011', 'CARRYN CHRISTY', '8', '20', 'SMP', 'BELUM LUNAS', '    \nLUNAS', '0', '370000', '0'),
('10214012', 'DIAN KHAIRANI', '8', '20', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10214013', 'DINI MASRURA', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214014', 'FARIS ATHAILLAH', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10214015', 'FATIN MUHSINA', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214016', 'FAULIJAH RAHMAH', '8', '20', 'SMP', 'LUNAS', '    \n    \r\nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10214017', 'FITRIA RAMADHANI', '8', '20', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214018', 'GHAFAR GHAFFARI', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214019', 'KHANSA SYIFA', '8', '20', 'SMP', 'BELUM LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214020', 'M. HANIF', '8', '20', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214022', 'MUHAMMAD FAKHRI RIZQI', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214023', 'MUHAMMAD HILMY MUFID', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214024', 'MUHAMMAD LUTHFI', '8', '20', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214025', 'MUHAMMAD RASYA PRATAMA', '8', '20', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214026', 'MUHAMMAD SULTHAAN KHAAFIDH ALMULKI', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10214027', 'RADHWA KHAIRAN', '8', '20', 'SMP', 'LUNAS', '    \n    \r\nLUNAS SEMESTER I', '0', '370000', '0'),
('10214028', 'RACHEL ILMIRA DEIANSZA', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214030', 'SAYED ZAIDIL MAHFUDH', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214031', 'SITTI AMELIA', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10214032', 'SYIFA ANDRIA', '8', '19', 'SMP', 'LUNAS', '    \n    \r\nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10214033', 'T. FAIZ AKBAR', '8', '20', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214034', 'TANZILA UKTIFA', '8', '20', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10214035', 'TARA AZUHRA', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214036', 'WILDA ZUHRA PUTRI NAFISA', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214037', 'WILDAN FAYYADH', '8', '20', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214038', 'ZAHRATUSSYITA MUHAMMAD', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214039', 'MAZAYA NAIMI', '8', '20', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214040', 'PUTRI NASYWA', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214041', 'MUHFAZA', '8', '20', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214042', 'GERRARD CHRISTIAN KARTOLO', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214043', 'DAVIN KOEMARDI', '8', '20', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214044', 'SALSABILA ASKAFIA', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214045', 'SITI NOVIA AS-SYIFA', '8', '20', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214046', 'ALFA ZAYYAN GHIFARI', '8', '20', 'SMP', 'LUNAS', '    \nLUNAS 1 SEMESTER', '0', '370000', '0'),
('10214047', 'MOEHAMMAD IKRAM AL-FAJR', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0');
INSERT INTO `data` (`nis`, `nama`, `kelas`, `id_rombel`, `jenjang`, `status`, `keterangan`, `jumlah_bulan`, `bpp_per_bulan`, `total`) VALUES
('10214048', 'MUHAMMAD FARSYA BILQISTHI', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10214049', 'MAULIDZHAR RIZKY', '9', '22', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10215002', 'RENOLD FERDIAN SAPUTRA', '12', '28', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215003', 'MUHAMMAD ZIDAN', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215004', 'AULIA RIZQULLAH AZWIR', '11', '26', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215005', 'HUSNUL NABILA IRFA', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '430000', '0'),
('10215006', 'MUHAMMAD ICHSAN', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215008', 'AHMAD SYAUQI FATHANI', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215009', 'YASMIN AZURA PUTRI', '11', '26', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215010', 'KHAIRAL ABDI', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMSTER 1', '0', '430000', '0'),
('10215011', 'MUHAMMAD HAIKAL ASY’ARY', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215012', 'AKMAL KAUSHAR', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '430000', '0'),
('10215013', 'VICTOR ONG', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215014', 'NABILA RAMADHANI', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215015', 'NAJWA ZAMHAHIRA', '11', '26', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215016', 'NASYWA ERZA', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215017', 'M. DZAKKI', '11', '26', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '430000', '0'),
('10215018', 'VINCA CHRISTY', '11', '26', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215019', 'GHEA GHAITSA', '11', '25', 'SMA', 'LUNAS', '    \nPertukaran pelajar ke Jepang \r\n', '0', '430000', '0'),
('10215020', 'DARA ZASKIA', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215021', 'SHUFIA ZUHRA', '11', '26', 'SMA', 'LUNAS', '    \nLUNAS 1 SEMESTER', '0', '430000', '0'),
('10215022', 'IMRAN KAMIL', '11', '26', 'SMA', 'LUNAS', '    \n    \r\nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215023', 'ARFI HAURA AQILA', '11', '26', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215024', 'MUHAMMAD RASEUKI', '11', '26', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215025', 'DESCA SYARAFINA', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215026', 'PUTRA WAHYU PRATAMA', '11', '26', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215027', 'ROYYAN AULIA NANDA', '11', '26', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215028', 'FIKA FAZILA', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215029', 'NURUL UDWANI NASIKA', '11', '26', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215030', 'NAYLA HAFIZA', '11', '26', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215031', 'ZULFAHMI', '11', '26', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '430000', '0'),
('10215032', 'FARREL KHATAMI', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '430000', '0'),
('10215033', 'M. RAFLI RIDWAN', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215034', 'SYAFA MAULIDINA', '11', '26', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215035', 'MUGHLI RASYA ALKATIRY', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215037', 'NASYWA KHANSA', '11', '26', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215038', 'ADEL SAUSAN ALBIRRA', '11', '26', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215039', 'ALFUL KHAIRA', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215040', 'LUTHFIA ZAMIRA', '11', '25', 'SMA', 'LUNAS', '    \n    \r\nLUNAS SEMESTER I', '0', '430000', '0'),
('10215041', 'SULTAN NAWWAL AL AZZAM', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215042', 'IFDHAL FASYA', '11', '26', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215043', 'M. ASYRAF', '11', '26', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215044', 'RAFI DARIS', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '430000', '0'),
('10215045', 'SYAFIQ ISLAMI PASYA', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215046', 'ZAHRINA AMALIA', '12', '37', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215047', 'SILVIA MAGHFIRAH', '11', '26', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10223001', 'RAFI MUSSAID', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223002', 'MUHAMMAD WAN SHAQIRI', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223003', 'POCUT ALICE ARDINI ANWAR', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10223004', 'ABDUL GHAFFAR', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223005', 'ABDUL RASYID', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223006', 'ADEEVA SYAKIRA', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223007', 'AHMAD DZAKIANDRA', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223008', 'AISHA ADIBA SYAKILA', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223009', 'ALESHA SHAKILA', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223010', 'ALIF HAFIZ SHARKAN', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223011', 'ALIKA AZALEA', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223012', 'ALIKA DIAN RAQIQAH', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223013', 'ALIKA NAILA PUTRI LUBIS', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223014', 'ALISHA AZZAHRA', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223015', 'ASYIFATUL HAIFA', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223016', 'ATHIFA SYAHIRA FAKHRI', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10223017', 'AURA LARISA SAFWAH', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223018', 'AYESHA TAQIA', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223019', 'AZZAM AL FATIH', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223020', 'BAIHAQI KHAIZAN HASRA', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223021', 'CUT ADONIA NAZWA', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223022', 'DHAIFAL MUBARRAQ MUNA', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '150000', '0'),
('10223023', 'DZAKIRA TALITA ZAHRA', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '150000', '0'),
('10223024', 'ELDANISH SALADIN AL-FARIZY', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223025', 'FELIX WANGSA', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223026', 'GIBRAN AZKA AL RAFIF', '1', '1', 'SD', 'LUNAS', '    \n    \r\nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223027', 'KEJORA ADIA FAZA KUSUMA', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223028', 'KAISA AZZAHRA', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223029', 'KENZIE ABID ALGHAFFAR', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223030', 'KHADIJAH INARA INDAH ', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223031', 'KHALISATUN NISA', '1', '1', 'SD', 'LUNAS', '    \n    LUNAS SEMESTER 1 \r\n', '0', '300000', '0'),
('10223032', 'MARYAM AT TAQIYYA', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223033', 'MUHAMMAD  AL AZZAM', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223034', 'MUHAMMAD ANANDA RIZQAN', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223035', 'MUHAMMAD FABIAN ASSYAUQI', '1', '2', 'SD', 'LUNAS', '    \n    \r\n    \r\nLUNAS SEMESTER I', '0', '300000', '0'),
('10223036', 'MUHAMMAD FATHAN ATHAYA', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223037', 'MUHAMMAD GIBRAN', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223038', 'MUHAMMAD HARITH AL FATIH', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10223039', 'MUHAMMAD NAUFAL AFKAR', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223040', 'MUHAMMAD RAYYAN', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223041', 'MUHAMMAD SABIQ AZ-ZARQALI', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223042', 'MUHAMMAD UBAIDILLAH', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223043', 'MUZKIATUNNIDA', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223044', 'NAIRA AZZAHRA ', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223045', 'NAYYARA KHANZA SHANUM', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10223046', 'RAFA AZKA PUTRA', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223047', 'RAFIF ALFARIZQI', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223048', 'RAKA ADITYA HASIBUAN', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223049', 'RAYNA TAQIYYA', '1', '1', 'SD', 'LUNAS', '    \n    LUNAS SEMESTER I', '0', '300000', '0'),
('10223050', 'RIFQY MAULANA', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10223051', 'RIO MUDA HAMZAH', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223052', 'SHAKEEL ALFARIZKI', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223053', 'SHIDDIQATUSYUA FAKHIRA', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223054', 'SITI AILA FARISHA', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223055', 'TEUKU REALSYAH', '1', '2', 'SD', 'LUNAS', '    \n    \r\nLUNAS SEMESTER I', '0', '300000', '0'),
('10223056', 'ZEESHAN SHAKEIL', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223057', 'AYSHA ASHAQUEENA FAHDI', '2', '6', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '300000', '0'),
('10223059', 'ARIF SYIFAUL FAUZAN', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223060', 'RAFA ARKANA MUNTHE', '1', '1', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10223061', 'MUHAMMAD NABIL', '1', '2', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('10224001', 'SHOSANA ALIQA ANDRI', '8', '19', 'SMP', 'BELUM LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224002', 'CUT PUTRO HAYYA', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10224003', 'RATU KHALISA', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224004', 'NUR AFISHA', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224005', 'MUHAMMAD HAIKAL ', '9', '21', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10224006', 'Azka Ishfa Rahima', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224007', 'Kenzie Devananta', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224008', 'Khansa Aurel', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224009', 'Amalia Ramadhani', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224010', 'Fatha Zaidi Rizkan', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10224011', 'Muhammad Sultan Al Rifqi', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224012', 'Alifah Imtinan Anfa', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224013', 'Nabila Rizqa', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224014', 'Rasya Eka Lhutfi Fathurohman', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224015', 'Rava Aulia ', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224016', 'Muhammad Arrayyan', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224017', 'Rafif Putra Alhaska', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224018', 'Putri Alifya', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224019', 'Muhammad Aqil Angkasa', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224020', 'Teuku Abyan Zahir', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224021', 'Nazwa Nur Aqila', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10224022', 'Muhammad Naufal ', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224023', 'Filbert Audric Limandu', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224024', 'Alif Syavi', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224025', 'Allif Fawza Maheswara', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224026', 'Nasya Athifa', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10224027', 'Aqila Faiza Maheswari', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224028', 'Raditya Thaariq Syahputra', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224029', 'Syaukas Abdillah', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224030', 'Muhammad Adam', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10224031', 'Cut Syabilla Ghahitsa', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10224032', 'KINTHARI ILMA NUZULIA', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '370000', '0'),
('10224033', 'Ibda Rahman', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10225001', 'ZARATU FARSIA HUMAIRA', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10225002', 'M. KHUNAIS ALFAREZA', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10225004', 'ADINDA ATHAYA REGITA ', '10', '38', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '430000', '0'),
('10225005', 'AHMAD ARFAT', '10', '24', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10225006', 'ARINA SHULHA', '10', '23', 'SMA', 'LUNAS', '    \nLUNAS 1 SEMESTER', '0', '430000', '0'),
('10225007', 'AYU ULVIA', '10', '24', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10225008', 'HAURA NABRISA', '10', '24', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '430000', '0'),
('10225009', 'HUSNUL UNIRA', '10', '24', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1\r\n   \r\n', '0', '430000', '0'),
('10225010', 'ILHAM NOORHADY', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1 ', '0', '430000', '0'),
('10225011', 'MUHAMMAD SYAUQI ATQIYA', '10', '23', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10225012', 'MUHAMMAD AL-FATIH', '10', '38', 'SMA', 'BELUM LUNAS', '    \nJANUARI 2023   \r\n', '0', '430000', '0'),
('10225013', 'MUHAMMAD AQIL', '10', '24', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10225014', 'OPIE NABILA', '10', '23', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10225015', 'QISTHI HUMAIRA ', '10', '23', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10225016', 'RAMADHAN PUDJI PRATAMA', '10', '38', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10225017', 'REVA NADILA', '10', '38', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10225018', 'RIFAI PUTRA ALHASKA', '10', '38', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10225019', 'SALWA AFIFAH VIZAN', '10', '23', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10225020', 'SAUSAN ALIYAH', '10', '38', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10225021', 'T ZAHYNUR AMAL', '10', '23', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10225022', 'MOCHAMMAD ALFAYEED', '10', '24', 'SMA', 'LUNAS', '    \n    \r\nLUNAS SEMESTER 1', '0', '430000', '0'),
('10225023', 'NAJA AZZAYDAN', '10', '23', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('1232564987', 'M. Nazhif Alghazi', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS 1 SEMESTER', '0', '370000', '0'),
('123456', 'FATHAN ALFAIZI RIANTO', '4', '12', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('1234567', 'ATTAILA MAIREZQI', '8', '19', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('12345678', 'RIFKI PUTRA RAMADHAN', '11', '25', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('123456789', 'ALHADI FIQRAN', '10', '38', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('20201014', 'Najla Alifia', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('20221010', 'Syilva Ishmah Fitri', '10', '24', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('20221011', 'Muhammad Athif', '3', '10', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('20221012', 'Nur Syafira', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('20221013', 'Alya Safni', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('20221015', 'Najwa Alifia', '7', '18', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('2223554222', 'Haikal Safni', '10', '38', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('2323254', 'Wafiq Al Barriki', '8', '19', 'SMP', 'LUNAS', '    \n    \r\nLUNAS SEMESTER 1', '0', '370000', '0'),
('23569874', 'Syifa Nayla Candrawati', '4', '11', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('3265987', 'Teuku Muhammad Abyan Az Dzaky', '3', '9', 'SD', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '300000', '0'),
('365987', 'Hilyan Tazkiran', '12', '37', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('5639784152', 'ANNISA ULRIZQIA', '7', '17', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('89653254', 'Muhammad Zayyan Shaim', '8', '20', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0');

-- --------------------------------------------------------

--
-- Table structure for table `jenjang`
--

CREATE TABLE `jenjang` (
  `id_jenjang` int(11) NOT NULL,
  `nama_jenjang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenjang`
--

INSERT INTO `jenjang` (`id_jenjang`, `nama_jenjang`) VALUES
(1, 'SD'),
(2, 'SMP'),
(3, 'SMA');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `id_jenjang` int(11) NOT NULL,
  `kelas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `id_jenjang`, `kelas`) VALUES
(1, 1, '1'),
(2, 1, '2'),
(3, 1, '3'),
(4, 1, '4'),
(5, 1, '5'),
(6, 1, '6'),
(7, 2, '7'),
(8, 2, '8'),
(9, 2, '9'),
(10, 3, '10'),
(11, 3, '11'),
(12, 3, '12');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int(11) NOT NULL,
  `file_laporan` varchar(255) NOT NULL,
  `divisi` varchar(11) NOT NULL,
  `jumlah_tunggakan` varchar(20) NOT NULL,
  `keterangan` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `file_laporan`, `divisi`, `jumlah_tunggakan`, `keterangan`) VALUES
(1, 'Backup SIMBPP 14-07-22.sql', 'SD', '0', '2022-07-14'),
(2, 'Backup SIMBPP 14-07-22.sql', 'SMP', '0', '2022-07-14'),
(3, 'Backup SIMBPP 14-07-22.sql', 'SMA', '0', '2022-07-14'),
(4, 'Sistem_Informasi_Manajemen_BPP_(1)14.xlsx', 'SD', '44995000', '2022-07-31'),
(7, 'Sistem_Informasi_Manajemen_BPP_(1)17.xlsx', 'SMP', '11840000', '2022-07-31'),
(8, 'Sistem_Informasi_Manajemen_BPP_(1)18.xlsx', 'SMA', '26660000', '2022-07-31'),
(9, 'Sistem_Informasi_Manajemen_BPP54.xlsx', 'SD', '81042000', '2022-08-01'),
(10, 'Sistem_Informasi_Manajemen_BPP55.xlsx', 'SMP', '31750000', '2022-08-01'),
(11, 'Sistem_Informasi_Manajemen_BPP56.xlsx', 'SMA', '62520000', '2022-08-01'),
(12, 'Sistem_Informasi_Manajemen_BPP57.xlsx', 'SD', '54032000', '2022-08-10'),
(13, 'Sistem_Informasi_Manajemen_BPP58.xlsx', 'SMP', '15540000', '2022-08-10'),
(14, 'Sistem_Informasi_Manajemen_BPP59.xlsx', 'SMA', '37840000', '2022-08-10'),
(15, 'Sistem_Informasi_Manajemen_BPP60.xlsx', 'SD', '33246000', '2022-08-31'),
(16, 'Sistem_Informasi_Manajemen_BPP61.xlsx', 'SMP', '3700000', '2022-08-31'),
(17, 'Sistem_Informasi_Manajemen_BPP62.xlsx', 'SMA', '12470000', '2022-08-31'),
(18, 'Sistem_Informasi_Manajemen_BPP_(1)19.xlsx', 'SD', '106523000', '2022-09-01'),
(19, 'Sistem_Informasi_Manajemen_BPP_(1)20.xlsx', 'SMP', '41810000', '2022-09-01'),
(20, 'Sistem_Informasi_Manajemen_BPP_(1)21.xlsx', 'SMA', '65660000', '2022-09-01'),
(21, 'Sistem_Informasi_Manajemen_BPP63.xlsx', 'SD', '42061000', '2022-09-26'),
(22, 'Sistem_Informasi_Manajemen_BPP64.xlsx', 'SMP', '12580000', '2022-09-26'),
(23, 'Sistem_Informasi_Manajemen_BPP65.xlsx', 'SMA', '31820000', '2022-09-26'),
(24, 'Sistem_Informasi_Manajemen_BPP_(1)22.xlsx', 'SD', '38120000', '2022-09-30'),
(25, 'Sistem_Informasi_Manajemen_BPP_(1)23.xlsx', 'SMP', '11840000', '2022-09-30'),
(26, 'Sistem_Informasi_Manajemen_BPP_(1)24.xlsx', 'SMA', '26230000', '2022-09-30'),
(27, 'Sistem_Informasi_Manajemen_BPP66.xlsx', 'SD', '108263500', '2022-10-01'),
(28, 'Sistem_Informasi_Manajemen_BPP67.xlsx', 'SMP', '50320000', '2022-10-01'),
(29, 'Sistem_Informasi_Manajemen_BPP68.xlsx', 'SMA', '75680000', '2022-10-01'),
(30, 'Sistem_Informasi_Manajemen_BPP69.xlsx', 'SD', '8256000', '2022-10-10'),
(31, 'Sistem_Informasi_Manajemen_BPP70.xlsx', 'SMP', '2220000', '2022-10-10'),
(32, 'Sistem_Informasi_Manajemen_BPP71.xlsx', 'SMA', '8170000', '2022-10-10'),
(33, 'Sistem_Informasi_Manajemen_BPP_(1)25.xlsx', 'SD', '0', '2022-10-31'),
(34, 'Sistem_Informasi_Manajemen_BPP_(1)26.xlsx', 'SMP', '1110000', '2022-10-31'),
(35, 'Sistem_Informasi_Manajemen_BPP_(1)27.xlsx', 'SMA', '3010000', '2022-10-31'),
(36, 'Sistem_Informasi_Manajemen_BPP72.xlsx', 'SD', '57578500', '2022-11-01'),
(37, 'Sistem_Informasi_Manajemen_BPP73.xlsx', 'SMP', '32190000', '2022-11-01'),
(38, 'Sistem_Informasi_Manajemen_BPP74.xlsx', 'SMA', '44290000', '2022-11-01'),
(39, 'Sistem_Informasi_Manajemen_BPP75.xlsx', 'SD', '43472500', '2022-11-15'),
(40, 'Sistem_Informasi_Manajemen_BPP76.xlsx', 'SMP', '21830000', '2022-11-15'),
(41, 'Sistem_Informasi_Manajemen_BPP77.xlsx', 'SMA', '31820000', '2022-11-15'),
(42, 'Sistem_Informasi_Manajemen_BPP_(1)28.xlsx', 'SD', '27786500', '2022-11-30'),
(43, 'Sistem_Informasi_Manajemen_BPP_(1)29.xlsx', 'SMP', '9620000', '2022-11-30'),
(44, 'Sistem_Informasi_Manajemen_BPP_(1)30.xlsx', 'SMA', '18060000', '2022-11-30'),
(45, 'Sistem_Informasi_Manajemen_BPP_(2).xlsx', 'SD', '41218500', '2022-12-01'),
(46, 'Sistem_Informasi_Manajemen_BPP_(2)1.xlsx', 'SMP', '23310000', '2022-12-01'),
(47, 'Sistem_Informasi_Manajemen_BPP_(2)2.xlsx', 'SMA', '38270000', '2022-12-01'),
(48, 'Sistem_Informasi_Manajemen_BPP78.xlsx', 'SD', '0', '2022-12-15'),
(49, 'Sistem_Informasi_Manajemen_BPP79.xlsx', 'SMP', '370000', '2022-12-15'),
(50, 'Sistem_Informasi_Manajemen_BPP80.xlsx', 'SMA', '860000', '2022-12-15'),
(51, 'Sistem_Informasi_Manajemen_BPP_(2)3.xlsx', 'SD', '0', '2022-12-23'),
(52, 'Sistem_Informasi_Manajemen_BPP_(2)4.xlsx', 'SMP', '0', '2022-12-23'),
(53, 'Sistem_Informasi_Manajemen_BPP_(2)5.xlsx', 'SMA', '0', '2022-12-23');

-- --------------------------------------------------------

--
-- Table structure for table `rombel`
--

CREATE TABLE `rombel` (
  `id_rombel` int(11) NOT NULL,
  `id_kelas` varchar(11) NOT NULL,
  `rombel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rombel`
--

INSERT INTO `rombel` (`id_rombel`, `id_kelas`, `rombel`) VALUES
(1, '1', 'I - JAM GADANG\n'),
(2, '1', 'I - MONAS\n'),
(6, '2', 'II - MARLBOROUGH\n'),
(7, '2', 'II - ROTTERDAM\n'),
(8, '3', 'III - ISTIQLAL\n'),
(9, '3', 'III - PRAMBANAN\n'),
(10, '3', 'III - GUNONGAN\n'),
(11, '4', 'IV - CANDI BOROBUDUR'),
(12, '4', 'IV - BAITURRAHMAN\n'),
(13, '5', 'V - WARENHUIS\n'),
(14, '5', 'V - INDRA PATRA\n'),
(15, '6', 'VI - ISTANA MAIMUN\n'),
(16, '6', 'VI - ISTANO BASA\n'),
(17, '7', 'VII ANDROMEDA'),
(18, '7', 'VII VENUS\n'),
(19, '8', 'VIII HORIZON\n'),
(20, '8', 'VIII AURORA\n'),
(21, '9', 'IX ORION\n'),
(22, '9', 'IX GALAXY\n'),
(23, '10', 'X OXFORD\n'),
(24, '10', 'X CAMBRIDGE\n'),
(25, '11', 'XI HARVARD\n'),
(26, '11', 'XI STANFORD\n'),
(28, '12', 'XII MONASH\n'),
(29, '12', 'XII PRINCETON\n'),
(37, '12', 'XII CORNEL'),
(38, '10', 'X - SYDNEY');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `id_rombel` varchar(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `id_rombel`, `username`, `password`, `role`) VALUES
(3, 'ADMINISTRATOR', '0', 'admin', '0eab68759cc784399fa5c6ba986cdb3d', 0),
(5, 'SITI DEA SATIFA, S.ST', '0', '10161002', '467b481876db1758d9b38a75aabbccdb', 1),
(30, 'MARINA NOVA WAHYUNI, S.T', '0', '12101107', '63ec5fcb2bd10faa0f09879c1348f80d', 3),
(31, 'CHANDRA NURMANSYAH, S.Si', '0', '10101064', 'ed42ac8500eef834efb4edc44d3a343d', 3),
(32, 'KARTIKA HAKIM, S.S., MA', '0', '10151003', '59648ef7321f9a5522d97b3d22f5ae7f', 3),
(33, 'MAINA SARA, M.A.', '0', '11071018', '29422fcab11ad5872e41f0e110d10f41', 1),
(38, 'INDRA SAPUTRA, S.E.', '0', '10081045', '6856ebfd68aab2ec6bf5c4f52f5c2a03', 1),
(39, 'LINA', '0', 'linassb', '0eab68759cc784399fa5c6ba986cdb3d', 3),
(40, 'VICTOR YASADHANA', '0', 'victorssb', '0eab68759cc784399fa5c6ba986cdb3d', 3),
(43, 'RIKA JULIANTI, S.E.', '0', '10211005', '5bbe7e2326413d56101eb3fb7987c99a', 3),
(46, 'DWI WULANDARY', '20', '10081054', 'aee24833261082600a047b5ab478458a', 2),
(47, 'BASIRAN', '19', '10081051', '4c53ca0da8a337cc85f13c6beee2f35c', 2),
(48, 'MASYITTAH', '17', '11121004', 'a76adc76393163ec32ed1259adfaf634', 2),
(49, 'YUNDA NAFSIAH', '18', '10211009', '8fae4a3180615fad740c76dff9d6b349', 2),
(50, 'MEUTIA HESTI PALDANA', '22', '10151004', '556c48640c368af6f43a861cf738e3c9', 2),
(51, 'MARDIANA', '21', '10211008', '191d2a9c1235a65edd03e5dfcbfedecf', 2),
(53, 'NURDIANA', '23', '10201003', '5c46f9f1ee5a4d62d352c0ffe3a95ed9', 2),
(54, 'MUKHLISANUR', '25', '10121083', 'b22b76f444c7930f3e3fe47ddfba7600', 2),
(55, 'SAFRIDA', '26', '10061010', '420c65b21ecad039009e75e1215f6b82', 2),
(56, 'DIAN FERDIANSYAH', '37', '10141001', '69e3512f7d6ff609c8b727e541e22187', 2),
(57, 'HELMIATI', '28', '10061019', 'c4ce452d7140ad81af7dfe82b2caac24', 2),
(58, 'RAHMI', '29', '10211004', '4e86efecd89907872cae4c96c58adcad', 2),
(59, 'CUT HAFSAH, S.Pd', '1', '10081088', '9d50009502f045b7f01f111d2e2536e5', 2),
(60, 'PUTRI MAULIDA, S.Pd', '2', '10111076', '8e3fe1f2120e645e218e937b2e90a5cc', 2),
(61, 'ASMAUL HUSNA, S.Pd', '6', '10131085', '6f2e4701422d2feac4f1bb0a3e2173e8', 2),
(62, 'ASHIL ULAYYA, S.Pd.', '7', '10206047', '6dc160a474a35785375a9c29111285a8', 2),
(63, 'NURUL AULIA, S.Pd.', '10', '10211003', '7d5713c82574a0692d02bb12ccf8dabf', 2),
(64, 'ADERIANA MASTHURA, S.Si.', '8', '10206046', '67b0508075400b581fd2e6f3a5215cb9', 2),
(65, 'M. AGUS SIDDIQ, S.Pd.', '9', '10226011', '1f4678fc076aee128ebdd6825bfc75ee', 2),
(66, 'LIZA FARADILLA, S.Pd.', '12', '10206050', '829ec1849856d530dfea8af6d7fa7c01', 2),
(67, 'IKA MEUTIA, S.Si', '11', '10081044', '09dfa3b617b555a9df17e99b40f9db89', 2),
(68, 'RIVANDA, S.Sy', '14', '10171001', '3cee8986703b2f3fb548971eb87fd992', 2),
(69, 'ZUHRIATI, S.Pd.', '13', '10226012', 'a9f3b77022ea018d6629e17c8ac9169e', 2),
(70, 'HUSNUL KHATIMAH, S.Pd', '15', '10201002', 'f8b4c97e1b0ad388dbcc1389a8c917d1', 2),
(71, 'AMRUL HAKIM, M.Pd.', '16', '10201001', '8052f165e6716be68da7dbcea1b38df3', 2),
(73, 'NURLAILI', '0', '10111078', 'e18b3839d8d47f706c01b33062bac141', 3),
(74, 'NURHILZA', '22', '10141005', '3e9285464b7e2890bf186db889d8df4b', 2),
(75, 'VERA WAHYUNI', '24', '11161003', '55a61dec5a3418c9268f5f0e96db1aae', 2),
(76, 'FAHMI', '38', '11091016', '12d5f6facafb7012575fd9bf35b00d96', 2),
(77, 'MUHAMMAD SURAL FUADI', '0', '10216007', '808a06b9a7b2aa413cea44a469d38828', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biaya`
--
ALTER TABLE `biaya`
  ADD PRIMARY KEY (`id_biaya`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `jenjang`
--
ALTER TABLE `jenjang`
  ADD PRIMARY KEY (`id_jenjang`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indexes for table `rombel`
--
ALTER TABLE `rombel`
  ADD PRIMARY KEY (`id_rombel`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biaya`
--
ALTER TABLE `biaya`
  MODIFY `id_biaya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `jenjang`
--
ALTER TABLE `jenjang`
  MODIFY `id_jenjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `rombel`
--
ALTER TABLE `rombel`
  MODIFY `id_rombel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
