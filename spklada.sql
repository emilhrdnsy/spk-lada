-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2023 at 02:14 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spklada`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator'),
('ryu', 'd4cfab1b518d245bc1fc8db52b6d8ddc', 'Rizky Yuni Utami'),
('niku', '686166792fe6c13205a86003000500af', 'ninik');

-- --------------------------------------------------------

--
-- Table structure for table `basis_pengetahuan`
--

CREATE TABLE `basis_pengetahuan` (
  `kode_pengetahuan` int(11) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL,
  `mb` double(11,1) NOT NULL,
  `md` double(11,1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `basis_pengetahuan`
--

INSERT INTO `basis_pengetahuan` (`kode_pengetahuan`, `id_penyakit`, `id_gejala`, `mb`, `md`) VALUES
(1, 1, 2, 0.8, 0.2),
(2, 1, 1, 0.8, 0.2),
(3, 1, 17, 0.6, 0.2),
(4, 1, 3, 0.8, 0.2),
(5, 1, 8, 0.6, 0.2),
(6, 2, 6, 0.7, 0.1),
(7, 2, 39, 0.8, 0.2),
(8, 2, 4, 0.8, 0.2),
(9, 2, 20, 0.8, 0.2),
(10, 3, 37, 0.8, 0.2),
(11, 3, 18, 0.8, 0.2),
(12, 3, 7, 0.8, 0.2),
(13, 3, 38, 0.7, 0.1),
(14, 3, 21, 0.8, 0.2),
(15, 3, 14, 0.5, 0.3),
(16, 3, 22, 0.7, 0.1),
(17, 3, 27, 0.5, 0.3),
(18, 4, 13, 0.8, 0.2),
(19, 4, 15, 0.7, 0.1),
(20, 4, 11, 0.5, 0.3),
(21, 4, 36, 0.8, 0.2),
(22, 4, 16, 0.8, 0.2),
(23, 4, 12, 0.8, 0.2),
(24, 5, 19, 0.8, 0.2),
(25, 5, 9, 0.8, 0.2),
(26, 5, 35, 0.8, 0.2),
(27, 6, 29, 0.7, 0.1),
(28, 6, 10, 0.6, 0.2),
(29, 6, 34, 0.8, 0.2),
(30, 6, 33, 0.8, 0.2),
(31, 7, 32, 0.8, 0.2),
(32, 7, 30, 0.6, 0.2),
(33, 7, 25, 0.8, 0.2),
(34, 8, 31, 0.8, 0.2),
(35, 8, 24, 0.8, 0.2),
(36, 9, 39, 0.6, 0.2),
(37, 9, 23, 0.5, 0.3),
(38, 9, 28, 0.8, 0.2),
(39, 9, 26, 0.8, 0.2),
(40, 9, 40, 0.5, 0.3);

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(11) NOT NULL,
  `kode_gejala` varchar(5) NOT NULL,
  `nama_gejala` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `kode_gejala`, `nama_gejala`) VALUES
(1, 'G1', 'Daun Menguning namun tidak layu'),
(2, 'G2', 'Akar rambut lada rusak '),
(3, 'G3', 'Daun berguguran satu persatu '),
(4, 'G4', 'Daun menguning dan layu '),
(5, 'G5', 'Bercak daun berwarna coklat kelabu'),
(33, 'G33', 'Daun menguning dan gugur'),
(6, 'G6', 'Pangkal batang berlendir dan berwarna hitam'),
(7, 'G7', 'Buahnya kerdil dan tidak berbuah'),
(8, 'G8', 'Pada bagian akar akan terlihat luka nekrois dan puru'),
(9, 'G9', 'Daun kering berwarna kecoklatan  '),
(10, 'G10', 'Akar terlihat lembek dan berwarna merah atau kecoklatan '),
(11, 'G11', 'Tandan buah gugur'),
(12, 'G12', 'Pangkal batang atau akar tanaman hitam'),
(13, 'G13', 'Cabang atau ranting diselimuti jamur berwarna keperakan '),
(14, 'G14', 'Buah berguguran '),
(15, 'G15', 'Adanya lapisan seperti bludru yang berwarna putih'),
(16, 'G16', 'Adanya bercak ditengah maupun ditepi daun'),
(17, 'G17', 'Akar dan batang tanaman lada berwarna hitam'),
(18, 'G18', 'Daun berwarna kuning pucat atau belang – belang'),
(19, 'G19', 'Terdapat rambut yang melilit pada tanaman '),
(20, 'G20', 'Tanaman kekeringan'),
(21, 'G21', 'Tandan  buah pendek '),
(22, 'G22', 'Permukaan daun bergelombang'),
(23, 'G23', 'Tumbuh jamur yang berwarna coklat'),
(24, 'G24', 'Patahnya ruas – ruas ranting, cabang sekunder dan cabang primer'),
(25, 'G25', 'Adanya rizomorf jamur berwarna hitam seperti rambut yang menempel pada ranting, cabang, tangkai daun dan daun'),
(26, 'G26', 'Adanya luka melingkar pada bagian buah'),
(27, 'G27', 'Buah hijau mengalami mengalami infeksi secara tersembunyi '),
(28, 'G28', 'Bagian tengah luka berwarna orange atau coklat dan berubah warna hitam'),
(29, 'G29', 'Daun kusam '),
(30, 'G30', 'Daun berwarna kecoklatan '),
(31, 'G31', 'Daun, batang, ranting dan buah terdapat jamur yang berwarna  coklat'),
(32, 'G32', 'Batang , cabang. daun , bunga dan buah muncul benang -benang putih'),
(34, 'G34', 'Mendadak layu '),
(35, 'G35', 'Daun transparan'),
(36, 'G36', 'Cabang atau ranting mengering dan mati'),
(37, 'G37', 'Daun berukuran kecil atau keriting'),
(38, 'G38', 'Bagian tunas beruas pendek '),
(39, 'G39', 'Daun berwarna kehitaman '),
(40, 'G40', 'Menyerang bibit pada umur > 2 bulan');

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL DEFAULT '0',
  `penyakit` text NOT NULL,
  `gejala` text NOT NULL,
  `hasil_id` int(11) NOT NULL,
  `hasil_nilai` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `tanggal`, `penyakit`, `gejala`, `hasil_id`, `hasil_nilai`) VALUES
(1, '2023-01-29 20:51:46', 'a:1:{i:1;s:6:\"0.7440\";}', 'a:2:{i:1;s:1:\"1\";i:2;s:1:\"3\";}', 1, '0.7440'),
(2, '2023-01-29 20:52:37', 'a:3:{i:1;s:6:\"0.8669\";i:5;s:6:\"0.4800\";i:6;s:6:\"0.2400\";}', 'a:6:{i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"1\";i:6;s:1:\"7\";i:9;s:1:\"2\";i:10;s:1:\"3\";}', 1, '0.8669'),
(3, '2023-01-31 15:13:36', 'a:3:{i:5;s:6:\"0.6000\";i:3;s:6:\"0.4800\";i:2;s:6:\"0.2400\";}', 'a:4:{i:12;s:1:\"6\";i:18;s:1:\"2\";i:19;s:1:\"1\";i:20;s:1:\"4\";}', 5, '0.6000');

-- --------------------------------------------------------

--
-- Table structure for table `kondisi`
--

CREATE TABLE `kondisi` (
  `id` int(11) NOT NULL,
  `kondisi` varchar(64) NOT NULL,
  `ket` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kondisi`
