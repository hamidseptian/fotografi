-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2021 at 12:32 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fotografi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama_admin` varchar(40) NOT NULL,
  `jabatan` varchar(35) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama_admin`, `jabatan`, `username`, `password`, `level`) VALUES
(23, 'Dicky Juliam', 'Manager Operasional', '11', '11', 'Admin'),
(27, 'Dicky Julian', 'Manager', '22', '22', 'Operator');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(11) NOT NULL,
  `id_pelanggan` varchar(20) NOT NULL,
  `id_paket` varchar(20) NOT NULL,
  `kegiatan` text NOT NULL,
  `tanggal_mulai` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `lama_acara` int(3) NOT NULL,
  `tanggal_selesai` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tanggal_booking` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(25) NOT NULL,
  `id_tagihan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `id_pelanggan`, `id_paket`, `kegiatan`, `tanggal_mulai`, `lama_acara`, `tanggal_selesai`, `tanggal_booking`, `status`, `id_tagihan`) VALUES
(1, '1', '2', 'makan', '2021-07-29 10:28:33', 2, '2021-07-31 05:00:00', '2021-07-25 22:00:11', 'Diterima Pelanggan', '1'),
(2, '1', '3', 'menari', '2021-07-29 15:06:20', 2, '2021-07-27 05:00:00', '2021-07-25 22:00:11', 'Selesai', '1'),
(3, '1', '3', '5', '2021-07-26 10:09:35', 2, '2021-07-29 05:12:00', '2021-07-25 22:09:35', 'Order', '2'),
(4, '1', '2', '1245', '2021-07-29 15:06:41', 22, '2021-08-18 05:21:00', '2021-07-29 00:17:11', 'Diterima Pelanggan', '3'),
(5, '1', '3', 'A', '2021-07-29 14:06:29', 1, '2021-07-22 14:02:00', '2021-07-29 02:06:29', 'Order', '4'),
(6, '1', '3', 'd', '2021-07-29 14:57:37', 1, '2021-07-26 11:00:00', '2021-07-29 02:57:37', 'Order', '5');

-- --------------------------------------------------------

--
-- Table structure for table `cetak_foto`
--

