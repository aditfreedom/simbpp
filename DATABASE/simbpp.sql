-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jul 2021 pada 18.15
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
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `nis` varchar(15) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`nis`, `nama`, `kelas`, `status`) VALUES
('10195004', 'ABIZAR AL AQSHA', 'XI Oxford', 'BELUM LUNAS'),
('10195005', 'AGIL FATHUR RACHMAN', 'XI Oxford', 'BELUM LUNAS'),
('10195006', 'AHYA JAZIRA', 'XI Oxford', 'BELUM LUNAS'),
('10195007', 'ATHIRAH AFRA', 'XI Oxford', 'BELUM LUNAS'),
('10195008', 'AZIZURRAHMAN', 'XI Cambridge', 'BELUM LUNAS'),
('10195009', 'AZKYA KAMILA MAHARANI', 'XI Cambridge', 'LUNAS'),
('10195010', 'EDRIC FELICIO', 'XI Cambridge', 'LUNAS'),
('10195011', 'EM BRYPO BAGINDA', 'XI Oxford', 'BELUM LUNAS'),
('10195012', 'FERIZAL', 'XI Cambridge', 'LUNAS'),
('10195013', 'GIANDRA DWI PASYA', 'XI Oxford', 'BELUM LUNAS'),
('10195014', 'ICHA AUREL', 'XI Oxford', 'BELUM LUNAS'),
('10195015', 'IFA GHINAYA', 'XI Oxford', 'BELUM LUNAS'),
('10195016', 'INTAN ZAKYA', 'XI Oxford', 'BELUM LUNAS'),
('10195017', 'KHAIRUNA ZIKRI', 'XI Cambridge', 'BELUM LUNAS'),
('10195018', 'M. AIMAN', 'XI Cambridge', 'BELUM LUNAS'),
('10195020', 'M. DAFA RAIHANSYAH', 'XI Oxford', 'BELUM LUNAS'),
('10195021', 'MELLISA', 'XI Cambridge', 'LUNAS'),
('10195022', 'MUHAMMAD HANNAF', 'XI Oxford', 'LUNAS'),
('10195023', 'NABILA RIFQI', 'XI Cambridge', 'BELUM LUNAS'),
('10195024', 'NAJWA NAJMINA', 'XI Oxford', 'BELUM LUNAS'),
('10195025', 'NOVI RAHMADANI', 'XI Oxford', 'BELUM LUNAS'),
('10195026', 'PUTRI ULLIR RAHMAH', 'XI Oxford', 'BELUM LUNAS'),
('10195027', 'RAIHAN PRIA ZULMAA', 'XI Oxford', 'BELUM LUNAS'),
('10195028', 'RAISA AMANDA', 'XI Oxford', 'BELUM LUNAS'),
('10195030', 'RENDY WYRA PRATAMA PASI', 'XI Cambridge', 'LUNAS'),
('10195031', 'RIKMAL BAIHAQI', 'XI Cambridge', 'LUNAS'),
('10195032', 'SARAH FAZILA', 'XI Cambridge', 'LUNAS'),
('10195033', 'SARTIKA APRILIA', 'XI Oxford', 'BELUM LUNAS'),
('10195034', 'SYIFA ANDALIA', 'XI Oxford', 'BELUM LUNAS'),
('10195035', 'SYIFA SYAHIRAH', 'XI Oxford', 'BELUM LUNAS'),
('10195036', 'T. ARIF RIFQI', 'XI Oxford', 'BELUM LUNAS'),
('10195037', 'YOBEL PRECIOUS FUSIN', 'XI Cambridge', 'LUNAS'),
('10205002', 'FATHURRAHMAN HAWARI', 'XI Oxford', 'BELUM LUNAS'),
('10205004', 'Syahreza Bantara Yudha', 'X Cornell', 'BELUM LUNAS'),
('10205005', 'Rifa Fauhan', 'X Monash', 'LUNAS'),
('10205006', 'M. Fawwaz Al Kafa', 'X Monash', 'LUNAS'),
('10205007', 'Almira Zafira', 'X Monash', 'BELUM LUNAS'),
('10205008', 'Teuku Firman', 'X Cornell', 'LUNAS'),
('10205009', 'Muhammad Fauzi', 'X Monash', 'BELUM LUNAS'),
('10205010', 'T.M Zaffa Abrar', 'X Monash', 'LUNAS'),
('10205011', 'Nasya Dwi Lestari', 'X Princeton', 'BELUM LUNAS'),
('10205012', 'Raudhatul Jannah', 'X Cornell', 'BELUM LUNAS'),
('10205013', 'DOMINIC SHIFA', 'X Cornell', 'BELUM LUNAS'),
('10205015', 'TAMLICHA', 'X Monash', 'BELUM LUNAS'),
('10205016', 'Muhammad Al Ghiffari', 'X Princeton', 'BELUM LUNAS'),
('10205017', 'Muhammad fariq ulhaq', 'X Monash', 'BELUM LUNAS'),
('10205018', 'Lailan Thawila', 'X Princeton', 'BELUM LUNAS'),
('10205019', 'Stella Nathania', 'X Cornell', 'LUNAS'),
('10205020', 'Diefa Adilla Haz', 'X Cornell', 'BELUM LUNAS'),
('10205021', 'Rafi Alkhairan', 'X Monash', 'LUNAS'),
('10205022', 'Muhammad Aufa', 'X Monash', 'BELUM LUNAS'),
('10205023', 'Hani Zafira Ramadhani', 'X Cornell', 'BELUM LUNAS'),
('10205024', 'Muhammad Syauqi', 'X Princeton', 'BELUM LUNAS'),
('10205025', 'Awfa Farrah Dhiba', 'X Princeton', 'BELUM LUNAS'),
('10205026', 'Muhammad Aulia', 'X Cornell', 'LUNAS'),
('10205027', 'Teuku Muhammad Arril Juliansyah', 'X Princeton', 'BELUM LUNAS'),
('10205028', 'Muhammad Hanif', 'X Princeton', 'BELUM LUNAS'),
('10205029', 'Naifa Shabira', 'X Princeton', 'LUNAS'),
('10205030', 'Thariq Al Wafi ', 'X Princeton', 'BELUM LUNAS'),
('10205031', 'Yasmin Yumna', 'X Monash', 'LUNAS'),
('10205032', 'Ilham Adidian Triwijaksana', 'X Monash', 'BELUM LUNAS'),
('10205033', 'Bifawan Aulia', 'X Cornell', 'LUNAS'),
('10205034', 'M. Arayki', 'X Princeton', 'LUNAS'),
('10205035', 'Nahwa Al Islami Al Haq', 'X Monash', 'BELUM LUNAS'),
('10205036', 'Nasywan', 'X Monash', 'LUNAS'),
('10205037', 'Luqmanul Hakim', 'X Cornell', 'BELUM LUNAS'),
('10205038', 'Nathaniel Abed Kianto', 'X Monash', 'LUNAS'),
('10205039', 'Inas Amirah', 'X Cornell', 'BELUM LUNAS'),
('10205040', 'Nurul Hidayati Maulidna', 'X Monash', 'LUNAS'),
('10205041', 'Rajwa Rajiyya', 'X Princeton', 'LUNAS'),
('10205042', 'Farahdila Saputri', 'X Cornell', 'BELUM LUNAS'),
('10205043', 'Said Naufal Riza', 'X Princeton', 'LUNAS'),
('10205044', 'Zian Ukmul Hafidh', 'X Princeton', 'LUNAS'),
('10205045', 'Dilla Amanda Rizalmi', 'X Cornell', 'BELUM LUNAS'),
('10205046', 'Muhammad Nauval Razan', 'X Princeton', 'LUNAS'),
('10205047', 'MUNNA SALSABILA', 'X Cornell', 'BELUM LUNAS'),
('10205048', 'Gebri Fahlevi', 'X Monash', 'BELUM LUNAS'),
('10205049', 'T.M Agil Al Hafidh', 'X Princeton', 'BELUM LUNAS'),
('10205050', 'Muhammad Rizki', 'X Cornell', 'BELUM LUNAS'),
('10205051', 'Renal Zaky Muhammad', 'X Cornell', 'BELUM LUNAS'),
('10205052', 'MAIZA SRI NURHALIZA', 'XI Oxford', 'BELUM LUNAS'),
('10205053', 'THIFAL AULIA', 'X Cornell', 'LUNAS'),
('10205054', 'M. ALBARIQILL SAUWIR', 'X Princeton', 'BELUM LUNAS'),
('10205055', 'Ziaul Mubaraq', 'X Cornell', 'BELUM LUNAS'),
('10205056', 'MUHAMMAD HAFIZ', 'X Princeton', 'BELUM LUNAS'),
('10205057', 'CUT HIKMA SARI', 'XI Oxford', 'BELUM LUNAS'),
('10215002', 'Renold Ferdian Saputra', 'X Monash', 'LUNAS');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`nis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
