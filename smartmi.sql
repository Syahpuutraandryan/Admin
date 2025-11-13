-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Nov 11, 2025 at 10:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartmi`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen`
--

CREATE TABLE `absen` (
  `ida` int(10) NOT NULL,
  `ids` int(10) NOT NULL,
  `idj` int(11) NOT NULL,
  `tgl` varchar(100) NOT NULL,
  `ket` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `absen`
--

INSERT INTO `absen` (`ida`, `ids`, `idj`, `tgl`, `ket`) VALUES
(1, 11, 2, '2018-05-01', 'M'),
(2, 12, 2, '2018-05-01', 'M'),
(3, 13, 2, '2018-05-01', 'M'),
(4, 23, 2, '2018-05-01', 'M'),
(5, 25, 2, '2018-05-01', 'S'),
(6, 27, 2, '2018-05-01', 'A'),
(7, 11, 2, '2018-05-08', 'S'),
(8, 12, 2, '2018-05-08', 'M'),
(9, 13, 2, '2018-05-08', 'M'),
(10, 23, 2, '2018-05-08', 'I'),
(11, 25, 2, '2018-05-08', 'M'),
(12, 27, 2, '2018-05-08', 'A'),
(13, 37, 12, '2025-11-10', 'A'),
(14, 43, 13, '2025-11-10', 'A'),
(15, 39, 14, '2025-11-11', 'I'),
(16, 45, 14, '2025-11-11', 'A'),
(17, 46, 14, '2025-11-11', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `idg` int(10) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(3) NOT NULL,
  `alamat` text NOT NULL,
  `pass` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`idg`, `nip`, `nama`, `jk`, `alamat`, `pass`) VALUES
(26, '1234567', 'fauzan', 'L', '', '8c8f57439165ef607694643c4c95dcf3'),
(27, '123456', 'budi', 'L', '', '7a51e8ed2e1eaf97f262ddc005e63091'),
(28, '7654321', 'abdul', 'L', '', '82e6317dda8fd7d497683e2f5dcf01a9');

-- --------------------------------------------------------

--
-- Table structure for table `hari`
--

CREATE TABLE `hari` (
  `idh` int(11) NOT NULL,
  `hari` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hari`
--

INSERT INTO `hari` (`idh`, `hari`) VALUES
(1, 'Senin'),
(2, 'Selasa'),
(3, 'Rabu'),
(4, 'Kamis'),
(5, 'Jum\'at');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `idj` int(11) NOT NULL,
  `idh` int(11) NOT NULL,
  `idg` int(11) NOT NULL,
  `idk` int(11) NOT NULL,
  `idm` int(11) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`idj`, `idh`, `idg`, `idk`, `idm`, `jam_mulai`, `jam_selesai`, `aktif`) VALUES
(1, 1, 9, 7, 2, '07:00:00', '08:00:00', 0),
(2, 2, 25, 8, 1, '07:00:00', '09:00:00', 0),
(4, 3, 25, 7, 1, '14:00:00', '15:00:00', 0),
(5, 3, 25, 9, 1, '13:00:00', '15:00:00', 0),
(6, 2, 23, 7, 3, '10:00:00', '12:00:00', 0),
(7, 4, 10, 9, 3, '10:00:00', '12:00:00', 0),
(8, 2, 17, 8, 3, '13:00:00', '15:00:00', 0),
(9, 1, 0, 0, 0, '08:00:00', '00:00:00', 0),
(10, 1, 9, 7, 1, '08:00:00', '09:00:00', 0),
(11, 2, 26, 8, 1, '20:30:00', '23:00:00', 0),
(12, 1, 26, 8, 2, '20:30:00', '23:00:00', 0),
(13, 1, 26, 12, 7, '21:00:00', '23:00:00', 0),
(14, 2, 28, 9, 1, '12:00:00', '14:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `idk` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`idk`, `id`, `nama`) VALUES
(7, 2, 'I'),
(8, 2, 'II'),
(9, 2, 'III'),
(10, 2, 'IV'),
(11, 2, 'V'),
(12, 2, 'VI'),
(13, 2, 'ESKUL');

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `idm` int(11) NOT NULL,
  `nama_mp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`idm`, `nama_mp`) VALUES
(1, 'Matematika'),
(2, 'Bahasa Indonesia'),
(3, 'Ilmu Pengetahuan Alam'),
(4, 'Ilmu Pengetahuan sosial'),
(5, 'Agama Islam'),
(6, 'Pendidikan Kewarganegaraan'),
(7, 'Penjaskes'),
(8, 'bahasa inggris'),
(9, 'Seni Budaya');

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `id` int(10) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`id`, `kode`, `nama`, `alamat`) VALUES
(2, '2010902872872', 'MI Raudlatul Ulum Pabuaran Jaha', 'Jalan Jaha Km. 3 Pabuaran Jaha Desa Sindangmandi Kecamatan Anyar, Sindangmandi, Kec. Anyar, Kab. Serang, Prov. Banten');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `ids` int(10) NOT NULL,
  `nis` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `alamat` text NOT NULL,
  `idk` int(5) NOT NULL,
  `tlp` varchar(20) NOT NULL,
  `bapak` varchar(50) NOT NULL,
  `k_bapak` varchar(50) NOT NULL,
  `ibu` varchar(50) NOT NULL,
  `k_ibu` varchar(50) NOT NULL,
  `pass` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`ids`, `nis`, `nama`, `jk`, `alamat`, `idk`, `tlp`, `bapak`, `k_bapak`, `ibu`, `k_ibu`, `pass`) VALUES
