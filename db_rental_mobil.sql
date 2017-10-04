-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2017 at 12:29 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rental_mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_denda`
--

CREATE TABLE `tb_denda` (
  `ID_DENDA` int(11) NOT NULL,
  `ID_DETAIL_TRANSAKSI` int(11) DEFAULT NULL,
  `JUMLAH_HARI` int(11) DEFAULT NULL,
  `TOTAL_DENDA` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_transaksi`
--

CREATE TABLE `tb_detail_transaksi` (
  `ID_DETAIL_TRANSAKSI` int(11) NOT NULL,
  `KODE_TRANSAKSI` varchar(125) DEFAULT NULL,
  `ID_MOBIL` int(11) DEFAULT NULL,
  `TGL_SEWA` datetime DEFAULT NULL,
  `TGL_AKHIR_PENYEWAAN` datetime DEFAULT NULL,
  `TGL_PENGEMBALIAN` datetime DEFAULT NULL,
  `HARGA_MOBIL` decimal(10,0) DEFAULT NULL,
  `TOTAL` decimal(10,0) DEFAULT NULL,
  `STATUS_MOBIL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_fasilitas`
--

CREATE TABLE `tb_fasilitas` (
  `ID_FASILITAS` int(11) NOT NULL,
  `FASILITAS` varchar(225) DEFAULT NULL,
  `KET_FASILITAS` text,
  `BIAYA` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_fasilitas`
--

INSERT INTO `tb_fasilitas` (`ID_FASILITAS`, `FASILITAS`, `KET_FASILITAS`, `BIAYA`) VALUES
(1, 'supir', 'supir nya bisa dipake buat apa aja bebas', '200000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_fasilitas_mobil`
--

CREATE TABLE `tb_fasilitas_mobil` (
  `ID_MOBIL` int(11) NOT NULL,
  `ID_FASILITAS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_gallery_mobil`
--

CREATE TABLE `tb_gallery_mobil` (
  `ID_GALLERY` int(11) NOT NULL,
  `ID_MOBIL` int(11) DEFAULT NULL,
  `IMAGE` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gallery_mobil`
--

INSERT INTO `tb_gallery_mobil` (`ID_GALLERY`, `ID_MOBIL`, `IMAGE`) VALUES
(1, 1, '1.jpg'),
(2, 1, '2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mobil`
--

CREATE TABLE `tb_mobil` (
  `ID_MOBIL` int(11) NOT NULL,
  `NAMA_MOBIL` varchar(225) DEFAULT NULL,
  `MERK_MOBIL` varchar(225) DEFAULT NULL,
  `DESKRIPSI_MOBIL` text,
  `TAHUN_MOBIL` varchar(4) DEFAULT NULL,
  `KAPASITAS_MOBIL` int(11) DEFAULT NULL,
  `HARGA_MOBIL` decimal(10,0) DEFAULT NULL,
  `WARNA_MOBIL` varchar(50) DEFAULT NULL,
  `BENSIN_MOBIL` int(11) DEFAULT NULL,
  `PLAT_NO_MOBIL` varchar(25) DEFAULT NULL,
  `STATUS_SEWA` int(11) DEFAULT NULL,
  `STATUS_MOBIL` int(11) DEFAULT NULL,
  `CREATED_MOBIL` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mobil`
--

INSERT INTO `tb_mobil` (`ID_MOBIL`, `NAMA_MOBIL`, `MERK_MOBIL`, `DESKRIPSI_MOBIL`, `TAHUN_MOBIL`, `KAPASITAS_MOBIL`, `HARGA_MOBIL`, `WARNA_MOBIL`, `BENSIN_MOBIL`, `PLAT_NO_MOBIL`, `STATUS_SEWA`, `STATUS_MOBIL`, `CREATED_MOBIL`) VALUES
(1, 'New HR-V S 1.5 MT', 'TOYOTA', 'Dengan membawa desain yang rupawan maka diharapkan mobil SUV crossover ini dapat memenuhi keinginan konsumen tanah air yang mendambakan tunggangan dengan kepercayaan diri yang tinggi dan bisa diajak ‘main’ dengan penuh gengsi di jalanan dengan kondisi medan yang sulit sekalipun tanpa menghilangkan unsur fun to drive. Untuk pasaran otomotif di Indonesia sendiri, Honda HR-V memiliki varian yang sama juga dengan model internasionalnya. Model varian tersebut ada 4 jenis yang dapat dipilih yaitu varian A, S, E dan Prestige yang masing-masing mobil tersebut mengusung meisn berkapasitas 1.500cc untuk tiga model pertama (A,S dan E) sedangkan untuk varian Prestige mesin yang diusung berkapasitas 1.800cc. Dan untuk perbedaan 4 Tipe Honda HR-V pada bagian lainnya tidak memiliki perbedaan terlalu signifikan.', '2017', 5, '350000', 'PUTIH', 1, 'F 0011 FZAA', 1, 1, '2017-09-01 04:36:34'),
(2, 'Brio Satya E CVT', 'TOYOTA', 'Mobil Low Cost Green Car (LCGC) identik dengan harga murah. Namun Honda Brio Satya E CVT harganya saat ini dibanderol Rp 149,6 juta dan menjadi LCGC termahal. Kami pun dapat kesempatan mencoba Honda Brio Satya E CVT di Indonesia\n\nMobil Low Cost Green Car (LCGC) identik dengan harga murah. Namun Honda Brio Satya E CVT harganya saat ini dibanderol Rp 149,6 juta dan menjadi LCGC termahal. Kami pun dapat kesempatan mencoba Honda Brio Satya E CVT di Indonesia.\n\nKetika fenomena Low Cost Green Car (LCGC) atau akrab disebut “mobil murah ramah lingkungan” muncul di tahun 2013, banyak Agen Pemegang Merek (APM) berlomba-lomba memamerkan produknya. Ada Toyota Agya, Daihatsu Ayla, Datsun Go, Suzuki Karimun Wagon R dan Honda Brio Satya.\n\nNamun ada peraturan dari Kementerian Perindustrian soal LCGC yang dimanfaatkan oleh PT Honda Prospect Motor (HPM) mengenai penyesuaian harga.\n\nSetiap APM boleh menaikkan harga maksimum 15% berdasarkan penggunaan teknologi transmisi otomatis dan menaikkan 10% untuk teknologi keselamatan penumpang.\n\nTidak heran bila harga Brio Satya E CVT yang kami coba menjadi mobil LCGC termahal. Dibanderol Rp 149,6 juta, Honda Brio Satya E CVT telah menggunakan transmisi otomatis yang dikenal dengan perpindahan gigi halusnya.\n\nSaat kami coba dalam perjalanan dari Cisarua ke Jakarta, tenaga 90 dk dan torsi 110 Nm dari mesin 1.198 cc tersalur secara merata dan halus. Hampir sulit menemukan entakan pada transmisi meski pedal gas diinjak penuh saat berakselerasi.\n\nPerforma mesinnya mirip seperti Honda Brio RS yang sudah kami bahas pada edisi 343 lalu. Hanya saja perbedaan dari Honda Brio Satya ada pada suspensinya yang tidak diatur sporti.''''', '2017', 5, '350000', 'PUTIH', 0, 'D 0011 FZA', 0, 1, '2017-09-01 04:11:12'),
(3, 'Mobilio RS 1.5 CVT', 'TOYOTA', 'Ulasan pertama datang dari Kelebihan Mobil Honda Mobilio pada bagian mesin yang dibuat dengan khualitas Mesin Gahar untuk ukuran Jenis Mobil Low MPV yang di jual di Pasar Indonesia karena Mobil Mobilio ini telah memakai Tipe Mesin  i VTEC 16 Katup SOHC 1.5 L dengan 4 Silinder dan DBW yang mampu menghasilkan Daya Tenaga Kuda Maksimal sebesar 88 Kw (118 PS) pada putaran mesin 6.600 rpm dan Daya Torsi secara Maksimal mencapai 14,8 Kg, m (145 Nm) pada putaran mesin 4.600 rpm dengan Diameter Mesin 73 mm x Langkah Mesin 89,4 mm dan perbandingan Komperasi sekitar 10,3 : 1 sehingga jika dilihat secara sederhana bahwa khualitas Mesin Mobil Mobilio tersebut sudah sangat bisa diandalkan untuk digunakan diberbagai medan jalan yg terdapat di Indonesia.', '2017', 5, '350000', 'PUTIH', 1, 'F 0011 FZA', 0, 1, '2017-09-01 04:12:50'),
(4, 'Avanza', 'Toyota', 'Apalagi didalam Mobil Mobilio ini sudah menggunakan Sistem Suplai Bahan Bakar Merk PGM – FI yang berfungsi untuk memaksimalkan proses pembakaran Bahan Bakar Mesin menjadi lebih Ramah Lingkungan dan Hemat Bahan Bakar yang sudah di uji cobakan dengan catatan konsumsi mencapai 26.7 KM Per Liter sehingga menjadikan Mobil Mobilio sebagai Mobil Jenis Low MPV paling irit di Indonesia. Kemudian Kelebihan Mobil Honda Mobilio selanjutnya ialah sudah memakai Dua Varian Transmisi yakni Sistem Transmisi Otomatis CVT dan Varian Sistem Transmisi Manual 5 Speed dengan sistem Keamanaan Mobil Honda Mobilio yang sudah sangat diandalkan karena sudah didukung oleh Sistem Keamanan dan Keselamatan dengan Standar yg tinggi seperti terdapatnya Dual SRS Airbags untuk All Tipe Mobil Mobilio, tlah menggunakan Sistem Pengereman ABS dan EBD, didalam Kursi atau Jok Duduk sudah ada Sealbelt dg Fitur Pretensioner Load Limiter yg berguna untuk melindungi tubuh agar tidak cedera saat terjadinya kecelakaan dan selanjutnya sudah ada Fitur Pedestrian Protector disemua tipe Mobil Honda Mobilio.', '2016', 6, '250000', 'Hitam', 2, 'D 4912 FG', 0, 1, '2017-10-01 07:32:38'),
(5, 'Xenia', 'Daihatsu', 'Apalagi didalam Mobil Mobilio ini sudah menggunakan Sistem Suplai Bahan Bakar Merk PGM – FI yang berfungsi untuk memaksimalkan proses pembakaran Bahan Bakar Mesin menjadi lebih Ramah Lingkungan dan Hemat Bahan Bakar yang sudah di uji cobakan dengan catatan konsumsi mencapai 26.7 KM Per Liter sehingga menjadikan Mobil Mobilio sebagai Mobil Jenis Low MPV paling irit di Indonesia. Kemudian Kelebihan Mobil Honda Mobilio selanjutnya ialah sudah memakai Dua Varian Transmisi yakni Sistem Transmisi Otomatis CVT dan Varian Sistem Transmisi Manual 5 Speed dengan sistem Keamanaan Mobil Honda Mobilio yang sudah sangat diandalkan karena sudah didukung oleh Sistem Keamanan dan Keselamatan dengan Standar yg tinggi seperti terdapatnya Dual SRS Airbags untuk All Tipe Mobil Mobilio, tlah menggunakan Sistem Pengereman ABS dan EBD, didalam Kursi atau Jok Duduk sudah ada Sealbelt dg Fitur Pretensioner Load Limiter yg berguna untuk melindungi tubuh agar tidak cedera saat terjadinya kecelakaan dan selanjutnya sudah ada Fitur Pedestrian Protector disemua tipe Mobil Honda Mobilio.', '2015', 8, '200000', 'Silver', 3, 'D 4912 ZFG', 0, 1, '2017-10-01 07:40:51'),
(6, 'Xenia', 'Daihatsu', 'Apalagi didalam Mobil Mobilio ini sudah menggunakan Sistem Suplai Bahan Bakar Merk PGM – FI yang berfungsi untuk memaksimalkan proses pembakaran Bahan Bakar Mesin menjadi lebih Ramah Lingkungan dan Hemat Bahan Bakar yang sudah di uji cobakan dengan catatan konsumsi mencapai 26.7 KM Per Liter sehingga menjadikan Mobil Mobilio sebagai Mobil Jenis Low MPV paling irit di Indonesia. Kemudian Kelebihan Mobil Honda Mobilio selanjutnya ialah sudah memakai Dua Varian Transmisi yakni Sistem Transmisi Otomatis CVT dan Varian Sistem Transmisi Manual 5 Speed dengan sistem Keamanaan Mobil Honda Mobilio yang sudah sangat diandalkan karena sudah didukung oleh Sistem Keamanan dan Keselamatan dengan Standar yg tinggi seperti terdapatnya Dual SRS Airbags untuk All Tipe Mobil Mobilio, tlah menggunakan Sistem Pengereman ABS dan EBD, didalam Kursi atau Jok Duduk sudah ada Sealbelt dg Fitur Pretensioner Load Limiter yg berguna untuk melindungi tubuh agar tidak cedera saat terjadinya kecelakaan dan selanjutnya sudah ada Fitur Pedestrian Protector disemua tipe Mobil Honda Mobilio.', '2015', 8, '200000', 'Silver', 3, 'D 4912 NFG', 0, 1, '2017-10-01 07:41:44');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `KODE_TRANSAKSI` varchar(125) NOT NULL,
  `ID_USER` int(11) DEFAULT NULL,
  `TGL_ORDER` datetime DEFAULT NULL,
  `TOTAL_PEMBAYARAN` decimal(10,0) DEFAULT NULL,
  `TGL_PEMBAYARAN` datetime DEFAULT NULL,
  `BUKTI_PEMBAYARAN` text,
  `STATUS_PEMBAYARAN` int(11) DEFAULT NULL,
  `STATUS_TRANSAKSI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `ID_USER` int(11) NOT NULL,
  `USERNAME` varchar(225) DEFAULT NULL,
  `NAME` varchar(225) NOT NULL,
  `EMAIL` varchar(225) DEFAULT NULL,
  `NO_TELP` varchar(20) DEFAULT NULL,
  `JENIS_KELAMIN` char(1) DEFAULT NULL,
  `ALAMAT` text,
  `PASSWORD` text,
  `PHOTO` text NOT NULL,
  `ACTIVATED` int(11) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `GROUP_USER` int(11) DEFAULT NULL,
  `LAST_LOGIN` datetime DEFAULT NULL,
  `LAST_UPDATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`ID_USER`, `USERNAME`, `NAME`, `EMAIL`, `NO_TELP`, `JENIS_KELAMIN`, `ALAMAT`, `PASSWORD`, `PHOTO`, `ACTIVATED`, `CREATED`, `GROUP_USER`, `LAST_LOGIN`, `LAST_UPDATE`) VALUES
(1, 'muhajirshiddiq1', 'Muhajir Shiddiq Al Faruqi', 'muhajirshiddiq@gmail.com', '089515061683', 'L', 'Kp Galumpit RT 01 Rw 11 Kelurahan Palasari Kec Cibiru Bandung', '37cd1b31928f36e207ec630a4de88f83', '150427045620170901025416.jpg', 1, '2017-09-01 02:50:38', 1, NULL, '2017-09-01 04:26:17'),
(3, 'muhajirshiddiq123456', 'Mutiara Tri Aprillian', 'muhajirshiddiq6666@gmail.com', '089515061683', 'P', 'Komp. Abdinegara II Blok N1 No 14 Desa Cileunyi Wetan Kec CIleunyi', '37cd1b31928f36e207ec630a4de88f83', '150427627120170901043111.jpg', 1, '2017-09-01 04:31:11', 1, NULL, '2017-09-01 04:32:07'),
(7, 'novia_sukmasarin', 'Novia Sukmasari', 'novia_sukmasarin@gmail.com', '089515061683', 'P', 'Bandung Barat', '37b9196e38c44ce855a649805e3bebb7', '', 1, '2017-10-04 05:17:13', 1, NULL, '2017-10-04 05:17:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_denda`
--
ALTER TABLE `tb_denda`
  ADD PRIMARY KEY (`ID_DENDA`),
  ADD KEY `FK_RELATIONSHIP_7` (`ID_DETAIL_TRANSAKSI`);

--
-- Indexes for table `tb_detail_transaksi`
--
ALTER TABLE `tb_detail_transaksi`
  ADD PRIMARY KEY (`ID_DETAIL_TRANSAKSI`),
  ADD KEY `FK_RELATIONSHIP_2` (`KODE_TRANSAKSI`),
  ADD KEY `FK_RELATIONSHIP_5` (`ID_MOBIL`);

--
-- Indexes for table `tb_fasilitas`
--
ALTER TABLE `tb_fasilitas`
  ADD PRIMARY KEY (`ID_FASILITAS`);

--
-- Indexes for table `tb_fasilitas_mobil`
--
ALTER TABLE `tb_fasilitas_mobil`
  ADD PRIMARY KEY (`ID_MOBIL`,`ID_FASILITAS`),
  ADD KEY `FK_RELATIONSHIP_4` (`ID_FASILITAS`);

--
-- Indexes for table `tb_gallery_mobil`
--
ALTER TABLE `tb_gallery_mobil`
  ADD PRIMARY KEY (`ID_GALLERY`),
  ADD KEY `FK_RELATIONSHIP_6` (`ID_MOBIL`);

--
-- Indexes for table `tb_mobil`
--
ALTER TABLE `tb_mobil`
  ADD PRIMARY KEY (`ID_MOBIL`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`KODE_TRANSAKSI`),
  ADD KEY `FK_RELATIONSHIP_1` (`ID_USER`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`ID_USER`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_denda`
--
ALTER TABLE `tb_denda`
  MODIFY `ID_DENDA` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_detail_transaksi`
--
ALTER TABLE `tb_detail_transaksi`
  MODIFY `ID_DETAIL_TRANSAKSI` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_fasilitas`
--
ALTER TABLE `tb_fasilitas`
  MODIFY `ID_FASILITAS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_gallery_mobil`
--
ALTER TABLE `tb_gallery_mobil`
  MODIFY `ID_GALLERY` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_mobil`
--
ALTER TABLE `tb_mobil`
  MODIFY `ID_MOBIL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `ID_USER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_denda`
--
ALTER TABLE `tb_denda`
  ADD CONSTRAINT `FK_RELATIONSHIP_7` FOREIGN KEY (`ID_DETAIL_TRANSAKSI`) REFERENCES `tb_detail_transaksi` (`ID_DETAIL_TRANSAKSI`);

--
-- Constraints for table `tb_detail_transaksi`
--
ALTER TABLE `tb_detail_transaksi`
  ADD CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`KODE_TRANSAKSI`) REFERENCES `tb_transaksi` (`KODE_TRANSAKSI`),
  ADD CONSTRAINT `FK_RELATIONSHIP_5` FOREIGN KEY (`ID_MOBIL`) REFERENCES `tb_mobil` (`ID_MOBIL`);

--
-- Constraints for table `tb_fasilitas_mobil`
--
ALTER TABLE `tb_fasilitas_mobil`
  ADD CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`ID_MOBIL`) REFERENCES `tb_mobil` (`ID_MOBIL`),
  ADD CONSTRAINT `FK_RELATIONSHIP_4` FOREIGN KEY (`ID_FASILITAS`) REFERENCES `tb_fasilitas` (`ID_FASILITAS`);

--
-- Constraints for table `tb_gallery_mobil`
--
ALTER TABLE `tb_gallery_mobil`
  ADD CONSTRAINT `FK_RELATIONSHIP_6` FOREIGN KEY (`ID_MOBIL`) REFERENCES `tb_mobil` (`ID_MOBIL`);

--
-- Constraints for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`ID_USER`) REFERENCES `tb_users` (`ID_USER`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
