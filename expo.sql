-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jun 2024 pada 10.25
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bahan`
--

CREATE TABLE `bahan` (
  `id_bahan` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bahan`
--

INSERT INTO `bahan` (`id_bahan`, `nama`) VALUES
(1, 'Vitamin C'),
(2, 'Asam Hialuronat'),
(3, 'Niacinamide'),
(4, 'Ekstrak Aloe Vera'),
(5, 'Retinol'),
(6, 'Asam Salisilat'),
(7, 'Ekstrak Teh Hijau'),
(8, 'Shea Butter'),
(9, 'Peptida'),
(10, 'Ceramides');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemasukan`
--

CREATE TABLE `pemasukan` (
  `id_pemasukan` int(11) NOT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `tanggal_pemasukan` date DEFAULT NULL,
  `jumlah` decimal(10,2) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pemasukan`
--

INSERT INTO `pemasukan` (`id_pemasukan`, `id_produk`, `tanggal_pemasukan`, `jumlah`, `deskripsi`) VALUES
(1, 1, '2024-01-03', 25000000.00, 'Pemasukan dari penjualan Serum Pencerah GlowRX online'),
(2, 2, '2024-01-10', 18000000.00, 'Pemasukan dari penjualan Pelembab GlowRX di toko-toko offline'),
(3, 3, '2024-01-17', 30000000.00, 'Pemasukan dari penjualan Krim Anti-Aging GlowRX melalui situs resmi'),
(4, 4, '2024-01-24', 20000000.00, 'Pemasukan dari penjualan Scrub Eksfoliasi GlowRX di pasar lokal'),
(5, 5, '2024-01-31', 15000000.00, 'Pemasukan dari penjualan Sunscreen SPF 50 GlowRX melalui agen distribusi'),
(6, 6, '2024-02-07', 22000000.00, 'Pemasukan dari penjualan Krim Malam GlowRX di salon kecantikan'),
(7, 7, '2024-02-14', 19000000.00, 'Pemasukan dari penjualan Serum Mata GlowRX di toko online'),
(8, 8, '2024-02-21', 17000000.00, 'Pemasukan dari penjualan Foam Pembersih GlowRX melalui situs e-commerce'),
(9, 9, '2024-02-28', 14000000.00, 'Pemasukan dari penjualan Toner GlowRX di beberapa outlet kecantikan'),
(10, 10, '2024-03-06', 12000000.00, 'Pemasukan dari penjualan Lip Balm GlowRX di acara pameran kecantikan'),
(11, 1, '2024-03-13', 28000000.00, 'Pemasukan dari penjualan Serum Pencerah GlowRX melalui program promo online'),
(12, 2, '2024-03-20', 21000000.00, 'Pemasukan dari penjualan Pelembab GlowRX di gerai resmi'),
(13, 3, '2024-03-27', 32000000.00, 'Pemasukan dari penjualan Krim Anti-Aging GlowRX melalui agen distribusi besar'),
(14, 4, '2024-04-03', 23000000.00, 'Pemasukan dari penjualan Scrub Eksfoliasi GlowRX di toko-toko besar'),
(15, 5, '2024-04-10', 18000000.00, 'Pemasukan dari penjualan Sunscreen SPF 50 GlowRX di toko online internasional'),
(16, 6, '2024-04-17', 24000000.00, 'Pemasukan dari penjualan Krim Malam GlowRX di pusat perbelanjaan terkenal'),
(17, 7, '2024-04-24', 20000000.00, 'Pemasukan dari penjualan Serum Mata GlowRX melalui jaringan distributor'),
(18, 8, '2024-05-01', 15000000.00, 'Pemasukan dari penjualan Foam Pembersih GlowRX di toko-toko kecantikan'),
(19, 9, '2024-05-08', 13000000.00, 'Pemasukan dari penjualan Toner GlowRX di gerai resmi'),
(20, 10, '2024-05-15', 10000000.00, 'Pemasukan dari penjualan Lip Balm GlowRX melalui situs e-commerce'),
(21, 1, '2024-05-22', 30000000.00, 'Pemasukan dari penjualan Serum Pencerah GlowRX di toko-toko besar'),
(22, 2, '2024-05-29', 25000000.00, 'Pemasukan dari penjualan Pelembab GlowRX melalui program promo online'),
(23, 3, '2024-06-05', 35000000.00, 'Pemasukan dari penjualan Krim Anti-Aging GlowRX di pusat perbelanjaan'),
(24, 4, '2024-06-12', 27000000.00, 'Pemasukan dari penjualan Scrub Eksfoliasi GlowRX melalui situs resmi'),
(25, 5, '2024-06-19', 21000000.00, 'Pemasukan dari penjualan Sunscreen SPF 50 GlowRX di toko-toko besar'),
(26, 6, '2024-06-26', 23000000.00, 'Pemasukan dari penjualan Krim Malam GlowRX melalui agen distribusi besar'),
(27, 7, '2024-07-03', 19000000.00, 'Pemasukan dari penjualan Serum Mata GlowRX di salon kecantikan'),
(28, 8, '2024-07-10', 17000000.00, 'Pemasukan dari penjualan Foam Pembersih GlowRX melalui situs e-commerce'),
(29, 9, '2024-07-17', 14000000.00, 'Pemasukan dari penjualan Toner GlowRX di outlet-outlet kecantikan'),
(30, 10, '2024-07-24', 11000000.00, 'Pemasukan dari penjualan Lip Balm GlowRX di gerai resmi'),
(31, 1, '2024-07-31', 32000000.00, 'Pemasukan dari penjualan Serum Pencerah GlowRX di toko online terkemuka'),
(32, 2, '2024-08-07', 26000000.00, 'Pemasukan dari penjualan Pelembab GlowRX di pusat perbelanjaan'),
(33, 3, '2024-08-14', 38000000.00, 'Pemasukan dari penjualan Krim Anti-Aging GlowRX melalui agen distributor besar'),
(34, 4, '2024-08-21', 29000000.00, 'Pemasukan dari penjualan Scrub Eksfoliasi GlowRX di situs e-commerce internasional'),
(35, 5, '2024-08-28', 24000000.00, 'Pemasukan dari penjualan Sunscreen SPF 50 GlowRX di agen distributor besar'),
(36, 6, '2024-09-04', 22000000.00, 'Pemasukan dari penjualan Krim Malam GlowRX di gerai resmi'),
(37, 7, '2024-09-11', 18000000.00, 'Pemasukan dari penjualan Serum Mata GlowRX melalui program promo online'),
(38, 8, '2024-09-18', 15000000.00, 'Pemasukan dari penjualan Foam Pembersih GlowRX di toko online internasional'),
(39, 9, '2024-09-25', 13000000.00, 'Pemasukan dari penjualan Toner GlowRX di pusat perbelanjaan terkenal'),
(40, 10, '2024-09-30', 10000000.00, 'Pemasukan dari penjualan Lip Balm GlowRX di beberapa outlet kecantikan'),
(41, 1, '2024-10-07', 35000000.00, 'Pemasukan dari penjualan Serum Pencerah GlowRX di jaringan distributor besar'),
(42, 2, '2024-10-14', 28000000.00, 'Pemasukan dari penjualan Pelembab GlowRX di gerai resmi'),
(43, 3, '2024-10-21', 39000000.00, 'Pemasukan dari penjualan Krim Anti-Aging GlowRX melalui acara promosi kecantikan'),
(44, 4, '2024-10-28', 30000000.00, 'Pemasukan dari penjualan Scrub Eksfoliasi GlowRX di situs e-commerce'),
(45, 5, '2024-11-04', 22000000.00, 'Pemasukan dari penjualan Sunscreen SPF 50 GlowRX di toko online terkemuka'),
(46, 6, '2024-11-11', 24000000.00, 'Pemasukan dari penjualan Krim Malam GlowRX di toko-toko besar'),
(47, 7, '2024-11-18', 19000000.00, 'Pemasukan dari penjualan Serum Mata GlowRX melalui distributor nasional'),
(48, 8, '2024-11-25', 17000000.00, 'Pemasukan dari penjualan Foam Pembersih GlowRX di gerai resmi'),
(49, 9, '2024-12-02', 14000000.00, 'Pemasukan dari penjualan Toner GlowRX melalui program loyalitas pelanggan'),
(50, 10, '2024-12-09', 11000000.00, 'Pemasukan dari penjualan Lip Balm GlowRX di acara pameran kecantikan'),
(51, 1, '2022-01-15', 1500000.00, 'Pemasukan dari penjualan Serum Pencerah GlowRX di toko-toko besar di Jakarta'),
(52, 2, '2022-02-20', 2000000.00, 'Pemasukan dari penjualan Pelembab GlowRX hasil kampanye promosi di media sosial'),
(53, 3, '2022-03-05', 1800000.00, 'Pemasukan dari penjualan Krim Anti-Aging GlowRX selama event bulanan di marketplace lokal'),
(54, 4, '2022-04-10', 2200000.00, 'Pemasukan dari penjualan Scrub Eksfoliasi GlowRX dalam jumlah besar kepada grosir lokal'),
(55, 5, '2022-05-25', 1750000.00, 'Pemasukan dari penjualan Sunscreen SPF 50 GlowRX dari hasil kampanye iklan digital di berbagai platform'),
(56, 6, '2022-06-15', 1950000.00, 'Pemasukan dari penjualan Krim Malam GlowRX melalui marketplace dengan promosi khusus tengah tahun'),
(57, 7, '2022-07-20', 1600000.00, 'Pemasukan dari penjualan Serum Mata GlowRX dalam flash sale selama 24 jam'),
(58, 8, '2022-08-30', 2100000.00, 'Pemasukan dari penjualan Foam Pembersih GlowRX dalam jumlah besar kepada perusahaan manufaktur'),
(59, 9, '2022-09-10', 1700000.00, 'Pemasukan dari penjualan Toner GlowRX hasil kolaborasi dengan influencer kecantikan'),
(60, 10, '2022-10-05', 1800000.00, 'Pemasukan dari penjualan Lip Balm GlowRX dalam promosi akhir tahun'),
(61, 11, '2022-11-15', 1900000.00, 'Pemasukan dari penjualan Masker Wajah GlowRX hasil event lokal di Surabaya'),
(62, 12, '2022-12-25', 1650000.00, 'Pemasukan dari penjualan Essence GlowRX dalam kampanye liburan akhir tahun'),
(63, 13, '2023-01-10', 2200000.00, 'Pemasukan dari penjualan Peeling Gel GlowRX batch baru di toko-toko besar di Bandung'),
(64, 14, '2023-02-15', 2100000.00, 'Pemasukan dari penjualan Serum Vitamin C GlowRX hasil kampanye online melalui iklan Facebook'),
(65, 15, '2023-03-20', 1900000.00, 'Pemasukan dari penjualan Clay Mask GlowRX hasil review oleh beauty influencer terkenal'),
(66, 16, '2023-04-05', 2000000.00, 'Pemasukan dari penjualan Krim Siang GlowRX melalui program referral pelanggan'),
(67, 17, '2023-05-10', 2300000.00, 'Pemasukan dari penjualan Serum Retinol GlowRX dalam jumlah besar kepada perusahaan skincare'),
(68, 18, '2023-06-25', 1800000.00, 'Pemasukan dari penjualan Facial Wash GlowRX dari hasil promosi di e-commerce'),
(69, 19, '2023-07-15', 1950000.00, 'Pemasukan dari penjualan Sheet Mask GlowRX dalam marketplace mid-year sale'),
(70, 20, '2023-08-20', 1750000.00, 'Pemasukan dari penjualan Anti-Pollution Mist GlowRX di event tahunan kecantikan di Jakarta'),
(71, 21, '2023-09-30', 2150000.00, 'Pemasukan dari penjualan Serum Hyaluronic Acid GlowRX hasil pameran skincare internasional'),
(72, 22, '2023-10-10', 1850000.00, 'Pemasukan dari penjualan Micellar Water GlowRX hasil kolaborasi dengan artis terkenal'),
(73, 23, '2023-11-05', 2000000.00, 'Pemasukan dari penjualan Krim Pencerah GlowRX dalam promo akhir tahun di marketplace'),
(74, 24, '2023-12-15', 2100000.00, 'Pemasukan dari penjualan Serum Niacinamide GlowRX selama liburan akhir tahun di toko-toko besar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `tanggal_pengeluaran` date DEFAULT NULL,
  `jumlah` decimal(10,2) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `id_produk`, `tanggal_pengeluaran`, `jumlah`, `deskripsi`) VALUES