(37, '231011402794', 'andriyan', 'L', '', 8, '', '', '', '', '', '1a56992c0dacb0646aa7623a1e08b544'),
(38, '231011402787', 'riski', 'L', '', 7, '', '', '', '', '', 'f3f647853714a632cee908bf493ea444'),
(39, '231011402978', 'ayoga', 'L', '', 9, '', '', '', '', '', '5848cb383b8c5209014965829871453b'),
(41, '231011402652', 'hafizh', 'L', '', 11, '', '', '', '', '', 'adc637b2dd8ba9e86af5b6c844f1946e'),
(42, '231011402143', 'ikhram', 'L', '', 10, '', '', '', '', '', 'b3f2857a9c82ab888fa8d95af1c1b29a'),
(43, '23101140243', 'adrian', 'L', '', 12, '', '', '', '', '', 'c70f3df41d97f38f25431546e3697e6b'),
(45, '231011402754', 'aswangga', 'L', '', 9, '', '', '', '', '', '96c41a01261661521751eac058bf6134'),
(46, '231011407614', 'nasya', 'P', '', 9, '', '', '', '', '', '24013821d9a43dcec136d71c0b6a65dd');

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `idt` int(11) NOT NULL,
  `idg` int(11) NOT NULL,
  `idk` int(11) NOT NULL,
  `idm` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `materi_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`idt`, `idg`, `idk`, `idm`, `judul`, `deskripsi`, `deadline`, `materi_path`, `created_at`) VALUES
(2, 26, 9, 5, 'tes 1', 'tes1', '2025-11-12 09:13:00', '/uploads/siswa/tugas/materi_26_1762830062.pdf', '2025-11-11 03:01:02'),
(3, 28, 9, 2, 'pertemuan tes', 'tes', '2025-11-12 16:05:00', 'uploads/siswa/tugas/materi_28_1762852135.pdf', '2025-11-11 09:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `tugas_submission`
--

CREATE TABLE `tugas_submission` (
  `idts` int(11) NOT NULL,
  `idt` int(11) NOT NULL,
  `ids` int(11) NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `submitted_at` datetime DEFAULT current_timestamp(),
  `nilai` decimal(5,2) DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `graded_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tugas_submission`
--

INSERT INTO `tugas_submission` (`idts`, `idt`, `ids`, `file_path`, `catatan`, `submitted_at`, `nilai`, `komentar`, `graded_at`) VALUES
(1, 2, 39, '/uploads/siswa/pengumpulan/jawaban_39_2_1762831725.pdf', 'tes', '2025-11-11 10:28:45', 100.00, 'bagus', '2025-11-11 10:46:11'),
(2, 3, 46, 'uploads/siswa/pengumpulan/jawaban_46_3_1762853309.pdf', 'contoh jawaban', '2025-11-11 16:28:29', 100.00, 'bagus', '2025-11-11 16:31:17'),
(3, 2, 46, 'uploads/siswa/pengumpulan/jawaban_46_2_1762853125.pdf', 'tugas tes', '2025-11-11 16:25:25', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idu` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pass` text NOT NULL,
  `level` varchar(50) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idu`, `nama`, `pass`, `level`, `id`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`ida`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`idg`);

--
-- Indexes for table `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`idh`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`idj`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`idk`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`idm`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`ids`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`idt`),
  ADD KEY `idg` (`idg`),
  ADD KEY `idk` (`idk`),
  ADD KEY `idm` (`idm`);

--
-- Indexes for table `tugas_submission`
--
ALTER TABLE `tugas_submission`
  ADD PRIMARY KEY (`idts`),
  ADD KEY `idt` (`idt`),
  ADD KEY `ids` (`ids`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen`
--
ALTER TABLE `absen`
  MODIFY `ida` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `idg` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `hari`
--
ALTER TABLE `hari`
  MODIFY `idh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `idj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `idk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  MODIFY `idm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `ids` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `idt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tugas_submission`
--
ALTER TABLE `tugas_submission`
  MODIFY `idts` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idu` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tugas`
--
ALTER TABLE `tugas`
  ADD CONSTRAINT `tugas_ibfk_1` FOREIGN KEY (`idg`) REFERENCES `guru` (`idg`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tugas_ibfk_2` FOREIGN KEY (`idk`) REFERENCES `kelas` (`idk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tugas_ibfk_3` FOREIGN KEY (`idm`) REFERENCES `mata_pelajaran` (`idm`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tugas_submission`
--
ALTER TABLE `tugas_submission`
  ADD CONSTRAINT `tugas_submission_ibfk_1` FOREIGN KEY (`idt`) REFERENCES `tugas` (`idt`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tugas_submission_ibfk_2` FOREIGN KEY (`ids`) REFERENCES `siswa` (`ids`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