--

INSERT INTO `kondisi` (`id`, `kondisi`, `ket`) VALUES
(1, 'Pasti ya', ''),
(2, 'Hampir pasti ya', ''),
(3, 'Kemungkinan besar ya', ''),
(4, 'Mungkin ya', ''),
(5, 'Tidak tahu', ''),
(6, 'Mungkin tidak', ''),
(7, 'Kemungkinan besar tidak', ''),
(8, 'Hampir pasti tidak', ''),
(9, 'Pasti tidak', '');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `kode_penyakit` varchar(5) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `det_penyakit` varchar(1000) NOT NULL,
  `srn_penyakit` varchar(1000) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `kode_penyakit`, `nama_penyakit`, `det_penyakit`, `srn_penyakit`, `gambar`) VALUES
(1, 'P1', 'Penyakit Kuning', 'Penyakit Kuning pada tanaman lada dapat disebabkan oleh beberapa faktor, seperti kekurangan unsur hara, stres air, atau infeksi oleh virus atau jamur. Gejalanya dapat ditandai dengan adanya penguningan daun dan perlahan-lahan membusuknya tanaman.', 'Untuk mengatasi penyakit kuning pada tanaman lada, beberapa hal yang dapat dilakukan antara lain: memastikan bahwa tanaman mendapatkan cukup unsur hara dan air, menjaga kebersihan alat-alat pertanian dan area tanam, memberikan jarak tanam yang cukup, dan memastikan bahwa media tanam yang digunakan sudah bersih dari patogen. Penggunaan varietas tanaman yang resisten terhadap penyakit juga dapat membantu mengatasi masalah ini. Jika sudah terinfeksi oleh virus atau jamur, tanaman yang terkena harus segera ditebang dan dibakar untuk mencegah penyebaran patogen.', 'Penyakit kuning.jpg'),
(2, 'P2', 'Penyakit Busuk Pangkal Batang', 'Penyakit Busuk Pangkal Batang pada tanaman lada disebabkan oleh jamur Fusarium oxysporum. Gejalanya ditandai dengan adanya busuk pada pangkal batang tanaman, membusuknya bagian akar, dan membusuknya bagian bawah tanaman. Penyebaran jamur ini dapat terjadi melalui air hujan, air tanam, dan juga media tanam.', 'Untuk mengatasi penyakit ini, beberapa hal yang dapat dilakukan antara lain: menjaga kebersihan alat-alat pertanian dan area tanam, memberikan jarak tanam yang cukup, memastikan bahwa media tanam yang digunakan sudah bersih dari patogen, dan melakukan rotasi tanaman. Penggunaan varietas tanaman yang resisten terhadap jamur juga dapat membantu mengatasi masalah ini. Jika sudah terinfeksi, tanaman yang terkena harus segera ditebang dan dibakar untuk mencegah penyebaran jamur.', 'Busuk pangkal batang.jpg'),
(3, 'P3', 'Penyakit Keriting atau Kerdil', 'Penyakit Keriting atau Kerdil pada tanaman adalah disebabkan oleh virus. Gejalanya ditandai dengan adanya penyempitan dan pemendekan batang, dan membentuk keriting atau kerdil pada tanaman. Virus ini dapat menyebar melalui serangga pemakan daun seperti trips atau melalui media tanam yang terkontaminasi.', 'Beberapa cara pencegahan yang dapat dilakukan adalah dengan menjaga kebersihan tanaman dan area sekitar, memantau gejala-gejalanya, dan menghindari menanam tanaman yang terinfeksi virus.', 'Keriting atau kerdil.jpg'),
(4, 'P4', 'Penyakit Jamur Pirang', 'Penyakit Jamur Pirang pada tanaman lada disebabkan oleh jamur Phytophthora capsici. Gejalanya ditandai dengan adanya bercak gelap pada daun dan batang tanaman, membusuknya bagian akar, dan membusuknya bagian bawah tanaman. Penyebaran jamur ini dapat terjadi melalui air hujan, air tanam, dan juga media tanam.', 'Untuk mengatasi penyakit ini, beberapa hal yang dapat dilakukan antara lain: menjaga kebersihan alat-alat pertanian dan area tanam, memberikan jarak tanam yang cukup, memastikan bahwa media tanam yang digunakan sudah bersih dari patogen, dan melakukan rotasi tanaman. Penggunaan varietas tanaman yang resisten terhadap jamur juga dapat membantu mengatasi masalah ini. Jika sudah terinfeksi, tanaman yang terkena harus segera ditebang dan dibakar untuk mencegah penyebaran jamur.', 'Jamur Pirang.jpg'),
(5, 'P5', 'Penyakit Benang Putih dan Rambut ', 'Penyakit Benang Putih pada tanaman lada adalah disebabkan oleh jamur Thielaviopsis basicola. Gejalanya ditandai dengan adanya bercak putih tipis pada batang dan daun tanaman yang berkembang menjadi busuk. Penyebaran jamur ini dapat terjadi melalui air hujan, air tanam, dan juga media tanam.', 'Untuk mengatasi kedua penyakit ini, beberapa hal yang dapat dilakukan antara lain: menjaga kebersihan alat-alat pertanian dan area tanam, memberikan jarak tanam yang cukup, memastikan bahwa media tanam yang digunakan sudah bersih dari patogen, dan menyiram tanaman dengan menggunakan air yang sudah disterilkan.', 'Benang putih dan rambut.png'),
(6, 'P6', 'Penyakit Busuk Akar', 'Penyakit busuk akar pada tanaman lada disebabkan oleh jamur yang menyerang akar tanaman. Gejalanya adalah tanaman tampak lemah, daunnya menguning dan layu, dan akar tanaman membusuk. Faktor lingkungan yang lembab dan tanah yang terlalu basah sangat memfasilitasi perkembangan jamur ini.', 'Beberapa cara pencegahan yang dapat dilakukan adalah dengan menjaga kelembaban lingkungan dan tanah agar tetap optimal, memastikan drainase yang baik, dan menjaga kebersihan lingkungan sekitar tanaman. Penanganan penyakit ini meliputi: menghilangkan tanaman yang terinfeksi, mengendalikan populasi jamur, menanam tanaman pada media tanam yang berkualitas dan memastikan drainase yang baik, dan menyemprotkan bahan kimia yang mengandung fungisida.', 'Busuk Akar.jpg'),
(7, 'P7', 'Penyakit Jaring Laba – Laba dan Rambut Ekor Kuda', 'Penyakit jaring laba-laba dan rambut ekor kuda pada tanaman lada disebabkan oleh nematoda parasit yang menyerang akar tanaman. Gejalanya adalah akar tanaman menunjukkan pembesaran dan perubahan bentuk, dan tanaman tampak lemah dan kurang subur. ', 'Cara pencegahan yang dapat dilakukan adalah dengan menjaga kebersihan lingkungan sekitar tanaman, memastikan tanah memiliki drainase yang baik, dan menghindari menanam tanaman pada tanah yang terinfeksi nematoda. Penanganan penyakit ini meliputi menghilangkan tanaman yang terinfeksi, memastikan drainase tanah yang baik, menanam tanaman pada media tanam yang berkualitas, dan menyemprotkan bahan kimia yang mengandung nematicida. Ada juga beberapa tanaman yang dapat ditanam sebagai tanaman penunjuk yang akan menunjukkan adanya nematoda pada tanah sebelum tanaman utama ditanam.', 'Jaring laba-laba dan rambut ekor kuda.png'),
(8, 'P8', 'Penyakit Septobasidium sp', 'Penyakit Septobasidium sp pada tanaman lada disebabkan oleh jamur yang membentuk koloni dan menyerang pucuk dan batang tanaman. Gejalanya adalah terbentuknya gumpalan hitam pada bagian batang dan pucuk, dan tanaman tampak lemah dan kurang subur. ', 'Beberapa cara pencegahan yang dapat dilakukan adalah menjaga kebersihan lingkungan sekitar tanaman, memastikan tanah memiliki drainase yang baik, dan menghindari menanam tanaman pada tanah yang terinfeksi jamur. Penanganan penyakit ini meliputi menghilangkan tanaman yang terinfeksi, memastikan drainase tanah yang baik, menanam tanaman pada media tanam yang berkualitas, dan menyemprotkan bahan kimia yang mengandung fungisida.', 'Septobasidium sp.jpg'),
(9, 'P9', 'Penyakit Antraknosa', 'Penyakit antraknosa pada tanaman lada disebabkan oleh jamur Colletotrichum capsici yang menyerang daun, batang, dan buah tanaman. Gejalanya adalah munculnya bintik-bintik coklat pada daun dan buah tanaman, dan bisa menyebar ke seluruh bagian tanaman. Faktor lingkungan yang lembab dan suhu yang tinggi memfasilitasi perkembangan jamur ini. ', 'Beberapa cara pencegahan yang dapat dilakukan adalah menjaga kebersihan lingkungan sekitar tanaman, memastikan tanah memiliki drainase yang baik, dan menghindari menanam tanaman pada tanah yang terinfeksi jamur. Penanganan penyakit ini meliputi menghilangkan tanaman yang terinfeksi, memastikan drainase tanah yang baik, menanam tanaman pada media tanam yang berkualitas, dan menyemprotkan bahan kimia yang mengandung fungisida.', 'Antraknosa.png');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `kode_post` int(11) NOT NULL,
  `nama_post` varchar(50) NOT NULL,
  `det_post` varchar(15000) NOT NULL,
  `srn_post` varchar(15000) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`kode_post`, `nama_post`, `det_post`, `srn_post`, `gambar`) VALUES