(1, 1, '2024-01-08', 1500000.00, 'Pembelian bahan baku untuk Serum Pencerah GlowRX'),
(2, 2, '2024-01-15', 1200000.00, 'Pembelian bahan baku untuk Pelembab GlowRX'),
(3, 3, '2024-01-22', 1800000.00, 'Pembelian bahan baku untuk Krim Anti-Aging GlowRX'),
(4, 4, '2024-01-29', 1250000.00, 'Pembelian bahan baku untuk Scrub Eksfoliasi GlowRX'),
(5, 5, '2024-01-31', 900000.00, 'Pembelian bahan baku untuk Sunscreen SPF 50 GlowRX'),
(6, 6, '2024-02-05', 1300000.00, 'Pembelian bahan baku untuk Krim Malam GlowRX'),
(7, 7, '2024-02-12', 1100000.00, 'Pembelian bahan baku untuk Serum Mata GlowRX'),
(8, 8, '2024-02-19', 950000.00, 'Pembelian bahan baku untuk Foam Pembersih GlowRX'),
(9, 9, '2024-02-26', 800000.00, 'Pembelian bahan baku untuk Toner GlowRX'),
(10, 10, '2024-03-03', 700000.00, 'Pembelian bahan baku untuk Lip Balm GlowRX'),
(11, 1, '2024-03-10', 1600000.00, 'Pembelian bahan baku untuk Serum Pencerah GlowRX'),
(12, 2, '2024-03-17', 1350000.00, 'Pembelian bahan baku untuk Pelembab GlowRX'),
(13, 3, '2024-03-24', 1750000.00, 'Pembelian bahan baku untuk Krim Anti-Aging GlowRX'),
(14, 4, '2024-03-31', 1450000.00, 'Pembelian bahan baku untuk Scrub Eksfoliasi GlowRX'),
(15, 5, '2024-04-07', 1000000.00, 'Pembelian bahan baku untuk Sunscreen SPF 50 GlowRX'),
(16, 6, '2024-04-14', 1200000.00, 'Pembelian bahan baku untuk Krim Malam GlowRX'),
(17, 7, '2024-04-21', 900000.00, 'Pembelian bahan baku untuk Serum Mata GlowRX'),
(18, 8, '2024-04-28', 850000.00, 'Pembelian bahan baku untuk Foam Pembersih GlowRX'),
(19, 9, '2024-05-05', 700000.00, 'Pembelian bahan baku untuk Toner GlowRX'),
(20, 10, '2024-05-12', 600000.00, 'Pembelian bahan baku untuk Lip Balm GlowRX'),
(21, 1, '2024-05-19', 1500000.00, 'Pembelian bahan baku untuk Serum Pencerah GlowRX'),
(22, 2, '2024-05-26', 1300000.00, 'Pembelian bahan baku untuk Pelembab GlowRX'),
(23, 3, '2024-06-02', 1700000.00, 'Pembelian bahan baku untuk Krim Anti-Aging GlowRX'),
(24, 4, '2024-06-09', 1400000.00, 'Pembelian bahan baku untuk Scrub Eksfoliasi GlowRX'),
(25, 5, '2024-06-16', 1100000.00, 'Pembelian bahan baku untuk Sunscreen SPF 50 GlowRX'),
(26, 6, '2024-06-23', 1250000.00, 'Pembelian bahan baku untuk Krim Malam GlowRX'),
(27, 7, '2024-06-30', 950000.00, 'Pembelian bahan baku untuk Serum Mata GlowRX'),
(28, 8, '2024-07-07', 800000.00, 'Pembelian bahan baku untuk Foam Pembersih GlowRX'),
(29, 9, '2024-07-14', 700000.00, 'Pembelian bahan baku untuk Toner GlowRX'),
(30, 10, '2024-07-21', 500000.00, 'Pembelian bahan baku untuk Lip Balm GlowRX'),
(31, 1, '2024-07-28', 1700000.00, 'Pembelian bahan baku untuk Serum Pencerah GlowRX'),
(32, 2, '2024-08-04', 1300000.00, 'Pembelian bahan baku untuk Pelembab GlowRX'),
(33, 3, '2024-08-11', 1600000.00, 'Pembelian bahan baku untuk Krim Anti-Aging GlowRX'),
(34, 4, '2024-08-18', 1450000.00, 'Pembelian bahan baku untuk Scrub Eksfoliasi GlowRX'),
(35, 5, '2024-08-25', 1200000.00, 'Pembelian bahan baku untuk Sunscreen SPF 50 GlowRX'),
(36, 6, '2024-09-01', 1100000.00, 'Pembelian bahan baku untuk Krim Malam GlowRX'),
(37, 7, '2024-09-08', 900000.00, 'Pembelian bahan baku untuk Serum Mata GlowRX'),
(38, 8, '2024-09-15', 750000.00, 'Pembelian bahan baku untuk Foam Pembersih GlowRX'),
(39, 9, '2024-09-22', 650000.00, 'Pembelian bahan baku untuk Toner GlowRX'),
(40, 10, '2024-09-29', 400000.00, 'Pembelian bahan baku untuk Lip Balm GlowRX'),
(41, 1, '2024-10-06', 1800000.00, 'Pembelian bahan baku untuk Serum Pencerah GlowRX'),
(42, 2, '2024-10-13', 1400000.00, 'Pembelian bahan baku untuk Pelembab GlowRX'),
(43, 3, '2024-10-20', 1650000.00, 'Pembelian bahan baku untuk Krim Anti-Aging GlowRX'),
(44, 4, '2024-10-27', 1550000.00, 'Pembelian bahan baku untuk Scrub Eksfoliasi GlowRX'),
(45, 5, '2024-11-03', 1100000.00, 'Pembelian bahan baku untuk Sunscreen SPF 50 GlowRX'),
(46, 6, '2024-11-10', 1250000.00, 'Pembelian bahan baku untuk Krim Malam GlowRX'),
(47, 7, '2024-11-17', 950000.00, 'Pembelian bahan baku untuk Serum Mata GlowRX'),
(48, 8, '2024-11-24', 850000.00, 'Pembelian bahan baku untuk Foam Pembersih GlowRX'),
(49, 9, '2024-12-01', 700000.00, 'Pembelian bahan baku untuk Toner GlowRX'),
(50, 10, '2024-12-08', 500000.00, 'Pembelian bahan baku untuk Lip Balm GlowRX'),
(51, 1, '2022-01-15', 5000000.00, 'Biaya produksi untuk Serum Pencerah GlowRX'),
(52, 2, '2022-02-10', 3000000.00, 'Biaya produksi untuk Pelembab GlowRX'),
(53, 3, '2022-03-05', 7000000.00, 'Biaya riset dan pengembangan untuk Krim Anti-Aging GlowRX'),
(54, 4, '2022-04-12', 2500000.00, 'Biaya produksi untuk Scrub Eksfoliasi GlowRX'),
(55, 5, '2022-05-20', 1000000.00, 'Biaya pemasaran untuk Sunscreen SPF 50 GlowRX'),
(56, 6, '2022-06-18', 4500000.00, 'Biaya produksi untuk Krim Malam GlowRX'),
(57, 7, '2022-07-22', 1500000.00, 'Biaya pemasaran untuk Serum Mata GlowRX'),
(58, 8, '2022-08-30', 1200000.00, 'Biaya pengiriman untuk Foam Pembersih GlowRX'),
(59, 9, '2022-09-25', 1100000.00, 'Biaya produksi untuk Toner GlowRX'),
(60, 10, '2022-10-14', 900000.00, 'Biaya produksi untuk Lip Balm GlowRX'),
(61, 1, '2022-11-11', 2000000.00, 'Biaya pemasaran untuk Serum Pencerah GlowRX'),
(62, 2, '2022-12-19', 3500000.00, 'Biaya riset dan pengembangan untuk Pelembab GlowRX'),
(63, 3, '2023-01-23', 8000000.00, 'Biaya produksi untuk Krim Anti-Aging GlowRX'),
(64, 4, '2023-02-13', 4000000.00, 'Biaya pemasaran untuk Scrub Eksfoliasi GlowRX'),
(65, 5, '2023-03-15', 2500000.00, 'Biaya produksi untuk Sunscreen SPF 50 GlowRX'),
(66, 6, '2023-04-21', 5000000.00, 'Biaya riset dan pengembangan untuk Krim Malam GlowRX'),
(67, 7, '2023-05-29', 1800000.00, 'Biaya pengiriman untuk Serum Mata GlowRX'),
(68, 8, '2023-06-17', 1300000.00, 'Biaya pemasaran untuk Foam Pembersih GlowRX'),
(69, 9, '2023-07-25', 1400000.00, 'Biaya produksi untuk Toner GlowRX'),
(70, 10, '2023-08-10', 950000.00, 'Biaya pengiriman untuk Lip Balm GlowRX'),
(71, 1, '2023-09-18', 3000000.00, 'Biaya riset dan pengembangan untuk Serum Pencerah GlowRX'),
(72, 2, '2023-10-23', 2700000.00, 'Biaya produksi untuk Pelembab GlowRX'),
(73, 3, '2023-11-15', 9000000.00, 'Biaya pemasaran untuk Krim Anti-Aging GlowRX'),
(74, 4, '2023-12-09', 2200000.00, 'Biaya pengiriman untuk Scrub Eksfoliasi GlowRX'),
(75, 5, '2022-01-28', 6000000.00, 'Biaya bahan baku untuk Sunscreen SPF 50 GlowRX'),
(76, 6, '2022-02-22', 4700000.00, 'Biaya distribusi untuk Krim Malam GlowRX'),
(77, 7, '2022-03-17', 2900000.00, 'Biaya event promosi untuk Serum Mata GlowRX'),
(78, 8, '2022-04-24', 1500000.00, 'Biaya pengemasan untuk Foam Pembersih GlowRX'),
(79, 9, '2022-05-18', 3200000.00, 'Biaya teknologi untuk Toner GlowRX'),
(80, 10, '2022-06-12', 1750000.00, 'Biaya influencer untuk Lip Balm GlowRX'),
(81, 1, '2022-07-16', 4000000.00, 'Biaya kampanye iklan untuk Serum Pencerah GlowRX'),
(82, 2, '2022-08-19', 2800000.00, 'Biaya SEO dan SEM untuk Pelembab GlowRX'),
(83, 3, '2022-09-10', 7800000.00, 'Biaya klinik uji untuk Krim Anti-Aging GlowRX'),
(84, 4, '2022-10-25', 3300000.00, 'Biaya tenaga kerja untuk Scrub Eksfoliasi GlowRX'),
(85, 5, '2022-11-13', 2000000.00, 'Biaya sertifikasi untuk Sunscreen SPF 50 GlowRX'),
(86, 6, '2022-12-17', 5200000.00, 'Biaya pelatihan untuk Krim Malam GlowRX'),
(87, 7, '2023-01-28', 1600000.00, 'Biaya konsultasi untuk Serum Mata GlowRX'),
(88, 8, '2023-02-11', 1400000.00, 'Biaya workshop untuk Foam Pembersih GlowRX'),
(89, 9, '2023-03-22', 1550000.00, 'Biaya pengembangan website untuk Toner GlowRX'),
(90, 10, '2023-04-16', 1100000.00, 'Biaya pengemasan premium untuk Lip Balm GlowRX'),
(91, 1, '2023-05-18', 3200000.00, 'Biaya riset pasar untuk Serum Pencerah GlowRX'),
(92, 2, '2023-06-20', 2500000.00, 'Biaya material untuk Pelembab GlowRX'),
(93, 3, '2023-07-13', 8500000.00, 'Biaya patent dan legal untuk Krim Anti-Aging GlowRX'),
(94, 4, '2023-08-09', 2900000.00, 'Biaya acara promosi untuk Scrub Eksfoliasi GlowRX'),
(95, 5, '2023-09-15', 2100000.00, 'Biaya transportasi untuk Sunscreen SPF 50 GlowRX'),
(96, 6, '2023-10-12', 5500000.00, 'Biaya pelatihan karyawan untuk Krim Malam GlowRX'),
(97, 7, '2023-11-18', 1700000.00, 'Biaya event marketing untuk Serum Mata GlowRX'),
(98, 8, '2023-12-22', 1450000.00, 'Biaya konten kreatif untuk Foam Pembersih GlowRX'),
(99, 9, '2023-01-19', 1600000.00, 'Biaya penyesuaian formula untuk Toner GlowRX'),
(100, 10, '2023-02-14', 1000000.00, 'Biaya promosi sosial media untuk Lip Balm GlowRX'),
(101, 2, '2020-02-10', 2800000.00, 'Biaya produksi untuk Pelembab GlowRX'),
(102, 3, '2020-03-05', 6500000.00, 'Biaya riset dan pengembangan untuk Krim Anti-Aging GlowRX'),
(103, 4, '2020-04-12', 2300000.00, 'Biaya produksi untuk Scrub Eksfoliasi GlowRX'),
(104, 5, '2020-05-20', 1200000.00, 'Biaya pemasaran untuk Sunscreen SPF 50 GlowRX'),
(105, 6, '2020-06-18', 4200000.00, 'Biaya produksi untuk Krim Malam GlowRX'),
(106, 7, '2020-07-22', 1400000.00, 'Biaya pemasaran untuk Serum Mata GlowRX'),
(107, 8, '2020-08-30', 1100000.00, 'Biaya pengiriman untuk Foam Pembersih GlowRX'),
(108, 9, '2020-09-25', 2000000.00, 'Biaya produksi untuk Toner GlowRX'),
(109, 10, '2020-10-15', 900000.00, 'Biaya produksi untuk Lip Balm GlowRX'),
(110, 1, '2020-11-10', 4700000.00, 'Biaya pengembangan untuk Serum Pencerah GlowRX'),
(111, 2, '2020-12-20', 2900000.00, 'Biaya promosi untuk Pelembab GlowRX'),
(112, 3, '2021-01-18', 6800000.00, 'Biaya produksi untuk Krim Anti-Aging GlowRX'),
(113, 4, '2021-02-14', 2400000.00, 'Biaya distribusi untuk Scrub Eksfoliasi GlowRX'),
(114, 5, '2021-03-12', 1300000.00, 'Biaya pengembangan untuk Sunscreen SPF 50 GlowRX'),
(115, 6, '2021-04-22', 4400000.00, 'Biaya produksi untuk Krim Malam GlowRX'),
(116, 7, '2021-05-25', 1500000.00, 'Biaya pemasaran untuk Serum Mata GlowRX'),
(117, 8, '2021-06-30', 1200000.00, 'Biaya pengiriman untuk Foam Pembersih GlowRX'),
(118, 9, '2021-07-20', 2200000.00, 'Biaya produksi untuk Toner GlowRX'),
(119, 10, '2021-08-15', 950000.00, 'Biaya promosi untuk Lip Balm GlowRX'),
(120, 1, '2021-09-10', 4900000.00, 'Biaya riset dan pengembangan untuk Serum Pencerah GlowRX'),
(121, 2, '2021-10-18', 3100000.00, 'Biaya produksi untuk Pelembab GlowRX'),
(122, 3, '2021-11-22', 7100000.00, 'Biaya pengembangan untuk Krim Anti-Aging GlowRX'),
(123, 4, '2021-12-15', 2500000.00, 'Biaya distribusi untuk Scrub Eksfoliasi GlowRX');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `id_tipe_kulit` int(11) DEFAULT NULL,
  `tanggal_registrasi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama`, `email`, `jenis_kelamin`, `id_tipe_kulit`, `tanggal_registrasi`) VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com', 'Perempuan', 1, '2023-03-01'),
