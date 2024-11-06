-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 14 Okt 2024 pada 12.34
-- Versi server: 8.3.0
-- Versi PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-kasir-ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jual`
--

DROP TABLE IF EXISTS `tbl_jual`;
CREATE TABLE IF NOT EXISTS `tbl_jual` (
  `id_jual` int NOT NULL AUTO_INCREMENT,
  `no_faktur` varchar(15) DEFAULT NULL,
  `tgl_jual` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `grand_total` int DEFAULT NULL,
  `dibayar` int DEFAULT NULL,
  `kembalian` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  PRIMARY KEY (`id_jual`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tbl_jual`
--

INSERT INTO `tbl_jual` (`id_jual`, `no_faktur`, `tgl_jual`, `jam`, `grand_total`, `dibayar`, `kembalian`, `id_user`) VALUES
(7, '202410040002', '2024-10-04', '08:35:31', 25000, 30000, 5000, 1),
(6, '202410040001', '2024-10-04', '08:34:26', 75000, 80000, 5000, 1),
(5, '202410030001', '2024-10-03', '09:29:12', 125000, 200000, 75000, 1),
(8, '202410040003', '2024-10-04', '08:52:57', 36000, 50000, 14000, 1),
(16, '202410140002', '2024-10-14', '11:39:13', 49500, 50000, -44500, 4),
(15, '202410140001', '2024-10-14', '11:35:49', 714500, 800000, 85500, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

DROP TABLE IF EXISTS `tbl_kategori`;
CREATE TABLE IF NOT EXISTS `tbl_kategori` (
  `id_kategori` int NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Makanan'),
(2, 'Minuman'),
(3, 'Elektronik'),
(4, 'Alat Tulis Kantor'),
(5, 'Bumbu Masakan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_produk`
--

DROP TABLE IF EXISTS `tbl_produk`;
CREATE TABLE IF NOT EXISTS `tbl_produk` (
  `id_produk` int NOT NULL AUTO_INCREMENT,
  `kode_produk` varchar(25) DEFAULT NULL,
  `nama_produk` varchar(150) DEFAULT NULL,
  `id_kategori` int DEFAULT NULL,
  `id_satuan` int DEFAULT NULL,
  `harga_beli` int DEFAULT NULL,
  `harga_jual` int DEFAULT NULL,
  `stok` int DEFAULT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `kode_produk`, `nama_produk`, `id_kategori`, `id_satuan`, `harga_beli`, `harga_jual`, `stok`) VALUES
(1, '11111', 'Yakult', 2, 1, 8000, 12000, 85),
(2, '22222', 'Yogurt Cimori 250ml', 2, 1, 10000, 13500, 74),
(3, '33333', 'Sari Roti', 1, 1, 5000, 7000, 95),
(4, '44444', 'Jagabae Potato Stick Pouch', 1, 1, 20000, 25000, 91),
(5, '55555', 'Lays Nori Seawed Flavor', 1, 7, 30000, 36000, 98),
(6, '66666', 'Caramel Corn', 1, 7, 15000, 19500, 0),
(7, '77777', 'Cheetatos Pufs BBQ Stoak Flavor', 1, 7, 50000, 54500, 89),
(8, '88888', 'PRETTZ Pizza', 1, 7, 40500, 55000, 99),
(9, '99999', 'Pringles Sour Cream and Onion', 1, 7, 62000, 66000, 90),
(10, '11112', 'Jetz Shrim Udang Pedas', 1, 7, 80000, 95000, 90),
(11, '11113', 'Chocolate Popcorn', 1, 7, 7000, 8600, 100),
(12, '11114', 'Salted Egg Fish Skin Big', 1, 7, 8600, 12000, 0),
(13, '11115', 'Keripik Taro', 1, 7, 10500, 14500, 100),
(14, '11116', 'Keripik Kentang BBQ', 1, 7, 16500, 18700, 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rinci_jual`
--

DROP TABLE IF EXISTS `tbl_rinci_jual`;
CREATE TABLE IF NOT EXISTS `tbl_rinci_jual` (
  `id_rinci` int NOT NULL AUTO_INCREMENT,
  `no_faktur` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `kode_produk` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `modal` int DEFAULT NULL,
  `harga` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `total_harga` int DEFAULT NULL,
  `untung` int DEFAULT NULL,
  PRIMARY KEY (`id_rinci`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tbl_rinci_jual`
--

INSERT INTO `tbl_rinci_jual` (`id_rinci`, `no_faktur`, `kode_produk`, `modal`, `harga`, `qty`, `total_harga`, `untung`) VALUES
(13, '202410040003', '55555', 30000, 36000, 1, 36000, 6000),
(12, '202410040002', '44444', 20000, 25000, 1, 25000, 5000),
(11, '202410040001', '44444', 20000, 25000, 3, 75000, 15000),
(10, '202410030001', '44444', 20000, 25000, 5, 125000, 25000),
(19, '202410100002', '11112', 80000, 95000, 10, 950000, 150000),
(20, '202410140001', '77777', 50000, 54500, 1, 54500, 4500),
(16, '202410100003', '88888', 40500, 55000, 1, 55000, 14500),
(22, '202410140002', '55555', 30000, 36000, 1, 36000, 6000),
(21, '202410140001', '99999', 62000, 66000, 10, 660000, 40000),
(23, '202410140002', '22222', 10000, 13500, 1, 13500, 3500);

--
-- Trigger `tbl_rinci_jual`
--
DROP TRIGGER IF EXISTS `t_rinci_jual`;
DELIMITER $$
CREATE TRIGGER `t_rinci_jual` AFTER INSERT ON `tbl_rinci_jual` FOR EACH ROW BEGIN
	UPDATE tbl_produk SET stok = stok - NEW.qty
    WHERE kode_produk = NEW.kode_produk;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_satuan`
--

DROP TABLE IF EXISTS `tbl_satuan`;
CREATE TABLE IF NOT EXISTS `tbl_satuan` (
  `id_satuan` int NOT NULL AUTO_INCREMENT,
  `nama_satuan` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_satuan`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tbl_satuan`
--

INSERT INTO `tbl_satuan` (`id_satuan`, `nama_satuan`) VALUES
(1, 'PCS'),
(2, 'BOX'),
(3, 'Lusin'),
(4, 'Buah'),
(5, 'KG'),
(6, 'Unit'),
(7, 'BKS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_setting`
--

DROP TABLE IF EXISTS `tbl_setting`;
CREATE TABLE IF NOT EXISTS `tbl_setting` (
  `id` int NOT NULL,
  `nama_toko` varchar(25) DEFAULT NULL,
  `slogan` varchar(50) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `no_telepon` varchar(18) DEFAULT NULL,
  `deskripsi` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `nama_toko`, `slogan`, `alamat`, `no_telepon`, `deskripsi`) VALUES
(1, 'SipMart', 'Toko Lengkap Untuk Segala Kebutuhan', 'Jl. Raya Cineumbeuy No.1 Kec.Lebakawangi, Kab.Kuningan', '087788020790', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sollicitudin, nunc et ultrices tincidunt, nulla elit vestibulum libero, ut consequat massa nunc ut lacus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas vel nulla non turpis sodales suscipit. Integer feugiat, nunc vel vestibulum tristique, tortor libero interdum mauris, vel sollicitudin purus neque sit amet risus. Donec posuere leo a orci fermentum, at cursus tortor fermentum. Vivamus tincidunt libero vitae nisi iaculis, ut iaculis orci vestibulum. Sed sit amet magna sapien. Etiam ullamcorper sem in metus vulputate posuere. Quisque sit amet sollicitudin purus, et consectetur velit. Pellentesque varius purus eros, vel dictum ex feugiat id. In accumsan scelerisque risus, non interdum libero faucibus eget. Phasellus eu odio a mauris finibus iaculis.\r\n\r\nCras euismod elit purus, eget tempus ex iaculis sed. Phasellus quis orci at augue venenatis ultricies. Nullam sit amet suscipit leo, et interdum erat. Vivamus in libero non ligula scelerisque fringilla. Duis non vulputate velit, a faucibus enim. Curabitur volutpat, odio at interdum rutrum, dui metus pharetra nulla, ut efficitur felis quam quis eros. Integer semper dui et justo dignissim viverra. Sed non nisi lacus. Duis vehicula lectus vel ligula ullamcorper, quis venenatis ante bibendum.\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` int NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `email`, `password`, `level`) VALUES
(1, 'Mas Boy', 'masboy@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1),
(2, 'edi ', 'edi@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1),
(4, 'budi', 'budi@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
