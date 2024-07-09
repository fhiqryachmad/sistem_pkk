-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:2112
-- Generation Time: Jul 07, 2024 at 02:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

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
(9, 'spiderman', '8cb2237d0679ca88db6464eac60da96345513964', 'sekret');

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
(1, 6, 'kegiatan pkk pada saat pertengahan tahun', 'update---ahsj ghjakshd gjkahsd jkghasd kjhf ajkhgj kahsdjkfh ajgha jksdh gjkha skjg has gasdf has ghasj dhf \r\najhdg ahsj ghjakshd gjkahsd jkghasd kjhf ajkhgj kahsdjkfh ajgha jksdh gjkha skjg hasgasdf has ghasj dhf ajhdg ahsj ghjakshd gjkahsd \r\njkghasd kjhf ajkhgj kahsdjkfh ajgha jksdh gjkha skjg hasgasdf has ghasj dhf ajhdg ahsj ghjakshd gjkahsd jkghasd kjhf ajkhgj kahsdjkfh \r\najgha jksdh gjkha skjg \r\nhasgasdf has ghasj dhf ajhdg ahsj ghjakshd gjkahsd jkghasd kjhf ajkhgj kahsdjkfh ajgha jksdh gjkha skjg hasgasdf has ghasj dhf ajhdg ahsj \r\nghjakshd gjkahsd jkghasd kjhf ajkhgj kahsdjkfh ajgha jksdh gjkha skjg has ---siang\r\n\r\ngasdf has ghasj dhf ajhdg ahsj ghjakshd gjkahsd jkghasd kjhf ajkhgj kahsdjkfh ajgha jksdh gjkha skjg hasgasdf has ghasj dhf ajhdg ahsj \r\nghjakshd gjkahsd jkghasd kjhf ajkhgj kahsdjkfh ajgha jksdh gjkha skjg hasgasdf has ghasj dhf ajhdg ahsj ghjakshd gjkahsd jkghasd kjhf \r\najkhgj kahsdjkfh ajgha jksdh gjkha skjg hasgasdf has ghasj dhf ajhdg ahsj ghjakshd gjkahsd jkghasd kjhf ajkhgj kahsdjkfh ajgha jksdh \r\ngjkha \r\nskjg has', '2024-07-04', '2024-07-06', 'IMG-20190720-WA0026_0.jpg'),
(2, 9, 'berita terbaru tentang kegiatan yang sedang berlangsung di kelurahan kuma', 'berita terbaru dari item ini..adjf ajasj gjaksdjfkaj ghasd f jahsjdkfha jshjgha sj gjash dghas djkh gajkh gja jgh gjahsdjfa jhajs gjahg jsahdj \r\nghja hgjasdkj g asjkdhg jasd gjha jkghasdjh fjg hakjsh djgkha skjdh gkja gkjash djghas jghaskjg asjdkhjk gjakshd gkjhsdkj gh askjdgh jka \r\ngjkashd jahsfjh dkjhasdfa berita terbaru dari item ini..adjf ajasj gjaksdjfkaj ghasd f jahsjdkfha jshjgha sj gjash dghas djkh gajkh gja jgh \r\ngjahsdjfa jhajs gjahg jsahdj ghja hgjasdkj g asjkdhg jasd gjha jkghasdjh fjg hakjsh djgkha skjdh gkja gkjash djghas jghaskjg asjdkhjk \r\ngjakshd gkjhsdkj gh askjdgh jka gjkashd jahsfjh dkjhasdfaberita terbaru dari item ini..adjf ajasj gjaksdjfkaj ghasd f jahsjdkfha jshjgha sj \r\ngjash dghas djkh gajkh gja jgh gjahsdjfa jhajs gjahg jsahdj ghja hgjasdkj g asjkdhg jasd gjha jkghasdjh fjg hakjsh djgkha skjdh gkja gkjash \r\ndjghas jghaskjg asjdkhjk gjakshd gkjhsdkj gh askjdgh jka gjkashd jahsfjh dkjhasdfa\r\n\r\nberita terbaru dari item ini..adjf ajasj gjaksdjfkaj ghasd f jahsjdkfha jshjgha sj gjash dghas djkh gajkh gja jgh gjahsdjfa jhajs gjahg jsahdj \r\nghja hgjasdkj g asjkdhg jasd gjha jkghasdjh fjg hakjsh djgkha skjdh gkja gkjash djghas jghaskjg asjdkhjk gjakshd gkjhsdkj gh askjdgh jka \r\ngjkashd jahsfjh dkjhasdfaberita terbaru dari item ini..adjf ajasj gjaksdjfkaj ghasd f jahsjdkfha jshjgha sj gjash dghas djkh gajkh gja jgh \r\ngjahsdjfa jhajs gjahg jsahdj ghja hgjasdkj g asjkdhg jasd gjha jkghasdjh fjg hakjsh djgkha skjdh gkja gkjash djghas jghaskjg asjdkhjk \r\ngjakshd gkjhsdkj gh askjdgh jka gjkashd jahsfjh dkjhasdfaberita terbaru dari item ini..adjf ajasj gjaksdjfkaj ghasd f jahsjdkfha jshjgha sj \r\ngjash dghas djkh gajkh gja jgh gjahsdjfa jhajs gjahg jsahdj ghja hgjasdkj g asjkdhg jasd gjha jkghasdjh fjg hakjsh djgkha skjdh gkja gkjash \r\ndjghas jghaskjg asjdkhjk gjakshd gkjhsdkj gh askjdgh jka gjkashd jahsfjh dkjhasdfa\r\n\r\nberita terbaru dari item ini..adjf ajasj gjaksdjfkaj ghasd f jahsjdkfha jshjgha sj gjash dghas djkh gajkh gja jgh gjahsdjfa jhajs gjahg jsahdj \r\nghja hgjasdkj g asjkdhg jasd gjha jkghasdjh fjg hakjsh djgkha skjdh gkja gkjash djghas jghaskjg asjdkhjk gjakshd gkjhsdkj gh askjdgh jka \r\ngjkashd jahsfjh dkjhasdfa', '2024-07-05', '2024-07-05', 'IMG-20190720-WA0032.jpg'),
(4, 9, 'kegiatan pemeriksaan jantung bagi lansia di kelurahan kuma', 'deskripsi berita: gkjashd fjhajg hasj dhjfh jha jghasjdhf ahs ghasdfhajkh gjkash jkasdh fjah sdjkhg kjashdjkghaskjgh jksghasjkdhf jkahs \r\nkjghask hgkjash gkjashd gkhasd ajskdhfjasd hjkah gkjashdkga, gkjashd fjhajg hasj dhjfh jha jghasjdhf ahs ghasdfhajkh gjkash jkasdh fjah \r\nsdjkhg kjashdjkghaskjgh jksghasjkdhf jkahs kjghask hgkjash gkjashd gkhasd ajskdhfjasd hjkah gkjashdkgagkjashd fjhajg hasj dhjfh jha \r\njghasjdhf ahs ghasdfhajkh gjkash jkasdh fjah sdjkhg kjashdjkghaskjgh jksghasjkdhf jkahs kjghask hgkjash gkjashd gkhasd ajskdhfjasd \r\nhjkah gkjashdkgagkjashd fjhajg hasj dhjfh jha jghasjdhf ahs ghasdfhajkh gjkash jkasdh fjah sdjkhg kjashdjkghaskjgh jksghasjkdhf jkahs \r\nkjghask hgkjash gkjashd gkhasd ajskdhfjasd hjkah gkjashdkgagkjashd fjhajg hasj dhjfh jha jghasjdhf ahs ghasdfhajkh gjkash jkasdh fjah \r\nsdjkhg kjashdjkghaskjgh jksghasjkdhf jkahs kjghask hgkjash gkjashd gkhasd ajskdhfjasd hjkah gkjashdkga\r\n\r\ngkjashd fjhajg hasj dhjfh jha jghasjdhf ahs ghasdfhajkh gjkash jkasdh fjah sdjkhg kjashdjkghaskjgh jksghasjkdhf jkahs kjghask hgkjash \r\ngkjashd gkhasd ajskdhfjasd hjkah gkjashdkgagkjashd fjhajg hasj dhjfh jha jghasjdhf ahs ghasdfhajkh gjkash jkasdh fjah sdjkhg \r\nkjashdjkghaskjgh jksghasjkdhf jkahs kjghask hgkjash gkjashd gkhasd ajskdhfjasd hjkah gkjashdkgagkjashd fjhajg hasj dhjfh jha jghasjdhf \r\nahs ghasdfhajkh gjkash jkasdh fjah sdjkhg kjashdjkghaskjgh jksghasjkdhf jkahs kjghask hgkjash gkjashd gkhasd ajskdhfjasd hjkah \r\ngkjashdkgagkjashd fjhajg hasj dhjfh jha jghasjdhf ahs ghasdfhajkh gjkash jkasdh fjah sdjkhg kjashdjkghaskjgh jksghasjkdhf jkahs kjghask \r\nhgkjash gkjashd gkhasd ajskdhfjasd hjkah gkjashdkgagkjashd fjhajg hasj dhjfh jha jghasjdhf ahs ghasdfhajkh gjkash jkasdh fjah sdjkhg \r\nkjashdjkghaskjgh jksghasjkdhf jkahs kjghask hgkjash gkjashd gkhasd ajskdhfjasd hjkah gkjashdkga.\r\n\r\ngkjashd fjhajg hasj dhjfh jha jghasjdhf ahs ghasdfhajkh gjkash jkasdh fjah sdjkhg kjashdjkghaskjgh jksghasjkdhf jkahs kjghask hgkjash \r\ngkjashd gkhasd ajskdhfjasd hjkah gkjashdkgagkjashd fjhajg hasj dhjfh jha jghasjdhf ahs ghasdfhajkh gjkash jkasdh fjah sdjkhg \r\nkjashdjkghaskjgh jksghasjkdhf jkahs kjghask hgkjash gkjashd gkhasd ajskdhfjasd hjkah gkjashdkgagkjashd fjhajg hasj dhjfh jha jghasjdhf \r\nahs ghasdfhajkh gjkash jkasdh fjah sdjkhg kjashdjkghaskjgh jksghasjkdhf jkahs kjghask hgkjash gkjashd gkhasd ajskdhfjasd hjkah \r\ngkjashdkgagkjashd fjhajg hasj dhjfh jha jghasjdhf ahs ghasdfhajkh gjkash jkasdh fjah sdjkhg kjashdjkghaskjgh jksghasjkdhf jkahs kjghask \r\nhgkjash gkjashd gkhasd ajskdhfjasd hjkah gkjashdkgagkjashd fjhajg hasj dhjfh jha jghasjdhf ahs ghasdfhajkh gjkash jkasdh fjah sdjkhg \r\nkjashdjkghaskjgh jksghasjkdhf jkahs kjghask hgkjash gkjashd gkhasd ajskdhfjasd hjkah gkjashdkga\r\n\r\ngkjashd fjhajg hasj dhjfh jha jghasjdhf ahs ghasdfhajkh gjkash jkasdh fjah sdjkhg kjashdjkghaskjgh jksghasjkdhf jkahs kjghask hgkjash \r\ngkjashd gkhasd ajskdhfjasd hjkah gkjashdkgagkjashd fjhajg hasj dhjfh jha jghasjdhf ahs ghasdfhajkh gjkash jkasdh fjah sdjkhg \r\nkjashdjkghaskjgh jksghasjkdhf jkahs kjghask hgkjash gkjashd gkhasd ajskdhfjasd hjkah gkjashdkgagkjashd fjhajg hasj dhjfh jha jghasjdhf \r\nahs ghasdfhajkh gjkash jkasdh fjah sdjkhg kjashdjkghaskjgh jksghasjkdhf jkahs kjghask hgkjash gkjashd gkhasd ajskdhfjasd hjkah \r\ngkjashdkgagkjashd fjhajg hasj dhjfh jha jghasjdhf ahs ghasdfhajkh gjkash jkasdh fjah sdjkhg kjashdjkghaskjgh jksghasjkdhf jkahs kjghask \r\nhgkjash gkjashd gkhasd ajskdhfjasd hjkah gkjashdkgagkjashd fjhajg hasj dhjfh jha jghasjdhf ahs ghasdfhajkh gjkash jkasdh fjah sdjkhg \r\nkjashdjkghaskjgh jksghasjkdhf jkahs kjghask hgkjash gkjashd gkhasd ajskdhfjasd hjkah gkjashdkga', '2024-07-06', '2024-07-13', 'kegiatan posyanduu.jpg'),
(25, 8, 'judul baru masuk bro -- update bro', 'gasdfah gjashd jfha jsghajhsg jshd jh asjdhgasjd hfjah jka gasdfah gjashd jfha jsghajhsg jshd jh asjdhgasjd hfjah jkagasdfah gjashd jfha \r\njsghajhsg jshd jh asjdhgasjd hfjah jkagasdfah gjashd jfha jsghajhsg jshd jh asjdhgasjd hfjah jkagasdfah gjashd jfha jsghajhsg jshd jh \r\nasjdhgasjd hfjah jkagasdfah gjashd jfha jsghajhsg jshd jh asjdhgasjd hfjah jka', '2024-07-06', '2024-07-08', '0004.jpeg'),
(31, 8, 'penerimaan mahasiswa baru untuk sistem informasi', 'gasdfas dfjahjhasjdhfajs dhjkh galeriform gasdfas dfjahjhasjdhfajs dhjkh galeriformgasdfas dfjahjhasjdhfajs dhjkh galeriformgasdfas \r\ndfjahjhasjdhfajs dhjkh galeriformgasdfas dfjahjhasjdhfajs dhjkh galeriformgasdfas dfjahjhasjdhfajs dhjkh galeriformgasdfas \r\ndfjahjhasjdhfajs \r\ndhjkh galeriform gasdfas dfjahjhasjdhfajs dhjkh galeriform gasdfas dfjahjhasjdhfajs dhjkh galeriformgasdfas dfjahjhasjdhfajs dhjkh \r\ngaleriformgasdfas dfjahjhasjdhfajs dhjkh galeriformgasdfas dfjahjhasjdhfajs dhjkh galeriformgasdfas dfjahjhasjdhfajs dhjkh \r\ngaleriformgasdfas dfjahjhasjdhfajsdhjkh galeriform.\r\n\r\ngasdfas dfjahjhasjdhfajs dhjkh galeriform gasdfas dfjahjhasjdhfajs dhjkh galeriformgasdfas dfjahjhasjdhfajs dhjkh galeriformgasdfas \r\ndfjahjhasjdhfajs dhjkh galeriformgasdfas dfjahjhasjdhfajs dhjkh galeriformgasdfas dfjahjhasjdhfajs dhjkh galeriformgasdfas \r\ndfjahjhasjdhfajs \r\ndhjkh galeriform gasdfas dfjahjhasjdhfajs dhjkh galeriform gasdfas dfjahjhasjdhfajs dhjkh galeriformgasdfas dfjahjhasjdhfajs dhjkh \r\ngaleriformgasdfas dfjahjhasjdhfajs dhjkh galeriformgasdfas dfjahjhasjdhfajs dhjkh galeriformgasdfas dfjahjhasjdhfajs dhjkh \r\ngaleriformgasdfas dfjahjhasjdhfajsdhjkh galeriform.\r\n\r\ngasdfas dfjahjhasjdhfajs dhjkh galeriform gasdfas dfjahjhasjdhfajs dhjkh galeriformgasdfas dfjahjhasjdhfajs dhjkh galeriformgasdfas \r\ndfjahjhasjdhfajs dhjkh galeriformgasdfas dfjahjhasjdhfajs dhjkh galeriformgasdfas dfjahjhasjdhfajs dhjkh galeriformgasdfas \r\ndfjahjhasjdhfajs \r\ndhjkh galeriform gasdfas dfjahjhasjdhfajs dhjkh galeriform gasdfas dfjahjhasjdhfajs dhjkh galeriformgasdfas dfjahjhasjdhfajs dhjkh \r\ngaleriformgasdfas dfjahjhasjdhfajs dhjkh galeriformgasdfas dfjahjhasjdhfajs dhjkh galeriformgasdfas dfjahjhasjdhfajs dhjkh \r\ngaleriformgasdfas dfjahjhasjdhfajsdhjkh galeriform', '2024-07-05', '2024-07-09', 'Flayer-Type02.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dawis`
--

CREATE TABLE `tb_dawis` (
  `id_dawis` int(11) NOT NULL,
  `nama_dawis` varchar(25) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `nama_anggota` varchar(25) NOT NULL,
  `jabatan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_galeri`
--

CREATE TABLE `tb_galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_pokja` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_galeri`
--

INSERT INTO `tb_galeri` (`id_galeri`, `id_pokja`, `judul`, `deskripsi`, `gambar`) VALUES
(10, 4, 'kgegiatnandfadas adfa sdf--update', 'agasdfa sdaf --update', '0001.jpeg'),
(11, 8, 'gasdfajhg asghaasdfa', 'gasdfahs gjsad hjghajshdjfh ajgajksdh jfhagasdfasd', '002.jpeg'),
(12, 9, 'gasdfhajh gahg jashdf a ksjgasd', 'gasdfah ahgjh djga sjdhf ajshjgahsjdhkjashdfh ajhgasdfaf', '0003.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengurus`
--

CREATE TABLE `tb_pengurus` (
  `id_pengurus` int(11) NOT NULL,
  `id_pokja` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `jabatan` varchar(25) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pengurus`
--

INSERT INTO `tb_pengurus` (`id_pengurus`, `id_pokja`, `nama`, `jabatan`, `gambar`) VALUES
(1, 6, 'Fhiqry Ahmad', 'kades', '224.jpeg'),
(3, 6, 'febri sirape', 'istri kedua pejabat', '23.jpeg'),
(4, 9, 'rahmawati ussu', 'istri kedua pejabat', '26.jpeg'),
(5, 8, 'afni tulusang', 'presiden direktur', '12.jpeg'),
(6, 8, 'siti srifanti lesawengan', 'direktur utama home indus', '19.jpeg');

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
(1, 'pokja pertama dan sedang dipdate', 'gasdhf ajhgaj sdh asdjhfahjhg ajshgjahsdj hajkgasdf --- update data'),
(4, 'pokja ketiga baru lagi --- baru sis', 'gasdhasjdfahj hgasdf asdf aasdfa'),
(6, 'pokja baru lagi -- update lagi---udpate', 'gasdafsdf asdfaf --- update terus'),
(8, 'aghajs dfjah hgkjasdga', 'gasdfa gasgja shd jhajfajg hajshgjash hasjkghas kj gasdfa gasgj ashd jhajfajg ha jshgjash hasjkghas kjgasdfa gasgjashd jhajfajg hajshgjash \r\nhasjkghas kjgasdfa gasgjash d jhajfajg  hajshgjash has jkghas kjgasdfa g asgjashd jhajfajg h ajshgjash hasjkg has kjgasdfa gasgja shd jhajfajg \r\nhajsh gjash hasjkgha s kj'),
(9, 'judul baru ditambahkan', 'tambahkan data'),
(10, 'tambah data pokja', 'tambah data pokja');

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
(1, 6, 'pokja pertama---update', 'fadfasdfa -- update deskirpsi -- upate data minggu pagi --- udate', '2024-07-06', 'sedang berjalan'),
(2, 4, 'gasdjfhjashd jghajsg', 'gasdfhgjahsd hfja gjashdjfh adhjashgjk ds hfjahgjahsd fhajhg jakshd gjkahsdjgahsdjkfhajghajsdhfjh jghajsd fjahgjashdjgh asjdhjkhf kjadh \r\njkahdsjgasdj hfjkahgasdfasdf.', '2024-07-06', 'selesai'),
(3, 6, 'gasdfag asjdf jaks aksjd--updatedata', 'gasdfas gajsh djgh asdjhfjkahkgasg', '2024-07-13', 'sedang berjalan'),
(7, 8, 'gasdffdsfa asdfa jgkasdafdfa', 'gasdhf ajghajsdh hjgk asdfa sgasdjghas hdfj ahjshg ajkshd gkja', '2024-07-08', 'rencana'),
(9, 10, 'pokja lainnya', 'gasdfasdf hashgas djfhaj hgja shgjsajdga', '2024-07-08', 'rencana');

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
  ADD KEY `id_pokja` (`id_pokja`);

--
-- Indexes for table `tb_dawis`
--
ALTER TABLE `tb_dawis`
  ADD PRIMARY KEY (`id_dawis`);

--
-- Indexes for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `id_pokja` (`id_pokja`);

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
  ADD KEY `id_admin` (`id_pokja`);

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
-- AUTO_INCREMENT for table `tb_dawis`
--
ALTER TABLE `tb_dawis`
  MODIFY `id_dawis` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_pengurus`
--
ALTER TABLE `tb_pengurus`
  MODIFY `id_pengurus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_pokja`
--
ALTER TABLE `tb_pokja`
  MODIFY `id_pokja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_proker`
--
ALTER TABLE `tb_proker`
  MODIFY `id_proker` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