(2, 'Bob Smith', 'bob.smith@example.com', 'Laki-Laki', 2, '2023-03-05'),
(3, 'Cathy Brown', 'cathy.brown@example.com', 'Perempuan', 3, '2023-03-10'),
(4, 'David White', 'david.white@example.com', 'Laki-Laki', 4, '2023-03-15'),
(5, 'Eva Green', 'eva.green@example.com', 'Perempuan', 1, '2023-03-20'),
(6, 'Frank Black', 'frank.black@example.com', 'Laki-Laki', 2, '2023-03-25'),
(7, 'Grace Lee', 'grace.lee@example.com', 'Perempuan', 3, '2023-03-30'),
(8, 'Henry Young', 'henry.young@example.com', 'Laki-Laki', 4, '2023-04-04'),
(9, 'Ivy King', 'ivy.king@example.com', 'Perempuan', 1, '2023-04-08'),
(10, 'Jack Davis', 'jack.davis@example.com', 'Laki-Laki', 2, '2023-04-12'),
(11, 'Laura Thompson', 'laura.thompson@example.com', 'Perempuan', 3, '2023-04-15'),
(12, 'Michael Roberts', 'michael.roberts@example.com', 'Laki-Laki', 4, '2023-04-20'),
(13, 'Nina Anderson', 'nina.anderson@example.com', 'Perempuan', 1, '2023-04-25'),
(14, 'Oliver Martinez', 'oliver.martinez@example.com', 'Laki-Laki', 2, '2023-04-30'),
(15, 'Paula Jackson', 'paula.jackson@example.com', 'Perempuan', 3, '2023-05-05'),
(16, 'Quincy Harris', 'quincy.harris@example.com', 'Laki-Laki', 4, '2023-05-10'),
(17, 'Rachel Clark', 'rachel.clark@example.com', 'Perempuan', 1, '2023-05-15'),
(18, 'Steve Lewis', 'steve.lewis@example.com', 'Laki-Laki', 2, '2023-05-20'),
(19, 'Tina Walker', 'tina.walker@example.com', 'Perempuan', 3, '2023-05-25'),
(20, 'Umar Hall', 'umar.hall@example.com', 'Laki-Laki', 4, '2023-05-30'),
(21, 'Vera Young', 'vera.young@example.com', 'Perempuan', 1, '2023-06-04'),
(22, 'William King', 'william.king@example.com', 'Laki-Laki', 2, '2023-06-09'),
(23, 'Xena Wright', 'xena.wright@example.com', 'Perempuan', 3, '2023-06-14'),
(24, 'Yusuf Scott', 'yusuf.scott@example.com', 'Laki-Laki', 4, '2023-06-19'),
(25, 'Zara Adams', 'zara.adams@example.com', 'Perempuan', 1, '2023-06-24'),
(26, 'Adrian Baker', 'adrian.baker@example.com', 'Laki-Laki', 2, '2023-06-29'),
(27, 'Brianna Gonzalez', 'brianna.gonzalez@example.com', 'Perempuan', 3, '2023-07-04'),
(28, 'Charles Nelson', 'charles.nelson@example.com', 'Laki-Laki', 4, '2023-07-09'),
(29, 'Diana Carter', 'diana.carter@example.com', 'Perempuan', 1, '2023-07-14'),
(30, 'Ethan Mitchell', 'ethan.mitchell@example.com', 'Laki-Laki', 2, '2023-07-19'),
(31, 'Fiona Perez', 'fiona.perez@example.com', 'Perempuan', 3, '2023-07-24'),
(32, 'George Roberts', 'george.roberts@example.com', 'Laki-Laki', 4, '2023-07-29'),
(33, 'Hannah Turner', 'hannah.turner@example.com', 'Perempuan', 1, '2023-08-03'),
(34, 'Ivan Stewart', 'ivan.stewart@example.com', 'Laki-Laki', 2, '2023-08-08'),
(35, 'Jasmine White', 'jasmine.white@example.com', 'Perempuan', 3, '2023-08-13'),
(36, 'Kyle Brooks', 'kyle.brooks@example.com', 'Laki-Laki', 4, '2023-08-18'),
(37, 'Lily Parker', 'lily.parker@example.com', 'Perempuan', 1, '2023-08-23'),
(38, 'Marcus Edwards', 'marcus.edwards@example.com', 'Laki-Laki', 2, '2023-08-28'),
(39, 'Nora Ramirez', 'nora.ramirez@example.com', 'Perempuan', 3, '2023-09-02'),
(40, 'Oscar Rogers', 'oscar.rogers@example.com', 'Laki-Laki', 4, '2023-09-07'),
(41, 'Penelope Sanders', 'penelope.sanders@example.com', 'Perempuan', 1, '2023-09-12'),
(42, 'Quinton Bell', 'quinton.bell@example.com', 'Laki-Laki', 2, '2023-09-17'),
(43, 'Rebecca James', 'rebecca.james@example.com', 'Perempuan', 3, '2023-09-22'),
(44, 'Sam Bennett', 'sam.bennett@example.com', 'Laki-Laki', 4, '2023-09-27'),
(45, 'Tara Diaz', 'tara.diaz@example.com', 'Perempuan', 1, '2023-10-02'),
(46, 'Ulysses Murphy', 'ulysses.murphy@example.com', 'Laki-Laki', 2, '2023-10-07'),
(47, 'Victoria Morgan', 'victoria.morgan@example.com', 'Perempuan', 3, '2023-10-12'),
(48, 'Wyatt Hayes', 'wyatt.hayes@example.com', 'Laki-Laki', 4, '2023-10-17'),
(49, 'Xander Kelly', 'xander.kelly@example.com', 'Laki-Laki', 1, '2023-10-22'),
(50, 'Yara Howard', 'yara.howard@example.com', 'Perempuan', 2, '2023-10-27'),
(51, 'Siti Nurul', 'siti.nurul@example.com', 'Perempuan', 1, '2023-01-05'),
(52, 'Fitriani', 'fitriani@example.com', 'Perempuan', 2, '2023-02-10'),
(53, 'Larasati Dewi', 'larasati.dewi@example.com', 'Perempuan', 3, '2023-03-15'),
(54, 'Putra Wijaya', 'putra.wijaya@example.com', 'Laki-Laki', 1, '2023-04-20'),
(55, 'Ahmad Fauzan', 'ahmad.fauzan@example.com', 'Laki-Laki', 2, '2023-05-25'),
(56, 'Dewa Nugraha', 'dewa.nugraha@example.com', 'Laki-Laki', 3, '2023-06-30'),
(57, 'Indah Sari', 'indah.sari@example.com', 'Perempuan', 1, '2023-07-05'),
(58, 'Bayu Wibowo', 'bayu.wibowo@example.com', 'Laki-Laki', 2, '2023-08-10'),
(59, 'Yuni Astuti', 'yuni.astuti@example.com', 'Perempuan', 3, '2023-09-15'),
(60, 'Fajar Ramadhan', 'fajar.ramadhan@example.com', 'Laki-Laki', 1, '2023-10-20'),
(61, 'Ayu Putri', 'ayu.putri@gmail.com', 'Perempuan', 1, '2023-01-10'),
(62, 'Budi Santoso', 'budi.santoso@gmail.com', 'Laki-Laki', 2, '2023-01-12'),
(63, 'Citra Dewi', 'citra.dewi@gmail.com', 'Perempuan', 3, '2023-01-15'),
(64, 'Dedi Wijaya', 'dedi.wijaya@gmail.com', 'Laki-Laki', 4, '2023-01-18'),
(65, 'Erika Melati', 'erika.melati@gmail.com', 'Perempuan', 1, '2023-01-20'),
(66, 'Fajar Nugroho', 'fajar.nugroho@gmail.com', 'Laki-Laki', 2, '2023-01-25'),
(67, 'Gita Sari', 'gita.sari@gmail.com', 'Perempuan', 3, '2023-01-28'),
(68, 'Hariyanto', 'hariyanto@gmail.com', 'Laki-Laki', 4, '2023-01-30'),
(69, 'Indah Lestari', 'indah.lestari@gmail.com', 'Perempuan', 1, '2023-02-01'),
(70, 'Joko Susilo', 'joko.susilo@gmail.com', 'Laki-Laki', 2, '2023-02-05'),
(71, 'Kiki Amelia', 'kiki.amelia@gmail.com', 'Perempuan', 3, '2023-02-10'),
(72, 'Lukman Hakim', 'lukman.hakim@gmail.com', 'Laki-Laki', 4, '2023-02-12'),
(73, 'Maya Astuti', 'maya.astuti@gmail.com', 'Perempuan', 1, '2023-02-15'),
(74, 'Nanda Pratama', 'nanda.pratama@gmail.com', 'Laki-Laki', 2, '2023-02-18'),
(75, 'Ocha Rahmawati', 'ocha.rahmawati@gmail.com', 'Perempuan', 3, '2023-02-20'),
(76, 'Putu Arya', 'putu.arya@gmail.com', 'Laki-Laki', 4, '2023-02-25'),
(77, 'Rina Anggraini', 'rina.anggraini@gmail.com', 'Perempuan', 1, '2023-03-01'),
(78, 'Satria Wijaya', 'satria.wijaya@gmail.com', 'Laki-Laki', 2, '2023-03-05'),
(79, 'Tina Marlina', 'tina.marlina@gmail.com', 'Perempuan', 3, '2023-03-10'),
(80, 'Usman Hadi', 'usman.hadi@gmail.com', 'Laki-Laki', 4, '2023-03-12'),
(81, 'Vera Lestari', 'vera.lestari@gmail.com', 'Perempuan', 1, '2023-03-15'),
(82, 'Wahyu Kurniawan', 'wahyu.kurniawan@gmail.com', 'Laki-Laki', 2, '2023-03-20'),
(83, 'Xenia Kartika', 'xenia.kartika@gmail.com', 'Perempuan', 3, '2023-03-25'),
(84, 'Yusuf Pratama', 'yusuf.pratama@gmail.com', 'Laki-Laki', 4, '2023-03-30'),
(85, 'Zara Wijaya', 'zara.wijaya@gmail.com', 'Perempuan', 1, '2023-04-01'),
(86, 'Agus Setiawan', 'agus.setiawan@gmail.com', 'Laki-Laki', 2, '2023-04-05'),
(87, 'Bella Amelia', 'bella.amelia@gmail.com', 'Perempuan', 3, '2023-04-10'),
(88, 'Candra Pratama', 'candra.pratama@gmail.com', 'Laki-Laki', 4, '2023-04-12'),
(89, 'Diana Putri', 'diana.putri@gmail.com', 'Perempuan', 1, '2023-04-15'),
(90, 'Eko Nugroho', 'eko.nugroho@gmail.com', 'Laki-Laki', 2, '2023-04-20'),
(91, 'Farah Lestari', 'farah.lestari@gmail.com', 'Perempuan', 3, '2023-04-25'),
(92, 'Gilang Pratama', 'gilang.pratama@gmail.com', 'Laki-Laki', 4, '2023-04-30'),
(93, 'Hesti Marlina', 'hesti.marlina@gmail.com', 'Perempuan', 1, '2023-05-01'),
(94, 'Imam Kurniawan', 'imam.kurniawan@gmail.com', 'Laki-Laki', 2, '2023-05-05'),
(95, 'Juli Astuti', 'juli.astuti@gmail.com', 'Perempuan', 3, '2023-05-10'),
(96, 'Kevin Hadi', 'kevin.hadi@gmail.com', 'Laki-Laki', 4, '2023-05-12'),
(97, 'Lina Anggraini', 'lina.anggraini@gmail.com', 'Perempuan', 1, '2023-05-15'),
(98, 'Mario Hakim', 'mario.hakim@gmail.com', 'Laki-Laki', 2, '2023-05-20'),
(99, 'Nina Lestari', 'nina.lestari@gmail.com', 'Perempuan', 3, '2023-05-25'),
(100, 'Oscar Kurniawan', 'oscar.kurniawan@gmail.com', 'Laki-Laki', 4, '2023-05-30'),
(156, 'Adi Prasetyo', 'adi.prasetyo@example.com', 'Laki-Laki', 1, '2023-01-01'),
(157, 'Rani Cahyani', 'rani.cahyani@example.com', 'Perempuan', 2, '2023-02-02'),
(158, 'Budi Santoso', 'budi.santoso@example.com', 'Laki-Laki', 3, '2023-03-03'),
(159, 'Dewi Indah', 'dewi.indah@example.com', 'Perempuan', 1, '2023-04-04'),
(160, 'Eko Wijaya', 'eko.wijaya@example.com', 'Laki-Laki', 2, '2023-05-05'),
(161, 'Sari Fitriani', 'sari.fitriani@example.com', 'Perempuan', 3, '2023-06-06'),
(162, 'Ahmad Jamal', 'ahmad.jamal@example.com', 'Laki-Laki', 1, '2023-07-07'),
(163, 'Nina Susanti', 'nina.susanti@example.com', 'Perempuan', 2, '2023-08-08'),
(164, 'Rudi Kurniawan', 'rudi.kurniawan@example.com', 'Laki-Laki', 3, '2023-09-09'),
(165, 'Lia Susilo', 'lia.susilo@example.com', 'Perempuan', 1, '2023-10-10'),
(166, 'Anto Setiawan', 'anto.setiawan@example.com', 'Laki-Laki', 2, '2023-11-11'),
(167, 'Dini Puspita', 'dini.puspita@example.com', 'Perempuan', 3, '2023-12-12'),
(168, 'Hendra Wijaya', 'hendra.wijaya@example.com', 'Laki-Laki', 1, '2024-01-13'),
(169, 'Rina Fitri', 'rina.fitri@example.com', 'Perempuan', 2, '2024-02-14'),
(170, 'Fajar Setiawan', 'fajar.setiawan@example.com', 'Laki-Laki', 3, '2024-03-15'),
(171, 'Dewi Anggraini', 'dewi.anggraini@example.com', 'Perempuan', 1, '2024-04-16'),
(172, 'Adi Nugroho', 'adi.nugroho@example.com', 'Laki-Laki', 2, '2024-05-17'),
(173, 'Yuni Kusuma', 'yuni.kusuma@example.com', 'Perempuan', 3, '2024-06-18'),
(174, 'Bambang Susanto', 'bambang.susanto@example.com', 'Laki-Laki', 1, '2024-07-19'),
(175, 'Rini Hartati', 'rini.hartati@example.com', 'Perempuan', 2, '2024-08-20'),
(176, 'Hadi Saputra', 'hadi.saputra@example.com', 'Laki-Laki', 3, '2024-09-21'),
(177, 'Wati Kurniawan', 'wati.kurniawan@example.com', 'Perempuan', 1, '2024-10-22'),
(178, 'Anton Susilo', 'anton.susilo@example.com', 'Laki-Laki', 2, '2024-11-23'),
(179, 'Dian Pratiwi', 'dian.pratiwi@example.com', 'Perempuan', 3, '2024-12-24'),
(180, 'Eko Setiawan', 'eko.setiawan@example.com', 'Laki-Laki', 1, '2025-01-25'),
(181, 'Ratna Sari', 'ratna.sari@example.com', 'Perempuan', 2, '2025-02-26'),
(182, 'Ferry Setiawan', 'ferry.setiawan@example.com', 'Laki-Laki', 3, '2025-03-27'),
(183, 'Dewi Cahaya', 'dewi.cahaya@example.com', 'Perempuan', 1, '2025-04-28'),
(184, 'Yoga Pratama', 'yoga.pratama@example.com', 'Laki-Laki', 2, '2025-05-29'),
(185, 'Sari Rahayu', 'sari.rahayu@example.com', 'Perempuan', 3, '2025-06-30'),
(186, 'Andi Setiawan', 'andi.setiawan@example.com', 'Laki-Laki', 1, '2025-07-31'),
(187, 'Lina Susanti', 'lina.susanti@example.com', 'Perempuan', 2, '2025-08-01'),
(188, 'Budi Santosa', 'budi.santosa@example.com', 'Laki-Laki', 3, '2025-09-02'),
(189, 'Dewi Handayani', 'dewi.handayani@example.com', 'Perempuan', 1, '2025-10-03'),
(190, 'Feri Wijaya', 'feri.wijaya@example.com', 'Laki-Laki', 2, '2025-11-04'),
(191, 'Rina Utami', 'rina.utami@example.com', 'Perempuan', 3, '2025-12-05'),
(192, 'Andi Setiadi', 'andi.setiadi@example.com', 'Laki-Laki', 1, '2026-01-06'),
(193, 'Sari Wijaya', 'sari.wijaya@example.com', 'Perempuan', 2, '2026-02-07'),
(194, 'Rudi Hermawan', 'rudi.hermawan@example.com', 'Laki-Laki', 3, '2026-03-08'),
(195, 'Siti Maulida', 'siti.maulida@example.com', 'Perempuan', 1, '2026-04-09'),
(196, 'Doni Prasetyo', 'doni.prasetyo@example.com', 'Laki-Laki', 2, '2026-05-10'),
(197, 'Rina Setiawati', 'rina.setiawati@example.com', 'Perempuan', 3, '2026-06-11'),
(198, 'Yanto Wijaya', 'yanto.wijaya@example.com', 'Laki-Laki', 1, '2026-07-12'),
(199, 'Sinta Anggraeni', 'sinta.anggraeni@example.com', 'Perempuan', 2, '2026-08-13'),
(200, 'Rizki Pratama', 'rizki.pratama@example.com', 'Laki-Laki', 3, '2026-09-14'),
(201, 'Alice', 'alice201@gmail.com', 'Perempuan', 1, '2023-01-01'),
(202, 'Bella', 'bella202@gmail.com', 'Perempuan', 2, '2023-01-02'),
(203, 'Cindy', 'cindy203@gmail.com', 'Perempuan', 3, '2023-01-03'),
(204, 'Diana', 'diana204@gmail.com', 'Perempuan', 4, '2023-01-04'),
(205, 'Emily', 'emily205@gmail.com', 'Perempuan', 1, '2023-01-05'),
(206, 'Fiona', 'fiona206@gmail.com', 'Perempuan', 2, '2023-01-06'),
(207, 'Grace', 'grace207@gmail.com', 'Perempuan', 3, '2023-01-07'),
(208, 'Hannah', 'hannah208@gmail.com', 'Perempuan', 4, '2023-01-08'),
(209, 'Ivy', 'ivy209@gmail.com', 'Perempuan', 1, '2023-01-09'),
(210, 'Jenny', 'jenny210@gmail.com', 'Perempuan', 2, '2023-01-10'),
(211, 'Kelly', 'kelly211@gmail.com', 'Perempuan', 3, '2023-01-11'),
(212, 'Laura', 'laura212@gmail.com', 'Perempuan', 4, '2023-01-12'),
(213, 'Megan', 'megan213@gmail.com', 'Perempuan', 1, '2023-01-13'),
(214, 'Nina', 'nina214@gmail.com', 'Perempuan', 2, '2023-01-14'),
(215, 'Olivia', 'olivia215@gmail.com', 'Perempuan', 3, '2023-01-15'),
(216, 'Pamela', 'pamela216@gmail.com', 'Perempuan', 4, '2023-01-16'),
(217, 'Quinn', 'quinn217@gmail.com', 'Perempuan', 1, '2023-01-17'),
(218, 'Rachel', 'rachel218@gmail.com', 'Perempuan', 2, '2023-01-18'),
(219, 'Samantha', 'samantha219@gmail.com', 'Perempuan', 3, '2023-01-19'),
(220, 'Tina', 'tina220@gmail.com', 'Perempuan', 4, '2023-01-20'),
(221, 'Uma', 'uma221@gmail.com', 'Perempuan', 1, '2023-01-21'),
(222, 'Vera', 'vera222@gmail.com', 'Perempuan', 2, '2023-01-22'),
(223, 'Wendy', 'wendy223@gmail.com', 'Perempuan', 3, '2023-01-23'),
(224, 'Xena', 'xena224@gmail.com', 'Perempuan', 4, '2023-01-24'),
(225, 'Yara', 'yara225@gmail.com', 'Perempuan', 1, '2023-01-25'),
(226, 'Zoe', 'zoe226@gmail.com', 'Perempuan', 2, '2023-01-26'),
(227, 'Amy', 'amy227@gmail.com', 'Perempuan', 3, '2023-01-27'),
(228, 'Betty', 'betty228@gmail.com', 'Perempuan', 4, '2023-01-28'),
(229, 'Cara', 'cara229@gmail.com', 'Perempuan', 1, '2023-01-29'),
(230, 'Daisy', 'daisy230@gmail.com', 'Perempuan', 2, '2023-01-30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `id_pengguna` int(11) DEFAULT NULL,
  `tanggal_penjualan` date DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total_harga` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_produk`, `id_pengguna`, `tanggal_penjualan`, `jumlah`, `total_harga`) VALUES