(1, 'Penyakit Kuning', '<p>Penyakit Kuning pada tanaman lada dapat disebabkan oleh beberapa faktor, seperti kekurangan unsur hara, stres air, atau infeksi oleh virus atau jamur.</p>\r\n\r\n<p><strong>ETIOLOGI :</strong></p>\r\n\r\n<p><strong>GEJALA: </strong></p>\r\n\r\n<p>Gejalanya dapat ditandai dengan adanya penguningan daun dan perlahan-lahan membusuknya tanaman.</p>\r\n\r\n<p><strong>CARA PENULARAN :</strong></p>\r\n\r\n<p><strong>PERUBAHAN PASCA MATI :</strong></p>\r\n\r\n<p><strong>PENYEBAB :</strong>&nbsp;</p>\r\n\r\n<p><strong>KERUGIAN EKONOMI :</strong>&nbsp;</p>\r\n', '<p><strong>Pencegahan:</strong></p>\r\n\r\n<p><strong>Pengendalian :</strong></p>\r\n\r\n<p><strong>Tindakan: </strong></p>\r\n\r\n<p>Penggunaan varietas tanaman yang resisten terhadap penyakit juga dapat membantu mengatasi masalah ini. Jika sudah terinfeksi oleh virus atau jamur, tanaman yang terkena harus segera ditebang dan dibakar untuk mencegah penyebaran patogen.</p>\r\n', 'Penyakit kuning.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD PRIMARY KEY (`kode_pengetahuan`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`kode_post`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  MODIFY `kode_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `kode_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
