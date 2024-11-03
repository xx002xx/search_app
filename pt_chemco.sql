-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Nov 2024 pada 08.33
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pt_chemco`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `documents`
--

CREATE TABLE `documents` (
  `id` varchar(50) NOT NULL,
  `no_dokumen` varchar(50) DEFAULT NULL,
  `nama_dokumen` varchar(255) DEFAULT NULL,
  `revisi_ke` int(11) DEFAULT NULL,
  `nama_file_prod` varchar(255) DEFAULT NULL,
  `nama_file_dev` varchar(255) DEFAULT NULL,
  `kategori_prosedur` int(11) DEFAULT NULL,
  `kategori_dokumen` int(11) DEFAULT NULL,
  `create_at` bigint(20) DEFAULT NULL,
  `update_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `remark` text,
  `approved_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `documents`
--

INSERT INTO `documents` (`id`, `no_dokumen`, `nama_dokumen`, `revisi_ke`, `nama_file_prod`, `nama_file_dev`, `kategori_prosedur`, `kategori_dokumen`, `create_at`, `update_at`, `created_by`, `updated_by`, `status`, `remark`, `approved_by`) VALUES
('Q.201809.003', 'A - 01', 'Quality Manual', 14, 'QP-A - 01-13.pdf', 'QD-A - 01-14.xlsx', 2, 2, 1537860417, 1584928157, 3, 8, NULL, '8', 0),
('Q.201809.004', 'QR - QA - 01', 'Pengendalian Dokumen dan Data', 5, 'QP-QR - QA - 01-5.pdf', 'QD-QR - QA - 01-5.doc', 2, 3, 1537861229, 1584514408, 3, 1, 3, NULL, 8),
('Q.201809.005', 'QR - QA - 04', 'Tinjauan Manajemen', 3, 'QP-QR - QA - 04-3.pdf', 'QD-QR - QA - 04-3.doc', 2, 3, 1537861890, 1584514408, 3, 1, 3, NULL, 8),
('Q.201809.006', 'QR - QA - 06', 'Penetapan Lot Nomor', 14, 'QP-QR - QA - 06-14.pdf', 'QD-QR - QA - 06-14.doc', 2, 3, 1537862801, 1584514408, 3, 1, 3, NULL, 8),
('Q.201809.007', 'QR - QA - 09', 'Pengendalian Ketidaksesuaian Produk', 16, 'QP-QR - QA - 09-17.pdf', 'QD-QR - QA - 09-17.xlsx', 2, 3, 1537863314, 1584514408, 3, 1, 3, NULL, 8),
('Q.201809.008', 'QR - QA - 10', 'Audit Mutu', 4, 'QP-QR - QA - 10-4.pdf', 'QD-QR - QA - 10-4.xls', 2, 3, 1537863833, 1584514408, 3, 1, 3, NULL, 8),
('Q.201809.009', 'QR - QA - 17', 'Prosedur Proses Claim Supplier', 3, 'QP-QR - QA - 17-3.pdf', 'QD-QR - QA - 17-3.doc', 2, 3, 1537864677, 1584514408, 3, 1, 3, NULL, 8),
('Q.201809.010', 'QR - PC - Del - 001', 'Pengendalian Proses Handling & Supply Material', 1, 'QP-QR - PC - Del - 001-1.pdf', 'QD-QR - PC - Del - 001-1.doc', 2, 3, 1537865269, 1584514408, 3, 1, 3, NULL, 8),
('Q.201809.011', 'QR - PC - Del - 002', 'Pengendalian Proses Delivery', 1, 'QP-QR - PC - Del - 002-1.pdf', 'QD-QR - PC - Del - 002-1.doc', 2, 3, 1537865491, 1584514408, 3, 1, 3, NULL, 8),
('Q.201809.012', 'QR - PC - PP - 001', 'Pengendalian Proses & Planning Produksi', 1, 'QP-QR - PC - PP - 001-1.pdf', 'QD-QR - PC - PP - 001-1.doc', 2, 3, 1537865685, 1584514408, 3, 1, 3, NULL, 8),
('Q.201809.013', 'QR - 08 - ACC - 001', 'Pembayaran Tagihan Pembelian', 0, 'QP-QR - 08 - ACC - 001-0.pdf', 'QD-QR - 08 - ACC - 001-0.doc', 2, 3, 1537865944, 1584514408, 3, 1, 3, NULL, 8),
('Q.201809.014', 'QR - F1 - Prod - 001', 'Pelaksanaan & Pengendalian Proses Produksi', 3, 'QP-QR - F1 - Prod - 001-3.pdf', 'QD-QR - F1 - Prod - 001-3.xls', 2, 3, 1537866468, 1584514408, 3, 1, 3, NULL, 8),
('Q.201809.015', 'QS - QA - 02', 'Pengoperasian Standard Inspeksi', 8, 'QD-QS - QA - 02-8.xlsx', '2', 4, 1537925997, 1584514408, 3, 1, 3, NULL, '8', 0),
('Q.201809.016', 'QS - QA - 01', 'Pengoperasian Daftar Quality Control Proses', 9, 'QP-QS - QA - 01-9.pdf', 'QD-QS - QA - 01-9.xlsx', 2, 4, 1537926291, 1584514408, 3, 1, 3, NULL, 8),
('Q.201809.017', 'QS - QA - 03', 'Pengoperasian Standard Operasional Prosedur', 8, 'QD-QS - QA - 03-8.xls', '2', 4, 1537926535, 1584514408, 3, 1, 3, NULL, '8', 0),
('Q.201809.018', 'QS - QA - 04', 'Pengoperasian Flow Sign Board', 0, 'QP-QS - QA - 04-0.pdf', 'QD-QS - QA - 04-0.xls', 2, 4, 1537926978, 1584514408, 3, 1, 3, NULL, 8),
('Q.201809.019', 'QS - QA - 05', 'Pengoperasian Point Card', 1, 'QP-QS - QA - 05-1.pdf', 'QD-QS - QA - 05-1.xls', 2, 4, 1537927246, 1584514408, 3, 1, 3, NULL, 8),
('Q.201809.020', 'QS - QA - 06', 'Pembuatan Proses Quality Check Sheet', 5, 'QP-QS - QA - 06-5.pdf', 'QD-QS - QA - 06-5.xls', 2, 4, 1537927513, 1584514408, 3, 1, 3, NULL, 8),
('Q.201810.001', 'QR - QA - 02', 'Rekaman Mutu', 4, 'QP-QR - QA - 02-4.pdf', 'QD-QR - QA - 02-4.doc', 2, 3, 1538619563, 1584514408, 3, 1, 3, NULL, 8),
('Q.201810.002', 'QR - QA - 03', 'Manajemen Planning', 3, 'QP-QR - QA - 03-3.pdf', 'QD-QR - QA - 03-3.doc', 2, 3, 1538628922, 1584514408, 3, 1, 3, NULL, 8),
('Q.201810.003', 'QR - QA -05', 'Perencanaan Design dan Pengembangan ', 4, 'QP-QR - QA -05-4.pdf', 'QD-QR - QA -05-4.xls', 2, 3, 1538629651, 1584514409, 3, 1, 3, NULL, 8),
('Q.201810.004', 'QR - QA - 07', 'Pengendalian Alat Ukur dan Kalibrasi', 10, 'QP-QR - QA - 07-12.pdf', 'QD-QR - QA - 07-12.docx', 2, 3, 1538638567, 1584514409, 3, 1, 3, NULL, 8),
('Q.201810.005', 'QR - QA - 08', 'Survey Kepuasan Pelanggan', 3, 'QP-QR - QA - 08-3.pdf', 'QD-QR - QA - 08-3.xls', 2, 3, 1538644371, 1584514409, 3, 1, 3, NULL, 8),
('Q.201810.006', 'QR - QA - 15', 'F I F O', 2, 'QP-QR - QA - 15-2.pdf', 'QD-QR - QA - 15-2.doc', 2, 3, 1539057880, 1584514409, 3, 1, 3, NULL, 8),
('Q.201810.007', 'QR - QA - 11', 'Program Peningkatan Kualitas', 2, 'QP-QR - QA - 11-2.pdf', 'QD-QR - QA - 11-2.doc', 2, 3, 1539058214, 1584514409, 3, 1, 3, NULL, 8),
('Q.201810.008', 'QR - QA - 13', 'Pengendalian Proses Awal', 2, 'QP-QR - QA - 13-2.pdf', 'QD-QR - QA - 13-2.doc', 2, 3, 1539058313, 1584514409, 3, 1, 3, NULL, 8),
('Q.201810.009', 'QR - QA - 16', 'Lokalisasi Part', 2, 'QP-QR - QA - 16-2.pdf', 'QD-QR - QA - 16-2.doc', 2, 3, 1539058511, 1584514409, 3, 1, 3, NULL, 8),
('Q.201810.010', 'QR - QA - 18', 'Packaging System', 4, 'QP-QR - QA - 18-4.pdf', 'QD-QR - QA - 18-4.doc', 2, 3, 1539058797, 1584514409, 3, 1, 3, NULL, 8),
('Q.201810.011', 'QR - P3C - 01', 'Planning Produksi', 4, 'QP-QR - P3C - 01-4.pdf', 'QD-QR - P3C - 01-4.xls', 2, 3, 1539224655, 1584514409, 3, 1, 3, NULL, 8),
('Q.201810.012', 'QR - QA - 19', 'Bagan Korelasi Quality Assurance', 2, 'QP-QR-QA-19-2.pdf', 'QD-QR-QA-19-2.xls', 2, 3, 1539228309, 1584514409, 3, 1, 3, NULL, 8),
('Q.201903.001', 'QR - QA -20', 'Pendelegasian Tugas & Tanggung Jawab', 0, 'QP-QR - QA -20-0.pdf', 'QD-QR - QA -20-0.doc', 2, 3, 1551849704, 1584514409, 3, 1, 3, NULL, 8),
('Q.201910.003', 'QR_0100', 'Bagan Sistem Quality Assurance', 5, 'QP-QR_0100-5.xlsx', 'QD-QR_0100-5.xlsx', 2, 3, 1571364027, 1665394120, 4, 4, 4, '', 8),
('Q.201910.004', 'QR_0101', 'Rule Pengendalian Sistem Mutu', 1, 'QP-QR_0101-1.xlsx', 'QD-QR_0101-1.xlsx', 2, 3, 1571380579, 1665394619, 4, 4, 4, '', 8),
('Q.201910.005', 'QS_0102', 'Prosedur Pembuatan Bagan Sistem Quality Assurance', 1, 'QP-QS_0102-00.xlsx', 'QD-QS_0102-1.xlsx', 2, 4, 1571380944, 1665394654, 4, 4, 4, '', 8),
('Q.201910.006', 'QS_0103', 'Prosedur Kontrol QR & QS', 1, 'QP-QS_0103-3.xlsx', 'QD-QS_0103-1.xlsx', 2, 4, 1571380993, 1665394681, 4, 4, 4, '', 8),
('Q.201910.007', 'QS_0104', 'Prosedur Pengendalian Formulir Mutu', 1, 'QP-QS_0104-1.xlsx', 'QD-QS_0104-1.xlsx', 2, 4, 1571381084, 1665394703, 4, 4, 4, '', 8),
('Q.201910.008', 'QS_0105', 'Prosedur Penetepan Kebijakan dan Sasaran Mutu', 2, 'QP-QS_0105-2.xlsx', 'QD-QS_0105-2.xlsx', 2, 4, 1571381149, 1665394734, 4, 4, 4, '', 8),
('Q.201910.009', 'QS_0106', 'Prosedur Operasional Pembuatan Bisnis Plan', 5, 'QP-QS_0106-5.xlsx', 'QD-QS_0106-5.xlsx', 2, 4, 1571381293, 1665394796, 4, 4, 4, '', 8),
('Q.201910.010', 'QS_0107', 'Prosedur Tinjauan Manajemen', 11, 'QP-QS_0107-12.xlsx', 'QD-QS_0107-13.xlsx', 2, 4, 1571381404, 1587356856, 4, 4, 4, '', 8),
('Q.201910.011', 'QS_0108', 'Prosedur Rapat Komite', 1, 'QP-QS_0108-00.xlsx', 'QD-QS_0108-2.xlsx', 2, 4, 1571381450, 1587356901, 4, 4, 4, '', 8),
('Q.201910.012', 'QR_0201', 'Rule Pengendalian Kontrak dan Order', 1, 'QP-QR_0201-00.xlsx', 'QD-QR_0201-1.xlsx', 2, 3, 1571381511, 1665394844, 4, 4, 4, '', 8),
('Q.201910.013', 'QS_0202', 'Prosedur Pertimbangan Produk Baru', 1, 'QP-QS_0202-00.xlsx', 'QD-QS_0202-1.xlsx', 2, 4, 1571381576, 1665394873, 4, 4, 4, '', 8),
('Q.201910.014', 'QS_0203', 'Prosedur GO Mass-Production', 1, 'QP-QS_0203-00.xlsx', 'QD-QS_0203-1.xlsx', 2, 4, 1571381650, 1665394893, 4, 4, 4, '', 8),
('Q.201910.015', 'QS_0204', 'Prosedur Pemeriksaan dan Penyebaran Order', 1, 'QP-QS_0204-00.xlsx', 'QD-QS_0204-1.xlsx', 2, 4, 1571381901, 1665394916, 4, 4, 4, '', 8),
('Q.201910.016', 'QS_0205', 'Prosedur Pengoperasian Planning Produksi', 6, 'QP-QS_0205-05.xlsx', 'QD-QS_0205-6.xlsx', 2, 4, 1571381992, 1665394953, 4, 4, 4, '', 8),
('Q.201910.017', 'QS_0206', 'Prosedur Survey Kepuasan Pelanggan', 5, 'QP-QS_0206-04.xls', 'QD-QS_0206-5.xlsx', 2, 4, 1571382055, 1665394976, 4, 4, 4, '', 8),
('Q.201910.018', 'QS_0207', 'Prosedur Discontinue Parts', 1, 'QP-QS_0207-00.xlsx', 'QD-QS_0207-1.xlsx', 2, 4, 1571382124, 1665395003, 4, 4, 4, '', 8),
('Q.201910.020', 'QS_0302', 'Prosedur Perencanaan Part New Model', 24, 'QP-QS_0302-23.xlsx', 'QD-QS_0302-24.xlsx', 2, 4, 1571382412, 1665395078, 4, 4, 4, '', 8),
('Q.201910.021', 'QS_0303', 'Prosedur Perubahan Design', 6, 'QP-QS_0303-05.xlsx', 'QD-QS_0303-6.xlsx', 2, 4, 1571382492, 1665395101, 4, 4, 4, '', 8),
('Q.201910.022', 'QS_0304', 'Prosedur Pelaksanaan Rapat Evaluasi - S', 2, 'QP-QS_0304-01.xlsx', 'QD-QS_0304-2.xlsx', 2, 4, 1571382599, 1665395127, 4, 4, 4, '', 8),
('Q.201910.023', 'QS_0305', 'Prosedur Sampel', 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', 0),
('Q.201910.024', 'QS_0306', 'Prosedur Perencanaan Produksi Part After Market', 1, 'QP-QS_0306-00.xlsx', 'QD-QS_0306-1.xlsx', 2, 4, 1571382718, 1665395168, 4, 4, 4, '', 8),
('Q.201910.025', 'QS_0307', 'Prosedur Pelaksanaan Production Development', 1, 'QP-QS_0307-00.xlsx', 'QD-QS_0307-1.xlsx', 2, 4, 1571382778, 1665395186, 4, 4, 4, '', 8),
('Q.201910.026', 'QR_0401', 'Rule Pengendalian Design Proses', 1, 'QP-QR_0401-00.xlsx', 'QD-QR_0401-1.xlsx', 2, 3, 1571383154, 1665395217, 4, 4, 4, '', 8),
('Q.201910.027', 'QS_0402', 'Prosedur Pelaksanaan Pre Production Meeting', 1, 'QP-QS_0402-00.xlsx', 'QD-QS_0402-1.xlsx', 2, 4, 1571383227, 1665395240, 4, 4, 4, '', 8),
('Q.201910.028', 'QS_0403', 'Standard Pembuatan Drawing', 3, 'QP-QS_0403-02.xlsx', 'QD-QS_0403-3.xlsx', 2, 4, 1571383285, 1665395260, 4, 4, 4, '', 8),
('Q.201910.029', 'QR_0501', 'Rule Pengendalian Dokumen dan Rekaman Mutu', 9, 'QP-QR_0501-07.xlsx', 'QD-QR_0501-9.xlsx', 2, 3, 1571383511, 1665395288, 4, 4, 4, '', 8),
('Q.201910.030', 'QS_0502', 'Prosedur Pengendalian Dokumen Mutu', 2, 'QP-QS_0502-00.xlsx', 'QD-QS_0502-2.xlsx', 2, 4, 1571383626, 1665395317, 4, 4, 4, '', 8),
('Q.201910.032', 'QS_0504', 'Prosedur Pengawasan Drawing & Engineering Standard', 14, 'QP-QS_0504-13.xlsx', 'QD-QS_0504-14.xlsx', 2, 4, 1571383808, 1665395356, 4, 4, 4, '', 8),
('Q.201910.033', 'QR_0601', 'Rule Pengendalian Supplier', 1, 'QP-QR_0601-00.xlsx', 'QD-QR_0601-1.xlsx', 2, 3, 1571384065, 1665633247, 4, 4, 4, '', 8),
('Q.201910.034', 'QS_0602', 'Prosedur Seleksi dan Evaluasi Supplier', 19, 'QP-QS_0602-18.xlsx', 'QD-QS_0602-19.xlsx', 2, 4, 1571384136, 1665633274, 4, 4, 4, '', 8),
('Q.201910.035', 'QS_0603', 'Prosedur Lokalisasi Part', 4, 'QP-QS_0603-03.xlsx', 'QD-QS_0603-4.xlsx', 2, 4, 1571384263, 1665633304, 4, 4, 4, '', 8),
('Q.201910.036', 'QS_0604', 'Prosedur Pembelian', 7, 'QP-QS_0604-06.xlsx', 'QD-QS_0604-7.xlsx', 2, 4, 1571384335, 1665633387, 4, 4, 4, '', 8),
('Q.201910.037', 'QS_0605', 'Prosedur Pembelian dan Kontrol Dies', 2, 'QP-QS_0605-01.xlsx', 'QD-QS_0605-2.xlsx', 2, 4, 1571384421, 1665633422, 4, 4, 4, '', 8),
('Q.201910.038', 'QS_0606', 'Prosedur Inspeksi Part Supplier', 2, 'QP-QS_0606-01.xlsx', 'QD-QS_0606-2.xlsx', 2, 4, 1571384541, 1665633449, 4, 4, 4, '', 8),
('Q.201910.039', 'QS_0607', 'Prosedur Part Pasokan Pelanggan', 1, 'QP-QS_0607-1.xlsx', 'QD-QS_0607-1.xlsx', 2, 4, 1571384607, 1665633468, 4, 4, 4, '', 8),
('Q.201910.040', 'QS_0608', 'Prosedur Pengendalian Ketidaksesuaian Delivery Supplier', 1, 'QP-QS_0608-01.xlsx', 'QD-QS_0608-1.xlsx', 2, 4, 1571384841, 1665633499, 4, 4, 4, '', 8),
('Q.201910.041', 'QR_0701', 'Rule Pengendalian Lot', 2, 'QP-QR_0701-00.xlsx', 'QD-QR_0701-2.xlsx', 2, 3, 1571385053, 1665648847, 4, 4, 4, '', 8),
('Q.201910.043', 'QS_0703', 'Standard FIFO', 4, 'QP-QS_0703-09.xlsx', 'QD-QS_0703-4.xlsx', 2, 4, 1571385302, 1665633604, 4, 4, 4, '', 8),
('Q.201910.044', 'QS_0802', 'Prosedur Pengawasan Produk Awal', 7, 'QP-QS_0802-05.xlsx', 'QD-QS_0802-7.xlsx', 2, 4, 1571385663, 1665633669, 4, 4, 4, '', 8),
('Q.201910.045', 'QS_0803', 'Pengoperasian Perubahan Proses', 19, 'QP-QS_0803-17.xlsx', 'QD-QS_0803-19.xlsx', 2, 4, 1571386350, 1665633695, 4, 4, 4, '', 8),
('Q.201910.046', 'QS_0804', 'Prosedur Inspeksi Part Produksi Awal', 1, 'QP-QS_0804-00.xlsx', 'QD-QS_0804-1.xlsx', 2, 4, 1571386513, 1665633716, 4, 4, 4, '', 8),
('Q.201910.047', 'QR_0901', 'Rule Pengendalian Proses', 1, 'QP-QR_0901-00.xlsx', 'QD-QR_0901-1.xlsx', 2, 3, 1571386596, 1665633760, 4, 4, 4, '', 8),
('Q.201910.048', 'QS_0902', 'Prosedur Pengendalian Part Safety', 4, 'QP-QS_0902-03.xlsx', 'QD-QS_0902-4.xlsx', 2, 4, 1571386707, 1665633789, 4, 4, 4, '', 8),
('Q.201910.049', 'QS_0903', 'Prosedur Verifikasi Kakotora', 2, 'QP-QS_0903-00.xlsx', 'QD-QS_0903-2.xlsx', 2, 4, 1571386762, 1665633972, 4, 4, 4, '', 8),
('Q.201910.050', 'QS_0904', 'Prosedur Proses FMEA', 9, 'QP-QS_0904-07.xlsx', 'QD-QS_0904-9.xlsx', 2, 4, 1571386971, 1665634013, 4, 4, 4, '', 8),
('Q.201910.051', 'QS_0905', 'Prosedur Pengoperasian Daftar Quality Control Process', 14, 'QP-QS_0905-12.xlsx', 'QD-QS_0905-14.xlsx', 2, 4, 1571387061, 1665634039, 4, 4, 4, '', 8),
('Q.201910.052', 'QS_0906', 'Prosedur Pengoperasian Standard Operasional Prosedur', 11, 'QP-QS_0906-09.xlsx', 'QD-QS_0906-12.xlsx', 2, 4, 1571387484, 1587363475, 4, 4, 4, '', 8),
('Q.201910.053', 'QS_0907', 'Prosedur Pengoperasian Point Card', 3, 'QP-QS_0907-02.xlsx', 'QD-QS_0907-3.xlsx', 2, 4, 1571387564, 1665634079, 4, 4, 4, '', 8),
('Q.201910.054', 'QS_0908', 'Prosedur Pengoperasian Flow Sign Board', 2, 'QP-QS_0908-00.xlsx', 'QD-QS_0908-2.xlsx', 2, 4, 1571387656, 1665634110, 4, 4, 4, '', 8),
('Q.201910.055', 'QS_0909', 'Prosedur Pengoperasian Similar Part', 2, 'QP-QS_0909-00.xlsx', 'QD-QS_0909-2.xlsx', 2, 4, 1571387826, 1665634134, 4, 4, 4, '', 8),
('Q.201910.056', 'QS_0910', 'Prosedur Standard Part Card', 4, 'QP-QS_0910-03.xlsx', 'QD-QS_0910-4.xlsx', 2, 4, 1571387910, 1665634178, 4, 4, 4, '', 8),
('Q.201910.057', 'QS_0911', 'Prosedur Investigasi Kemampuan Proses', 3, 'QP-QS_0911-02.xlsx', 'QD-QS_0911-3.xlsx', 2, 4, 1571388000, 1665634213, 4, 4, 4, '', 8),
('Q.201910.058', 'QS_0912', 'Prosedur Pengoperasian Skill Map', 6, 'QP-QS_0912-06.xlsx', 'QD-QS_0912-7.xls', 2, 4, 1571388115, 1587363918, 4, 4, 4, '', 8),
('Q.201910.059', 'QS_0913', 'Prosedur Pemeriksaan Tugas Operator', 5, 'QP-QS_0913-03.xlsx', 'QD-QS_0913-5.xlsx', 2, 4, 1571388197, 1587363947, 4, 4, 4, '', 8),
('Q.201910.060', 'QS_0914', 'Prosedur Pengendalian Part Ekspor', 2, 'QP-QS_0914-01.xlsx', 'QD-QS_0914-2.xlsx', 2, 4, 1571388276, 1665634251, 4, 4, 4, '', 8),
('Q.201910.061', 'QS_0915', 'Prosedur Pengendalian Part Saat Istirahat & Selesai Kerja', 2, 'QP-QS_0915-02.xlsx', 'QD-QS_0915-2.xlsx', 2, 4, 1571388419, 1665634284, 4, 4, 4, '', 8),
('Q.201910.062', 'QR_1001', 'Rule Perawatann Mesin', 1, 'QP-QR_1001-00.xlsx', 'QD-QR_1001-1.xlsx', 2, 3, 1571388538, 1665634595, 4, 4, 4, '', 8),
('Q.201910.063', 'QS_1002', 'Prosedur Pengoperasian Preventive Maintenance Check Sheet', 6, 'QP-QS_1002-05.xlsx', 'QD-QS_1002-6.xlsx', 2, 4, 1571388590, 1665634643, 4, 4, 4, '', 8),
('Q.201910.065', 'QS_1004', 'Prosedur Perawatan Mesin', 5, 'QP-QS_1004-02.xlsx', 'QD-QS_1004-5.xlsx', 2, 4, 1571388788, 1665635005, 4, 4, 4, '', 8),
('Q.201910.067', 'QR_1101', 'Rule Pengendalian Tooling', 1, 'QP-QR_1101-00.xlsx', 'QD-QR_1101-1.xlsx', 2, 3, 1571389058, 1666747494, 4, 4, 4, '', 8),
('Q.201910.068', 'QS_1102', 'Prosedur Kontrol Jig', 1, 'QP-QS_1102-00.xlsx', 'QD-QS_1102-1.xlsx', 2, 4, 1571389204, 1666747549, 4, 4, 4, '', 8),
('Q.201910.069', 'QS_1103', 'Prosedur Pengendalian Dies', 0, 'QP-QS_1103-00.xlsx', 'QD-QS_1103-1.xlsx', 2, 4, 1571389662, 1587364469, 4, 4, 4, '', 8),
('Q.201910.070', 'QS_1104', 'Prosedur Pengendalian Tool', 1, 'QP-QS_1104-00.xlsx', 'QD-QS_1104-1.xlsx', 2, 4, 1571389757, 1666747579, 4, 4, 4, '', 8),
('Q.201910.071', 'QS_1105', 'Pengendalian Barang  Aset Milik Customer', 2, 'QP-QS_1105-01.xlsx', 'QD-QS_1105-2.xlsx', 2, 4, 1571390256, 1666747623, 4, 4, 4, '', 8),
('Q.201910.072', 'QR_1201', 'Rule Inspeksi dan Pengujian', 1, 'QP-QR_1201-00.xlsx', 'QD-QR_1201-1.xlsx', 2, 3, 1571391426, 1666747710, 4, 4, 4, '', 8),
('Q.201910.073', 'QS_1202', 'Prosedur Pengoperasian Standard  Inspeksi', 13, 'QP-QS_1202-10.xlsx', 'QD-QS_1202-13.xlsx', 2, 4, 1571713703, 1666747781, 4, 4, 4, '', 8),
('Q.201910.074', 'QS_1203', 'Prosedur Pengaturan Metode Inspeksi', 1, 'QP-QS_1203-00.xlsx', 'QD-QS_1203-1.xlsx', 2, 4, 1571713756, 1666747823, 4, 4, 4, '', 8),
('Q.201910.075', 'QS_1204', 'Prosedur Pengoperasian IRD', 6, 'QP-QS_1204-03.xlsx', 'QD-QS_1204-6.xlsx', 2, 4, 1571715577, 1666747864, 4, 4, 4, '', 8),
('Q.201910.077', 'QS_1206', 'Prosedur Final Inspection', 5, 'QP-QS_1206-04.xlsx', 'QD-QS_1206-5.xlsx', 2, 4, 1571716021, 1666747925, 4, 4, 4, '', 8),
('Q.201910.078', 'QS_1207', 'Prosedur Limit Sample', 8, 'QD-QS_1207-8.xlsx', '2', 4, 1571716193, 1666747974, 4, 4, 4, 0, '8', 0),
('Q.201910.079', 'QS_1208', 'Prosedur Pengujian Reabilitas', 1, 'QP-QS_1208-00.xlsx', 'QD-QS_1208-1.xlsx', 2, 4, 1571716423, 1666748008, 4, 4, 4, '', 8),
('Q.201910.080', 'QS_1209', 'Prosedur Kontrol Pokayoke', 1, 'QP-QS_1209-00.xlsx', 'QD-QS_1209-1.xlsx', 2, 4, 1571716955, 1666748032, 4, 4, 4, '', 8),
('Q.201910.081', 'QS_1210', 'Prosedur Kalibrasi Inspektor Visual Check', 2, 'QP-QS_1210-01.xlsx', 'QD-QS_1210-3.xlsx', 2, 4, 1571717027, 1587366176, 4, 4, 4, '', 8),
('Q.201910.082', 'QR_1301', 'Rule Pengendalian Alat Ukur', 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', 0),
('Q.201910.084', 'QR_1401', 'Rule Pengendalian Ketidaksesuaian Produk', 19, 'QP-QR_1401-17.xlsx', 'QD-QR_1401-19.xlsx', 2, 3, 1571719139, 1665110042, 4, 4, 4, '', 8),
('Q.201910.085', 'QS_1402', 'Prosedur Abnormal Proses', 8, 'QD-QS_1402-8.xlsx', '2', 4, 1571719300, 1649131838, 4, 4, 4, 0, '8', 0),
('Q.201910.086', 'QS_1403', 'Prosedur Proses Repair', 3, 'QP-QS_1403-01.xls', 'QD-QS_1403-3.xls', 2, 4, 1571719454, 1666748092, 4, 4, 4, '', 8),
('Q.201910.087', 'QR_1501', 'Rule Penyimpanan', 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', 0),
('Q.201910.088', 'QS_1502', 'Standard Packaging', 6, 'QP-QS_1502-05.xlsx', 'QD-QS_1502-6.xlsx', 2, 4, 1571721119, 1666838575, 4, 4, 4, '', 8),
('Q.201910.089', 'QS_1503', 'Prosedur Pengendalian Handling & Supply Material', 3, 'QP-QS_1503-02.xls', 'QD-QS_1503-3.xlsx', 2, 4, 1571721194, 1666838619, 4, 4, 4, '', 8),
('Q.201910.090', 'QS_1504', 'Prosedur Pencegahan Penurunan Kualitas', 1, 'QP-QS_1504-00.xlsx', 'QD-QS_1504-1.xlsx', 2, 4, 1571721257, 1666838637, 4, 4, 4, '', 8),
('Q.201910.091', 'QR_1601', 'Rule Audit Mutu', 6, 'QP-QR_1601-05.xlsx', 'QD-QR_1601-6.xlsx', 2, 3, 1571730416, 1666838690, 4, 4, 4, '', 8),
('Q.201910.092', 'QS_1602', 'Prosedur Audit Sistem Mutu Internal', 3, 'QP-QS_1602-00.xlsx', 'QD-QS_1602-3.xlsx', 2, 4, 1571730487, 1666838749, 4, 4, 4, '', 8),
('Q.201910.093', 'QS_1603', 'Standard Sertifikasi dan Pendidikan Auditor', 3, 'QP-QS_1603-00.xlsx', 'QD-QS_1603-3.xlsx', 2, 4, 1571730541, 1666838791, 4, 4, 4, '', 8),
('Q.201910.094', 'QS_1604', 'Prosedur Audit Mutu Supplier', 3, 'QP-QS_1604-3.xlsx', 'QD-QS_1604-3.xlsx', 2, 4, 1571730595, 1666838832, 4, 4, 4, '', 8),
('Q.201910.095', 'QS_1605', 'Prosedur Audit Mutu Sesuai Kebutuhan', 1, 'QP-QS_1605-00.xlsx', 'QD-QS_1605-1.xlsx', 2, 4, 1571730835, 1666838945, 4, 4, 4, '', 8),
('Q.201910.096', 'QS_1606', 'Prosedur Audit Proses Manufaktur', 1, 'QP-QS_1606-00.xlsx', 'QD-QS_1606-1.xlsx', 2, 4, 1571730913, 1666839103, 4, 4, 4, '', 8),
('Q.201910.097', 'QS_1607', 'Prosedur Audit Produk', 1, 'QP-QS_1607-00.xlsx', 'QD-QS_1607-1.xlsx', 2, 4, 1571730991, 1666839379, 4, 4, 4, '', 8),
('Q.201910.098', 'QR_1701', 'Rule Pelatihan Mutu', 4, 'QP-QR_1701-04.xls', 'QD-QR_1701-5.xls', 2, 3, 1571731111, 1587367288, 4, 4, 4, '', 8),
('Q.201910.099', 'QS_1702', 'Prosedur Pelatihan Mutu', 2, 'QP-QS_1702-01.xls', 'QD-QS_1702-2.xls', 2, 4, 1571731440, 1587367318, 4, 4, 4, '', 8),
('Q.201910.100', 'QS_1703', 'Prosedur Pelatihan Inspector', 6, 'QP-QS_1703-04.xls', 'QD-QS_1703-5.xlsx', 2, 4, 1571731504, 1587367406, 4, 4, 4, '', 8),
('Q.201910.101', 'QS_1704', 'Prosedur Schedule Pelatihan Departemen', 3, 'QP-QS_1704-02.xls', 'QD-QS_1704-5.xls', 2, 4, 1571732805, 1587367488, 4, 4, 4, '', 8),
('Q.201910.102', 'QS_1705', 'Prosedur Permintaan Pelatihan', 3, 'QP-QS_1705-03.xls', 'QD-QS_1705-4.xls', 2, 4, 1571732882, 1587367520, 4, 4, 4, '', 8),
('Q.201910.103', 'QS_1706', 'Prosedur Evaluasi Pelatihan sudah revisi', 2, 'QP-QS_1706-02.xls', 'QD-QS_1706-5.xls', 2, 4, 1571733071, 1587367427, 4, 4, 4, '', 8),
('Q.201910.104', 'QS_1707', 'Prosedur Evektivitas Pelatihan', 1, 'QP-QS_1707-01.xls', 'QD-QS_1707-2.xls', 2, 4, 1571733166, 1587367445, 4, 4, 4, '', 8),
('Q.201910.105', 'QS_1708', 'Prosedur Pelaksanaan OJT', 3, 'QP-QS_1708-03.xls', 'QD-QS_1708-4.xls', 2, 4, 1571733214, 1587367538, 4, 4, 4, '', 8),
('Q.201910.106', 'QS_1709', 'Prosedur Pelatihan Fundamental', 3, 'QP-QS_1709-01.xlsx', 'QD-QS_1709-4.xlsx', 2, 4, 1571733294, 1587367562, 4, 4, 4, '', 8),
('Q.202003.005', 'QR_0801', 'Rule Pengendalian Awal', 1, NULL, 'QD-QR_0801-1.xlsx', 2, 3, 1584947821, 1665633642, 4, 4, 4, '', 8),
('Q.202010.001', 'QS_0916', 'Prosedur Pelaksanaan Genba Patrol', 0, 'QD-QS_0916-00.xlsx', 'QD-QS_0916-00.xlsx', 2, 4, 1603178294, 1612415315, 4, 4, 4, ' ', 8),
('Q.202210.001', 'QR_0301', 'Rule Pengendalian New Model', 1, NULL, 'QD-QR_0301-1.xlsx', 2, 3, 1665115788, 1665395042, 4, 4, 4, '', 8),
('Q.202210.002', 'QS_0503', 'Prosedur Pengendalian Rekaman Mutu', 7, NULL, 'QD-QS_0503-7.xlsx', 2, 4, 1665123499, 1665395337, 4, 4, 4, '', 8),
('Q.202210.003', 'QS_0702', 'Standard Penetapan Nomor Lot', 16, NULL, 'QD-QS_0702-16.xlsx', 2, 4, 1665556349, 1665633575, 4, 4, 4, '', 8),
('Q.202210.004', 'QS_1003', 'Prosedur Pengoperasian Start Check Sheet', 2, NULL, 'QD-QS_1003-2.xlsx', 2, 4, 1665644211, 1665648798, 4, 4, 4, '', 8),
('Q.202210.005', 'QS_1005', 'Prosedur Perbaikan Mesin', 2, NULL, 'QD-QS_1005-2.xlsx', 2, 4, 1665644327, 1665648824, 4, 4, 4, '', 8),
('Q.202210.006', 'QS_0704', 'Standard Kontrol Cavity', 0, NULL, 'QD-QS_0704-0.xlsx', 2, 4, 1665648522, 1665648869, 4, 4, 4, '', 8),
('Q.202210.007', 'QS_1205', 'Prosedur Pengoperasian Proses Quality Check Sheet', 8, 'QD-QS_1205-8.xlsx', '2', 4, 1666681821, 1666747897, 4, 4, 3, 0, '8', 0),
('Q.202210.008', 'QS_1302', 'Standard Parameter Kalibrasi', 2, NULL, 'QD-QS_1302-2.xlsx', 2, 4, 1666685616, 1666748064, 4, 4, 5, '', 8);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