CREATE TABLE `cetak_foto` (
  `id_cetak` int(4) NOT NULL,
  `id_pelanggan` varchar(10) NOT NULL,
  `id_he` varchar(10) NOT NULL,
  `id_hc` varchar(10) NOT NULL,
  `with_frame` varchar(10) NOT NULL,
  `qty` int(3) NOT NULL,
  `order_via` varchar(15) NOT NULL,
  `waktu_pesan` varchar(25) NOT NULL,
  `status` varchar(20) NOT NULL,
  `foto` text NOT NULL,
  `bersihkan` varchar(15) NOT NULL,
  `id_file` varchar(10) NOT NULL,
  `id_tagihan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cetak_foto`
--

INSERT INTO `cetak_foto` (`id_cetak`, `id_pelanggan`, `id_he`, `id_hc`, `with_frame`, `qty`, `order_via`, `waktu_pesan`, `status`, `foto`, `bersihkan`, `id_file`, `id_tagihan`) VALUES
(1, '1', '1', '3', '', 1, 'Online', '2021-07-24 09:18:18', 'Selesai', '210724091812kochenk.jpg', '', '', '1'),
(2, '1', '', '3', '', 1, 'Online', '2021-07-24 09:25:58', 'Selesai', '210724092550Capture.PNG', '', '', '4'),
(3, '1', '', '2', '', 2, 'Online', '2021-07-24 11:12:26', 'Selesai', '210724111221padi.jpg', '', '', '2'),
(4, '1', '', '2', '', 2, 'Online', '2021-07-24 11:26:47', 'Diterima Pelanggan', '210724112625kochenk.jpg', '', '', '3'),
(5, '1', '', '3', '', 1, 'Online', '2021-07-24 11:58:38', 'Diterima Pelanggan', '210724115817sampulbuku1.jpg', '', '', '4'),
(6, '1', '', '4', '', 1, 'Online', '2021-07-24 11:58:38', 'Selesai', '210724115827kochenk.jpg', '', '', '4');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `post` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `foto`, `post`) VALUES
(15, '20200713092848m1.PNG', '2020-07-12 17:00:00'),
(17, '20200713092848ms1.PNG', '2020-07-12 17:00:00'),
(18, '20200713092848ms2.PNG', '2020-07-12 17:00:00'),
(25, '20200713092848z3.PNG', '2020-07-12 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `harga_cetak`
--

CREATE TABLE `harga_cetak` (
  `id_hc` int(11) NOT NULL,
  `ukuran` varchar(25) NOT NULL,
  `keterangan` varchar(25) NOT NULL,
  `tanpa_frame` int(12) NOT NULL,
  `dengan_frame` int(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `harga_cetak`
--

INSERT INTO `harga_cetak` (`id_hc`, `ukuran`, `keterangan`, `tanpa_frame`, `dengan_frame`) VALUES
(2, 'pas foto', '3x4', 2000, 30000),
(3, '10R', '-', 10000, 25000),
(4, '20R', '-', 50000, 70000);

-- --------------------------------------------------------

--
-- Table structure for table `harga_edit`
--

CREATE TABLE `harga_edit` (
  `id_he` int(11) NOT NULL,
  `nama_edit` varchar(25) NOT NULL,
  `harga_edit` int(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `harga_edit`
--

INSERT INTO `harga_edit` (`id_he`, `nama_edit`, `harga_edit`) VALUES
(1, 'Gant Backgroun', 14000),
(2, 'Buat Jaz', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(25) NOT NULL,
  `bisa_booking` varchar(10) NOT NULL,
  `lama_potret` varchar(25) NOT NULL,
  `jenis_waktu` varchar(10) NOT NULL,
  `level_paket` varchar(15) NOT NULL,
  `biaya` int(12) NOT NULL,
  `fasilitas` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id_paket`, `nama_paket`, `bisa_booking`, `lama_potret`, `jenis_waktu`, `level_paket`, `biaya`, `fasilitas`) VALUES
(2, 'wisuda aaa', 'Ya', '6000', 'Menit', 'Deluxe', 90000, '                    ini dan itu                  '),
(3, 'wisuda', 'Ya', '5', 'Jam', 'Exclusive', 100000, '                     ini <br />\r\nitu<br />\r\ndan ini itu <br />\r\ngood                                    '),
(4, 'AA', 'Ya', '1', 'Hari', 'Exclusive', 500000, 'regverg'),
(5, 'Baralek', 'Ya', '1', 'Jam', 'Exclusive', 5000000, 'foto 10R 2 buah<br />\r\nalbum book<br />\r\nfile');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `alamat_pelanggan` text NOT NULL,
  `nohp_pelanggan` varchar(16) NOT NULL,
  `email_pelanggan` text NOT NULL,
  `password` text NOT NULL,
  `reg_via` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `nohp_pelanggan`, `email_pelanggan`, `password`, `reg_via`) VALUES
(1, 'Udin Penyok', 'Padang city', '081212121212', '11', '11', 'Offline'),
(2, 'Hamid Septian', 'marnasi', '0812', '123', '123', 'Offline'),
(3, 'fwefew', 'fwefwefew', '5345', '1@1', '', 'Offline'),
(4, 'dsfcvqdfcsd', 'dsvsd', '34324', 'dvsd@dfsdfs', '123', 'Offline'),
(5, 'Rizky Efendy', 'alay', '081212121212', 'pp', 'pp', 'Online'),
(6, 'Pak amu', 'stmik', '123456', 'www', '123', 'Offline');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_tagihan` varchar(5) NOT NULL,
  `id_pelanggan` varchar(5) NOT NULL,
  `id_rekening` varchar(5) NOT NULL,
  `jumlah_pembayaran` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `bayar_via` varchar(20) NOT NULL,
  `file` text NOT NULL,
  `waktu_bayar` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_tagihan`, `id_pelanggan`, `id_rekening`, `jumlah_pembayaran`, `keterangan`, `bayar_via`, `file`, `waktu_bayar`, `status`) VALUES
(1, '1', '1', '', 300000, 'Lunas', 'Tunai', '', '2021-07-25 22:00:52', 'Acc'),
(2, '1', '1', '', 8000, 'Lunas', 'Tunai', '', '2021-07-25 22:00:58', 'Acc'),
(3, '1', '1', '', 72000, 'Lunas', 'Tunai', '', '2021-07-25 22:01:01', 'Acc'),
(4, '', '1', '2', 200000, '', 'Transfer', '20210726050946Capture.PNG', '2021-07-25 22:09:46', 'Pengecekan'),
(5, '2', '1', '2', 200000, '', 'Transfer', '20210726051009padi.jpg', '2021-07-26 10:10:26', 'Acc'),
(6, '5', '1', '', 100000, 'Lunas', 'Tunai', '', '2021-07-29 02:57:51', 'Acc'),
(7, '3', '1', '', 198000, 'Lunas', 'Tunai', '', '2021-07-29 03:03:20', 'Acc'),
(8, '3', '1', '', 1782000, 'Lunas', 'Tunai', '', '2021-07-29 03:06:30', 'Acc');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` int(11) NOT NULL,
  `no_rek` varchar(40) NOT NULL,
  `namabank` varchar(25) NOT NULL,
  `kodebank` varchar(4) NOT NULL,
  `namarekening` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id_rekening`, `no_rek`, `namabank`, `kodebank`, `namarekening`) VALUES
(2, '235634', 'BRI', '005', 'Faisal'),
(3, '5346', 'Mandiei', '002', 'Hamid Septian'),
(4, '423', 'BCA', '013', 'Udin');

-- --------------------------------------------------------

--
-- Table structure for table `tagihan`
--

CREATE TABLE `tagihan` (
  `id_tagihan` int(11) NOT NULL,
  `id_pelanggan` varchar(5) NOT NULL,
  `nama_tagihan` varchar(30) NOT NULL,
  `jumlah_tagihan` int(11) NOT NULL,
  `waktu_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `berakhir_pembayaran` varchar(25) NOT NULL,
  `metode_pembayaran` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tagihan`
--

INSERT INTO `tagihan` (`id_tagihan`, `id_pelanggan`, `nama_tagihan`, `jumlah_tagihan`, `waktu_create`, `berakhir_pembayaran`, `metode_pembayaran`) VALUES
(1, '1', 'Order Paket', 380000, '2021-07-25 22:00:11', '2021-07-29', 'Tunai'),
(2, '1', 'Order Paket', 200000, '2021-07-25 22:09:35', '2021-07-29', 'Transfer'),
(3, '1', 'Order Paket', 1980000, '2021-07-29 00:17:11', '2021-08-01', 'Tunai'),
(4, '1', 'Order Paket', 100000, '2021-07-29 02:06:29', '2021-08-01', 'Tunai'),
(5, '1', 'Order Paket', 100000, '2021-07-29 02:57:37', '2021-08-01', 'Tunai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `cetak_foto`
--
ALTER TABLE `cetak_foto`
  ADD PRIMARY KEY (`id_cetak`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `harga_cetak`
--
ALTER TABLE `harga_cetak`
  ADD PRIMARY KEY (`id_hc`);

--
-- Indexes for table `harga_edit`
--
ALTER TABLE `harga_edit`
  ADD PRIMARY KEY (`id_he`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `tagihan`
--
ALTER TABLE `tagihan`
  ADD PRIMARY KEY (`id_tagihan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cetak_foto`
--
ALTER TABLE `cetak_foto`
  MODIFY `id_cetak` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `harga_cetak`
--
ALTER TABLE `harga_cetak`
  MODIFY `id_hc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `harga_edit`
--
ALTER TABLE `harga_edit`
  MODIFY `id_he` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tagihan`
--
ALTER TABLE `tagihan`
  MODIFY `id_tagihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;