(1, 1, 61, '2023-01-01', 100, 29990000.00),
(2, 2, 62, '2023-01-02', 200, 39980000.00),
(3, 3, 63, '2023-01-03', 300, 99999999.99),
(4, 4, 64, '2023-01-04', 400, 99960000.00),
(5, 5, 65, '2023-01-05', 500, 79950000.00),
(6, 6, 66, '2023-01-06', 600, 99999999.99),
(7, 7, 67, '2023-01-07', 700, 99999999.99),
(8, 8, 68, '2023-01-08', 800, 99999999.99),
(9, 9, 69, '2023-01-09', 900, 99999999.99),
(10, 10, 70, '2023-01-10', 1000, 79900000.00),
(11, 11, 71, '2023-01-11', 1100, 99999999.99),
(12, 12, 72, '2023-01-12', 1200, 99999999.99),
(13, 13, 73, '2023-01-13', 1300, 99999999.99),
(14, 14, 74, '2023-01-14', 1400, 99999999.99),
(15, 15, 75, '2023-01-15', 1500, 99999999.99),
(16, 16, 76, '2023-01-16', 1600, 99999999.99),
(17, 17, 77, '2023-01-17', 1700, 99999999.99),
(18, 18, 78, '2023-01-18', 1800, 99999999.99),
(19, 19, 79, '2023-01-19', 1900, 99999999.99),
(20, 20, 80, '2023-01-20', 2000, 99999999.99),
(21, 21, 81, '2023-01-21', 2100, 99999999.99),
(22, 22, 82, '2023-01-22', 2200, 99999999.99),
(23, 23, 83, '2023-01-23', 2300, 99999999.99),
(24, 24, 84, '2023-01-24', 2400, 99999999.99),
(25, 25, 85, '2023-01-25', 2500, 99999999.99),
(26, 26, 86, '2023-01-26', 2600, 99999999.99),
(27, 27, 87, '2023-01-27', 2700, 99999999.99),
(28, 28, 88, '2023-01-28', 2800, 99999999.99),
(29, 29, 89, '2023-01-29', 2900, 99999999.99),
(30, 30, 90, '2023-01-30', 3000, 99999999.99),
(31, 31, 91, '2023-01-31', 3100, 99999999.99),
(32, 32, 92, '2023-02-01', 3200, 99999999.99),
(33, 33, 93, '2023-02-02', 3300, 99999999.99),
(34, 34, 94, '2023-02-03', 3400, 99999999.99),
(35, 35, 95, '2023-02-04', 3500, 99999999.99),
(36, 36, 96, '2023-02-05', 3600, 99999999.99),
(37, 37, 97, '2023-02-06', 3700, 99999999.99),
(38, 38, 98, '2023-02-07', 3800, 99999999.99),
(39, 39, 99, '2023-02-08', 3900, 99999999.99),
(40, 40, 100, '2023-02-09', 4000, 99999999.99),
(41, 1, 61, '2023-02-10', 4100, 99999999.99),
(42, 2, 62, '2023-02-11', 4200, 99999999.99),
(43, 3, 63, '2023-02-12', 4300, 99999999.99),
(44, 4, 64, '2023-02-13', 4400, 99999999.99),
(45, 5, 65, '2023-02-14', 4500, 99999999.99),
(46, 6, 66, '2023-02-15', 4600, 99999999.99),
(47, 7, 67, '2023-02-16', 4700, 99999999.99),
(48, 8, 68, '2023-02-17', 4800, 99999999.99),
(49, 9, 69, '2023-02-18', 4900, 99999999.99),
(50, 10, 70, '2023-02-19', 5000, 99999999.99),
(51, 11, 71, '2023-02-20', 9, 6899100.00),
(52, 12, 72, '2023-02-21', 10, 1599000.00),
(53, 13, 73, '2023-02-22', 15, 1398500.00),
(54, 14, 74, '2023-02-23', 20, 1998000.00),
(55, 15, 75, '2023-02-24', 8, 1499200.00),
(56, 16, 76, '2023-02-25', 7, 1249300.00),
(57, 17, 77, '2023-02-26', 25, 3747500.00),
(58, 18, 78, '2023-02-27', 50, 7990000.00),
(59, 19, 79, '2023-02-28', 14, 1958600.00),
(60, 20, 80, '2023-03-01', 30, 5997000.00),
(61, 21, 81, '2023-03-02', 10, 1999000.00),
(62, 22, 82, '2023-03-03', 8, 2399200.00),
(63, 23, 83, '2023-03-04', 14, 4598600.00),
(64, 24, 84, '2023-03-05', 6, 1499400.00),
(65, 25, 85, '2023-03-06', 7, 1749300.00),
(66, 26, 86, '2023-03-07', 25, 3247500.00),
(67, 27, 87, '2023-03-08', 50, 7495000.00),
(68, 28, 88, '2023-03-09', 10, 1299000.00),
(69, 29, 89, '2023-03-10', 5, 749500.00),
(70, 30, 90, '2023-03-11', 12, 2498800.00),
(71, 31, 91, '2023-03-12', 9, 1349100.00),
(72, 32, 92, '2023-03-13', 10, 1899000.00),
(73, 33, 93, '2023-03-14', 8, 1599200.00),
(74, 34, 94, '2023-03-15', 7, 1549300.00),
(75, 35, 95, '2023-03-16', 25, 3247500.00),
(76, 36, 96, '2023-03-17', 50, 4995000.00),
(77, 37, 97, '2023-03-18', 14, 1958600.00),
(78, 38, 98, '2023-03-19', 6, 1799400.00),
(79, 39, 99, '2023-03-20', 30, 4497000.00),
(80, 40, 100, '2023-03-21', 10, 1599000.00),
(81, 1, 61, '2023-03-22', 20, 2998000.00),
(82, 2, 62, '2023-03-23', 8, 1599200.00),
(83, 3, 63, '2023-03-24', 14, 4598600.00),
(84, 4, 64, '2023-03-25', 6, 1499400.00),
(85, 5, 65, '2023-03-26', 7, 1749300.00),
(86, 6, 66, '2023-03-27', 25, 3247500.00),
(87, 7, 67, '2023-03-28', 50, 7990000.00),
(88, 8, 68, '2023-03-29', 10, 1999000.00),
(89, 9, 69, '2023-03-30', 5, 749500.00),
(90, 10, 70, '2023-03-31', 12, 2498800.00),
(91, 11, 71, '2023-04-01', 9, 1349100.00),
(92, 12, 72, '2023-04-02', 10, 1599000.00),
(93, 13, 73, '2023-04-03', 15, 3298500.00),
(94, 14, 74, '2023-04-04', 20, 4198000.00),
(95, 15, 75, '2023-04-05', 8, 1599200.00),
(96, 16, 76, '2023-04-06', 7, 1249300.00),
(97, 17, 77, '2023-04-07', 25, 3747500.00),
(98, 18, 78, '2023-04-08', 50, 7990000.00),
(99, 19, 79, '2023-04-09', 14, 1958600.00),
(100, 20, 80, '2023-04-10', 30, 5997000.00),
(101, 21, 81, '2023-04-11', 10, 2599000.00),
(102, 22, 82, '2023-04-12', 8, 1599200.00),
(103, 23, 83, '2023-04-13', 14, 5598600.00),
(104, 24, 84, '2023-04-14', 6, 1499400.00),
(105, 25, 85, '2023-04-15', 7, 1749300.00),
(106, 26, 86, '2023-04-16', 25, 3247500.00),
(107, 27, 87, '2023-04-17', 50, 7495000.00),
(108, 28, 88, '2023-04-18', 10, 1299000.00),
(109, 29, 89, '2023-04-19', 5, 749500.00),
(110, 30, 90, '2023-04-20', 12, 2498800.00),
(111, 31, 91, '2023-04-21', 9, 1349100.00),
(112, 32, 92, '2023-04-22', 10, 1599000.00),
(113, 33, 93, '2023-04-23', 8, 1599200.00),
(114, 34, 94, '2023-04-24', 7, 1549300.00),
(115, 35, 95, '2023-04-25', 25, 3247500.00),
(116, 36, 96, '2023-04-26', 50, 7990000.00),
(117, 37, 97, '2023-04-27', 14, 1958600.00),
(118, 38, 98, '2023-04-28', 6, 1799400.00),
(119, 39, 99, '2023-04-29', 30, 4497000.00),
(120, 40, 100, '2023-04-30', 10, 1599000.00),
(121, 1, 61, '2023-05-01', 20, 5998000.00),
(122, 2, 62, '2023-05-02', 8, 1599200.00),
(123, 3, 63, '2023-05-03', 14, 4598600.00),
(124, 4, 64, '2023-05-04', 6, 1499400.00),
(125, 5, 65, '2023-05-05', 7, 1749300.00),
(126, 6, 66, '2023-05-06', 25, 3247500.00),
(127, 7, 67, '2023-05-07', 50, 7990000.00),
(128, 8, 68, '2023-05-08', 10, 1999000.00),
(129, 9, 69, '2023-05-09', 5, 749500.00),
(130, 10, 70, '2023-05-10', 12, 2498800.00),
(131, 11, 71, '2023-05-11', 9, 1349100.00),
(132, 12, 72, '2023-05-12', 10, 1599000.00),
(133, 13, 73, '2023-05-13', 15, 3298500.00),
(134, 14, 74, '2023-05-14', 20, 4198000.00),
(135, 15, 75, '2023-05-15', 8, 1599200.00),
(136, 16, 76, '2023-05-16', 7, 1249300.00),
(137, 17, 77, '2023-05-17', 25, 3747500.00),
(138, 18, 78, '2023-05-18', 50, 7990000.00),
(139, 19, 79, '2023-05-19', 14, 1958600.00),
(140, 20, 80, '2023-05-20', 30, 5997000.00),
(141, 21, 81, '2023-05-21', 10, 2599000.00),
(142, 22, 82, '2023-05-22', 8, 1599200.00),
(143, 23, 83, '2023-05-23', 14, 5598600.00),
(144, 24, 84, '2023-05-24', 6, 1499400.00),
(145, 25, 85, '2023-05-25', 7, 1749300.00),
(146, 26, 86, '2023-05-26', 25, 3247500.00),
(147, 27, 87, '2023-05-27', 50, 7495000.00),
(148, 28, 88, '2023-05-28', 10, 1299000.00),
(149, 29, 89, '2023-05-29', 5, 749500.00),
(150, 30, 90, '2023-05-30', 12, 2498800.00),
(151, 31, 91, '2023-05-31', 9, 1349100.00),
(152, 32, 92, '2023-06-01', 10, 1599000.00),
(153, 33, 93, '2023-06-02', 8, 1599200.00),
(154, 34, 94, '2023-06-03', 7, 1549300.00),
(155, 35, 95, '2023-06-04', 25, 3247500.00),
(156, 36, 96, '2023-06-05', 50, 7990000.00),
(157, 37, 97, '2023-06-06', 14, 1958600.00),
(158, 38, 98, '2023-06-07', 6, 1799400.00),
(159, 39, 99, '2023-06-08', 30, 4497000.00),
(241, 1, 61, '2023-08-28', 500, 74950000.00),
(242, 2, 62, '2023-08-29', 1000, 99999999.99),
(243, 3, 63, '2023-08-30', 750, 99999999.99),
(244, 4, 64, '2023-08-31', 1200, 99999999.99),
(245, 5, 65, '2023-09-01', 900, 99999999.99),
(246, 6, 66, '2023-09-02', 1100, 99999999.99),
(247, 7, 67, '2023-09-03', 600, 95940000.00),
(248, 8, 68, '2023-09-04', 1300, 99999999.99),
(249, 9, 69, '2023-09-05', 800, 99999999.99),
(250, 10, 70, '2023-09-06', 950, 99999999.99),
(251, 11, 71, '2023-09-07', 700, 99999999.99),
(252, 12, 72, '2023-09-08', 1050, 99999999.99),
(253, 13, 73, '2023-09-09', 1150, 99999999.99),
(254, 14, 74, '2023-09-10', 1250, 99999999.99),
(255, 15, 75, '2023-09-11', 650, 99999999.99),
(256, 16, 76, '2023-09-12', 1000, 99999999.99),
(257, 17, 77, '2023-09-13', 850, 99999999.99),
(258, 18, 78, '2023-09-14', 950, 99999999.99),
(259, 19, 79, '2023-09-15', 1400, 99999999.99),
(260, 20, 80, '2023-09-16', 1500, 99999999.99),
(261, 21, 81, '2023-09-17', 1550, 99999999.99),
(262, 22, 82, '2023-09-18', 1600, 99999999.99),
(263, 23, 83, '2023-09-19', 1650, 99999999.99),
(264, 24, 84, '2023-09-20', 1700, 99999999.99),
(265, 25, 85, '2023-09-21', 1800, 99999999.99),
(266, 26, 86, '2023-09-22', 1750, 99999999.99),
(267, 27, 87, '2023-09-23', 1850, 99999999.99),
(268, 28, 88, '2023-09-24', 1900, 99999999.99),
(269, 29, 89, '2023-09-25', 1950, 99999999.99),
(270, 30, 90, '2023-09-26', 2000, 99999999.99),
(271, 31, 91, '2023-09-27', 2050, 99999999.99),
(272, 32, 92, '2023-09-28', 2100, 99999999.99),
(273, 33, 93, '2023-09-29', 2150, 99999999.99),
(274, 34, 94, '2023-09-30', 2200, 99999999.99),
(275, 35, 95, '2023-10-01', 2250, 99999999.99),
(276, 36, 96, '2023-10-02', 2300, 99999999.99),
(277, 37, 97, '2023-10-03', 2350, 99999999.99),
(278, 38, 98, '2023-10-04', 2400, 99999999.99),
(279, 39, 99, '2023-10-05', 2450, 99999999.99),
(280, 40, 100, '2023-10-06', 2500, 99999999.99),
(281, 1, 61, '2023-10-07', 2600, 99999999.99),
(282, 2, 62, '2023-10-08', 2700, 99999999.99),
(283, 3, 63, '2023-10-09', 2800, 99999999.99),
(284, 4, 64, '2023-10-10', 2900, 99999999.99),
(285, 5, 65, '2023-10-11', 3000, 99999999.99),
(286, 6, 66, '2023-10-12', 3100, 99999999.99),
(287, 7, 67, '2023-10-13', 3200, 99999999.99),
(288, 8, 68, '2023-10-14', 3300, 99999999.99),
(289, 9, 69, '2023-10-15', 3400, 99999999.99),
(290, 10, 70, '2023-10-16', 3500, 99999999.99),
(291, 11, 71, '2023-10-17', 3600, 99999999.99),
(292, 12, 72, '2023-10-18', 3700, 99999999.99),
(293, 13, 73, '2023-10-19', 3800, 99999999.99),
(294, 14, 74, '2023-10-20', 3900, 99999999.99),
(295, 15, 75, '2023-10-21', 4000, 99999999.99),
(296, 16, 76, '2023-10-22', 4100, 99999999.99),
(297, 17, 77, '2023-10-23', 4200, 99999999.99),
(298, 18, 78, '2023-10-24', 4300, 99999999.99),
(299, 19, 79, '2023-10-25', 4400, 99999999.99),
(300, 20, 80, '2023-10-26', 4500, 99999999.99);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `url_gambar` varchar(255) DEFAULT NULL,
  `tanggal_rilis` date DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama`, `deskripsi`, `url_gambar`, `tanggal_rilis`, `harga`, `rating`) VALUES
(1, 'Serum Pencerah GlowRX', 'Serum pencerah GlowRX mengandung bahan aktif yang membantu mencerahkan kulit dan meratakan warna kulit, menjadikannya lebih cerah dan bercahaya.', '../img/serumpencerah.webp', '2023-01-01', 299900.00, 5),
(2, 'Pelembab GlowRX', 'Pelembab GlowRX memberikan hidrasi mendalam dengan formulasi khusus yang menembus lapisan kulit, menjaga kelembaban sepanjang hari dan membuat kulit terasa lembut.', '../img/pelembab.webp', '2023-02-15', 199900.00, 4),
(3, 'Krim Anti-Aging GlowRX', 'Krim Anti-Aging GlowRX diformulasikan untuk mengurangi tanda-tanda penuaan seperti garis halus dan kerutan, dengan bahan aktif yang meningkatkan elastisitas kulit.', '../img/krimantiaging.webp', '2023-03-01', 399900.00, 4),
(4, 'Scrub Eksfoliasi GlowRX', 'Scrub Eksfoliasi GlowRX mengelupas sel kulit mati dan melembutkan kulit, menjadikannya lebih halus dan cerah. Cocok untuk semua jenis kulit.', '../img/scrubeksfo.webp', '2023-03-15', 249900.00, 5),
(5, 'Sunscreen SPF 50 GlowRX', 'Sunscreen SPF 50 GlowRX memberikan perlindungan tinggi terhadap sinar UV, mencegah kerusakan kulit akibat paparan sinar matahari. Formula ringan dan tidak lengket.', '../img/sunscreenspf50.webp', '2023-04-01', 159900.00, 5),
(6, 'Krim Malam GlowRX', 'Krim Malam GlowRX menutrisi kulit selama tidur dengan bahan aktif yang memperbaiki dan meregenerasi sel kulit, menghasilkan kulit yang sehat dan bercahaya.', '../img/krimmalam.webp', '2023-04-15', 349900.00, 5),
(7, 'Serum Mata GlowRX', 'Serum Mata GlowRX mengurangi lingkaran hitam dan bengkak di area mata dengan formulasi khusus yang menyegarkan dan mengencangkan kulit di sekitar mata.', '../img/serummata.webp', '2023-05-01', 259900.00, 4),
(8, 'Foam Pembersih GlowRX', 'Foam Pembersih GlowRX membersihkan wajah dari kotoran dan minyak berlebih, memberikan sensasi segar dan bersih tanpa membuat kulit terasa kering.', '../img/facialwash.webp', '2023-05-15', 129900.00, 4),
(9, 'Toner GlowRX', 'Toner GlowRX menyeimbangkan pH kulit dan menyegarkan kulit setelah pembersihan, menjadikannya lebih siap untuk menerima perawatan selanjutnya.', '../img/toner.webp', '2023-06-01', 149900.00, 5),
(10, 'Lip Balm GlowRX', 'Lip Balm GlowRX menjaga kelembaban bibir dengan formula pelembab yang tahan lama, menjadikan bibir lembut dan terhidrasi sepanjang hari.', '../img/lipbalm.webp', '2023-06-15', 79900.00, 5),
(11, 'Masker Wajah GlowRX', 'Masker Wajah GlowRX menutrisi dan melembabkan kulit dengan bahan-bahan alami yang kaya nutrisi, memberikan hasil kulit yang lebih cerah dan lembut.', '../img/maskerwajah.webp', '2023-07-01', 199900.00, 5),
(12, 'Essence GlowRX', 'Essence GlowRX menghidrasi kulit dengan intens, memberikan kelembaban dan nutrisi yang dalam untuk kulit yang lebih sehat dan bercahaya.', '../img/essence.webp', '2023-07-15', 229900.00, 5),
(13, 'Peeling Gel GlowRX', 'Peeling Gel GlowRX mengangkat sel kulit mati dan membersihkan pori-pori, meninggalkan kulit yang halus dan segar setelah pemakaian.', '../img/peelinggel.webp', '2023-08-01', 179900.00, 5),
(14, 'Serum Vitamin C GlowRX', 'Serum Vitamin C GlowRX mencerahkan kulit dan mengurangi noda hitam dengan kandungan vitamin C yang tinggi, menjadikan kulit tampak lebih cerah dan bersinar.', '../img/serumvitc.webp', '2023-08-15', 279900.00, 5),
(15, 'Clay Mask GlowRX', 'Clay Mask GlowRX membersihkan pori-pori dan mengontrol minyak berlebih dengan kandungan tanah liat alami, menjadikan kulit lebih bersih dan segar.', '../img/claymask.webp', '2023-09-01', 199900.00, 4),
(16, 'Krim Siang GlowRX', 'Krim Siang GlowRX dengan SPF melindungi kulit dari sinar UV sekaligus memberikan hidrasi dan nutrisi, menjaga kulit tetap sehat dan terlindungi sepanjang hari.', '../img/krimsiang.webp', '2023-09-15', 329900.00, 5),
(17, 'Serum Retinol GlowRX', 'Serum Retinol GlowRX mengurangi garis halus dan kerutan dengan kandungan retinol yang efektif, menjadikan kulit tampak lebih muda dan kencang.', '../img/serumretinol.webp', '2023-10-01', 309900.00, 5),
(18, 'Facial Wash GlowRX', 'Facial Wash GlowRX membersihkan wajah dari kotoran dan minyak, memberikan sensasi bersih dan segar tanpa membuat kulit kering.', '../img/facialwash.webp', '2023-10-15', 109900.00, 4),
(19, 'Sheet Mask GlowRX', 'Sheet Mask GlowRX memberikan kelembaban instan pada kulit dengan bahan-bahan yang menutrisi, menjadikan kulit terasa lembut dan terhidrasi.', '../img/sheetmask.webp', '2023-11-01', 49900.00, 4),
(20, 'Anti-Pollution Mist GlowRX', 'Anti-Pollution Mist GlowRX melindungi kulit dari polusi dan radikal bebas dengan formula yang menyegarkan dan mudah diserap, menjaga kulit tetap sehat.', '../img/antipolutionmist.webp', '2023-11-15', 179900.00, 5),
(21, 'Serum Hyaluronic Acid GlowRX', 'Serum Hyaluronic Acid GlowRX memberikan hidrasi maksimal dengan kandungan hyaluronic acid yang tinggi, menjadikan kulit terasa lebih kenyal dan lembut.', '../img/serumhyaluronicacid.webp', '2023-12-01', 259900.00, 5),
(22, 'Micellar Water GlowRX', 'Micellar Water GlowRX membersihkan makeup dan kotoran dengan lembut, meninggalkan kulit bersih dan segar tanpa rasa kering.', '../img/micellarwater.webp', '2023-12-15', 99900.00, 4),
(23, 'Krim Pencerah GlowRX', 'Krim Pencerah GlowRX mencerahkan kulit dan mengurangi noda hitam dengan bahan aktif yang efektif, menjadikan kulit lebih cerah dan merata.', '../img/krimbrightening.webp', '2024-01-01', 299900.00, 5),
(24, 'Serum Niacinamide GlowRX', 'Serum Niacinamide GlowRX mengurangi pori-pori dan menghaluskan tekstur kulit dengan kandungan niacinamide yang tinggi, menjadikan kulit tampak lebih halus dan bersih.', '../img/serumniacinamide.webp', '2024-01-15', 289900.00, 5),
(25, 'Body Lotion GlowRX', 'Body Lotion GlowRX melembabkan dan menutrisi kulit tubuh dengan formula yang cepat menyerap, menjadikan kulit terasa lembut dan halus.', '../img/bodylotion.webp', '2024-02-01', 149900.00, 5),
(26, 'Eye Cream GlowRX', 'Eye Cream GlowRX mengurangi kerutan dan lingkaran hitam di sekitar mata dengan bahan aktif yang mengencangkan dan melembutkan kulit.', '../img/eyecream.webp', '2024-02-15', 239900.00, 5),
(27, 'Acne Spot Treatment GlowRX', 'Acne Spot Treatment GlowRX mengatasi jerawat dan kemerahan dengan cepat dengan bahan aktif yang menenangkan dan menyembuhkan kulit.', '../img/acnespottreat.webp', '2024-03-01', 169900.00, 5),
(28, 'Serum Peptide GlowRX', 'Serum Peptide GlowRX meningkatkan elastisitas kulit dengan kandungan peptide yang tinggi, menjadikan kulit lebih kencang dan halus.', '../img/serumpeptide.webp', '2024-03-15', 319900.00, 5),
(29, 'Foam Cleanser GlowRX', 'Foam Cleanser GlowRX membersihkan kulit dari kotoran dan minyak dengan lembut, memberikan sensasi bersih dan segar tanpa rasa kering.', '../img/foamcleanser.webp', '2024-04-01', 139900.00, 4),
(30, 'Krim Siang SPF 30 GlowRX', 'Krim Siang SPF 30 GlowRX melindungi kulit dari sinar UV dengan SPF 30 sekaligus memberikan hidrasi dan nutrisi, menjaga kulit tetap sehat dan terlindungi.', '../img/krimsiang.webp', '2024-04-15', 329900.00, 5),
(31, 'Serum Brightening GlowRX', 'Serum Brightening GlowRX mencerahkan kulit kusam dengan bahan aktif yang efektif, menjadikan kulit lebih cerah dan bercahaya.', '../img/serumpencerah.webp', '2024-05-01', 269900.00, 5),
(32, 'Gel Pelembab GlowRX', 'Gel Pelembab GlowRX memberikan hidrasi yang ringan untuk kulit berminyak dan kombinasi, menjadikan kulit terasa segar dan lembut tanpa rasa lengket.', 'gelpelembab.webp', '2024-05-15', 199900.00, 5),
(33, 'Serum Anti-Pollution GlowRX', 'Serum Anti-Pollution GlowRX melindungi kulit dari polusi dengan kandungan antioksidan yang tinggi, menjadikan kulit lebih sehat dan bercahaya.', '../img/serumantipollution.webp', '2024-06-01', 289900.00, 5),
(34, 'Exfoliating Toner GlowRX', 'Exfoliating Toner GlowRX mengangkat sel kulit mati dan membersihkan pori-pori dengan lembut, menjadikan kulit terasa lebih halus dan segar.', '../img/tonerexfoliating.webp', '2024-06-15', 179900.00, 4),
(35, 'Sleeping Mask GlowRX', 'Sleeping Mask GlowRX menutrisi kulit sepanjang malam dengan bahan-bahan yang kaya nutrisi, menjadikan kulit terasa lebih lembut dan terhidrasi di pagi hari.', '../img/sleepingmask.webp', '2024-07-01', 239900.00, 5),
(36, 'Serum Collagen GlowRX', 'Serum Collagen GlowRX meningkatkan elastisitas dan kekenyalan kulit dengan kandungan collagen yang tinggi, menjadikan kulit lebih kencang dan halus.', '../img/serumcollagen.webp', '2024-07-15', 319900.00, 5),
(37, 'Moisture Mist GlowRX', 'Moisture Mist GlowRX memberikan hidrasi instan dengan formula yang ringan dan mudah diserap, menjadikan kulit terasa segar dan lembab.', '../img/moisturemist.webp', '2024-08-01', 159900.00, 5),
(38, 'Serum Ceramide GlowRX', 'Serum Ceramide GlowRX memperbaiki barrier kulit dengan kandungan ceramide yang tinggi, menjadikan kulit lebih sehat dan terlindungi.', '../img/serumceramide.webp', '2024-08-15', 299900.00, 5),
(39, 'Hydrating Toner GlowRX', 'Hydrating Toner GlowRX memberikan hidrasi ekstra pada kulit dengan kandungan bahan-bahan pelembab yang efektif, menjadikan kulit terasa lebih kenyal dan lembut.', '../img/hydratingtoner.webp', '2024-09-01', 149900.00, 4),
(40, 'Anti-Acne Gel GlowRX', 'Anti-Acne Gel GlowRX mengatasi jerawat dan mengurangi kemerahan dengan bahan aktif yang menenangkan dan menyembuhkan kulit, menjadikan kulit lebih bersih dan sehat.', '../img/antiacnegel.webp', '2024-09-15', 179900.00, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produkbahan`
--

