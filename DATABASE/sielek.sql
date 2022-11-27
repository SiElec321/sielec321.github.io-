-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2022 at 04:40 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sielek`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('owner','admin') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `nama_lengkap`, `password`, `level`) VALUES
(7, 'owner', 'owner', '$2y$10$JaY3k3LTvRmTaX1eTlWdwOX2NW407m3cNvSuo1wx1H9tkvNl8/GgW', 'owner'),
(8, 'admin', 'admin', '$2y$10$LVVjAl6rgIZCEZImfKLd4uHR70KMM2fxJfnUhl5D2zHz0UrF74lc2', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `sub_1` varchar(20) NOT NULL,
  `sub_2` varchar(20) NOT NULL,
  `sub_3` varchar(20) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id`, `nama`, `kategori`, `sub_1`, `sub_2`, `sub_3`, `harga_beli`, `harga_jual`, `stok`) VALUES
(94, 'Electrolux EWF8025', 'Mesin Cuci', 'EWF8025 8kg 350W', '', '', 5500000, 5900000, 11),
(93, 'LG HO5TN4', 'AC', 'HO5TN4 1/2PK 240V', '', '', 2300000, 2520000, 5),
(92, 'Changhong CHOL-05L3', 'AC', 'CHOL-05L3 1 1/2PK 42', '', '', 2300000, 2500000, 18),
(91, 'Sanken SK-VC173F', 'Kulkas', 'SK-VC173F 220V 80W', '', '', 1600000, 1780000, 12),
(90, 'CHiQ CCF118DW', 'Kulkas', 'CCF118DW 220V 60W', '', '', 1700000, 1900000, 8),
(89, 'Sharp SJ-X165MG', 'Kulkas', 'SJ-X165MG 240V 84W', '', '', 1300000, 1470000, 20),
(88, 'Hisense RR120D4IGN', 'Kulkas', 'RR120D4IGN 240V 80W', '', '', 1200000, 1350000, 7),
(87, 'KADONIO E27', 'Lampu', 'E27 90-250V 9W', '', '', 79000, 99000, 27),
(86, 'HAN RIVER JB-80', 'Vacum Cleaner', 'JB-80 12V 4000mAh', '', '', 180000, 220000, 3),
(85, 'HAN RIVER HRSDJ03', 'Vacum Cleaner', 'HRXDJ02BK 3,7V 1500m', '', '', 168000, 198500, 31),
(84, 'HAN RIVER HRXCQ01BK', 'Vacum Cleaner', 'HRXCQ01BK 8,6 V 160W', '', '', 239000, 260000, 25),
(83, 'HAN RIVER HRPBJ01 ', 'Blender', 'HRPBJ01 220V 300W', '', '', 199000, 240000, 28),
(82, 'HAN RIVER HRJRJ-S2BK', 'Blender', 'HRJRJ-S2BK 220V 250W', '', '', 160000, 179000, 20),
(81, 'HAN RIVER HRDDQ08PK', 'Mixer', 'HRDDQ08PK 180W', '', '', 75000, 89000, 24),
(80, 'HAN RIVER HE-133', 'Mixer', 'HE-133 220V 120W', '', '', 40000, 67000, 9),
(79, 'HAN RIVER HRDDQ-008', 'Mixer', 'HRDDQ-002 120W', '', '', 70000, 90000, 12),
(78, 'HAN RIVER HRRC-0001', 'Rice Cooker', 'HRRC01GD 220V 900W', '', '', 275000, 310000, 15),
(77, 'HAN RIVER HRRC04', 'Rice Cooker', 'HRRC04BK/PK 220V 400', '', '', 275000, 300000, 17),
(76, 'HAN RIVER HRRC03', 'Rice Cooker', 'HRRC03 0,8L 220V', '', '', 180000, 194000, 26),
(75, 'HAN RIVER 2in1', 'Catokan Rambut', 'HRJFB03 50-230C 30-4', '', '', 98000, 109000, 15),
(74, 'HAN RIVER YX-889', 'Catokan Rambut', 'ABS DC5V 34W ', '', '', 250000, 279000, 12),
(73, 'HAN RIVER HRHD03GN', 'Hair Dryer', '22-D-000412 220V 800', '', '', 89000, 99000, 11),
(71, 'HAN RIVER HRHD02BK', 'Hair Dryer', 'HRHD02BK 220V 800W', '', '', 65000, 77000, 14),
(72, 'HAN RIVER HRHD01BK', 'Hair Dryer', '22-D-000413 220V 800', '', '', 70000, 78000, 9),
(95, 'Samsung WA80H4200SW', 'Mesin Cuci', 'WA80H4200SW 8kg 240W', '', '', 2200000, 2600000, 5),
(96, 'Denpoo DW8907', 'Mesin Cuci', 'DW8907 8kg 220V 370W', '', '', 1000000, 1300000, 3),
(97, 'Nagoya NG-1803SF', 'Kipas Angin', 'NG-1803SF 75W 220V', '', '', 200000, 260000, 8),
(98, 'GOTO Portabel USB', 'Kipas Angin', 'Portabel USB 1.080mA', '', '', 59000, 65000, 7),
(99, 'Mixio Folding Fan F3', 'Kipas Angin', 'F3 5V 2A 4,5W', '', '', 270000, 300000, 7),
(100, 'Changhong L32G7N 32inch', 'TV', 'L32G7N 32inch 45W ', '', '', 1500000, 1900000, 4),
(101, 'Xiaomi A2 32inch', 'TV', 'A2 32inch 55W', '', '', 1800000, 2100000, 6),
(102, 'Samsung UA24T4003 24inch', 'TV', 'UA24T4003 24inch 45W', '', '', 1400000, 1700000, 3),
(103, 'COOCAA 32s3u', 'TV', '32s3u 60W 32inch', '', '', 1580000, 1700000, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_pembelian`
--

CREATE TABLE `tbl_detail_pembelian` (
  `no` int(11) NOT NULL,
  `nonota` varchar(100) NOT NULL,
  `id_brg` varchar(100) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `jml_brg` varchar(100) NOT NULL,
  `harga_brg` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_pembelian`
--

INSERT INTO `tbl_detail_pembelian` (`no`, `nonota`, `id_brg`, `nama_brg`, `jml_brg`, `harga_brg`) VALUES
(27, '1000', '76', 'HAN RIVER HRRC03', '20', '180000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_penjualan`
--

CREATE TABLE `tbl_detail_penjualan` (
  `no` int(11) NOT NULL,
  `nonota` varchar(100) NOT NULL,
  `id_brg` varchar(100) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `jml_brg` varchar(100) NOT NULL,
  `harga_brg` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_penjualan`
--

INSERT INTO `tbl_detail_penjualan` (`no`, `nonota`, `id_brg`, `nama_brg`, `jml_brg`, `harga_brg`) VALUES
(46, '1001', '98', 'GOTO Portabel USB', '10', '65000'),
(45, '1001', '72', 'HAN RIVER HRHD01BK', '3', '78000'),
(44, '1000', '87', 'KADONIO E27', '3', '99000'),
(43, '1000', '77', 'HAN RIVER HRRC04', '1', '300000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurnal_umum`
--

CREATE TABLE `tbl_jurnal_umum` (
  `no` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_perkiraan` varchar(45) NOT NULL,
  `debet` int(11) NOT NULL,
  `kredit` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jurnal_umum`
--

INSERT INTO `tbl_jurnal_umum` (`no`, `tanggal`, `nama_perkiraan`, `debet`, `kredit`, `keterangan`) VALUES
(50, '2022-11-27', 'Kas', 0, 0, 'Hutang Dagang Pembelian Kredit'),
(49, '2022-11-27', 'Hutang Dagang', 0, 3600000, 'Pembelian Kredit'),
(48, '2022-11-27', 'Pembelian', 3600000, 0, ''),
(47, '2022-11-01', 'Modal Owner', 0, 673400000, ''),
(46, '2022-11-01', 'Kendaraan', 300000000, 0, ''),
(45, '2022-11-01', 'Perlengkapan', 140000, 0, ''),
(43, '2022-11-01', 'Inventaris', 200000, 0, ''),
(44, '2022-11-01', 'Persediaan Barang', 273060000, 0, ''),
(42, '2022-11-01', 'Kas', 100000000, 0, ''),
(41, '2022-11-27', 'Penjualan', 0, 1481000, ''),
(40, '2022-11-27', 'Kas', 1481000, 0, 'Penjualan'),
(51, '2022-11-30', 'Beban Persediaan', 275179000, 0, ''),
(52, '2022-11-30', 'Persediaan Barang', 0, 275179000, 'Akhir');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `kategori`) VALUES
(10, 'Rice Cooker'),
(9, 'Catokan Rambut'),
(8, 'Hair Dryer'),
(11, 'Mixer'),
(12, 'Blender'),
(13, 'Vacum Cleaner'),
(14, 'Lampu'),
(15, 'Kulkas'),
(16, 'AC'),
(17, 'Mesin Cuci'),
(18, 'Kipas Angin'),
(19, 'TV');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `no` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`no`, `nama`, `alamat`, `no_hp`) VALUES
(4, 'Tegar Putra Fajar', 'Jl. Cempaka Sari No.14, Banaran, Sekaran, Kota Semarang', '081286772430'),
(5, 'Abdul Ghani', 'Jl. H. Agus Salim RT 04/RW 05, Lubuk Basung, Padang', '085272316620'),
(6, 'Yahya Arix', 'Jl. Sukaasih Atas RT 06/ RW 07, Bandungn', '082386309874'),
(7, 'Pembeli Tunai', 'none', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembelian`
--

CREATE TABLE `tbl_pembelian` (
  `no` int(11) NOT NULL,
  `no_beli` varchar(100) NOT NULL,
  `total` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `keterangan` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pembelian`
--

INSERT INTO `tbl_pembelian` (`no`, `no_beli`, `total`, `tanggal`, `waktu`, `keterangan`) VALUES
(23, '1000', 3600000, '2022-11-27', '2022-11-27 09:36:11', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penjualan`
--

CREATE TABLE `tbl_penjualan` (
  `no` int(11) NOT NULL,
  `nonota` varchar(100) NOT NULL,
  `kode_pel` varchar(16) NOT NULL,
  `diskon` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `garansi` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_penjualan`
--

INSERT INTO `tbl_penjualan` (`no`, `nonota`, `kode_pel`, `diskon`, `total`, `tanggal`, `waktu`, `garansi`) VALUES
(41, '1001', '5', 0, 884000, '2022-11-27', '2022-11-27 09:27:09', '6'),
(40, '1000', '4', 0, 597000, '2022-11-27', '2022-11-27 09:24:39', '6');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ref`
--

CREATE TABLE `tbl_ref` (
  `id` int(11) NOT NULL,
  `no_ref` int(11) NOT NULL,
  `nama_perkiraan` varchar(100) NOT NULL,
  `posisi` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ref`
--

INSERT INTO `tbl_ref` (`id`, `no_ref`, `nama_perkiraan`, `posisi`) VALUES
(1, 101, 'Kas', 'Aktiva Lancar'),
(2, 102, 'Piutang Pegawai', ''),
(3, 103, 'Piutang Dagang', 'Aktiva Lancar'),
(4, 104, 'Persediaan Barang', 'Aktiva Lancar'),
(5, 105, 'Sewa dibayar di muka ', 'Aktiva Lancar'),
(6, 106, 'Perlengkapan', 'Aktiva Lancar'),
(7, 107, 'Inventaris', 'Aktiva Tetap'),
(9, 108, 'Akum.Peny.Inventaris', ''),
(8, 109, 'Kendaraan', 'Aktiva Tetap'),
(10, 110, 'Akum.Peny.Kendaraan', ''),
(11, 111, 'Bangunan', 'Aktiva Tetap'),
(12, 112, 'Akum.Peny Bangunan', ''),
(13, 113, 'Tanah', 'Aktiva Tetap'),
(14, 201, 'Hutang Dagang', 'Pasiva'),
(15, 202, 'Hutang Bank', 'Pasiva'),
(16, 203, 'Hutang Gaji', 'Pasiva'),
(17, 301, 'Modal Owner', ''),
(18, 302, 'Prive Owner', ''),
(19, 501, 'Biaya Pembelian', 'Rugi-Laba'),
(20, 502, 'Biaya Servis Kendaraan', 'Rugi-Laba'),
(21, 503, 'Biaya Gaji', 'Rugi-Laba'),
(22, 504, 'Biaya Rek Air', 'Rugi-Laba'),
(23, 505, 'Biaya Peny.Inventaris', 'Rugi-Laba'),
(24, 506, 'Biaya Peny.Kendaraan', 'Rugi-Laba'),
(25, 507, 'Biaya Peny.Bangunan', 'Rugi-Laba'),
(26, 508, 'Biaya Angkut', 'Rugi-Laba'),
(27, 509, 'Biaya Listrik & Telepon', 'Rugi-Laba'),
(28, 510, 'Biaya lain-lain', 'Rugi-Laba'),
(29, 401, 'Pembelian', ''),
(30, 402, 'Penjualan', ''),
(31, 403, 'Diskon Penjualan', ''),
(32, 509, 'Beban Persediaan', ''),
(33, 601, 'Pendapatan Lain-lain', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_so`
--

CREATE TABLE `tbl_so` (
  `id` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(60) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `beli` int(11) NOT NULL,
  `jual` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_so`
--

INSERT INTO `tbl_so` (`id`, `id_brg`, `nama_brg`, `tanggal`, `beli`, `jual`) VALUES
(300, 76, 'HAN RIVER HRRC03', '2022-11-27', 20, 0),
(299, 98, 'GOTO Portabel USB', '2022-11-27', 0, 10),
(298, 72, 'HAN RIVER HRHD01BK', '2022-11-27', 0, 3),
(297, 87, 'KADONIO E27', '2022-11-27', 0, 3),
(296, 77, 'HAN RIVER HRRC04', '2022-11-27', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_kategori`
--

CREATE TABLE `tbl_sub_kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `sub_kategori` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_kategori`
--

INSERT INTO `tbl_sub_kategori` (`id`, `kategori`, `sub_kategori`) VALUES
(74, 'Vacum Cleaner', 'JB-80 12V 4000mAh'),
(73, 'Vacum Cleaner', 'HRXDJ02BK 3,7V 1500mAh'),
(72, 'Vacum Cleaner', 'HRXCQ01BK 8,6 V 160W'),
(71, 'Blender', 'HRPBJ01 220V 300W'),
(70, 'Blender', 'HRJRJ-S2BK 220V 250W'),
(69, 'Mixer', 'HRDDQ08PK 180W'),
(68, 'Mixer', 'HE-133 220V 120W'),
(67, 'Mixer', 'HRDDQ-002 120W'),
(66, 'Rice Cooker', 'HRRC01GD 220V 900W'),
(65, 'Rice Cooker', 'HRRC04BK/PK 220V 400W'),
(64, 'Rice Cooker', 'HRRC03 0,8L 220V'),
(62, 'Catokan Rambut', 'HRJFB03 50-230C 30-45W'),
(61, 'Catokan Rambut', 'ABS DC5V 34W '),
(60, 'Hair Dryer', '22-D-000412 220V 800W'),
(59, 'Hair Dryer', '22-D-000413 220V 800W'),
(58, 'Hair Dryer', 'HRHD02BK 220V 800W'),
(75, 'Lampu', 'E27 90-250V 9W'),
(76, 'Kulkas', 'RR120D4IGN 240V 80W'),
(77, 'Kulkas', 'SJ-X165MG 240V 84W'),
(78, 'Kulkas', 'CCF118DW 220V 60W'),
(79, 'Kulkas', 'SK-VC173F 220V 80W'),
(80, 'AC', 'CHOL-05L3 1 1/2PK 420W'),
(81, 'AC', 'HO5TN4 1/2PK 240V'),
(82, 'Mesin Cuci', 'EWF8025 8kg 350W'),
(83, 'Mesin Cuci', 'WA80H4200SW 8kg 240W'),
(84, 'Mesin Cuci', 'DW8907 8kg 220V 370W'),
(85, 'Kipas Angin', 'NG-1803SF 75W 220V'),
(86, 'Kipas Angin', 'Portabel USB 1.080mAh 3,5W'),
(87, 'Kipas Angin', 'F3 5V 2A 4,5W'),
(88, 'TV', 'L32G7N 32inch 45W '),
(89, 'TV', 'A2 32inch 55W'),
(90, 'TV', 'UA24T4003 24inch 45W'),
(91, 'TV', '32s3u 60W 32inch');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_beli`
--

CREATE TABLE `tbl_temp_beli` (
  `no` int(11) NOT NULL,
  `sess_id` varchar(255) NOT NULL,
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_tt`
--

CREATE TABLE `tbl_temp_tt` (
  `no` int(11) NOT NULL,
  `id` varchar(15) NOT NULL,
  `sess_id` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_detail_pembelian`
--
ALTER TABLE `tbl_detail_pembelian`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_detail_penjualan`
--
ALTER TABLE `tbl_detail_penjualan`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_jurnal_umum`
--
ALTER TABLE `tbl_jurnal_umum`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_ref`
--
ALTER TABLE `tbl_ref`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_so`
--
ALTER TABLE `tbl_so`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sub_kategori`
--
ALTER TABLE `tbl_sub_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_temp_beli`
--
ALTER TABLE `tbl_temp_beli`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_temp_tt`
--
ALTER TABLE `tbl_temp_tt`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `tbl_detail_pembelian`
--
ALTER TABLE `tbl_detail_pembelian`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_detail_penjualan`
--
ALTER TABLE `tbl_detail_penjualan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_jurnal_umum`
--
ALTER TABLE `tbl_jurnal_umum`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_ref`
--
ALTER TABLE `tbl_ref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_so`
--
ALTER TABLE `tbl_so`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `tbl_sub_kategori`
--
ALTER TABLE `tbl_sub_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `tbl_temp_beli`
--
ALTER TABLE `tbl_temp_beli`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_temp_tt`
--
ALTER TABLE `tbl_temp_tt`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
