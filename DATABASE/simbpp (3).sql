-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Sep 2021 pada 18.19
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simbpp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `biaya`
--

CREATE TABLE `biaya` (
  `id_biaya` int(11) NOT NULL,
  `nominal` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `biaya`
--

INSERT INTO `biaya` (`id_biaya`, `nominal`, `keterangan`) VALUES
(2, '300000', 'BPP SD'),
(4, '370000', 'BPP SMP'),
(5, '150000', 'BEASISWA SD'),
(6, '0', 'BEASISWA FULL'),
(7, '263000', 'BPP SD LAMA'),
(8, '430000', 'BPP SMA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
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
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`nis`, `nama`, `kelas`, `id_rombel`, `jenjang`, `status`, `keterangan`, `jumlah_bulan`, `bpp_per_bulan`, `total`) VALUES
('10163001', 'Aira Sabilla', '6', '', 'SD', 'BELUM LUNAS', 'AGUSTUS  - SEPTEMBER 2021\n', '2', '263000', '526000'),
('10163002', 'Akhdan Ziyad', '6', '', 'SD', 'BELUM LUNAS', '    \n    \r\nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163003', 'ALFIA FARADISA', '6', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10163004', 'ALYA DIAN SHATARA', '6', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10163005', 'AMIRA NAILA SYAKIRA', '6', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10163006', 'Arifa Fitra', '6', '', 'SD', 'BELUM LUNAS', 'AGUSTUS  - SEPTEMBER 2021\n', '2', '263000', '526000'),
('10163007', 'AURA LATISYA AQUINA', '6', '', 'SD', 'BELUM LUNAS', '    \nNOVEMBER 2021   \r\n', '0', '263000', '0'),
('10163008', 'CUT HAURA KHALISHAH', '6', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10163009', 'CUT IMA SHABIRA FARHANI', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163010', 'ERIC JARVIS', '6', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10163011', 'FAIRUZ KHALISAH', '6', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10163013', 'FITRIYATI', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163014', 'Gheena Ameera', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163016', 'HABIBURRISYAD', '6', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10163017', 'HAFIZ RIFIANSYAH', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163019', 'HIZRI USWA', '6', '', 'SD', 'BELUM LUNAS', 'OKTOBER 2021   \n', '0', '263000', '0'),
('10163020', 'Humaira Aditya', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163022', 'Izza kamila', '6', '', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '263000', '789000'),
('10163023', 'Kayla Anisa Faiha', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163024', 'Kayyisah Lathifah Ginting', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163025', 'Khansa Aurelia', '6', '', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '263000', '789000'),
('10163026', 'Khansa Lathifa', '6', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10163027', 'Leonardo Tandia', '6', '', 'SD', 'LUNAS', 'JULI  - DESEMBER 2021\n', '0', '263000', '0'),
('10163028', 'Loetito Nanggroe', '6', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10163029', 'M. Akyas Al Muharriri', '6', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10163031', 'M. Nazhif Alghazi', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163032', 'M. Rachel AL Habsy', '6', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10163035', 'Muhammad Rizki Asfia', '6', '', 'SD', 'BELUM LUNAS', 'NOVEMBER 2021   \n', '0', '263000', '0'),
('10163036', 'Muhammad Rizky Alvatta', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163037', 'Muhammad Syauki Al-Ghifari', '6', '', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '263000', '789000'),
('10163039', 'Muhammad Wildan Hafiz', '6', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10163040', 'Muhammad Zahriyal', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163041', 'Muhammad Zhafran Azra', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163042', 'Naylatul Salwa', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163043', 'Naysyila Syahirah', '6', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10163044', 'Qafka Shafiqa Mulya', '6', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10163045', 'Rafa Anggara', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163046', 'Resya Zaidan Fayyadh', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163047', 'Safra Ulya Hasya', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163048', 'Saif Azizi Srinanda', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163049', 'Saskya Dwi Anggreini', '6', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10163050', 'Syafiq Shandiatha Fawwaz', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163051', 'Syakira Hasna', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163052', 'Syifa Humairah', '6', '', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '263000', '789000'),
('10163053', 'Teuku Ahmad Nasywan', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163054', 'Tiara Larisa Putri', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163055', 'Yusuf Muharram', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10163056', 'Zahira Zawiya Putri Zalia', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173003', 'AQEELA NAWAL FATHINA', '5', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10173004', 'AQNATUNNISWAH', '5', '', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER \n', '3', '263000', '789000'),
('10173005', 'AZKA AL FATA', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173006', 'ATAYA EL RAFIF', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173007', 'AURA SYAKILA', '5', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10173008', 'AQIL AZIZI', '5', '', 'SD', 'LUNAS', 'JULI  - DESEMBER 2021\n', '0', '263000', '0'),
('10173009', 'CARRICK CLASSICO', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173010', 'DINAYRA PUTRI', '5', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10173011', 'DINASTI ARADHANA NASUTION', '5', '', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '263000', '789000'),
('10173012', 'FARISYA KAMILA', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173013', 'FIRANNAZWAN WAHAB', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173014', 'FATHUR RAHMAN', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173015', 'FATIH MURADI RUZIQ', '5', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10173016', 'FIRYAL NABILA', '5', '', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '263000', '789000'),
('10173017', 'GWYNETHA MEYVANIA LISA', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173018', 'HAZIQ AKRAM', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173020', 'KAISAL KIRAM', '5', '', 'SD', 'BELUM LUNAS', 'AGUSTUS  - SEPTEMBER 2021\n', '2', '263000', '526000'),
('10173022', 'KAHFI WAHYU PRATAMA', '5', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10173023', 'KHANSA LUTHFYA INDAH', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173024', 'KEVIN PRATAMA', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173025', 'MUHAMMAD LUTHFI', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173026', 'MUHAMMAD HANIF', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173027', 'MUHAMMAD ZAIDAN AZRA', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173028', 'M KHALILUL MUSYFIQ', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173029', 'M. GHAISAN AL-AZZAM', '5', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10173031', 'MUHAMMAD AQIL SYAUQI', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173032', 'T. MUHAMMAD JIBRIL', '5', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10173033', 'MUHAMMAD FUDAIL', '5', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10173034', 'MUHAMMAD HARIS AUFA', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173035', 'MUHAMMAD AL GHIFARI', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173036', 'MUHAMMAD FAIDZUL IZZI', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173038', 'MUHAMMAD AQILSUJA', '5', '', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '263000', '789000'),
('10173039', 'MIFZAL GUSTAV AZMI', '5', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10173040', 'NAJWA NABILA', '5', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10173041', 'NAILA RAMADHANI', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173042', 'RAIZA FATIH ALNAZWAR', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173043', 'RAVI QUNNAS', '5', '', 'SD', 'BELUM LUNAS', 'OKTOBER 2021   \n', '0', '263000', '0'),
('10173044', 'REYAN EL FACHRI', '5', '', 'SD', 'LUNAS', 'JULI  - DESEMBER 2021\n', '0', '263000', '0'),
('10173045', 'RIFQA HUMAIRA', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173046', 'RAIHAN ULFA', '5', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10173048', 'SAIF AL AZIZI', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173049', 'SAID NADHIF RIZA', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173050', 'SHAVIQ RIZKY ADITYA', '5', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10173051', 'SULTHAN PARISYA AL-KATIRY', '5', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10173052', 'SUQIA RAHMAH', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173053', 'TSAQIF AL-WAFI', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173054', 'ULFA KHAIRA FITRI', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173055', 'VANESA LIVIANA VENI', '5', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10173056', 'YASMIN ATHAMIMI', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10173057', 'YAZID AL - BUSTAMI', '5', '', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '263000', '789000'),
('10173059', 'BRYANT CLERESTA UTAMA', '6', '', 'SD', 'BELUM LUNAS', '    \nNOVEMBER 2021   \r\n', '0', '263000', '0'),
('10173060', 'MUHAMMAD KHALIL', '6', '', 'SD', 'BELUM LUNAS', 'OKTOBER 2021   \n', '0', '263000', '0'),
('10173061', 'ZAYYAN AYYASY KELANA', '6', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10183002', 'MUHAMMAD FATHIN ARFA', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183004', 'BALWA TAJUSA', '5', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183006', 'AMIRA NURUL FAZLIA', '4', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10183007', 'MUHAMMAD ASYRAF RAHFAN', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '131500', '0'),
('10183009', 'MUBARAK ASKAFIA', '4', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10183010', 'YUSUF AL QARDHAWI', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183011', 'JOLIN KOEMARDI', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183013', 'ZINOYA HILMIRA', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183014', 'ZIFANA NAIRA LATISYA', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183015', 'NADA NADHIFA', '4', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10183016', 'MUHAMMAD DWI NOVIAN', '4', '', 'SD', 'BELUM LUNAS', 'AGUSTUS  - SEPTEMBER 2021\n', '2', '263000', '526000'),
('10183017', 'AERILYN BELLVANIA', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183018', 'ZULFIKRI', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183019', 'BENAZIR ZAHIRAH TAUFIQ', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '131500', '0'),
('10183020', 'ADAM FAIZ', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183021', 'MUHAMMAD ADIL', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183022', 'MUHAMMAD RIFAI', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183023', 'MUHAMMAD RAZAN', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183024', 'RAFA KHAIRI ARKAN', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183025', 'JASMINE NAURATUL FANNY', '4', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '131500', '131500'),
('10183027', 'FARIZ ASYRAF', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183028', 'PRAGATA ZHAFIF MAHAWIRA', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183029', 'IZA NAZIRA', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183030', 'DESTINY CINTA RIZVIE', '4', '', 'SD', 'BELUM LUNAS', '    \nNOVEMBER 2021   \r\n', '0', '131500', '0'),
('10183031', 'SHAQUILLE ARSYADIWA FAWWAZ', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183033', 'MIFZAL HAFIZ', '4', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10183034', 'AIDILA NATASYA', '4', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10183035', 'MUHAMMAD ALIF IZAZ', '4', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10183036', 'WARDATUL ULAA', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183037', 'MUNAYA KAMILA', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183039', 'HAFIDH AL KIRAM', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183040', 'ZIAD MUBARRAK', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183041', 'CUT ADILA FARADINA', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183042', 'ABBAS RAFIUDDIN', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183043', 'MUHAMMAD FARIS MAULANA', '4', '', 'SD', 'BELUM LUNAS', 'AGUSTUS  - SEPTEMBER 2021\n', '2', '263000', '526000'),
('10183044', 'FARHANATUL HAFIDHAH', '4', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10183045', 'MUHAMMAD ZAFRIN AL GHIFARI', '4', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10183046', 'IZZAH BADRINA HASRA', '4', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10183047', 'FATHIR SYAWALUL RIZAL', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183048', 'RAISA ZHAFIRA', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183049', 'INAYYAH FAUZIA HABIBIE', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183050', 'KEYSHA ATHA HUMAIRA', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183052', 'MUHAMMAD AUFA', '4', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10183053', 'AUREN LEODRA UTAMA', '4', '', 'SD', 'BELUM LUNAS', '    \n    \r\n    \r\nNOVEMBER 2021   \r\n', '0', '263000', '0'),
('10183054', 'CHE THARA ALAMANDA', '4', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10183055', 'SAIF ASHRAF', '4', '', 'SD', 'BELUM LUNAS', '    \nNOVEMBER 2021   \r\n', '0', '263000', '0'),
('10183056', 'GHINAA AQIILAH', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '131500', '0'),
('10183057', 'NADHA FILZAH DAYAHNA', '4', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10183058', 'LUXVI LATIVA', '4', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10183059', 'ATHALLAH ABIYU SIDDIK', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '131500', '0'),
('10183060', 'FRANKLIN RAU', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183061', 'NIZHAM JIRATULLAH SARIZ', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183062', 'NAJWA ZHAAFIRAH CAESAR', '4', '', 'SD', 'BELUM LUNAS', '    \nNOVEMBER 2021   \r\n', '0', '131500', '0'),
('10183063', 'MYIESHA NAFEEZA AMIRA', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10183066', 'MUHAMMAD ALFI', '4', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10183067', 'AURA SALSABILA', '5', '', 'SD', 'LUNAS', 'JULI  - DESEMBER 2021\n', '0', '263000', '0'),
('10183068', 'Fathi Yakan Alkafi', '6', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10183072', 'ARSYA ZHILLA', '6', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '263000', '263000'),
('10183073', 'M. ALTHAF SYAHRIZAL', '5', '', 'SD', 'BELUM LUNAS', 'OKTOBER 2021   \n', '1', '263000', '263000'),
('10183075', 'MUHAMMAD RAYYAN', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10193006', 'ABDUL ARIQIN RAMADHANA', '3', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10193007', 'ABDULLAH BAHAUDDIN HASJMY', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193008', 'ADAM FATA HAFUZA', '3', '', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '300000', '900000'),
('10193009', 'AFIQA ALTHAFUNNISA', '3', '', 'SD', 'BELUM LUNAS', '    \nNOVEMBER 2021   \r\n', '0', '300000', '0'),
('10193010', 'ALYA SYARIFA FAKHRI', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193012', 'AMIRA CALISTA', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193013', 'ASYRAF NAUFAL GHIFARI', '3', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10193014', 'ATHAYA YUDHA ANORAGA', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193015', 'ATHAYA YUDHIS ARADHANA', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193016', 'AUFA RINA', '3', '', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '300000', '900000'),
('10193017', 'AZZAM ALFA RIZQI', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193018', 'CHARISE COLLEN', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193019', 'FAIHA AQSA SHAFIYA', '3', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10193020', 'FAIZA ALYA', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193021', 'FAYYADH AZZUFAR', '3', '', 'SD', 'BELUM LUNAS', '    \nNOVEMBER 2021   \r\n', '0', '300000', '0'),
('10193022', 'FAZKIA NAURA ANINDYA', '3', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10193023', 'GIBRAN PUTRA RAHADIAN', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193024', 'HAFIZA KHAIRA LUBNA', '3', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '150000', '150000'),
('10193025', 'HAYDAR JAVIER EL GHAZZY', '3', '', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '300000', '900000'),
('10193027', 'KHAIRANNAS', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193028', 'M FATHAN HAYFA', '3', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10193029', 'MUHAMMAD AUFA THUFAILA', '3', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10193030', 'MIKHAILA CARISSA AZ-ZAHRA', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193031', 'MOEDA GHAZY AZMI', '3', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10193032', 'MUHAMMAD FATHUR AZZAM', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193033', 'MUHAMMAD KAMIL FAISYA', '3', '', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '300000', '900000'),
('10193034', 'MUHAMMAD NASUHA', '3', '', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '300000', '900000'),
('10193035', 'MUHAMMAD RAFA KHAIRUL AZAM', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193036', 'MUHAMMAD RAISSYAFIQ', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193037', 'MUHAMMAD RASYA ATHAYA', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193038', 'MUHAMMAD UZHAIR', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193039', 'NAJWA AUFA SHIDQIA', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193040', 'NASYIFA AYARA', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193041', 'NAWAL AZKA', '3', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10193042', 'NAZILATUL MAGHFIRAH', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '150000', '0'),
('10193043', 'PUTROE AZIZIA', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193045', 'RAFQA AZKA', '3', '', 'SD', 'BELUM LUNAS', 'OKTOBER 2021   \n', '0', '300000', '0'),
('10193046', 'RAHIL AZKIA FARIHA', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193047', 'RAYYAN UBAYDILLAH', '3', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10193048', 'REIKA NATHANIA', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193049', 'SAHAFA JALIA BR HASIBUAN', '3', '', 'SD', 'BELUM LUNAS', 'OKTOBER 2021   \n', '0', '300000', '0'),
('10193050', 'SAID MARDHATILLAH', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193051', 'SHARENNA ALDANISHA', '3', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10193052', 'SYAFIQAH APRILIA MAHARANI', '3', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10193053', 'SYAAKIRAH AZZAHRA', '3', '', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '300000', '900000'),
('10193054', 'SYAKIRAH NURUL IZZAH', '3', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10193055', 'T M HANIF AL-QARASYI', '3', '', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '300000', '900000'),
('10193056', 'TASMIRA QALBY', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193059', 'RAFA NAVARRO AL-AKRAM', '5', '', 'SD', 'BELUM LUNAS', 'OKTOBER 2021   \n', '1', '300000', '300000'),
('10193060', 'HAIKAL FIQRI', '3', '', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '300000', '900000'),
('10193061', 'MUHAMMAD RIZKIA', '5', '', 'SD', 'BELUM LUNAS', 'OKTOBER 2021   \n', '1', '300000', '300000'),
('10193063', 'AFKARRAZIQ ZHAKI HANAN RAMBE', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193064', 'MUHAMMAD FATHAN AL GHIFARI', '3', '', 'SD', 'LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10193065', 'ATIKA NURAINI', '6', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10194004', 'ABIYU RAMZY ASLAM', '9', '', 'SMP', 'BELUM LUNAS', '    \nNOVEMBER 2021   \r\n', '0', '370000', '0'),
('10194006', 'ALYA ZASKIYA', '9', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10194007', 'ANNISA AZHARI PUTRI', '9', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10194008', 'ANNISA HUMAIRA HAMDANI', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10194009', 'AURA GHADIZA EFFENDY', '9', '', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10194010', 'AYLA ZASKIA ZULFI', '9', '', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10194011', 'CHELSEA ALAMANDA', '9', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10194012', 'CHERYL MARSYA', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10194013', 'DEVRINA SUCI AULIA', '9', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10194014', 'FAIZATUNNISA', '9', '', 'SMP', 'BELUM LUNAS', 'OKTOBER 2021   \n', '0', '370000', '0'),
('10194016', 'FATHIYA MAHFUZA', '9', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10194017', 'LEONARDI WANGSA', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10194018', 'M.AZRIL MAULANA BB', '9', '', 'SMP', 'BELUM LUNAS', 'AGUSTUS  - SEPTEMBER 2021\n', '2', '370000', '740000'),
('10194020', 'M.HARIS MULASYIBI', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10194021', 'MUHAMMAD IRGIE ASHABUL KAHFI', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10194022', 'MUHAMMAD ARIF RIZKI', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10194023', 'MUHAMMAD DANISH', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10194024', 'MUHAMMAD EL FAIZI', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10194025', 'MUHAMMAD SULTHAN RASYA', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '185000', '0'),
('10194026', 'NABIL RIZKYLLAH AKBAR', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10194027', 'NAILA NUZULA', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10194028', 'NASHIRATUL KHANSA', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10194029', 'NAZIRA', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10194030', 'QAISRA FATIN LATEEFA', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10194031', 'REYASH ZILDJIANO LUVRA', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10194032', 'RASYA HUBILLAH', '9', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10194033', 'RICFIC KUMAR', '9', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10194034', 'RIZKA AZIFA', '9', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10194035', 'SAHLA AZRINA', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10194036', 'SAID DEYYAN DENANSYAH', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10194037', 'SAID NAFIZ RIZA', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10194038', 'SALWA ANNAFISAH', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10194040', 'VARELIA PUTRI REVALDA', '9', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10194041', 'YOEL LIURENDO', '9', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10194042', 'MUHAMMAD RIZKI', '9', '', 'SMP', 'BELUM LUNAS', '    \nNOVEMBER 2021   \r\n', '0', '370000', '0'),
('10194043', 'KHALIL SY BASYARAH', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10194044', 'NAILA FAIRUZZA', '9', '', 'SMP', 'BELUM LUNAS', 'OKTOBER 2021   \n', '0', '370000', '0'),
('10194046', 'HAIKAL SAFNI', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10194047', 'NAJLA KHANSA', '9', '', 'SMP', 'BELUM LUNAS', '    \nNOVEMBER 2021   \r\n', '0', '370000', '0'),
('10194048', 'AISHA TALITHA FAHIRA', '9', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10194049', 'NURUL AZIZAH', '9', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10194050', 'IVA LATHIFAH', '9', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10195004', 'ABIZAR AL AQSHA', '12', '', 'SMA', 'BELUM LUNAS', '    \n    \r\nSEPTEMBER 2021', '1', '430000', '430000'),
('10195005', 'AGIL FATHUR RAHMAN', '12', '', 'SMA', 'BELUM LUNAS', '    \n    \r\nSEPTEMBER 2021', '1', '430000', '430000'),
('10195006', 'AHYA JAZIRA', '12', '', 'SMA', 'BELUM LUNAS', '    \n    \r\nOKTOBER 2021', '0', '430000', '0'),
('10195007', 'ATHIRAH AFRA', '12', '', 'SMA', 'BELUM LUNAS', '    \n    \r\nOKTOBER 2021', '0', '430000', '0'),
('10195008', 'AZIZURRAHMAN', '12', '', 'SMA', 'BELUM LUNAS', '    \nSEPTEMBER 2021', '1', '430000', '430000'),
('10195009', 'AZKYA KAMILA MAHARANI', '12', '', 'SMA', 'BELUM LUNAS', '    \nSEPTEMBER 2021', '1', '430000', '430000'),
('10195010', 'EDRIC FELICIO', '12', '', 'SMA', 'BELUM LUNAS', 'OKTOBER 2021   \n', '1', '430000', '0'),
('10195011', 'EM BRYPO BAGINDA', '12', '', 'SMA', 'BELUM LUNAS', 'JULI  - SEPTEMBER \n', '3', '430000', '1290000'),
('10195012', 'FERIZAL', '12', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER    \n', '1', '430000', '430000'),
('10195013', 'GIANDRA DWI PASYA', '12', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10195014', 'ICHA AUREL', '12', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10195015', 'IFA GHINAYA', '12', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10195016', 'INTAN ZAKYA', '12', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10195017', 'KHAIRUNA ZIKRI', '12', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10195018', 'M. AIMAN', '12', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10195020', 'M. DAFA RAIHANSYAH', '12', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10195021', 'MELLISA', '12', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10195022', 'MUHAMMAD HANNAF', '12', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10195023', 'NABILA RIFQI', '12', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10195024', 'NAJWA NAJMINA', '12', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10195025', 'NOVI RAHMADANI', '12', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10195026', 'PUTRI ULLIR RAHMAH', '12', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10195027', 'RAIHAN PRIA ZULMAA', '12', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10195028', 'RAISA AMANDA', '12', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10195030', 'RENDY WYRA PRATAMA PASI', '12', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10195031', 'RIKMAL BAIHAQI', '12', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10195032', 'SARAH FAZILA', '12', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10195033', 'SARTIKA APRILIA', '12', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10195034', 'SYIFA ANDALIA', '12', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10195035', 'SYIFA SYAHIRAH', '12', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10195036', 'T. ARIF RIFQI', '12', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10195037', 'YOBEL PRECIOUS FUSIN', '12', '', 'SMA', 'LUNAS', '    \n    \r\nLUNAS SEMESTER 1', '0', '430000', '0'),
('10203001', 'KAINDRA AHYAN AHURAYAZDA LESMANA', '4', '', 'SD', 'LUNAS', '    \nBeasiswa Anak ALM. Adhi Lesmana', '0', '300000', '0'),
('10203002', 'ASYRAFFA DIVIAN', '3', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203018', 'TIJAN FATIN SAHIRA', '2', '8', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '300000', '900000'),
('10203019', 'DIWA ANUGRAH', '2', '7', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203020', 'NAUFAL AL KHALIFI', '2', '8', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '300000', '900000'),
('10203021', 'MUHAMMAD FIRHAN', '2', '8', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10203022', 'KEENAND ATHARCHALIF', '2', '8', 'SD', 'BELUM LUNAS', 'AGUSTUS  - SEPTEMBER 2021\n', '2', '300000', '600000'),
('10203023', 'MUHAMMAD ABIDZAR AL GHIFARI', '2', '7', 'SD', 'BELUM LUNAS', 'OKTOBER 2021   \n', '0', '300000', '0'),
('10203024', 'RASYA GIBRAN', '2', '8', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10203025', 'MUHAMMAD BILAL GHUFFRAN ALKAUTSAR', '2', '7', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203026', 'MUHAMMAD FATA', '2', '8', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203027', 'MUHAMMAD ALFATIH', '2', '6', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '150000', '0'),
('10203028', 'AINA CALISTA SYAHIRA', '2', '8', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203029', 'PUTROE HANIFAH', '2', '8', 'SD', 'BELUM LUNAS', 'AGUSTUS  - SEPTEMBER 2021\n', '2', '300000', '600000'),
('10203031', 'SAILA SAVAIRA', '2', '6', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10203032', 'RALINE AL KHAIRA', '2', '7', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203033', 'CUT ANNISA FAIHA', '2', '8', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203034', 'ZAHIYA HUMAIRA', '2', '8', 'SD', 'LUNAS', 'JULI  - DESEMBER 2021\n', '3', '300000', '900000'),
('10203035', 'AURORA PUTRI ZAHERLY', '2', '6', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10203036', 'SYIFA THALITA ZAHRA', '2', '7', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203037', 'CUT ANISA LIDIYA', '2', '6', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10203038', 'ATTALA SHAFARAZ', '2', '8', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203039', 'FAYIZ ARKAN', '2', '8', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203040', 'MUHAMMAD TEUNGKU RIZAL AVIVAN', '2', '7', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203041', 'CUT LUTHFIA QATRUNNADA', '2', '7', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203042', 'MUHAMMAD AL GHAZALI', '2', '7', 'SD', 'LUNAS', 'JULI  - DESEMBER 2021\n', '0', '300000', '0'),
('10203043', 'ALVARO GRAVIEL KOSIDIN', '2', '7', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203044', 'MUHAMMAD SATTAR', '2', '8', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '300000', '900000'),
('10203045', 'NADINE SHAFIYA', '2', '6', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203046', 'ZAHRATUL HUMAIRA', '2', '8', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '300000', '900000'),
('10203047', 'ABIDZAR AL FARISKI', '2', '6', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '300000', '900000'),
('10203048', 'TEUKU RAJA ALFATIH', '2', '8', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10203049', 'RIFYAL ABIYYU IFFAT', '2', '6', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10203050', 'KHALIS SAFNI', '2', '7', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203051', 'MUHAMMAD ZHAFRAN MUAZ', '2', '6', 'SD', 'LUNAS', 'JULI  - DESEMBER 2021\n', '0', '150000', '0'),
('10203052', 'MUHAMMAD FATIH PUTRA SHAFI NASUTION', '2', '6', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10203053', 'SYUJA BASYSYAR', '2', '6', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10203054', 'KAISAR RAKA AL ISLAM', '2', '7', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203055', 'ISYATUN ASRIAH', '2', '6', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10203056', 'MUHAMMAD ASYRAAF JAMALUDDIN', '2', '6', 'SD', 'BELUM LUNAS', 'AGUSTUS  - SEPTEMBER 2021\n', '2', '300000', '600000'),
('10203057', 'MUHAMMAD ALKHALIFI HAMIZAN', '2', '6', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203059', 'ATIKA ZAHRA RATIFA', '2', '6', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203061', 'INAYA TALITA SAKHI', '2', '7', 'SD', 'BELUM LUNAS', '    \nNOVEMBER 2021   \r\n', '0', '300000', '0'),
('10203062', 'CUT AMIRA SYAKIRA', '2', '8', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203063', 'RIFQAH RAJWAA', '2', '7', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203064', 'FAIQA ZAHIRA', '2', '8', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10203065', 'OSIE KHANZA AZZAHRA', '2', '7', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203066', 'HAURA TAMIMI', '2', '6', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '300000', '900000'),
('10203067', 'QAIREEN AISYA SIDDIQA', '2', '8', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203068', 'FATHAN AFKAHUL RIZAL', '2', '6', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203069', 'MUHAMMAD ZHAFRAN', '2', '7', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203070', 'MUHAMMAD KHALIF', '2', '8', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203071', 'MUHAMMAD DAFA AL HAFIZ', '2', '7', 'SD', 'BELUM LUNAS', '    \nNOVEMBER 2021   \r\n', '0', '150000', '0'),
('10203072', 'MUHAMMAD FARREL AL ZHARIEF', '2', '7', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10203073', 'MUHAMMAD DZAKY ALMAEER', '2', '6', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203074', 'MUHAMMAD AQSA ZHEIN', '2', '7', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10203075', 'MUHAMMAD KHALIL AZIZI', '2', '7', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203076', 'TEUKU SABIQ EL-FATHIN', '2', '8', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '300000', '900000'),
('10203077', 'GHUFRAN AL ZAIDAN', '2', '8', 'SD', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '300000', '900000'),
('10203078', 'ARKAN ALFARIZI', '2', '8', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203079', 'BALQIS NAURA ATHIFA', '2', '7', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203080', 'BALQIS HUMAIRA', '2', '6', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10203081', 'NADA FILZATUL MUNA', '4', '', 'SD', 'BELUM LUNAS', '    \nNOVEMBER 2021   \r\n', '0', '150000', '0'),
('10203086', 'INAYATUL LATHIFAH', '2', '6', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203087', 'HUMAIRA AZKIATUN NAJA', '2', '6', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203088', 'KHADZIYA NISRINA INDAH', '2', '8', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203089', 'LUTHFATUN NAJA', '2', '6', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10203090', 'MUHAMMAD NABIL FAYADH', '2', '8', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203091', 'NAFISA ZUHRA', '2', '7', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203092', 'RAJWA SHALIHA', '2', '7', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203093', 'SAYED JIBRIL HADDAD', '2', '6', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10203094', 'SYAMIL KHALID ASLAM', '2', '7', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '225000', '0'),
('10203095', 'TSURAYYA KHAYYIRAH', '2', '8', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10203096', 'ALYA SAFNI', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '263000', '0'),
('10204001', 'CUT AYLA AZZURA', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204002', 'MEYLA FAIZA ZUHRA', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204003', 'RISKY INDRAWAN', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204004', 'Sultan Arif', '8', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10204005', 'Muhammad Nabil Zahran', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204006', 'Nabil ZA', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204007', 'Alif', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204008', 'Aisar Musayyar', '8', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10204009', 'Islah Nafis Fadillah', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204010', 'Patric Valentino', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204011', 'Alfa Munira', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204012', 'Akmal Syarif Faiza', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204013', 'Ainun Ayu Rahmaniah', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204015', 'MUHAMMAD RAJA NAUFAL', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204016', 'DIVAUL KAMILA RAMADHANI', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204017', 'AL TSAQIF SALIM', '8', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10204018', 'HUSNIL MUBARAK', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204019', 'KHAIRA RADHWA', '8', '', 'SMP', 'BELUM LUNAS', 'JULI  - SEPTEMBER \n', '3', '370000', '1110000'),
('10204020', 'MUSAYYARATUL BARRARAH', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204021', 'AMINUL HAFIZ', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204022', 'ABDUL KADIR ILHAM', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204023', 'MUHAMMAD FARID ALGIFARI', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204024', 'MARIO MALTA SIHOMBING', '8', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10204025', 'ALIYAH HANIFAH', '9', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204027', 'MEISYE HALIM', '9', '', 'SMP', 'BELUM LUNAS', '    \nDESEMBER 2021   \r\n', '0', '370000', '0'),
('10204028', 'RAKHA TARANGGA FIKY HIDAYAT', '9', '', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204029', 'AQIL GHOUFAR EFFENDY', '8', '', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10204030', 'RAIHANA QAYSHA AFIFAH', '8', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10204031', 'AZNIEL ASKHYA DAYAHNA', '8', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10204032', 'UKHTI TSABITHA', '8', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10204033', 'ARISTA NAZWA ANANDA', '8', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10204034', 'AMALIA RIZKA', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204035', 'RACHEL AINAYA FAIZA', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204036', 'ANNISA AL MAQHVIRA', '8', '', 'SMP', 'BELUM LUNAS', 'JULI  - SEPTEMBER 2021\n', '3', '370000', '1110000'),
('10204037', 'ANGGI SANJANA', '8', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10204038', 'MUHAMMAD ALFUS', '8', '', 'SMP', 'BELUM LUNAS', 'AGUSTUS 2021 - SEPTEMBER 2021\n', '2', '370000', '740000'),
('10204039', 'MUHAMMAD ASRUL FAIZIN', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204040', 'CUT AYLA AZZURA', '8', '', 'SMP', 'BELUM LUNAS', 'OKTOBER 2021   \n', '0', '370000', '0'),
('10204041', 'M. THARIQ AL-AUSAD', '8', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10204042', 'ARSYFA MAHARANI', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204043', 'RIFQA DARUVA', '8', '', 'SMP', 'BELUM LUNAS', '    \nNOVEMBER 2021   \r\n', '0', '370000', '0'),
('10204044', 'ZIA SITI ZAYYANA', '8', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10204045', 'YASMIN THUFAILAH', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204046', 'FRANCESCO RAU', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204047', 'NABIL DZAKWAAN', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '185000', '0'),
('10204048', 'ZATA ZAMHARIRA', '8', '', 'SMP', 'LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204049', 'ALIA KARIMA', '8', '', 'SMP', 'BELUM LUNAS', 'AGUSTUS  - SEPTEMBER 2021\n', '2', '370000', '740000'),
('10204050', 'IVAN JARVIS', '8', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10204051', 'CUT SOFIE FARADILA', '8', '', 'SMP', 'BELUM LUNAS', 'OKTOBER 2021   \n', '0', '370000', '0'),
('10204052', 'NASYWA FALISHA', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204053', 'ZALFA RAISAL', '8', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10204055', 'DIVIA RAMADHANI', '8', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10204056', 'ARIVA GEBRILIA PUTRI', '8', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10204057', 'CUT NAMIRA', '8', '', 'SMP', 'BELUM LUNAS', '    \nNOVEMBER 2021   \r\n', '0', '370000', '0'),
('10204058', 'MUHAMMAD RAFA FAHLEVI', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204059', 'EGBERT AURICK LIMANDU', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204060', 'SYADIQ AL FAYET', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204062', 'AURELLYALLODIA FAIZA KUSUMA', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204064', 'MUHAMMAD ZHAFRAN SHIDQI', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204065', 'Muhammad Algifari', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204066', 'Qaisar Nabil Al-Fathan', '8', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10204067', 'NASHIFAH SYAKIB DAMANIK', '8', '', 'SMP', 'BELUM LUNAS', '    \nNOVEMBER 2021   \r\n', '0', '370000', '0'),
('10205002', 'FATHURRAHMAN HAWARI', '12', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER    \r\n', '0', '430000', '0'),
('10205004', 'Syahreza Bantara Yudha', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205005', 'Rifa Fauhan', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205006', 'M. Fawwaz Al Kafa', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205007', 'Almira Zafira', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205008', 'Teuku Firman', '11', '', 'SMA', 'BELUM LUNAS', 'AGUSTUS  - SEPTEMBER 2021\n', '2', '430000', '860000'),
('10205009', 'Muhammad Fauzi', '11', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10205010', 'T.M Zaffa Abrar', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205011', 'Nasya Dwi Lestari', '11', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10205012', 'Raudhatul Jannah', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205013', 'DOMINIC SHIFA', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205015', 'TAMLICHA', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205016', 'Muhammad Al Ghiffari', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205017', 'Muhammad fariq ulhaq', '11', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10205018', 'Lailan Thawila', '11', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10205019', 'Stella Nathania', '11', '', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205020', 'Diefa Adilla Haz', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205021', 'Rafi Alkhairan', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205022', 'Muhammad Aufa', '11', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000');
INSERT INTO `data` (`nis`, `nama`, `kelas`, `id_rombel`, `jenjang`, `status`, `keterangan`, `jumlah_bulan`, `bpp_per_bulan`, `total`) VALUES
('10205023', 'Hani Zafira Ramadhani', '11', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10205024', 'Muhammad Syauqi', '11', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER    \n', '1', '430000', '430000'),
('10205025', 'Awfa Farrah Dhiba', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205027', 'Teuku Muhammad Arril Juliansyah', '11', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \nAGUSTUS  - SEPTEMBER \r\n', '1', '430000', '430000'),
('10205028', 'Muhammad Hanif', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER    \r\n', '0', '430000', '0'),
('10205029', 'Naifa Shabira', '11', '', 'SMA', 'BELUM LUNAS', 'OKTOBER 2021   \n', '0', '430000', '0'),
('10205030', 'Thariq Al Wafi', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205031', 'Yasmin Yumna', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205032', 'Ilham Adidian Triwijaksana', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205033', 'Bifawan Aulia', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205034', 'M. Arayki', '11', '', 'SMA', 'BELUM LUNAS', 'JULI  - SEPTEMBER \n', '3', '430000', '1290000'),
('10205035', 'Nahwa Al Islami Al Haq', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205036', 'Nasywan', '11', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10205037', 'Luqmanul Hakim', '11', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10205038', 'Nathaniel Abed Kianto', '11', '', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10205039', 'Inas Amirah', '11', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER    \n', '1', '430000', '430000'),
('10205040', 'Nurul Hidayati Maulidna', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205041', 'Rajwa Rajiyya', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205042', 'Farahdila Saputri', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205043', 'Said Naufal Riza', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205044', 'Zian Ukmul Hafidh', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205045', 'Dilla Amanda Rizalmi', '11', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10205046', 'Muhammad Nauval Razan', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205047', 'MUNNA SALSABILA', '11', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10205048', 'Gebri Fahlevi', '11', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10205049', 'T.M Agil Al Hafidh', '11', '', 'SMA', 'BELUM LUNAS', 'OKTOBER 2021   \n', '0', '430000', '0'),
('10205050', 'Muhammad Rizki', '11', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER    \n', '1', '430000', '430000'),
('10205051', 'Renal Zaky Muhammad', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205052', 'MAIZA SRI NURHALIZA', '12', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205053', 'THIFAL AULIA', '11', '', 'SMA', 'BELUM LUNAS', '    \nNOVEMBER 2021   \r\n', '0', '430000', '0'),
('10205054', 'M.AL BARIQ ILL SAUWIR', '11', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10205055', 'ZIAUL MUBARAQ', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205056', 'Muhammad Hafiz', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10205057', 'CUT HIKMA SARI', '12', '', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10213001', 'MUHAMMAD AZZAM', '3', '', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10213003', 'ABDUL MALIK', '1', '1', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213004', 'ABIZAR ALGHIFARI', '1', '1', 'SD', 'BELUM LUNAS', 'OKTOBER 2021   \n', '0', '300000', '0'),
('10213005', 'ACHMAD AL SYAMEEL', '1', '1', 'SD', 'BELUM LUNAS', '    \n    \r\n    \r\nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213006', 'ADAM ZIA ULHAQ', '1', '1', 'SD', 'BELUM LUNAS', '    \n    \r\nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213007', 'ADZKIA TARISA', '1', '1', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213008', 'AHNAF MEUTUAH ARDYA', '1', '1', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213009', 'AISHA SAFIRA HUMAIRA', '1', '2', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213010', 'AKIFA NAILA', '1', '2', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213011', 'AL MUHTADEE BILLAH SIDDIK', '1', '2', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '150000', '0'),
('10213012', 'ALAYYA AISY SYAVI', '1', '2', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213013', 'ALFATIH KHALIFA UMAR', '1', '2', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213014', 'ALISHA WILDA KHAIRA', '1', '2', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213015', 'AMIRA AZZAHRA', '1', '2', 'SD', 'BELUM LUNAS', 'AGUSTUS  - SEPTEMBER 2021\n', '2', '300000', '600000'),
('10213016', 'AMMAR FAIZ ZUBAIR', '1', '2', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10213017', 'ATHAYA ALTHAFUNNISA', '1', '1', 'SD', 'BELUM LUNAS', 'NOVEMBER 2021   \n', '0', '300000', '0'),
('10213018', 'AVISA HAURA DZAKIYAH', '1', '2', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213019', 'AZANAVID PHATAMAR BARIGHA', '1', '2', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213020', 'AZZALVA LATIVA', '1', '2', 'SD', 'BELUM LUNAS', 'AGUSTUS  - SEPTEMBER 2021\n', '2', '300000', '600000'),
('10213021', 'CECILY DONNELIA', '1', '1', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213022', 'CHELYONA COLLEN', '1', '1', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213023', 'CHEZAHRA ALAMANDA', '1', '2', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10213024', 'CUT CARISSA PUTRI', '1', '2', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213025', 'DERA CHILSYA RYUMA', '1', '1', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10213026', 'EMILI SHAFIYA KAWSIRAZY', '1', '2', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213027', 'GHAZIYA HAFIZA TK. PEMBINA', '1', '1', 'SD', 'BELUM LUNAS', '    \n    \r\nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213028', 'GHAZIYA HAFIZA TKM. LINA', '1', '2', 'SD', 'BELUM LUNAS', '    \n    \r\nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213029', 'GIBRAN FAWWAZ', '1', '2', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213030', 'ILKAY GHAUZAN', '1', '2', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213031', 'INARA FARZANA AHSA RAMBE', '1', '1', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213032', 'JASMINE CALLISTA BALQIS', '1', '2', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10213033', 'MAHARANI BELLVANIA', '1', '2', 'SD', 'BELUM LUNAS', 'AGUSTUS  - SEPTEMBER 2021\n', '2', '300000', '600000'),
('10213034', 'MUHAMMAD ABIDAL VIZAN', '1', '1', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213035', 'MUHAMMAD AZZAM ALKHAIRAN', '1', '1', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213036', 'MUHAMMAD KENZIE AL FARIZY', '1', '2', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213037', 'MUHAMMAD LUTHFI', '1', '1', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213038', 'MUHAMMAD YUDANTA RAIS', '1', '2', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10213039', 'PUAN AISYAH NADHIRA', '1', '2', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213040', 'QAIREEN DAMIA YOVAN', '1', '1', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213041', 'QANITA ARSYFA', '1', '2', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213042', 'RANIA AVANTIKA LESMANA', '1', '1', 'SD', 'LUNAS', '    \n    \r\n    \r\nBeasiswa Anak Alm. Adhi Lesmana\r\n', '0', '300000', '0'),
('10213043', 'SAUSAN HANIFA GINTING', '1', '1', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213044', 'SULTAN ALSIRAJ AUFAR', '1', '2', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213045', 'SYAMILA YASMINE', '1', '1', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213046', 'SYEIKHA HUMAIRA FAJRI', '1', '2', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213047', 'SYIFA NUR ALIYA', '1', '1', 'SD', 'BELUM LUNAS', '    \n    \r\nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213048', 'UMAR', '1', '1', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '150000', '0'),
('10213049', 'DARA QANITA', '1', '1', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213050', 'TEUKU MUHAMMAD AUFA ASSAIF', '1', '1', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213051', 'AFIFA AZKIYA', '1', '2', 'SD', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '300000', '300000'),
('10213052', 'MUDAWALI AL MALIKI', '6', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213053', 'MUHAMMAD AL FARASYI', '4', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '300000', '0'),
('10213054', 'Syauqiva Divian', '5', '', 'SD', 'BELUM LUNAS', 'OKTOBER 2021   \n', '1', '300000', '300000'),
('10214001', 'ARSYILA', '8', '', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214002', 'DZALFA AKIFAH', '9', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10214003', 'ADELIA MASTURA', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214004', 'ANINDYA ELVARETTA', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214005', 'ATTAYA SHAPIRA', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214006', 'AUFA SYAHREZA AL FAKHRI', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214007', 'BASITH RAFIQ FAUZAL', '7', '', 'SMP', 'BELUM LUNAS', '    \nDESEMBER 2021   \r\n', '0', '370000', '0'),
('10214008', 'BIVITRI LAISYA AL KATIRY', '7', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10214009', 'BTARI AIESHA MEDINA', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214010', 'CHELSIA LIUREN', '7', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10214011', 'CARRYN CHRISTY', '7', '', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1\r\n', '0', '370000', '0'),
('10214012', 'DIAN KHAIRANI', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214013', 'DINI MASRURA', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214014', 'FARIS ATHAILLAH', '7', '', 'SMP', 'BELUM LUNAS', 'OKTOBER 2021   \n', '0', '370000', '0'),
('10214015', 'FATIN MUHSINA', '7', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10214016', 'FAULIJAH RAHMAH', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214017', 'FITRIA RAMADHANI', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214018', 'GHAFAR GHAFFARI', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214019', 'KHANSA SYIFA', '7', '', 'SMP', 'LUNAS', '    \nLUNAS 1 SEMESTER', '0', '370000', '0'),
('10214020', 'M. HANIF', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER    \r\n', '0', '370000', '0'),
('10214021', 'MUHAMMAD DAFFA AL HAZIQ', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214022', 'MUHAMMAD FAKHRI RIZQI', '7', '', 'SMP', 'BELUM LUNAS', 'AGUSTUS  - SEPTEMBER 2021\n', '2', '370000', '740000'),
('10214023', 'MUHAMMAD HILMY MUFID', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214024', 'MUHAMMAD LUTHFI', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214025', 'MUHAMMAD RASYA PRATAMA', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214026', 'MUHAMMAD SULTHAAN KHAAFIDH ALMULKI', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214027', 'RADHWA KHAIRAB', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214028', 'RACHEL ILMIRA DEIANSZA', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214030', 'SAYED ZAIDIL MAHFUDH', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214031', 'SITTI AMELIA', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214032', 'SYIFA ANDRIA', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214033', 'T. FAIZ AKBAR', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214034', 'TANZILA UKTIFA', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214035', 'TARA AZUHRA', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214036', 'WILDA ZUHRA PUTRI NAFISA', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214037', 'WILDAN FAYYADH', '7', '', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214038', 'ZAHRATUSSYITA MUHAMMAD', '7', '', 'SMP', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '370000', '0'),
('10214039', 'MAZAYA NAIMI', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214040', 'PUTRI NASYWA', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214041', 'MUHFAZA', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214042', 'GERRARD CHRISTIAN KARTOLO', '7', '', 'SMP', 'BELUM LUNAS', 'AGUSTUS  - SEPTEMBER 2021\n', '2', '370000', '740000'),
('10214043', 'DAVIN KOEMARDI', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214044', 'SALSABILA ASKAFIA', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214045', 'SITI NOVIA AS-SYIFA', '7', '', 'SMP', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10214046', 'ALFA ZAYYAN GHIFARI', '7', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '370000', '370000'),
('10214047', 'MOEHAMMAD IKRAM AL-FAJR', '7', '', 'SMP', 'BELUM LUNAS', 'SEPTEMBER    \n', '1', '370000', '370000'),
('10214048', 'M. FARSYA BILQISTHI', '8', '', 'SMP', 'BELUM LUNAS', '    \n    \r\nOKTOBER 2021   \r\n', '0', '370000', '0'),
('10215002', 'RENOLD FERDIAN SAPUTRA', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215003', 'MUHAMMAD ZIDAN', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215004', 'AULIA RIZQULLAH AZWIR', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215005', 'HUSNUL NABILA IRFA', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215006', 'MUHAMMAD ICHSAN', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215007', 'MEKADINA ADISA RAHMATILLAH', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215008', 'AHMAD SYAUQI FATHANI', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER  -  2021\r\n', '0', '430000', '0'),
('10215009', 'YASMIN AZURA PUTRI', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215010', 'KHAIRAL ABDI', '10', '', 'SMA', 'BELUM LUNAS', '    \nNOVEMBER 2021   \r\n', '0', '430000', '0'),
('10215011', 'MUHAMMAD HAIKAL ASY\'ARY', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215012', 'AKMAL KAUSHAR', '10', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10215013', 'VICTOR ONG', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215014', 'NABILA RAMADHANI', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215015', 'NAJWA ZAMHAHIRA', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215016', 'NASYWA ERZA', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215017', 'M. DZAKI', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER    \r\n', '0', '430000', '0'),
('10215018', 'VINCA CHRISTY', '10', '', 'SMA', 'LUNAS', '    \nLUNAS SEMESTER 1', '0', '430000', '0'),
('10215019', 'GHEA GHAITSA', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215020', 'DARA ZASKIA', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215021', 'SHUFIA ZUHRA', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215022', 'IMRAN KAMIL', '10', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10215023', 'ARFI HAURA AQILA', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215024', 'MUHAMMAD RASEUKI', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215025', 'DESCA SYARAFINA', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215026', 'PUTRA WAHYU PRATAMA', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215027', 'ROYYAN AULIA NANDA', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215028', 'FIKA FAZILA', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER    \r\n', '0', '430000', '0'),
('10215029', 'NURUL UDWANI NASIKA', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215030', 'NAYLA HAFIZA', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '430000'),
('10215031', 'ZULFAHMI', '10', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10215032', 'FARREL KHATAMI', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215033', 'M. RAFLI RIDWAN', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215034', 'SYAFA MAULIDINA', '10', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10215035', 'MUGHLI RASYA ALKATIRY', '10', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10215036', 'FARIQ AUVA AL MUHTARAM', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215037', 'NASYWA KHANSA', '10', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10215038', 'ADEL SAUSAN ALBIRRA', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215039', 'ALFUL KHAIRA', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215040', 'LUTHFIA ZAMIRA', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215041', 'SULTAN NAWWAL AL AZZAM', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215042', 'IFDHAL FASYA', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215043', 'M. ASYRAF', '10', '', 'SMA', 'BELUM LUNAS', 'SEPTEMBER 2021   \n', '1', '430000', '430000'),
('10215044', 'Rafi Daris', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215045', 'Syafiq Islami Pasya', '10', '', 'SD', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215046', 'ZAHRINA AMALIA', '11', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0'),
('10215047', 'SILVIA MAGHFIRAH', '10', '', 'SMA', 'BELUM LUNAS', '    \nOKTOBER 2021   \r\n', '0', '430000', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenjang`
--

CREATE TABLE `jenjang` (
  `id_jenjang` int(11) NOT NULL,
  `nama_jenjang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenjang`
--

INSERT INTO `jenjang` (`id_jenjang`, `nama_jenjang`) VALUES
(1, 'SD'),
(2, 'SMP'),
(3, 'SMA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `id_jenjang` int(11) NOT NULL,
  `kelas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
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
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int(11) NOT NULL,
  `file_laporan` varchar(255) NOT NULL,
  `keterangan` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `file_laporan`, `keterangan`) VALUES
(5, 'Sistem_Informasi_Manajemen_BPP_(1)1.xlsx', 'per 26 sept 21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rombel`
--

CREATE TABLE `rombel` (
  `id_rombel` int(11) NOT NULL,
  `id_kelas` varchar(11) NOT NULL,
  `rombel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rombel`
--

INSERT INTO `rombel` (`id_rombel`, `id_kelas`, `rombel`) VALUES
(1, '1', 'IA - JEPANG'),
(2, '1', 'IB - OMAN'),
(6, '2', 'II A - FILIPINA'),
(7, '2', 'II B - YAMAN'),
(8, '2', 'II C - INDONESIA'),
(9, '3', 'III A - IRAN'),
(10, '3', 'III B - PAKISTAN'),
(11, '4', 'IV A - TURKI'),
(12, '4', 'IV B - YORDANIA'),
(13, '5', 'V A - MALAYSIA'),
(14, '5', 'V B - KAMBOJA'),
(15, '6', 'VI A - SINGAPURA'),
(16, '6', 'VI B - QATAR'),
(17, '7', 'VII AURORA'),
(18, '7', 'VII HORIZON'),
(19, '8', 'VIII GALAXY'),
(20, '8', 'VIII ORION'),
(21, '9', 'IX GRAVITATION'),
(22, '9', 'IX TITAN'),
(23, '10', 'X IPA HARVARD'),
(24, '10', 'X IPS STANFORD'),
(25, '11', 'XI IPA MONASH'),
(26, '11', 'XI IPA PRINCETON'),
(27, '11', 'XI IPS CORNELL'),
(28, '12', 'XII IPA OXFORD'),
(29, '12', 'XII IPS CAMBRIDGE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
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
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `id_rombel`, `username`, `password`, `role`) VALUES
(3, 'ADMINISTRATOR', '0', 'admin', '0eab68759cc784399fa5c6ba986cdb3d', 0),
(4, 'INDRA SAPUTRA, S.E', '0', '10081045', '272fccee2682565378fb775496b50155', 1),
(5, 'SITI DEA SATIFA, S.ST', '0', '10161002', '467b481876db1758d9b38a75aabbccdb', 1),
(6, 'ASHIL ULAYYA, S.Pd.', '6', '10206047', '6dc160a474a35785375a9c29111285a8', 2),
(7, 'CUT HAFSAH, S.Pd', '7', '10081088', '9d50009502f045b7f01f111d2e2536e5', 2),
(8, 'AMRUL HAKIM, .M.Pd.', '8', '10201001', '8052f165e6716be68da7dbcea1b38df3', 2),
(9, 'FITRIANI, S.E.', '9', '10206043', '49a8f6c69a4235a5473e0f9ed9e2dc9f', 2),
(10, 'ARAFAH NUZULA, S.Mat.', '10', '10206045', 'c2ea209067813c41d2979ba081843927', 2),
(11, 'IKA MEUTIA, S.Si', '11', '10081044', '09dfa3b617b555a9df17e99b40f9db89', 2),
(12, 'NURUL AULIA, S.Pd.', '12', '10186006', '1b096296451c4edb7800f4cf11ff015a', 2),
(13, 'NURLAILI S.Si', '13', '10111078', 'e18b3839d8d47f706c01b33062bac141', 2),
(14, 'NURHILZA, B.Sc, M.A', '14', '10141005', '3e9285464b7e2890bf186db889d8df4b', 2),
(15, 'DIAN MANYA, S.Pd.', '15', '10206044', '7fd420fb6928690724c945cc7c016786', 2),
(16, 'MAICHITA MUTIA, S.Pd.', '16', '12141009', '98f946d560339925e5b0e3027d763c32', 2),
(17, 'DWI WULANDARY, ST, M.A', '17', '10081054', 'aee24833261082600a047b5ab478458a', 2),
(18, 'BASIRAN, S.Ag, M.A', '18', '10081051', '4c53ca0da8a337cc85f13c6beee2f35c', 2),
(19, 'MEUTIA HESTI PALDANA, S.Pd', '19', '10151004', '556c48640c368af6f43a861cf738e3c9', 2),
(20, 'MARDIANA, S.Pd', '20', '10211008', '191d2a9c1235a65edd03e5dfcbfedecf', 2),
(21, 'AINAL MARDHIAH, S.Pd', '21', '10211006', '96c47985f80db1cb4e2c2a35b330d405', 2),
(22, 'DHIA RAHMAT, S.Pd., M.Pd.', '22', '10151001', '499855b171ee5626422214dedd2abe64', 2),
(23, 'MUKHLISANUR, S. Pd', '23', '10121083', 'b22b76f444c7930f3e3fe47ddfba7600', 2),
(24, 'DESTYA DARSIANA, S.SOS', '24', '10206053', 'a828e1eca5b1d070a10599b5ebe11a5c', 2),
(25, 'HELMIATI, S.Pd. I', '25', '10061019', 'c4ce452d7140ad81af7dfe82b2caac24', 2),
(26, 'RAHMI, S.Pd.Gr.', '26', '10211004', '4e86efecd89907872cae4c96c58adcad', 2),
(27, 'DIAN FERDIANSYAH, M.A', '27', '10141001', '69e3512f7d6ff609c8b727e541e22187', 2),
(28, 'NURDIANA, S.Pd', '28', '10201003', '5c46f9f1ee5a4d62d352c0ffe3a95ed9', 2),
(29, 'VERA WAHYUNI, S.Si.', '29', '11161003', '55a61dec5a3418c9268f5f0e96db1aae', 2),
(30, 'MARINA NOVA WAHYUNI, S.T', '0', '12101107', '63ec5fcb2bd10faa0f09879c1348f80d', 1),
(31, 'CHANDRA NURMANSYAH, S.Si', '0', '10101064', 'ed42ac8500eef834efb4edc44d3a343d', 1),
(32, 'KARTIKA HAKIM, S.S., MA', '0', '10151003', '59648ef7321f9a5522d97b3d22f5ae7f', 1),
(33, 'MAINA SARA, M.A.', '0', '11071018', '29422fcab11ad5872e41f0e110d10f41', 1),
(34, 'ADERIANA MASTHURA, S.Si', '2', '10206046', '67b0508075400b581fd2e6f3a5215cb9', 2),
(35, 'PUTRI MAULIDA, S.Pd', '1', '10111076', '8e3fe1f2120e645e218e937b2e90a5cc', 2),
(36, 'NURUL AULIA, S.Pd', '12', '10211003', '7d5713c82574a0692d02bb12ccf8dabf', 2),
(37, 'YUNDA NAFSIAH, S.Pd.', '22', '10211009', '8fae4a3180615fad740c76dff9d6b349', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `biaya`
--
ALTER TABLE `biaya`
  ADD PRIMARY KEY (`id_biaya`);

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`nis`);

--
-- Indeks untuk tabel `jenjang`
--
ALTER TABLE `jenjang`
  ADD PRIMARY KEY (`id_jenjang`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indeks untuk tabel `rombel`
--
ALTER TABLE `rombel`
  ADD PRIMARY KEY (`id_rombel`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `biaya`
--
ALTER TABLE `biaya`
  MODIFY `id_biaya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `jenjang`
--
ALTER TABLE `jenjang`
  MODIFY `id_jenjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rombel`
--
ALTER TABLE `rombel`
  MODIFY `id_rombel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