CREATE TABLE `produkbahan` (
  `id_produk` int(11) NOT NULL,
  `id_bahan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produkbahan`
--

INSERT INTO `produkbahan` (`id_produk`, `id_bahan`) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 4),
(3, 5),
(3, 9),
(4, 6),
(4, 7),
(5, 4),
(5, 10),
(6, 8),
(6, 9),
(7, 1),
(7, 2),
(8, 3),
(8, 7),
(9, 1),
(9, 6),
(10, 4),
(10, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `nama_kampanye` varchar(255) NOT NULL,
  `penjualan_sales` int(11) NOT NULL,
  `tanggal_kampanye` date NOT NULL,
  `traffic_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sales`
--

INSERT INTO `sales` (`id`, `nama_kampanye`, `penjualan_sales`, `tanggal_kampanye`, `traffic_id`) VALUES
(1, 'Influencer Instagram', 120, '2023-05-10', 1),
(2, 'Iklan Facebook', 200, '2023-06-15', 2),
(3, 'Google AdWords', 250, '2023-07-20', 3),
(4, 'Email Marketing', 100, '2023-08-05', 4),
(5, 'Iklan YouTube', 180, '2023-09-10', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipekulit`
--

CREATE TABLE `tipekulit` (
  `id_tipe_kulit` int(11) NOT NULL,
  `tipe` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tipekulit`
--

INSERT INTO `tipekulit` (`id_tipe_kulit`, `tipe`) VALUES
(1, 'Normal'),
(2, 'Kering'),
(3, 'Berminyak'),
(4, 'Kombinasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `traffic`
--

CREATE TABLE `traffic` (
  `id` int(11) NOT NULL,
  `sumber_lalu_lintas` varchar(255) NOT NULL,
  `tanggal_kunjungan` date NOT NULL,
  `id_pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `traffic`
--

INSERT INTO `traffic` (`id`, `sumber_lalu_lintas`, `tanggal_kunjungan`, `id_pengguna`) VALUES
(1, 'Instagram', '2023-05-10', 1),
(2, 'Facebook', '2023-06-15', 2),
(3, 'Google', '2023-07-20', 3),
(4, 'Email', '2023-08-05', 4),
(5, 'YouTube', '2023-09-10', 5),
(6, 'Instagram', '2023-05-11', 1),
(7, 'Facebook', '2023-06-16', 2),
(8, 'Google', '2023-07-21', 3),
(9, 'Email', '2023-08-06', 4),
(10, 'YouTube', '2023-09-11', 5),
(11, 'Instagram', '2023-05-10', 1),
(12, 'Instagram', '2023-05-11', 12),
(13, 'Instagram', '2023-05-12', 11),
(14, 'Instagram', '2023-05-13', 14),
(15, 'Instagram', '2023-05-14', 15),
(16, 'Instagram', '2023-05-15', 15),
(17, 'Instagram', '2023-05-16', 6),
(18, 'Instagram', '2023-05-17', 35),
(19, 'Instagram', '2023-05-18', 32),
(20, 'Instagram', '2023-05-19', 22),
(21, 'Instagram', '2023-05-20', 23),
(22, 'Instagram', '2023-05-21', 25),
(23, 'Instagram', '2023-05-22', 35),
(24, 'Instagram', '2023-05-23', 21),
(25, 'Instagram', '2023-05-24', 24),
(26, 'Instagram', '2023-05-25', NULL),
(27, 'Instagram', '2023-05-26', NULL),
(28, 'Instagram', '2023-05-27', NULL),
(29, 'Instagram', '2023-05-28', NULL),
(30, 'Instagram', '2023-05-29', NULL),
(31, 'Instagram', '2023-05-30', NULL),
(32, 'Facebook', '2023-06-15', NULL),
(33, 'Facebook', '2023-06-16', NULL),
(34, 'Facebook', '2023-06-17', NULL),
(35, 'Facebook', '2023-06-18', NULL),
(36, 'Facebook', '2023-06-19', NULL),
(37, 'Facebook', '2023-06-20', NULL),
(38, 'Facebook', '2023-06-21', NULL),
(39, 'Facebook', '2023-06-22', NULL),
(40, 'Facebook', '2023-06-23', NULL),
(41, 'Facebook', '2023-06-24', NULL),
(42, 'Facebook', '2023-06-25', NULL),
(43, 'Facebook', '2023-06-26', NULL),
(44, 'Facebook', '2023-06-27', NULL),
(45, 'Facebook', '2023-06-28', NULL),
(46, 'Facebook', '2023-06-29', NULL),
(47, 'Facebook', '2023-06-30', NULL),
(48, 'Facebook', '2023-07-01', NULL),
(49, 'Facebook', '2023-07-02', NULL),
(50, 'Facebook', '2023-07-03', NULL),
(51, 'Facebook', '2023-07-04', NULL),
(52, 'Facebook', '2023-07-05', NULL),
(53, 'Google', '2023-07-20', NULL),
(54, 'Google', '2023-07-21', NULL),
(55, 'Google', '2023-07-22', NULL),
(56, 'Google', '2023-07-23', NULL),
(57, 'Google', '2023-07-24', NULL),
(58, 'Google', '2023-07-25', NULL),
(59, 'Google', '2023-07-26', NULL),
(60, 'Google', '2023-07-27', NULL),
(61, 'Google', '2023-07-28', NULL),
(62, 'Google', '2023-07-29', NULL),
(63, 'Google', '2023-07-30', NULL),
(64, 'Google', '2023-07-31', NULL),
(65, 'Google', '2023-08-01', NULL),
(66, 'Google', '2023-08-02', NULL),
(67, 'Google', '2023-08-03', NULL),
(68, 'Google', '2023-08-04', NULL),
(69, 'Google', '2023-08-05', NULL),
(70, 'Google', '2023-08-06', NULL),
(71, 'Google', '2023-08-07', NULL),
(72, 'Google', '2023-08-08', NULL),
(73, 'Google', '2023-08-09', NULL),
(74, 'Email', '2023-08-05', NULL),
(75, 'Email', '2023-08-06', NULL),
(76, 'Email', '2023-08-07', NULL),
(77, 'Email', '2023-08-08', NULL),
(78, 'Email', '2023-08-09', NULL),
(79, 'Email', '2023-08-10', NULL),
(80, 'Email', '2023-08-11', NULL),
(81, 'Email', '2023-08-12', NULL),
(82, 'Email', '2023-08-13', NULL),
(83, 'Email', '2023-08-14', NULL),
(84, 'Email', '2023-08-15', NULL),
(85, 'Email', '2023-08-16', NULL),
(86, 'Email', '2023-08-17', NULL),
(87, 'Email', '2023-08-18', NULL),
(88, 'Email', '2023-08-19', NULL),
(89, 'Email', '2023-08-20', NULL),
(90, 'Email', '2023-08-21', NULL),
(91, 'Email', '2023-08-22', NULL),
(92, 'Email', '2023-08-23', NULL),
(93, 'Email', '2023-08-24', NULL),
(94, 'Email', '2023-08-25', NULL),
(95, 'YouTube', '2023-09-10', NULL),
(96, 'YouTube', '2023-09-11', NULL),
(97, 'YouTube', '2023-09-12', NULL),
(98, 'YouTube', '2023-09-13', NULL),
(99, 'YouTube', '2023-09-14', NULL),
(100, 'YouTube', '2023-09-15', NULL),
(101, 'YouTube', '2023-09-16', NULL),
(102, 'YouTube', '2023-09-17', NULL),
(103, 'YouTube', '2023-09-18', NULL),
(104, 'YouTube', '2023-09-19', NULL),
(105, 'YouTube', '2023-09-20', NULL),
(106, 'YouTube', '2023-09-21', NULL),
(107, 'YouTube', '2023-09-22', NULL),
(108, 'YouTube', '2023-09-23', NULL),
(109, 'YouTube', '2023-09-24', NULL),
(110, 'YouTube', '2023-09-25', NULL),
(111, 'YouTube', '2023-09-26', NULL),
(112, 'YouTube', '2023-09-27', NULL),
(113, 'YouTube', '2023-09-28', NULL),
(114, 'YouTube', '2023-09-29', NULL),
(115, 'YouTube', '2023-09-30', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bahan`
--
ALTER TABLE `bahan`
  ADD PRIMARY KEY (`id_bahan`);

--
-- Indeks untuk tabel `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD PRIMARY KEY (`id_pemasukan`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_tipe_kulit` (`id_tipe_kulit`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_produk` (`id_produk`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `produkbahan`
--
ALTER TABLE `produkbahan`
  ADD PRIMARY KEY (`id_produk`,`id_bahan`),
  ADD KEY `id_bahan` (`id_bahan`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sales_traffic` (`traffic_id`);

--
-- Indeks untuk tabel `tipekulit`
--
ALTER TABLE `tipekulit`
  ADD PRIMARY KEY (`id_tipe_kulit`);

--
-- Indeks untuk tabel `traffic`
--
ALTER TABLE `traffic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_traffic_pengguna` (`id_pengguna`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bahan`
--
ALTER TABLE `bahan`
  MODIFY `id_bahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pemasukan`
--
ALTER TABLE `pemasukan`
  MODIFY `id_pemasukan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tipekulit`
--
ALTER TABLE `tipekulit`
  MODIFY `id_tipe_kulit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `traffic`
--
ALTER TABLE `traffic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD CONSTRAINT `pemasukan_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Ketidakleluasaan untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD CONSTRAINT `pengeluaran_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Ketidakleluasaan untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `pengguna_ibfk_1` FOREIGN KEY (`id_tipe_kulit`) REFERENCES `tipekulit` (`id_tipe_kulit`);

--
-- Ketidakleluasaan untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`),
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`);

--
-- Ketidakleluasaan untuk tabel `produkbahan`
--
ALTER TABLE `produkbahan`
  ADD CONSTRAINT `produkbahan_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`),
  ADD CONSTRAINT `produkbahan_ibfk_2` FOREIGN KEY (`id_bahan`) REFERENCES `bahan` (`id_bahan`);

--
-- Ketidakleluasaan untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `fk_sales_traffic` FOREIGN KEY (`traffic_id`) REFERENCES `traffic` (`id`);

--
-- Ketidakleluasaan untuk tabel `traffic`
--
ALTER TABLE `traffic`
  ADD CONSTRAINT `fk_traffic_pengguna` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
