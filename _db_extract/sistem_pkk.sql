-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2024 at 12:23 PM
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
-- Database: `sistem_pkk`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(45) NOT NULL,
  `hak_akses` enum('superadmin','sekret','kades','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `username`, `password`, `hak_akses`) VALUES
(1, 'admin', '8cb2237d0679ca88db6464eac60da96345513964', 'superadmin'),
(3, 'adi', '8cb2237d0679ca88db6464eac60da96345513964', 'sekret'),
(4, 'sirape', '8cb2237d0679ca88db6464eac60da96345513964', 'sekret'),
(9, 'opla', '8cb2237d0679ca88db6464eac60da96345513964', 'kades');

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id_berita` int(11) NOT NULL,
  `id_pokja` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal_upload` date NOT NULL,
  `tanggal_post` date DEFAULT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`id_berita`, `id_pokja`, `judul`, `deskripsi`, `tanggal_upload`, `tanggal_post`, `gambar`) VALUES
(1, 1, 'Kegiatan pengembangan UMKM', 'Menuju ekonomi take off melalui pengembangan UMKM di Desa dengan gotong royong \r\nbahu membahu mewujudkannya pasti bisa \r\ndilaksanakan', '2024-07-04', '2024-07-06', 'IMG-20190720-WA0026_0.jpg'),
(25, 1, 'PKK Kampung Petta persiapan kegiatan ekonomi kreatif', 'PKK Kampung Petta siap menuju Desa ekonomi kreatif', '2024-07-06', '2024-07-08', '0004.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_galeri`
--

CREATE TABLE `tb_galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_pokja` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_galeri`
--

INSERT INTO `tb_galeri` (`id_galeri`, `id_pokja`, `judul`, `deskripsi`, `gambar`) VALUES
(10, 1, 'Kegiatan pengembangan UMKM', 'Menuju ekonomi take off melalui pengembangan UMKM di Desa dengan gotong royong \r\nbahu membahu mewujudkannya pasti bisa \r\ndilaksanakan.', 'IMG-20190720-WA0026_0.png.jpg'),
(12, 1, 'Kegiatan jalan sehat ', 'Kegiatan jalan sehat dan senam pagi bersama ibu-ibu PKK Kampung Petta', '0003.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengurus`
--

CREATE TABLE `tb_pengurus` (
  `id_pengurus` int(11) NOT NULL,
  `id_pokja` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(25) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pengurus`
--

INSERT INTO `tb_pengurus` (`id_pengurus`, `id_pokja`, `nama`, `jabatan`, `gambar`) VALUES
(3, 2, 'Ny. Irmayanti Zain Tatali, S.Ag', 'Ketua', '23.jpeg'),
(4, 2, 'Ny. Sri Ligiawati Soleman, S.Pd.I', 'Wakil Ketua', '26.jpeg'),
(5, 2, 'Ny. Mira Santika Jumaidi, S.Pd', 'Sekretaris', '12.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pokja`
--

CREATE TABLE `tb_pokja` (
  `id_pokja` int(11) NOT NULL,
  `nama_pokja` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pokja`
--

INSERT INTO `tb_pokja` (`id_pokja`, `nama_pokja`, `deskripsi`) VALUES
(1, 'Pokja II', 'Bidang Pendidikan dan Keterampilan'),
(4, 'Pokja IV', 'Bidang Kesehatan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_proker`
--

CREATE TABLE `tb_proker` (
  `id_proker` int(11) NOT NULL,
  `id_pokja` int(11) NOT NULL,
  `nama_proker` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `waktu_pelaksanaan` date NOT NULL,
  `status` enum('rencana','sedang berjalan','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_proker`
--

INSERT INTO `tb_proker` (`id_proker`, `id_pokja`, `nama_proker`, `deskripsi`, `waktu_pelaksanaan`, `status`) VALUES
(1, 4, 'Kegiatan Posyandu', 'Melaksanakan kegiatan posyandu setiap bulannya bagi anak-anak dan lansia', '2024-07-06', 'sedang berjalan'),
(9, 1, 'Kegiatan belajar mengajar PAUD', 'Melaksanakan kegiatan belajar mengajar dari hari senin-kamis', '2024-07-08', 'sedang berjalan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_saran`
--

CREATE TABLE `tb_saran` (
  `id_saran` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `lindongan` int(11) NOT NULL,
  `saran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `id_pokja` (`id_pokja`),
  ADD KEY `id_pokja_2` (`id_pokja`);

--
-- Indexes for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `id_pokja` (`id_pokja`),
  ADD KEY `id_pokja_2` (`id_pokja`);

--
-- Indexes for table `tb_pengurus`
--
ALTER TABLE `tb_pengurus`
  ADD PRIMARY KEY (`id_pengurus`),
  ADD KEY `id_pokja` (`id_pokja`);

--
-- Indexes for table `tb_pokja`
--
ALTER TABLE `tb_pokja`
  ADD PRIMARY KEY (`id_pokja`);

--
-- Indexes for table `tb_proker`
--
ALTER TABLE `tb_proker`
  ADD PRIMARY KEY (`id_proker`),
  ADD KEY `id_admin` (`id_pokja`),
  ADD KEY `id_pokja` (`id_pokja`);

--
-- Indexes for table `tb_saran`
--
ALTER TABLE `tb_saran`
  ADD PRIMARY KEY (`id_saran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_pengurus`
--
ALTER TABLE `tb_pengurus`
  MODIFY `id_pengurus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_pokja`
--
ALTER TABLE `tb_pokja`
  MODIFY `id_pokja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_proker`
--
ALTER TABLE `tb_proker`
  MODIFY `id_proker` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_saran`
--
ALTER TABLE `tb_saran`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD CONSTRAINT `tb_berita_ibfk_1` FOREIGN KEY (`id_pokja`) REFERENCES `tb_pokja` (`id_pokja`);

--
-- Constraints for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD CONSTRAINT `tb_galeri_ibfk_1` FOREIGN KEY (`id_pokja`) REFERENCES `tb_pokja` (`id_pokja`);

--
-- Constraints for table `tb_pokja`
--
ALTER TABLE `tb_pokja`
  ADD CONSTRAINT `tb_pokja_ibfk_1` FOREIGN KEY (`id_pokja`) REFERENCES `tb_proker` (`id_pokja`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
