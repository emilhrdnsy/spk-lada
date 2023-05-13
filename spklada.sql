-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2023 at 02:40 PM
-- Server version: 10.1.19-MariaDB
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator'),
('ryu', 'd4cfab1b518d245bc1fc8db52b6d8ddc', 'Rizky Yuni Utami'),
('niku', '686166792fe6c13205a86003000500af', 'ninik'),
('serly', '3c60deac7876d517a0ec9b07ff0b41de', 'serly ');

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `tanggal`, `penyakit`, `gejala`, `hasil_id`, `hasil_nilai`) VALUES
(1, '2023-01-29 20:51:46', 'a:1:{i:1;s:6:\"0.7440\";}', 'a:2:{i:1;s:1:\"1\";i:2;s:1:\"3\";}', 1, '0.7440'),
(2, '2023-01-29 20:52:37', 'a:3:{i:1;s:6:\"0.8669\";i:5;s:6:\"0.4800\";i:6;s:6:\"0.2400\";}', 'a:6:{i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"1\";i:6;s:1:\"7\";i:9;s:1:\"2\";i:10;s:1:\"3\";}', 1, '0.8669'),
(3, '2023-01-31 15:13:36', 'a:3:{i:5;s:6:\"0.6000\";i:3;s:6:\"0.4800\";i:2;s:6:\"0.2400\";}', 'a:4:{i:12;s:1:\"6\";i:18;s:1:\"2\";i:19;s:1:\"1\";i:20;s:1:\"4\";}', 5, '0.6000'),
(4, '2023-02-03 12:38:00', 'a:0:{}', 'a:0:{}', 0, ''),
(5, '2023-02-03 12:38:25', 'a:0:{}', 'a:0:{}', 0, ''),
(6, '2023-02-03 18:51:51', 'a:0:{}', 'a:0:{}', 0, ''),
(7, '2023-02-03 19:36:46', 'a:0:{}', 'a:0:{}', 0, ''),
(8, '2023-02-03 19:37:13', 'a:1:{i:1;s:6:\"0.8918\";}', 'a:3:{i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"2\";}', 1, '0.8918'),
(9, '2023-02-03 20:18:51', 'a:0:{}', 'a:0:{}', 0, ''),
(10, '2023-02-03 21:00:13', 'a:0:{}', 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `kondisi`
--

CREATE TABLE `kondisi` (
  `id` int(11) NOT NULL,
  `kondisi` varchar(64) NOT NULL,
  `ket` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`kode_post`, `nama_post`, `det_post`, `srn_post`, `gambar`) VALUES
(1, 'Penyakit kuning ', '<p>Penyakit Kuning pada tanaman lada dapat disebabkan oleh beberapa faktor, seperti kekurangan unsur hara, stres air, atau infeksi oleh virus atau jamur.</p>\r\n\r\n<p><strong>ETIOLOGI :</strong></p>\r\n\r\n<p><strong>GEJALA: </strong></p>\r\n\r\n<p>Gejalanya dapat ditandai dengan adanya penguningan daun dan perlahan-lahan membusuknya tanaman.</p>\r\n\r\n<p><strong>CARA PENULARAN :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Melalui air hujan: Virus atau bakteri penyebab penyakit kuning dapat terbawa air hujan dan menyebar ke tanaman lada lain.</p>\r\n	</li>\r\n	<li>\r\n	<p>Melalui alat pertanian: Alat pertanian yang tidak dicuci dengan benar setelah digunakan pada tanaman yang terinfeksi bisa menyebarkan penyakit ke tanaman lada lain.</p>\r\n	</li>\r\n	<li>\r\n	<p>Melalui serangga pemakan: Serangga seperti thrips dan whiteflies dapat membawa dan menyebarkan virus atau bakteri penyebab penyakit kuning dari tanaman yang terinfeksi ke tanaman lada lain.</p>\r\n	</li>\r\n	<li>\r\n	<p>Melalui biji: Biji tanaman yang terinfeksi dapat menyebar penyakit ke tanaman baru yang tumbuh dari biji tersebut.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>PERUBAHAN PASCA MATI :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Daun-daun tanaman akan menjadi kuning dan layu seiring berjalannya waktu.</p>\r\n	</li>\r\n	<li>\r\n	<p>Batang tanaman akan menjadi lemah dan tidak kuat lagi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pertumbuhan tanaman akan terhambat dan tidak seperti biasanya.</p>\r\n	</li>\r\n	<li>\r\n	<p>Produksi buah tanaman akan berkurang atau bahkan terhenti sama sekali.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>PENYEBAB :</strong>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Virus: Virus seperti virus Mosaic dapat menyebabkan tanaman lada menjadi kuning.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kekurangan nutrisi: Kekurangan nutrisi, seperti nitrogen, dapat menyebabkan tanaman menjadi kuning.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kondisi lingkungan yang tidak baik: Tanaman lada yang terkena paparan sinar matahari yang berlebihan, suhu yang tidak stabil, atau kekurangan air dapat menjadi kuning.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyakit bakteri atau jamur: Penyakit bakteri atau jamur seperti pembusukan akar dapat menyebabkan tanaman lada menjadi kuning.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>KERUGIAN EKONOMI :</strong>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Penurunan hasil panen: Penyakit kuning dapat mempengaruhi pertumbuhan dan produktivitas tanaman lada, sehingga menyebabkan penurunan hasil panen.</p>\r\n	</li>\r\n	<li>\r\n	<p>Biaya pengobatan: Petani harus mengeluarkan biaya untuk membeli fungisida dan obat-obatan untuk mengatasi penyakit, sehingga menambah biaya produksi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kerugian harga jual: Tanaman yang terinfeksi penyakit akan memiliki kualitas yang lebih rendah, sehingga harga jualnya akan lebih rendah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemusnahan tanaman: Dalam kasus yang parah, penyakit kuning dapat menyebabkan pemusnahan tanaman, sehingga petani harus memulai dari awal dan mengeluarkan biaya tambahan untuk membeli bibit baru.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><strong>Pencegahan:</strong></p>\r\n\r\n<ol>\r\n	<li>Pemilihan bibit yang sehat dan bebas dari penyakit.</li>\r\n	<li>Menjaga kebersihan lingkungan tanaman dan menyingkirkan tanaman yang sakit dan residu.</li>\r\n	<li>Menjaga agar tanah dan udara tetap kering dan bersih.</li>\r\n	<li>Menanam tanaman dengan jarak yang cukup agar udara dan cahaya matahari dapat mengalir dengan baik.</li>\r\n	<li>Menyiram tanaman dengan air yang sudah diterima cahaya matahari selama beberapa jam.</li>\r\n	<li>Melakukan rotasi tanaman setiap tahun.</li>\r\n</ol>\r\n\r\n<p><strong>Pengendalian :</strong></p>\r\n\r\n<ol>\r\n	<li>Pemilihan bibit yang sehat dan tidak terinfeksi penyakit.</li>\r\n	<li>Menjaga kebersihan lingkungan tanaman, menyingkirkan tanaman yang sakit dan memusnahkan residu tanaman.</li>\r\n	<li>Menjaga kelembaban tanah dan udara agar tidak terlalu lembab.</li>\r\n	<li>Menyiram tanaman dengan menggunakan air yang sudah diterima cahaya matahari selama beberapa jam sehingga bakteri dan jamur yang ada dalam air mati.</li>\r\n	<li>Menyemprotkan fungisida seperti mangan, kobalt, atau kapur barus untuk membunuh patogen penyebab penyakit.</li>\r\n	<li>Melakukan rotasi tanaman setiap tahun untuk mencegah build-up patogen di tanah.</li>\r\n</ol>\r\n\r\n<p><strong>Tindakan: </strong></p>\r\n\r\n<p>Penggunaan varietas tanaman yang resisten terhadap penyakit juga dapat membantu mengatasi masalah ini. Jika sudah terinfeksi oleh virus atau jamur, tanaman yang terkena harus segera ditebang dan dibakar untuk mencegah penyebaran patogen.</p>\r\n', 'Penyakit kuning.jpg'),
(11, 'Penyakit Busuk Pangkal Batang', '<p>Penyakit busuk pangkal batang pada tanaman lada disebabkan oleh jamur <em>Phytophthora capsici.&nbsp;</em> Penyakit ini dapat menyebar melalui air hujan atau air irigasi yang terkontaminasi oleh spora jamur.</p>\r\n\r\n<p><strong>ETIOLOGI :</strong></p>\r\n\r\n<p><strong>GEJALA :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Kerusakan pada bagian dasar batang tanaman, yang menimbulkan bintik-bintik hitam dan melepuh.</p>\r\n	</li>\r\n	<li>\r\n	<p>Layu dan mati pada seluruh bagian tanaman.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pembusukan pangkal batang yang semakin luas dan menyebar ke bagian atas tanaman.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pembusukan akar tanaman.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tanaman yang lemah dan tidak produktif.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pembentukan cairan yang berbau busuk pada bagian yang terkena penyakit.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>CARA PENULARAN :&nbsp;</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Air hujan: Spora jamur dapat menyebar melalui air hujan dan menginfeksi tanaman baru.</p>\r\n	</li>\r\n	<li>\r\n	<p>Irigasi: Air irigasi yang terkontaminasi oleh spora jamur dapat menyebar penyakit ke tanaman lain.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tanah: Spora jamur dapat bertahan hidup dalam tanah selama berbulan-bulan, dan dapat menginfeksi tanaman baru saat tumbuh.</p>\r\n	</li>\r\n	<li>\r\n	<p>Peralatan pertanian: Alat pertanian seperti alat pemotong, serutan, dan alat pemupukan yang tidak dibersihkan dengan baik dapat menyebar penyakit dari satu tanaman ke tanaman lain.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tanaman sakit: Tanaman yang terinfeksi dapat menjadi sumber infeksi bagi tanaman lain yang berdekatan.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>PERUBAHAN PASCA MATI :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Pertumbuhan tanaman baru: Tanaman baru akan tumbuh di sekitar tanaman yang mati, memanfaatkan unsur hara yang tersedia dalam tanah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Perubahan komposisi tanah: Tanaman mati akan membusuk dan menjadi bagian dari komposisi tanah, menyediakan unsur hara yang dapat digunakan oleh tanaman baru.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pertumbuhan jamur: Jamur yang menyebabkan penyakit busuk pangkal batang dapat terus tumbuh dan berkembang biak dalam tanah, mempersiapkan diri untuk menginfeksi tanaman baru yang tumbuh.</p>\r\n	</li>\r\n	<li>\r\n	<p>Infeksi pada tanaman baru: Tanaman baru yang tumbuh di sekitar tanaman mati dapat terinfeksi oleh jamur yang menyebabkan penyakit busuk pangkal batang, menyebar penyakit ke area tersebut.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>KERUGIAN EKONOMI :</strong></p>\r\n\r\n<p>Kerugian produksi akan berdampak pada penurunan pendapatan petani, perekonomian lokal, dan perekonomian nasional.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><strong>PENCEGAHAN :</strong></p>\r\n\r\n<p>Pencegahan meliputi pemeliharaan kebersihan tanaman dan lingkungan, pemupukan yang tepat, dan pengendalian hama dan penyakit yang mungkin menjadi sumber masuknya jamur.</p>\r\n\r\n<p><strong>PENGENDALIAN :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Sanitasi lingkungan: menjaga lingkungan tanaman bebas dari debris dan tanaman yang sakit.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemilihan bibit: memilih bibit tanaman yang sehat dan tidak terinfeksi oleh penyakit.</p>\r\n	</li>\r\n	<li>\r\n	<p>Perlakuan tanah: memastikan tanah sehat dan tidak terinfeksi dengan membiarkan tanah kosong selama beberapa bulan dan menambahkan bahan organik seperti kompos.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemupukan: memastikan tanaman memperoleh nutrisi yang cukup untuk meningkatkan imunitas.</p>\r\n	</li>\r\n	<li>\r\n	<p>Perlakuan fungisida: memperlakukan tanaman dengan fungisida seperti benomil atau kapur barus untuk mengendalikan pertumbuhan patogen.</p>\r\n	</li>\r\n	<li>\r\n	<p>Varian resisten: memilih varian tanaman lada yang memiliki tingkat resistensi yang lebih tinggi terhadap penyakit busuk pangkal batang.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>TINDAKAN :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Pembersihan: mengangkat dan memusnahkan bagian tanaman yang terinfeksi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sanitasi: membersihkan dan memusnahkan debris tanaman dan memastikan lingkungan sekitar tanaman tetap bersih.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemilihan bibit: memilih bibit tanaman lada yang sehat dan tidak terinfeksi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Perlakuan tanah: memastikan tanah sehat dan tidak terinfeksi dengan membiarkan tanah kosong selama beberapa bulan dan menambahkan bahan organik seperti kompos.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemupukan: memastikan tanaman memperoleh nutrisi yang cukup untuk meningkatkan imunitas.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n', 'Busuk pangkal batang2.jpg'),
(12, 'Penyakit Keriting atau Kerdil ', '<p>Penyakit keriting atau kerdil pada tanaman lada disebabkan oleh virus yang menyerang tanaman. Virus ini dapat menyebar melalui percikan air atau dengan menggunakan alat pertanian yang tidak steril.</p>\r\n\r\n<p><strong>ETIOLOGI :</strong></p>\r\n\r\n<p><strong>GEJALA :</strong></p>\r\n\r\n<ol>\r\n	<li>Perkembangan daun yang terhambat</li>\r\n	<li>Pembentukan daun yang berkerut atau keriting</li>\r\n	<li>Pertumbuhan batang yang pendek dan kasar</li>\r\n	<li>Pembentukan bunga yang tidak sempurna atau tidak terbentuk sama sekali</li>\r\n	<li>Produksi buah yang berkurang</li>\r\n</ol>\r\n\r\n<p><strong>CARA PENULARAN :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Serangga vektor: Serangga seperti thrips dan aphid dapat menularkan virus keriting atau kerdil saat mereka menghisap daun dan menyebar virus ke tanaman lain.</p>\r\n	</li>\r\n	<li>\r\n	<p>Alat pertanian: Alat pertanian yang belum dicuci bersih setelah digunakan pada tanaman yang terinfeksi dapat menularkan virus ke tanaman sehat.</p>\r\n	</li>\r\n	<li>\r\n	<p>Air hujan: Air hujan yang mengandung partikel virus dapat menyebar virus ke tanaman sehat di sekitarnya.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyemaian dan pembenihan: Penyemaian dan pembenihan dengan bahan baku yang terinfeksi virus dapat menularkan virus ke tanaman baru yang ditanam.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyebaran melalui udara: Partikel virus dapat menyebar melalui udara dan menempel pada tanaman sehat.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>PERUBAHAN PASCA MATI :</strong></p>\r\n\r\n<p>Perubahan pasca mati pada tanaman lada yang mengalami penyakit keriting atau kerdil dapat terlihat dari warna daun dan bagian-bagian lain dari tanaman. Pada umumnya, warna daun akan menjadi kuning dan membusuk, dan batang akan membengkak dan menjadi rapuh. Dalam beberapa kasus, penyakit ini juga dapat menyebar ke bagian-bagian lain dari tanaman seperti buah dan biji.</p>\r\n\r\n<p><strong>PENYEBAB :</strong></p>\r\n\r\n<p>Virus <em>Capsicum Chlorosis </em>virus. Penyebaran virus ini bisa terjadi melalui air hujan, serangga vektor, atau melalui teknik budidaya yang kurang baik seperti menggunakan alat pertanian yang belum dicuci bersih. Kondisi lingkungan yang kurang baik, seperti kurangnya cahaya matahari, kelembaban yang tinggi, dan kekurangan nutrisi, juga dapat memperburuk kondisi tanaman dan memfasilitasi penyebaran virus.</p>\r\n\r\n<p><strong>KERUGIAN EKONOMI:</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Produktivitas tanaman yang menurun: Pertumbuhan dan produksi buah tanaman yang terpengaruh oleh virus keriting atau kerdil bisa menurun drastis, yang berakibat pada kurangnya hasil panen.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kualitas produk yang rendah: Buah yang diproduksi oleh tanaman yang terinfeksi virus keriting atau kerdil biasanya memiliki kualitas yang rendah dan tidak sesuai untuk dijual pada pasar.</p>\r\n	</li>\r\n	<li>\r\n	<p>Biaya tambahan: Petani harus mengeluarkan biaya tambahan untuk membeli bahan kimia dan bahan lain untuk memerangi virus, seperti insektisida dan fungisida.</p>\r\n	</li>\r\n	<li>\r\n	<p>Nilai jual yang rendah: Buah yang diproduksi oleh tanaman yang terinfeksi virus keriting atau kerdil biasanya memiliki nilai jual yang lebih rendah dibandingkan dengan buah yang diproduksi oleh tanaman sehat.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kemampuan ekspor yang terbatas: Negara-negara yang menerima ekspor lada dari negara-negara lain seringkali memiliki standar kualitas yang ketat dan menolak produk yang terinfeksi virus keriting atau kerdil.</p>\r\n	</li>\r\n</ol>\r\n', '<p><strong>PENCEGAHAN :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Penyiraman air yang benar: Hindari penyiraman air yang terlalu banyak pada tanaman, terutama pada bagian daun dan batang.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemangkasan: Pemangkasan dapat membantu mengurangi tekanan pada tanaman dan memfasilitasi penyiraman air yang lebih baik.</p>\r\n	</li>\r\n	<li>\r\n	<p>Perlakuan tanah: Perlakuan tanah dengan pestisida dan pupuk berkualitas tinggi dapat membantu mempertahankan kesehatan tanaman.</p>\r\n	</li>\r\n	<li>\r\n	<p>Rotasi tanam: Tanaman lada sebaiknya ditanam pada lokasi yang berbeda setiap tahun untuk membantu mencegah infeksi oleh patogen tanah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Menghindari kerusakan pada tanaman: Hindari memotong daun atau batang tanaman secara tiba-tiba dan kerusakan mekanis lainnya.</p>\r\n	</li>\r\n	<li>\r\n	<p>Menghindari polusi: Hindari menyimpan atau menumpahkan bahan kimia berbahaya pada tanah atau air.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>PENGENDALIAN :</strong></p>\r\n\r\n<ol>\r\n	<li>Benih di persemaian harus terbebas dari serangan aphid yang merupakan vektor dari virus penyebab penyakit. Penggunaan bahan tanaman yang bebas virus dapat dilakukan dengan kultur meristem atau terapi air panas;</li>\r\n	<li>Pemupukan yang berimbang sesuai anjuran diberikan 3-4 kali selama musim hujan</li>\r\n	<li>&nbsp;lingkungan, terutama mengendalikan tumbuhan pengganggu/gulma yang dapat menjadi tanaman inang virus;</li>\r\n	<li>Perlakuan eradikasi tanaman sakit. Tanaman yang menunjukkan gejala penyakit segera dicabut dan dimusnahkan supaya tidak menjadi sumber penularan ke tanaman lain yang sehat;</li>\r\n	<li>Sterilisasi alat-alat pertanian sebelum digunakan pada tanaman sehat;</li>\r\n	<li>Penggunaan pestisida nabati dari mimba, jarak dan cengkeh (eugenol);</li>\r\n</ol>\r\n\r\n<p><strong>TINDAKAN :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Pemeliharaan lingkungan: Pastikan lingkungan tanaman tetap bersih dan kering untuk mengurangi risiko terinfeksi oleh patogen.</p>\r\n	</li>\r\n	<li>\r\n	<p>Perlakuan dengan pestisida: Gunakan pestisida yang sesuai untuk mengatasi penyakit. Pertimbangkan untuk menggunakan pestisida organik jika memungkinkan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemangkasan: Potong bagian tanaman yang terinfeksi dan buang bagian tersebut jauh dari tanaman lain.</p>\r\n	</li>\r\n	<li>\r\n	<p>Perawatan tanaman: Pastikan tanaman mendapat cukup air dan nutrisi untuk membantu meningkatkan resistensinya terhadap penyakit.</p>\r\n	</li>\r\n	<li>\r\n	<p>Isolasi tanaman: Pisahkan tanaman yang terinfeksi dari tanaman lain untuk mencegah penyebaran penyakit.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n', 'Keriting atau kerdil.jpg'),
(13, 'Penyakit Jamur Pirang ', '<p>Penyakit Jamur Pirang pada tanaman lada disebabkan oleh jamur <em>Phytophthora capsici.</em></p>\r\n\r\n<p><strong>ETIOLOGI :</strong></p>\r\n\r\n<p><strong>GEJALA :</strong></p>\r\n\r\n<p>Gejalanya meliputi lesi pada daun dan batang, pembusukan akar, dan kerugian produksi.</p>\r\n\r\n<p><strong>CARA PENULARAN :</strong></p>\r\n\r\n<p>Penyakit jamur pirang pada tanaman lada dapat menyebar melalui air hujan yang mengenai tanaman dan membawa spora jamur ke tanah, melalui hama yang membawa spora jamur dari tanaman yang terinfeksi ke tanaman yang sehat, atau melalui bibit tanaman yang terinfeksi. Penularan juga dapat terjadi melalui alat pertanian dan alat panen yang tidak dibersihkan dengan baik setelah digunakan pada tanaman yang terinfeksi.</p>\r\n\r\n<p><strong>PERUBAHAN PASCA MATI :</strong></p>\r\n\r\n<p>Menyebabkan kerugian produksi dan mengurangi hasil panen. Selain itu, spora jamur dapat menyebar ke tanaman lain dan menyebar penyakit ke area lain.&nbsp;Dengan tanaman yang mati dan membusuk, tanah juga dapat terkontaminasi oleh spora jamur dan menyebar penyakit ke tanaman berikutnya yang ditanam di area tersebut. Oleh karena itu, sangat penting untuk menjaga kebersihan dan mengendalikan spora jamur agar tidak menyebar ke tanaman lain dan memperluas kerusakan.</p>\r\n\r\n<p><strong>PENYEBAB :</strong></p>\r\n\r\n<p>Penyakit jamur pirang pada tanaman lada disebabkan oleh jamur Phytophthora capsici.Jamur ini dapat hidup dan berkembang di lingkungan tanah yang lembab dan panas, dan menyebar melalui air hujan, hama, atau bibit tanaman yang terinfeksi. Kondisi tanah yang tidak baik, seperti tanah yang terlalu lembab atau tanah yang memiliki sirkulasi air yang buruk, dapat meningkatkan risiko infeksi jamur pada tanaman lada.</p>\r\n\r\n<p><strong>KERUGIAN EKONOMI :</strong></p>\r\n\r\n<p>Mengakibatkan kerugian produksi dan mengurangi hasil panen.Kerugian ekonomi juga dapat terjadi karena pengeluaran tambahan untuk pengendalian penyakit, seperti penggunaan fungisida dan pengendalian hama. Tanaman yang terinfeksi juga dapat mempengaruhi kualitas produk dan mengurangi harga jual produk.</p>\r\n', '<p><strong>PENCEGAHAN :</strong></p>\r\n\r\n<p>Pencegahan meliputi pengendalian hama dan penyakit, rotasi tanaman, pemeliharaan tanah yang baik, dan penggunaan varietas tahan.</p>\r\n\r\n<p><strong>PENGENDALIAN :</strong></p>\r\n\r\n<p>Pengendalian yang efektif melibatkan pengelolaan integratif, termasuk penggunaan obat-obatan jamur, pengendalian hama, dan praktik pertanian yang baik.</p>\r\n\r\n<p><strong>TINDAKAN :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Rotasi tanaman: Rotasi tanaman dengan tanaman yang tidak sensitif terhadap jamur pirang dapat membantu meminimalisasi risiko infeksi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemeliharaan tanah: Pemeliharaan tanah yang baik, seperti menjaga kelembapan dan aerasi tanah, dapat membantu mencegah pertumbuhan dan penyebaran jamur.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemilihan bibit: Gunakan bibit tanaman yang sehat dan bebas dari infeksi jamur.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penggunaan fungisida: Aplikasi fungisida yang tepat waktu dan tepat dosis dapat membantu mengendalikan pertumbuhan dan penyebaran jamur.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pengendalian hama: Pengendalian hama yang efektif, seperti pengendalian hama tanah dan hama serangga, dapat membantu mencegah penyebaran penyakit.</p>\r\n	</li>\r\n	<li>\r\n	<p>Varietas tahan: Tanaman lada tahan jamur pirang dapat membantu meminimalisasi risiko infeksi dan kerugian produksi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sanitasi lingkungan: Menjaga lingkungan dan peralatan pertanian yang bersih dan bebas dari spora jamur dapat membantu mencegah penyebaran penyakit.</p>\r\n	</li>\r\n</ol>\r\n', 'Jamur Pirang.jpg'),
(14, 'Penyakit Benang Putih dan Rambut ', '<p>Penyakit benang putih dan rambut pada tanaman lada disebabkan oleh jamur Rhizoctonia solani.</p>\r\n\r\n<p><strong>ETIOLOGI :</strong></p>\r\n\r\n<p><strong>GEJALA :&nbsp;</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Pembusukan akar: Akar tanaman menjadi lembab dan busuk, yang dapat menyebabkan kerusakan pada akar dan mempengaruhi pertumbuhan tanaman.</p>\r\n	</li>\r\n	<li>\r\n	<p>Benang putih atau rambut pada batang: Benang putih atau rambut berwarna coklat terlihat pada bagian bawah batang tanaman lada.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kematian daun: Daun tanaman mulai layu dan mati, bahkan sebelum mereka memasuki tahap produksi buah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pertumbuhan yang terhambat: Tanaman yang terinfeksi memiliki pertumbuhan yang terhambat dan produksi yang rendah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Buah-buahan yang tidak berkembang dengan baik: Buah-buahan yang terinfeksi mungkin tidak berkembang dengan baik dan memiliki kualitas yang rendah.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>PENYEBAB :</strong></p>\r\n\r\n<p>Pembusukan akar dan benang putih atau rambut berwarna coklat pada bagian bawah batang tanaman lada. Ini dapat mempengaruhi pertumbuhan dan produksi tanaman.</p>\r\n\r\n<p><strong>PERUBAHAN PASCA MATI :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Spora: Patogen yang menyebabkan penyakit benang putih dan rambut dapat bertahan hidup dan menyebar melalui spora yang terdapat pada tanaman mati.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tanah: Patogen dapat bertahan hidup dalam tanah selama beberapa waktu dan menyebar melalui akar tanaman baru.</p>\r\n	</li>\r\n	<li>\r\n	<p>Serangga: Serangga seperti lalat dan ulat dapat menyebarkan patogen melalui infeksi yang diterima saat mengisap nectar dan bahan makan pada tanaman mati.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>KERUGIAN EKONOMI :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Penurunan produksi: Tanaman yang terinfeksi dapat memiliki produksi yang rendah atau bahkan tidak memiliki produksi sama sekali, yang menyebabkan penurunan pendapatan bagi produsen.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kualitas yang rendah: Buah-buahan yang terinfeksi mungkin tidak memiliki kualitas yang baik dan sulit untuk dijual, yang menyebabkan kerugian bagi produsen.</p>\r\n	</li>\r\n	<li>\r\n	<p>Biaya pengendalian penyakit: Produsen mungkin harus mengeluarkan biaya untuk pengendalian penyakit, seperti penyemprotan fungisida atau penghapusan tanaman yang terinfeksi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Biaya pemulihan: Produsen mungkin harus mengeluarkan biaya untuk memulihkan lahan atau tanaman yang terinfeksi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kerugian reputasi: Produsen yang menjual produk yang terinfeksi dapat kehilangan reputasi dan loyalitas pelanggan.</p>\r\n	</li>\r\n</ol>\r\n', '<p><strong>PENCEGAHAN :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Pemilihan benih berkualitas: Memilih benih yang berkualitas dan bebas dari infeksi dapat membantu mencegah penyakit.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemeliharaan kebersihan lahan: Membersihkan lahan dari tanaman yang sakit dan memastikan bahwa rumput-rumputan dan sampah lahan tidak tumbuh di sekitar tanaman dapat membantu mencegah penyebaran penyakit.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pengendalian hama: Menjaga tanaman bebas dari hama dan serangga yang membawa patogen dapat membantu mencegah penyakit.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyemprotan fungisida: Penyemprotan fungisida pada waktu yang tepat dan dengan dosis yang benar dapat membantu mencegah infeksi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemeliharaan tanaman yang baik: Menjaga tanaman sehat dengan memberikan nutrisi dan air yang dibutuhkan dapat memperkuat sistem pertahanan tanaman dan membantu mencegah infeksi.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>PENGENDALIAN :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Pemeliharaan budidaya tanaman yang baik: Menjaga tanaman tetap sehat dan memastikan bahwa tanaman memiliki cukup air dan nutrisi untuk mempertahankan pertumbuhan yang optimal.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyemprotan fungisida: Penyemprotan fungisida secara teratur dapat membantu mencegah atau mengatasi infeksi jamur.</p>\r\n	</li>\r\n	<li>\r\n	<p>Rotasi tanaman: Menanam tanaman lada di lokasi yang berbeda setiap tahunnya dapat membantu mengurangi populasi jamur yang menyebabkan penyakit.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penghapusan tanaman yang terinfeksi: Menghapus tanaman yang terinfeksi secepat mungkin dapat membantu mencegah penyebaran penyakit.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyimpanan dan pengolahan benar: Menyimpan dan mengolah buah-buahan dan bahan-bahan tanaman dengan benar dapat membantu mencegah penyebaran penyakit.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>TINDAKAN :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Rotasi tanaman: Rotasi tanaman dengan tanaman yang tidak sensitif terhadap jamur Rhizoctonia solani dapat membantu meminimalisasi risiko infeksi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemeliharaan tanah: Pemeliharaan tanah yang baik, seperti menjaga kelembapan dan aerasi tanah, dapat membantu mencegah pertumbuhan dan penyebaran jamur.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemilihan bibit: Gunakan bibit tanaman yang sehat dan bebas dari infeksi jamur.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penggunaan fungisida: Aplikasi fungisida yang tepat waktu dan tepat dosis dapat membantu mengendalikan pertumbuhan dan penyebaran jamur.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sanitasi lingkungan: Menjaga lingkungan dan peralatan pertanian yang bersih dan bebas dari spora jamur dapat membantu mencegah penyebaran penyakit.</p>\r\n	</li>\r\n</ol>\r\n', 'Benang putih dan rambut.png'),
(15, 'Penyakit Busuk Akar ', '<p>Penyakit busuk akar pada tanaman lada adalah suatu kondisi dimana tanaman mengalami kerusakan pada akar-akar yang dapat menyebabkan kematian tanaman. Penyakit ini disebabkan oleh patogen seperti jamur, bakteri, atau nematoda. Gejala utama penyakit ini adalah tanaman yang mudah tergeletak, akar yang membusuk, dan tanah yang berubah warna.</p>\r\n\r\n<p><strong>ETIOLOGI :</strong></p>\r\n\r\n<p><strong>GEJALA :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Tanaman yang lemah: Tanaman lada yang terkena penyakit busuk akar biasanya tampak lemah dan kurang berdiri tegak.</p>\r\n	</li>\r\n	<li>\r\n	<p>Daun yang kuning: Daun tanaman lada yang terkena penyakit busuk akar seringkali menjadi kuning dan jatuh lebih cepat dari biasanya.</p>\r\n	</li>\r\n	<li>\r\n	<p>Batang yang lemah: Batang tanaman lada yang terkena penyakit busuk akar seringkali tampak lemah dan mudah patah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Akar yang busuk: Akar tanaman lada yang terkena penyakit busuk akar seringkali busuk dan membusuk.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tanah yang berubah warna: Tanah di sekitar tanaman lada yang terkena penyakit busuk akar seringkali berubah warna menjadi hitam atau cokelat.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>CARA PENULARAN :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Melalui bibit: Bibit yang terinfeksi patogen busuk akar dapat menyebar penyakit ke tanaman baru.</p>\r\n	</li>\r\n	<li>\r\n	<p>Melalui tanah: Patogen busuk akar dapat menyebar melalui air tanah atau hama tanah seperti nematoda.</p>\r\n	</li>\r\n	<li>\r\n	<p>Melalui air hujan: Hujan dapat membawa patogen dari tanaman yang terinfeksi ke tanaman lain.</p>\r\n	</li>\r\n	<li>\r\n	<p>Melalui pengiriman bahan organik: Bahan organik yang membusuk seperti tanah, potongan tanaman, atau compost dapat menyebar patogen busuk akar ke tanaman lain.</p>\r\n	</li>\r\n	<li>\r\n	<p>Melalui alat pertanian: Alat pertanian seperti trowel, shovel, atau pisau yang digunakan pada tanaman yang terinfeksi dapat menyebar patogen ke tanaman lain.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>PENYEBAB :</strong></p>\r\n\r\n<p>Penyebab utama penyakit busuk akar pada tanaman lada adalah patogen tanah seperti Fusarium, Phytophthora, dan Pythium. Patogen ini dapat menginfeksi tanaman melalui tanah dan air, dan menyebar ke seluruh sistem tanaman, termasuk akar.</p>\r\n\r\n<p><strong>PERUBAHAN PASCA MATI :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Patogen tanah berkembang biak: Patogen tanah seperti Fusarium, Phytophthora, dan Pythium akan berkembang biak dan menyebar ke tanaman lain di sekitar tanaman yang mati.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kondisi tanah menurun: Kondisi tanah di sekitar tanaman yang mati akan menurun, karena patogen tanah dan bahan organik yang membusuk memperburuk kondisi tanah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kontaminasi tanah: Tanah di sekitar tanaman yang mati dapat terkontaminasi oleh patogen dan mempengaruhi tanaman lain yang tumbuh di sekitar tanaman yang mati.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kehilangan produktivitas lahan: Lahan di sekitar tanaman yang mati akan kehilangan produktivitas dan tidak dapat digunakan untuk tanaman lain selama beberapa waktu.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>KERUGIAN EKONOMI :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Kehilangan hasil panen: Tanaman lada yang terkena penyakit busuk akar akan mengalami kerugian produktivitas dan hasil panen yang signifikan, sehingga menurunkan pendapatan petani dan industri.</p>\r\n	</li>\r\n	<li>\r\n	<p>Biaya pengendalian penyakit: Petani dan industri harus mengeluarkan biaya untuk mengendalikan penyakit busuk akar, seperti membeli bahan kimia dan melakukan prosedur pengendalian penyakit.</p>\r\n	</li>\r\n	<li>\r\n	<p>Biaya replanting: Petani harus mengeluarkan biaya untuk membeli dan memasang tanaman baru setelah tanaman lada yang terkena penyakit busuk akar mati, yang akan menambah biaya produksi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penurunan permintaan dan harga pasar: Tanaman lada yang terkena penyakit busuk akar akan memiliki kualitas rendah dan mempengaruhi kualitas produk akhir, sehingga menurunkan permintaan dan harga pasar.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kerugian ekonomi nasional: Penyakit busuk akar pada tanaman lada dapat menurunkan produktivitas dan hasil panen secara nasional, sehingga mempengaruhi ekonomi nasional.</p>\r\n	</li>\r\n</ol>\r\n', '<p><strong>PENCEGAHAN :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Perlakuan tanah: Perlakuan tanah dengan pestisida dan pupuk berkualitas tinggi dapat membantu mempertahankan kesehatan tanaman.</p>\r\n	</li>\r\n	<li>\r\n	<p>Rotasi tanam: Tanaman lada sebaiknya ditanam pada lokasi yang berbeda setiap tahun untuk membantu mencegah infeksi oleh patogen tanah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Perlakuan dengan pestisida: Aplikasi pestisida sesuai dengan instruksi pada label dapat membantu mencegah infeksi oleh patogen.</p>\r\n	</li>\r\n	<li>\r\n	<p>Menghindari kerusakan pada akar: Hindari memotong atau merusak akar tanaman secara tiba-tiba dan memastikan bahwa tanah tidak terlalu padat sehingga udara dan air dapat mengalir dengan baik.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyiraman air yang benar: Hindari penyiraman air yang terlalu banyak pada tanaman, terutama pada bagian daun dan batang.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>PENGENDALIAN :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Pemilihan bibit yang sehat: Pastikan untuk memilih bibit lada yang sehat dan bebas dari patogen busuk akar sebelum memasukkan ke dalam tanah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemeliharaan tanah sehat: Pastikan bahwa kondisi tanah selalu sehat dan bersih dari patogen tanah dan bahan organik yang membusuk.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemeliharaan drainase yang baik: Pastikan drainase tanah selalu baik untuk mencegah air tanah berdiri dan menyebar patogen.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penggunaan bahan kimia: Jika diperlukan, gunakan bahan kimia seperti fungisida untuk membunuh patogen busuk akar. Pastikan untuk memfollow label bahan kimia dan mengikuti petunjuk penggunaan yang sesuai.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>TINDAKAN :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Penggunaan tanaman pestisida alami: Beberapa tanaman seperti neem dan basil dapat membantu mencegah penyakit busuk akar dengan menghambat pertumbuhan patogen.</p>\r\n	</li>\r\n	<li>\r\n	<p>Rotasi tanaman: Rotasi tanaman dapat membantu mencegah penyakit busuk akar dengan membatasi pertumbuhan dan berkembang biaknya patogen tanah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Memantau kondisi tanaman secara teratur: Pastikan untuk memantau kondisi tanaman secara teratur dan segera mengambil tindakan jika menemukan gejala penyakit busuk akar.</p>\r\n	</li>\r\n</ol>\r\n', 'Busuk Akar.jpg'),
(16, 'Penyakit Jaring Laba-Laba dan Rambut Ekor Kuda', '<p>Penyakit jaring laba-laba dan rambut ekor kuda adalah penyakit yang disebabkan oleh jamur Tetrancium fungicola dan menyebar melalui spora. Penyakit ini menimbulkan bintik-bintik pada daun yang memudar dan membentuk jaring-jaring laba-laba. penyakit yang disebabkan oleh virus dan menyebar melalui serangga pemakan daun seperti thrips. Penyakit ini menyebabkan munculnya rambut-rambut seperti ekor kuda pada daun dan bisa mempengaruhi pertumbuhan dan produksi tanaman.</p>\r\n\r\n<p><strong>ETIOLOGI :</strong></p>\r\n\r\n<p><strong>GEJALA :</strong></p>\r\n\r\n<ol>\r\n	<li>Munculnya bintik-bintik pada daun yang memudar dan berwarna kuning</li>\r\n	<li>Pembentukan jaring-jaring laba-laba pada bintik-bintik tersebut</li>\r\n	<li>Kerusakan pada daun, batang, dan bunga yang dapat mempengaruhi pertumbuhan dan produksi tanaman</li>\r\n	<li>Munculnya rambut-rambut seperti ekor kuda pada daun</li>\r\n	<li>Daun yang berwarna kuning, layu, dan terkulai</li>\r\n	<li>Pertumbuhan tanaman yang terhambat dan produksi berkurang.</li>\r\n</ol>\r\n\r\n<p><strong>PENYEBAB :</strong></p>\r\n\r\n<ol>\r\n	<li>virus yang menyebar melalui serangga pemakan daun seperti thrips.</li>\r\n	<li>Serangga ini mengisap cairan daun dan menyebarkan virus saat berpindah dari satu tanaman ke tanaman lain.</li>\r\n	<li>Jamur Tetrancium fungicola yang menyebar melalui spora dan menempel pada daun.</li>\r\n</ol>\r\n\r\n<p><strong>CARA PENULARAN :</strong></p>\r\n\r\n<ol>\r\n	<li>Melalui spora jamur Tetrancium fungicola yang terbawa angin, hujan, atau melalui serangga. Spora tersebut dapat menempel pada daun dan menimbulkan infeksi.</li>\r\n	<li>Melalui serangga pemakan daun seperti thrips. Serangga ini mengisap cairan daun yang terinfeksi virus dan menyebarkan virus saat berpindah dari satu tanaman ke tanaman lain. Virus juga dapat menyebar melalui alat pertanian yang terkontaminasi dan air hujan yang mengandung partikel virus.</li>\r\n</ol>\r\n\r\n<p><strong>PERUBAHAN PASCA MATI :</strong></p>\r\n\r\n<ol>\r\n	<li>Pertumbuhan tanaman terhambat dan produksi berkurang</li>\r\n	<li>Daun yang rusak dan layu</li>\r\n	<li>Bungan yang tidak berkembang dengan baik</li>\r\n	<li>Tanaman yang mati atau memperlihatkan tanda-tanda kelelahan</li>\r\n</ol>\r\n\r\n<p><strong>KERUGIAN EKONOMI :</strong></p>\r\n\r\n<ol>\r\n	<li>Berkurangnya produksi dan kualitas buah, sehingga harga jual dapat turun</li>\r\n	<li>Biaya tambahan untuk pengendalian penyakit, seperti pembelian bahan kimia dan serangga pengendali</li>\r\n	<li>Biaya tambahan untuk memelihara dan memperbaharui tanaman yang terinfeksi atau rusak</li>\r\n	<li>Kerugian ekonomi bagi petani dan industri lada karena penurunan produksi dan kualitas.</li>\r\n</ol>\r\n', '<ol>\r\n	<li><strong>PENCEGAHAN :</strong></li>\r\n	<li>\r\n	<p>Menjaga kebersihan lingkungan tanaman: Membersihkan tanah dan menjaga lingkungan tanaman tetap bersih dan kering untuk mencegah pertumbuhan jamur dan serangga.</p>\r\n	</li>\r\n	<li>\r\n	<p>Menjaga jarak tanam: Menanam tanaman lada dengan jarak yang cukup untuk mencegah serangga dan penyakit menyebar dari satu tanaman ke tanaman lain.</p>\r\n	</li>\r\n	<li>\r\n	<p>Menggunakan bahan kimia yang tepat: Menggunakan bahan kimia yang sesuai dengan petunjuk pemakaian untuk membunuh serangga dan jamur yang menyebabkan penyakit.</p>\r\n	</li>\r\n	<li>\r\n	<p>Melakukan rotasi tanam: Menanam tanaman lada pada tanah yang berbeda setiap tahun untuk mencegah penyakit menyebar dan memperbanyak populasi serangga dan jamur.</p>\r\n	</li>\r\n	<li>\r\n	<p>Menjaga kesehatan tanaman: Memberikan nutrisi dan air yang cukup untuk memperkuat sistem pertahanan tanaman dan membantu mencegah penyakit.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>PENGENDALIAN :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Penggunaan pestisida: Menggunakan pestisida yang sesuai dengan petunjuk pemakaian untuk membunuh serangga dan jamur yang menyebabkan penyakit.</p>\r\n	</li>\r\n	<li>\r\n	<p>Menjaga kesehatan tanaman: Memberikan nutrisi dan air yang cukup untuk memperkuat sistem pertahanan tanaman dan membantu mencegah penyakit.</p>\r\n	</li>\r\n	<li>\r\n	<p>Menanam varietas tanaman yang resisten: Menanam varietas tanaman lada yang memiliki tingkat resistensi yang lebih tinggi terhadap penyakit jaring laba-laba dan rambut ekor kuda.</p>\r\n	</li>\r\n	<li>\r\n	<p>Menghilangkan bagian tanaman yang rusak atau terinfeksi: Menghilangkan bagian tanaman yang rusak atau terinfeksi secara tepat dan cepat untuk mencegah penyakit menyebar dan memperparah kondisi tanaman.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyemprotan fungisida: Menyemprot fungisida pada tanaman untuk membunuh jamur yang menyebabkan penyakit.</p>\r\n	</li>\r\n	<li>\r\n	<p>Memantau tanaman secara teratur: Memantau tanaman secara teratur untuk memastikan mereka sehat dan tidak terinfeksi, dan segera melakukan tindakan jika ada tanda-tanda penyakit.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>TINDAKAN :</strong></p>\r\n\r\n<ol>\r\n	<li>Penggunaan pestisida: Menggunakan pestisida yang sesuai dengan petunjuk pemakaian untuk membunuh serangga dan jamur yang menyebabkan penyakit.</li>\r\n	<li>Menjaga kesehatan tanaman: Memberikan nutrisi dan air yang cukup untuk memperkuat sistem pertahanan tanaman dan membantu mencegah penyakit.</li>\r\n	<li>Menanam varietas tanaman yang resisten: Menanam varietas tanaman lada yang memiliki tingkat resistensi yang lebih tinggi terhadap penyakit jaring laba-laba dan rambut ekor kuda.</li>\r\n	<li>Menghilangkan bagian tanaman yang rusak atau terinfeksi: Menghilangkan bagian tanaman yang rusak atau terinfeksi secara tepat dan cepat untuk mencegah penyakit menyebar dan memperparah kondisi tanaman.</li>\r\n	<li>Penyemprotan fungisida: Menyemprot fungisida pada tanaman untuk membunuh jamur yang menyebabkan penyakit.</li>\r\n	<li>Memantau tanaman secara teratur;</li>\r\n</ol>\r\n', 'Jaring laba-laba dan rambut ekor kuda.png'),
(17, 'Penyakit Septobasidium SP', '<p>Penyakit Septobasidium pada tanaman lada adalah penyakit peralihan yang disebabkan oleh jamur Septobasidium sp.</p>\r\n\r\n<p><strong>ETIOLOGI :</strong></p>\r\n\r\n<p><strong>GEJALA :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Munculnya bintik-bintik kecoklatan pada daun yang dapat bertambah besar dan menyatu menjadi lepuhan besar.</p>\r\n	</li>\r\n	<li>\r\n	<p>Daun menjadi kuning dan keriting sebelum jatuh.</p>\r\n	</li>\r\n	<li>\r\n	<p>Munculnya hifa jamur yang membentuk koloni pada bagian belakang daun.</p>\r\n	</li>\r\n	<li>\r\n	<p>Terhambatnya pertumbuhan dan perkembangan tanaman.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penurunan hasil produksi dan kualitas bahan baku.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>PENYEBAB :</strong></p>\r\n\r\n<p>Penyakit Septobasidium pada tanaman lada disebabkan oleh jamur Septobasidium sp. Jamur ini tumbuh dan berkembang biak pada permukaan daun tanaman, memasuki melalui stomata dan mempengaruhi pertumbuhan dan perkembangan tanaman.</p>\r\n\r\n<p><strong>CARA PENULARAN :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Air hujan: Jamur dapat terbawa air hujan dan menempel pada daun tanaman baru yang sehat.</p>\r\n	</li>\r\n	<li>\r\n	<p>Alat-alat pertanian: Jamur dapat terbawa oleh alat pertanian yang terkontaminasi dan menyebar ke tanaman baru saat digunakan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Material tanaman yang terkontaminasi: Jamur dapat menempel pada material tanaman yang terkontaminasi, seperti bibit, tanaman bekas, atau tanaman yang rusak, dan menyebar ke tanaman baru.</p>\r\n	</li>\r\n	<li>\r\n	<p>Serangga: Beberapa serangga, seperti lalat dan lalat bibit, dapat membawa jamur dan menyebarkannya ke tanaman baru saat mengisap nektar.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>PERUBAHAN PASCA MATI :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Perusakan pada daun: Daun yang terkena penyakit akan mengalami kerusakan seperti munculnya bintik-bintik kecoklatan, membentuk lepuhan besar, dan menjadi kuning dan keriting sebelum jatuh.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penurunan pertumbuhan dan perkembangan: Tanaman yang terkena penyakit dapat mengalami penurunan pertumbuhan dan perkembangan, seperti pertumbuhan yang terhambat dan kurangnya produksi buah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penurunan kualitas bahan baku: Tanaman yang terkena penyakit dapat mengalami penurunan kualitas bahan baku, seperti kurangnya aroma dan rasa yang khas dari lada.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>KERUGIAN EKONOMI :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Penurunan produksi: Tanaman yang terkena penyakit akan mengalami penurunan produksi, seperti kurangnya jumlah dan kualitas buah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penurunan nilai jual: Tanaman yang terkena penyakit akan mengalami penurunan nilai jual karena kualitas bahan baku yang lebih rendah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Biaya pengendalian dan perlakuan: Tanaman yang terkena penyakit mungkin perlu diterapi dengan fungisida dan tindakan lain untuk mengatasi masalah, yang dapat menimbulkan biaya tambahan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kerugian jangka panjang: Jika tidak ditangani dengan baik, penyakit Septobasidium dapat menyebar dan menyebabkan kerugian jangka panjang pada industri lada.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><strong>PENCEGAHAN :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Sanitasi: Menjaga kebersihan dan membuang tanaman sakit atau mati secara tepat untuk mencegah penyebaran penyakit.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemilihan bibit: Memastikan bahwa bibit yang dipakai sehat dan bebas dari penyakit.</p>\r\n	</li>\r\n	<li>\r\n	<p>Rotasi tanaman: Menanam jenis tanaman yang berbeda setiap musim tanam untuk membantu mengurangi populasi patogen pada tanah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyiraman yang tepat: Menjaga tanaman tetap basah dan terhindar dari kelembaban berlebihan untuk mencegah perkembangan patogen.</p>\r\n	</li>\r\n	<li>\r\n	<p>Perlakuan nutrisi: Memberikan nutrisi yang cukup dan seimbang untuk membantu mempertahankan kesehatan tanaman.</p>\r\n	</li>\r\n	<li>\r\n	<p>Perlakuan dengan fungisida: Menggunakan fungisida untuk mengatasi penyakit yang sudah terdeteksi dalam tahap dini.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>PENGENDALIAN :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Identifikasi: Menentukan dengan tepat jenis penyakit dan patogen yang menyebabkannya sebelum melakukan tindakan pengendalian.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sanitasi: Menjaga kebersihan dan membuang tanaman sakit atau mati secara tepat untuk mencegah penyebaran penyakit.</p>\r\n	</li>\r\n	<li>\r\n	<p>Perlakuan dengan fungisida: Menggunakan fungisida yang sesuai dengan jenis patogen untuk membunuh atau menekan perkembangannya.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemantauan: Memantau tanaman secara teratur untuk mengidentifikasi gejala penyakit secepat mungkin dan melakukan tindakan pengendalian tepat waktu.</p>\r\n	</li>\r\n	<li>\r\n	<p>Rotasi tanaman: Menanam jenis tanaman yang berbeda setiap musim tanam untuk membantu mengurangi populasi patogen pada tanah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyiraman yang tepat: Menjaga tanaman tetap basah dan terhindar dari kelembaban berlebihan untuk mencegah perkembangan patogen.</p>\r\n	</li>\r\n	<li>\r\n	<p>Perlakuan nutrisi: Memberikan nutrisi yang cukup dan seimbang untuk membantu mempertahankan kesehatan tanaman dan membantu mempercepat proses penyembuhan.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>TINDAKAN :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Identifikasi: Menentukan dengan tepat jenis penyakit dan patogen yang menyebabkannya sebelum melakukan tindakan pengendalian.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sanitasi: Menjaga kebersihan dan membuang tanaman sakit atau mati secara tepat untuk mencegah penyebaran penyakit.</p>\r\n	</li>\r\n	<li>\r\n	<p>Perlakuan dengan fungisida: Menggunakan fungisida yang sesuai dengan jenis patogen untuk membunuh atau menekan perkembangannya.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemantauan: Memantau tanaman secara teratur untuk mengidentifikasi gejala penyakit secepat mungkin dan melakukan tindakan pengendalian tepat waktu.</p>\r\n	</li>\r\n	<li>\r\n	<p>Rotasi tanaman: Menanam jenis tanaman yang berbeda setiap musim tanam untuk membantu mengurangi populasi patogen pada tanah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyiraman yang tepat: Menjaga tanaman tetap basah dan terhindar dari kelembaban berlebihan untuk mencegah perkembangan patogen.</p>\r\n	</li>\r\n	<li>\r\n	<p>Perlakuan nutrisi: Memberikan nutrisi yang cukup dan seimbang untuk membantu mempertahankan kesehatan tanaman dan membantu mempercepat proses penyembuhan.</p>\r\n	</li>\r\n</ol>\r\n', 'Septobasidium sp.jpg');
INSERT INTO `post` (`kode_post`, `nama_post`, `det_post`, `srn_post`, `gambar`) VALUES
(18, 'Penyakit Antraknosa', '<p>Penyakit Antraknosa adalah penyakit pada tanaman lada yang disebabkan oleh jamur <em>Phytophthora</em> <em>capsici.</em></p>\r\n\r\n<p><strong>ETIOLOGI :</strong></p>\r\n\r\n<p><strong>GEJALA :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Bercak hitam pada daun: bercak hitam muncul pada daun dan berkembang menjadi daerah yang lebih besar dengan waktu.</p>\r\n	</li>\r\n	<li>\r\n	<p>Daun layu dan rontok: daun mulai membengkak dan rontok, mengakibatkan layu dan kerugian produksi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pembusukan batang: pembusukan batang dapat memicu kerusakan pada batang dan mengurangi produksi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pembusukan buah: pembusukan buah dan bintil hitam dapat terlihat pada buah dan mempengaruhi kualitas dan daya simpan buah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tumor akar: Tumor akar yang muncul pada akar dapat mempengaruhi pertumbuhan dan produksi tanaman.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>PENYEBAB :</strong></p>\r\n\r\n<p>Penyakit antraknosa pada tanaman lada disebabkan oleh jamur Phytophthora capsici. Jamur ini tumbuh dan berkembang biak dengan baik pada lingkungan lembab dan terus-menerus basah. Kondisi ini sangat baik bagi jamur untuk memasuki tanaman melalui akar dan menyebar ke bagian lain dari tanaman, menyebabkan kerusakan dan gejala penyakit. Faktor lain yang dapat mempermudah perkembangan penyakit antraknosa adalah lingkungan tanam yang kurang bersih, overwatering, dan drainase yang buruk.</p>\r\n\r\n<p><strong>CARA PENULARAN :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Air: air yang terkontaminasi dengan spora jamur dapat menyebar penyakit dari satu tanaman ke tanaman lain.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tanah: Tanah yang terkontaminasi dengan jamur dapat menyebar penyakit melalui akar tanaman.</p>\r\n	</li>\r\n	<li>\r\n	<p>Bibit: penularan dapat terjadi melalui bibit yang terkontaminasi dengan jamur.</p>\r\n	</li>\r\n	<li>\r\n	<p>Alat pertanian: Alat pertanian seperti cangkul, pisau, dll yang tidak dicuci setelah digunakan pada tanaman yang terinfeksi dapat menyebarkan penyakit ke tanaman lain.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>PERUBAHAN PASCA MATI :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Kerusakan pada daun, batang, dan buah: bagian-bagian tanaman yang terkena infeksi akan membusuk dan rusak, menyebabkan layu dan rontok daun serta pembusukan batang dan buah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pertumbuhan terhambat: infeksi oleh jamur antraknosa dapat mempengaruhi pertumbuhan dan produksi tanaman.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyebaran spora jamur: spora jamur akan tersebar dan menyebar penyakit ke tanaman lain.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>KERUGIAN EKONOMI :</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Penurunan hasil panen: Tanaman yang terinfeksi antraknosa akan memperlihatkan gejala yang mempengaruhi pertumbuhan dan hasil panen, sehingga menyebabkan penurunan produktivitas dan hasil panen.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penurunan kualitas: Tanaman yang terinfeksi antraknosa akan memperlihatkan gejala pada buah, seperti warna buruk, bintik-bintik, dan bahkan membusuk, sehingga menurunkan kualitas produk dan harga jual.</p>\r\n	</li>\r\n	<li>\r\n	<p>Biaya pengendalian penyakit: Petani harus mengeluarkan biaya untuk membeli dan menerapkan fungisida dan bahan pengendalian lain untuk mengatasi penyakit antraknosa.</p>\r\n	</li>\r\n	<li>\r\n	<p>Biaya pemulihan: Tanaman yang terinfeksi antraknosa mungkin perlu ditanam ulang, yang menyebabkan biaya tambahan bagi petani.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kerugian pasar: Petani dan industri mungkin kehilangan pasar dan pangsa pasar karena produk yang terkontaminasi dan tidak memenuhi standar kualitas.</p>\r\n	</li>\r\n</ol>\r\n', '<p><strong>PENCEGAHAN</strong> :</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Pemilihan benih berkualitas dan tanaman yang tidak terinfeksi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penanaman jarak yang cukup dan pemeliharaan taman yang baik untuk meningkatkan ventilasi dan mengurangi kelembaban.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemangkasan dan pembuangan bagian tanaman yang terinfeksi untuk membatasi penyebaran penyakit.</p>\r\n	</li>\r\n	<li>\r\n	<p>Aplikasi pupuk dan bahan kimia secara tepat waktu dan dosis untuk memperkuat sistem kekebalan tanaman.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyemprotan fungisida secara teratur untuk membunuh jamur penyebab antraknosa.</p>\r\n	</li>\r\n	<li>\r\n	<p>Rotasi tanaman dan menjaga lingkungan bebas dari sampah dan materi organik yang terkumpul yang dapat menjadi sumber infeksi jamur.</p>\r\n	</li>\r\n	<li>\r\n	<p>Menjaga higiene alat pertanian dan memproses bahan organik dengan benar untuk membatasi infeksi.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>PENGENDALIAN :</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Pemilihan varietas tahan: Memilih varietas tanaman lada yang tahan terhadap penyakit antraknosa dapat membantu mencegah infeksi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemeliharaan tanaman: Memelihara tanaman dengan baik, seperti menjaga jarak tanam yang cukup, memastikan ventilasi dan drainase yang baik, dan memangkas bagian tanaman yang terinfeksi dapat membantu mencegah infeksi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Penyemprotan fungisida: Penyemprotan fungisida secara teratur sebelum infeksi terjadi dapat membantu membunuh jamur penyebab antraknosa dan mencegah infeksi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Rotasi tanaman: Rotasi tanaman dapat membantu mencegah infeksi dengan memindahkan tanaman dari lokasi yang terinfeksi ke lokasi yang sehat.</p>\r\n	</li>\r\n	<li>\r\n	<p>Menjaga higiene: Menjaga higiene alat pertanian dan memproses bahan organik dengan benar dapat membatasi infeksi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kontrol hama dan serangga: Mengendalikan hama dan serangga yang menyebar jamur penyebab antraknosa dapat membantu mencegah infeksi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemantauan dan diagnosis dini: Pemantauan tanaman secara teratur dan diagnosis dini dapat membantu mengidentifikasi infeksi secepat mungkin dan memulai tindakan pengendalian sebelum kerusakan terlalu besar.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>TINDAKAN :&nbsp;</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Identifikasi dan diagnosis: Langkah pertama untuk mengatasi penyakit antraknosa adalah dengan mengidentifikasi dan mendiagnosis gejala dan tipe jamur penyebab.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemeliharaan tanaman: Pemeliharaan tanaman yang baik, seperti menjaga jarak tanam yang cukup, memastikan ventilasi dan drainase yang baik, dan memangkas bagian tanaman yang terinfeksi dapat membantu mengurangi risiko infeksi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Aplikasi fungisida: Penyemprotan fungisida secara teratur dapat membunuh jamur penyebab antraknosa dan membantu mengatasi infeksi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Rotasi tanaman: Rotasi tanaman dapat membantu membatasi infeksi dengan memindahkan tanaman dari lokasi yang terinfeksi ke lokasi yang sehat.</p>\r\n	</li>\r\n	<li>\r\n	<p>Menjaga higiene: Menjaga higiene alat pertanian dan memproses bahan organik dengan benar dapat membatasi infeksi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pemilihan benih berkualitas: Pemilihan benih berkualitas dan tanaman yang sehat dapat membantu meminimalkan risiko infeksi.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n', 'Antraknosa.png');

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
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `kode_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
