-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Apr 2020 pada 08.05
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perdanatrans`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `agenda_deskripsi` text,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(1, 'Penyembelihan Hewan Kurban Idul Adha 2017', '2017-01-22 06:18:01', 'Idul Adha yang biasa disebut lebaran haji atapun lebaran kurban sangat identik dengan penyembelihan hewan kurban. M-Sekolah tahun ini juga melakukan penyembelihan hewan kurban. Yang rencananya akan dihadiri oleh guru-guru, siswa dan pengurus OSIS.', '2017-01-22', '2017-01-22', 'M-Sekolah', '08.00 - 11.00 WIB', 'Dihadiri oleh guru-guru, siswa dan pengurus OSIS', 'M Fikri Setiadi'),
(2, 'Peluncuran Website Resmi M-Sekolah', '2017-01-22 06:26:33', 'Peluncuran website resmi  M-Sekolah, sebagai media informasi dan akademik online untuk pelayanan pendidikan yang lebih baik kepada siswa, orangtua, dan masyarakat pada umumnya semakin meningkat.', '2017-01-04', '2017-01-04', 'M-Sekolah', '07.30 - 12.00 WIB', '-', 'M Fikri Setiadi'),
(3, 'Penerimaan Raport Semester Ganjil Tahun Ajaran 2017-2018', '2017-01-22 06:29:49', 'Berakhirnya semester ganjil tahun pelajaran 2016-2017, ditandai dengan pembagian laporan hasil belajar.', '2017-02-17', '2017-02-17', 'M-Sekolah', '07.30 - 12.00 WIB', 'Untuk kelas XI dan XII, pembagian raport dimulai pukul 07.30 WIB. Sedangkan untuk kelas X pada pukul 09.00 WIB. Raport diambil oleh orang tua/wali murid masing-masing.', 'M Fikri Setiadi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT '0',
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(5, 'Perdana Trans', '2020-04-15 02:54:28', 1, 'Administrator', 5, '01723286f586b1ef418bd50ad79539bd.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text,
  `file_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT '0',
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(2, 'Dasar-dasar CSS', 'Modul dasar-dasar CSS 3. Modul ini membantu anda untuk memahami struktur dasar CSS', '2017-01-23 04:30:01', 'Drs. Joko', 0, 'ab9a183ff240deadbedaff78e639af2f.pdf'),
(3, '14 Teknik Komunikasi Yang Paling Efektif', 'Ebook 14 teknik komunikasi paling efektif membantu anda untuk berkomunikasi dengan baik dan benar', '2017-01-23 15:26:06', 'Drs. Joko', 0, 'ab2cb34682bd94f30f2347523112ffb9.pdf'),
(4, 'Bagaimana Membentuk Pola Pikir yang Baru', 'Ebook ini membantu anda membentuk pola pikir baru.', '2017-01-23 15:27:07', 'Drs. Joko', 0, '30f588eb5c55324f8d18213f11651855.pdf'),
(5, '7 Tips Penting mengatasi Kritik', '7 Tips Penting mengatasi Kritik', '2017-01-23 15:27:44', 'Drs. Joko', 0, '329a62b25ad475a148e1546aa3db41de.docx'),
(6, '8 Racun dalam kehidupan kita', '8 Racun dalam kehidupan kita', '2017-01-23 15:28:17', 'Drs. Joko', 0, '8e38ad4948ba13758683dea443fbe6be.docx'),
(7, 'Jurnal Teknolgi Informasi', 'Jurnal Teknolgi Informasi', '2017-01-25 03:18:53', 'Gunawan, S.Pd', 0, '87ae0f009714ddfdd79e2977b2a64632.pdf'),
(8, 'Jurnal Teknolgi Informasi 2', 'Jurnal Teknolgi Informasi', '2017-01-25 03:19:22', 'Gunawan, S.Pd', 0, 'c4e966ba2c6e142155082854dc5b3602.pdf'),
(9, 'Naskah Publikasi IT', 'Naskah Teknolgi Informasi', '2017-01-25 03:21:04', 'Gunawan, S.Pd', 0, '71380b3cf16a17a02382098c028ece9c.pdf'),
(10, 'Modul Teknologi Informasi', 'Modul Teknologi Informasi', '2017-01-25 03:22:08', 'Gunawan, S.Pd', 0, '029143a3980232ab2900d94df36dbb0c.pdf'),
(11, 'Modul Teknologi Informasi Part II', 'Modul Teknologi Informasi', '2017-01-25 03:22:54', 'Gunawan, S.Pd', 0, 'ea8f3f732576083156e509657614f551.pdf'),
(12, 'Modul Teknologi Informasi Part III', 'Modul Teknologi Informasi', '2017-01-25 03:23:21', 'Gunawan, S.Pd', 0, 'c5e5e7d16e4cd6c3d22c11f64b0db2af.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(12, 'Follow Your Passion', '2017-01-24 01:31:42', '8be5f0f0904340052a4cbd0ea025251e.jpg', 4, 1, 'M Fikri Setiadi'),
(13, 'Follow Your Passion', '2017-01-24 01:31:55', 'd769c3541429f21b28611cc9f32166ad.jpg', 4, 1, 'M Fikri Setiadi'),
(14, 'Follow Your Passion', '2017-01-24 01:32:24', '43d0f103096700aacefe492514c1805c.png', 4, 1, 'M Fikri Setiadi'),
(15, 'Follow Your Passion', '2017-01-24 01:32:34', 'd67a9e90d263f2979cbf602d238516e1.jpg', 4, 1, 'M Fikri Setiadi'),
(16, 'Follow Your Passion', '2017-01-24 01:32:44', '8223854edfccc98c6aab50ceab60ca7d.jpg', 4, 1, 'M Fikri Setiadi'),
(17, 'Follow Your Passion', '2017-01-24 01:33:08', 'af30c686978c87c80ba1e6e3b23ec5a1.png', 4, 1, 'M Fikri Setiadi'),
(18, 'Follow Your Passion', '2017-01-24 01:33:24', '232917c52826dd08e32320aa6a3fac8c.png', 4, 1, 'M Fikri Setiadi'),
(19, 'Follow Your Passion', '2017-08-08 00:54:58', '59afe5b3cd629ab2735f9c7a2af8d85f.jpg', 4, 1, 'M Fikri Setiadi'),
(20, 'Perdana Trans', '2020-04-15 02:54:51', 'b4d0c6faf5ca589e1df8f8d48ac6785f.jpg', 5, 1, 'Administrator'),
(21, 'Perdana Trans', '2020-04-15 02:55:01', '5095948bb9b0c19c442530a0644ad019.jpg', 5, 1, 'Administrator'),
(22, 'Perdana Trans', '2020-04-15 02:55:10', '10f50fcba24fa0162fe931b81a2c9295.jpg', 5, 1, 'Administrator'),
(23, 'Perdana Trans', '2020-04-15 02:55:21', '784d630c41193f3376e19cd9a5934a38.jpg', 5, 1, 'Administrator'),
(24, 'Perdana Trans', '2020-04-15 02:55:32', '40145b6e4b6fa75b55b61cb569f095b9.jpg', 5, 1, 'Administrator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text,
  `inbox_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inbox_status` int(11) DEFAULT '1' COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Biografi', '2016-09-06 05:49:04'),
(2, 'Teknologi', '2016-09-06 05:50:01'),
(3, 'Tips and Triks', '2016-09-06 05:59:39'),
(5, 'Penelitian', '2016-09-06 06:19:26'),
(6, 'Info', '2020-04-15 05:37:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_web` varchar(100) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `komentar_status` int(2) DEFAULT '0',
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_web`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
(1, 'M Fikri Setiadi', 'setiadi@mfikri.com', 'mfikri.com', 'Ping!', '2017-07-19 01:33:07', 1, 20, 0),
(4, 'M Fikri Setiadi', 'setiadi@mfikri.com', 'mfikri.com', 'Nice Post :)', '2017-07-19 01:43:39', 1, 20, 0),
(5, 'M Fikri Setiadi', 'setiadi@mfikri.com', 'mfikri.com', '[removed]alert&amp;#40;No Found !&amp;#41;;[removed]', '2017-07-19 01:35:28', 0, 20, 2),
(6, 'Jokowi', 'joko@gmail.com', '', 'Ping !', '2017-07-19 02:48:24', 0, 20, 2),
(7, 'M Fikri Setiadi', NULL, NULL, 'Can I help you?', '2017-08-03 15:11:21', 1, 20, 1),
(8, 'M Fikri Setiadi', NULL, NULL, 'Thank you.', '2017-08-03 15:27:56', 1, 20, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text,
  `log_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT '1',
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(1, 'Administrator', 'Just do it', 'L', 'rusno', 'ae125c71ebe4810f806af7f0838188c5', '-', 'dhanisetiaji99@gmail.com', '082138414008', 'facebook.com/m_fikri_setiadi', 'twitter.com/fiver_fiver', '', '', 1, '1', '2016-09-03 06:07:55', '0f050fb938257f539cc72fffd9c5777a.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(947, '2020-04-15 02:51:02', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_portfolio`
--

CREATE TABLE `tbl_portfolio` (
  `port_id` int(11) NOT NULL,
  `port_judul` varchar(200) DEFAULT NULL,
  `port_deskripsi` text,
  `port_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `port_author` varchar(40) DEFAULT NULL,
  `port_image` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_portfolio`
--

INSERT INTO `tbl_portfolio` (`port_id`, `port_judul`, `port_deskripsi`, `port_tanggal`, `port_author`, `port_image`) VALUES
(1, 'Aplikasi Online Restaurant', '<p>M-Food merupakan aplikasi yang dirancang khusus untuk order makanan online berbasis web mobile. Dirancang dengan menggunakan jquery mobile dan codeigniter dengan icon dari font awesome sehingga mudah dikembangkan oleh developer manapun.</p>\r\n\r\n<p>Aplikasi ini mengelompokkan menu berdasarkan makanan, minuman, hot promo, dan favorit.</p>\r\n\r\n<p>Adapun fitur dari aplikasi ini adalah sebagai berikut:</p>\r\n\r\n<p>1 Dashboard (Grafik Penjualan, Garfik Pelanggan, Lates Order, Lates Pelanggan)</p>\r\n\r\n<p>2 Management Pengguna</p>\r\n\r\n<p>3 Management Menu (Makanan/Minuman)</p>\r\n\r\n<p>4 Management Pelanggan</p>\r\n\r\n<p>5 Management Order</p>\r\n\r\n<p>6 Management Konfirmasi Pembayaran</p>\r\n\r\n<p>7 Management Rekening Bank</p>\r\n\r\n<p>8 Management Gallery</p>\r\n\r\n<p>9 Management Status Order</p>\r\n\r\n<p>Info lebih lebih lanjut kunjungi www.mfikri.com</p>\r\n', '2017-07-20 03:53:59', 'M Fikri Setiadi', '943df63e4b65040f584f0f8df4897b89.jpg'),
(3, 'Point Of Sale', '<p>Aplikasi Point of sale merupakan sebuah aplikasi yang dirancang khusus untuk mempermudah dan mempercepat proses transakasi penjualan. Dirancang menggunakan framework Codeigniter dengan konsep metro design yang elegan menjadi daya tarik aplikasi ini. Selain itu, basic design dari aplikasi ini menggunakan BOOTSTRAP sehingga memudahkan web developer untuk mengembangkan design aplikasi ini menjadi lebih menarik lagi.</p>\r\n\r\n<p>Proses transakasi penjualan dan pembelian menggunakan AJAX &nbsp;(<em>Asyncronous Javascript and XML</em>). Memungkinkan user berkomunikasi dengan database tanpa <em>reload page</em>.</p>\r\n\r\n<p>Adapun fitur dari aplikasi ini sebagai berikut:</p>\r\n\r\n<p>1. Management data barang</p>\r\n\r\n<p>2. Management data kategori</p>\r\n\r\n<p>3. Management User (Pengguna)</p>\r\n\r\n<p>4. Management Suplier</p>\r\n\r\n<p>5. Transaksi Pembelian</p>\r\n\r\n<p>7. Transaksi Penjualan Eceran dan Grosir</p>\r\n\r\n<p>8. Retur Penjualan</p>\r\n\r\n<p>9. Laporan Data Barang</p>\r\n\r\n<p>10. Laporan Stok Barang</p>\r\n\r\n<p>11. Laporan Penjualan</p>\r\n\r\n<p>12. Laporan Penjualan Per Tanggal</p>\r\n\r\n<p>13. Laporan Penjualan Per Bulan</p>\r\n\r\n<p>14. Laporan Penjualan Per Tahun</p>\r\n\r\n<p>15. Laporan Laba / Rugi</p>\r\n\r\n<p>16. Grafik Stok Barang</p>\r\n\r\n<p>17. Grafik Penjualan Per Bulan</p>\r\n\r\n<p>18. Grafik Penjualan Per Tahun</p>\r\n', '2017-07-20 07:23:14', 'M Fikri Setiadi', 'cdfd50f2629c6bbe82fb131866632484.jpg'),
(4, 'Website Tour and Travel', '<p>Download source code Tour and Travel. M-Travel merupakan Source Code Open Source berbasis web untuk company profil tour and travel yang menyajikan informasi dan paket wisata pilihan. Dimana para wisatawan dapat membooking paket wisata yang diinginkan secara online. Source Code ini mendukung berbagai macam metode pembayaran, dan lebih lagi metode pembayaran dapat ditambahkan sesuai kebutuhan.</p>\r\n\r\n<p>Source Code ini dibangun menggunakan PHP framework Codeigniter v2.2.6, dirancang menggunakan bahasa pemrograman umum sehingga code program mudah dipelajari oleh developer web lain sehingga mudah untuk dikembangkan oleh pihak lain.</p>\r\n\r\n<p>Selain itu, source code ini tidak menggunakan Active Record, sehingga semua query mudah dibaca dan di pelajari.</p>\r\n\r\n<p>Backend dari Source Code ini dibangun menggunakan template Admin LTE, yaitu template yang sangat umum bagi developer web saat ini. Selain itu, source code ini juga menggunakan <strong>Toast Message</strong> untuk menampilkan pesan. Hal itulah yang membuat souce code ini menjadi &ldquo;Pretty Awesome&rdquo;.</p>\r\n\r\n<p>Frontend dari source code ini dibangun menggunakan premium template. Dalam arti kata template BERBAYAR. Hhmm.., beruntunglah Anda bisa menemukan source code ini, karena penulis membagikan tidak hanya templatenya, akan tetapi program komplit secara Cuma-Cuma alias GRATISS.</p>\r\n', '2017-07-20 07:25:06', 'M Fikri Setiadi', '324939fd8aa9d77805b5ff85706e3319.jpg'),
(5, 'Coffee Break', '<p>Ini adalah deskripsi. Ini adalah deskripsi. Ini adalah deskripsi. Ini adalah deskripsi. Ini adalah deskripsi. Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.</p>\r\n\r\n<p>Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.Ini adalah deskripsi.</p>\r\n', '2017-08-29 13:29:02', 'M Fikri Setiadi', '9beb4be9761c824a981c328c6f746c66.jpg'),
(6, 'Awesome Design', '<p>Ini adalah deskripsi&nbsp;Ini adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsi&nbsp;Ini adalah deskripsi&nbsp;Ini adalah deskripsi&nbsp;Ini adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsiIni adalah deskripsi&nbsp;Ini adalah deskripsi&nbsp;Ini adalah deskripsi.</p>\r\n\r\n<p>Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi.</p>\r\n', '2017-08-29 13:31:55', 'M Fikri Setiadi', 'e41fddef326ab73454385abc8393a9a5.jpg'),
(7, 'Android Apps', '<p>Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi.</p>\r\n\r\n<p>Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi.</p>\r\n\r\n<p>Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi.</p>\r\n', '2017-08-29 13:33:57', 'M Fikri Setiadi', '7abb9ec5dcaf999d0a4a74ea2491e848.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_post_rating`
--

CREATE TABLE `tbl_post_rating` (
  `rate_id` int(11) NOT NULL,
  `rate_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `rate_ip` varchar(40) DEFAULT NULL,
  `rate_point` int(11) DEFAULT NULL,
  `rate_tulisan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_post_rating`
--

INSERT INTO `tbl_post_rating` (`rate_id`, `rate_tanggal`, `rate_ip`, `rate_point`, `rate_tulisan_id`) VALUES
(2, '2017-08-07 05:58:14', '::1', 1, 30),
(4, '2017-08-07 05:59:03', '::1', 1, 29),
(5, '2017-08-07 06:23:40', '::1', 3, 31),
(6, '2017-08-07 06:26:14', '::1', 4, 28),
(7, '2017-08-08 01:15:56', '::1', 2, 27),
(8, '2017-08-25 18:20:57', '::1', 4, 26);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_post_views`
--

CREATE TABLE `tbl_post_views` (
  `views_id` int(11) NOT NULL,
  `views_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `views_ip` varchar(40) DEFAULT NULL,
  `views_tulisan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_post_views`
--

INSERT INTO `tbl_post_views` (`views_id`, `views_tanggal`, `views_ip`, `views_tulisan_id`) VALUES
(1, '2017-08-07 07:28:38', '::1', 31),
(2, '2017-08-07 07:28:51', '::1', 30),
(3, '2017-08-07 13:08:57', '::1', 27),
(4, '2017-08-07 15:55:32', '::1', 28),
(5, '2017-08-07 16:02:55', '::1', 29),
(6, '2017-08-08 00:58:17', '::1', 26),
(7, '2017-08-08 01:13:58', '::1', 27),
(8, '2017-08-08 01:16:07', '::1', 30),
(9, '2017-08-09 13:04:36', '::1', 30),
(10, '2017-08-11 06:56:47', '::1', 31),
(11, '2017-08-11 08:42:41', '::1', 30),
(12, '2017-08-11 08:42:47', '::1', 27),
(13, '2017-08-11 08:42:54', '::1', 26),
(14, '2017-08-11 08:43:00', '::1', 28),
(15, '2017-08-11 08:43:07', '::1', 25),
(16, '2017-08-11 08:43:10', '::1', 29),
(17, '2017-08-24 16:39:13', '::1', 31),
(18, '2017-08-24 16:39:13', '::1', 0),
(19, '2017-08-24 16:39:13', '::1', 0),
(20, '2017-08-24 16:39:13', '::1', 0),
(21, '2017-08-24 17:00:21', '::1', 31),
(22, '2017-08-24 17:00:22', '::1', 0),
(23, '2017-08-25 13:49:50', '::1', 30),
(24, '2017-08-25 17:22:19', '::1', 30),
(25, '2017-08-25 17:22:20', '::1', 0),
(26, '2017-08-25 17:25:14', '::1', 27),
(27, '2017-08-25 17:27:37', '::1', 26),
(28, '2017-08-25 17:45:38', '::1', 25),
(29, '2017-08-25 17:54:57', '::1', 29),
(30, '2017-08-25 18:18:38', '::1', 31),
(31, '2017-08-25 18:19:02', '::1', 28),
(32, '2017-08-27 12:43:48', '::1', 30),
(33, '2017-08-27 12:43:49', '::1', 0),
(34, '2017-08-28 07:35:26', '::1', 31),
(35, '2017-08-29 03:13:08', '::1', 30),
(36, '2017-08-29 03:13:09', '::1', 0),
(37, '2017-08-29 03:13:16', '::1', 29),
(38, '2017-08-29 13:44:05', '::1', 31),
(39, '2017-09-01 13:52:01', '::1', 30),
(40, '2017-09-01 13:52:01', '::1', 0),
(41, '2017-09-01 14:00:27', '::1', 25),
(42, '2017-09-02 04:50:46', '::1', 31),
(43, '2017-09-02 04:50:46', '::1', 0),
(44, '2017-09-02 04:51:23', '::1', 28),
(45, '2017-10-08 00:25:57', '::1', 25),
(46, '2017-10-08 00:25:57', '::1', 0),
(47, '2017-10-16 03:19:53', '::1', 31),
(48, '2017-10-16 03:19:54', '::1', 0),
(49, '2017-10-16 03:20:18', '::1', 25),
(50, '2017-10-28 00:13:13', '::1', 30),
(51, '2017-10-28 00:13:14', '::1', 0),
(52, '2017-10-29 04:16:58', '::1', 30),
(53, '2017-10-29 04:16:59', '::1', 0),
(54, '2017-10-29 04:23:42', '::1', 31),
(55, '2020-04-15 02:51:30', '::1', 31),
(56, '2020-04-15 02:51:31', '::1', 0),
(57, '2020-04-15 04:35:38', '::1', 29);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(200) DEFAULT NULL,
  `tulisan_isi` text,
  `tulisan_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT '0',
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT '0',
  `tulisan_slug` varchar(250) DEFAULT NULL,
  `tulisan_rating` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`, `tulisan_rating`) VALUES
(29, 'WannaCry Hero Dibebankan Dengan Menciptakan $ 7000 Malware Perbankan', '<p>Dalam sebuah peristiwa yang mengherankan, orang yang menghentikan penyebaran uang tebusan WannaCry awal tahun ini telah ditangkap dan dikenai tuduhan menciptakan malware perbankan yang dikenal dengan Kronos.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel. Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-08-07 02:36:39', 2, 'Teknologi', 5, 'bf687360506b89dea045e2545f35ac4f.jpg', 1, 'Administrator', 0, 'wannacry-hero-dibebankan-dengan-menciptakan--7000-malware-perbankan.html', 1),
(30, 'Kebocoran iPhone 8 Baru Mengungkapkan Fitur yang Lebih Mengecewakan', '<p><em>Apple CEO Tim Cook delivers the opening keynote address the 2017 Apple</em></p>\r\n\r\n<p>Sudah lama sekali sejak Apple mampu menyimpan kejutan nyata dari beledu digital dan mengungkapkan &#39;satu hal&#39; yang sebenarnya selama sebuah keynote. Fase desain dan prototyping yang panjang, ditambah dengan rantai pasokan yang diperluas, telah menghasilkan garis manufaktur yang bocor.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel. Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-08-07 02:46:11', 2, 'Teknologi', 11, '53243c24166c53ec24ac84b8f4c56940.jpg', 1, 'Administrator', 0, 'kebocoran-iphone-8-baru-mengungkapkan-fitur-yang-lebih-mengecewakan.html', 1),
(31, 'Facebook Meluas Melawan Berita Fake Dengan Artikel Otomatis', '<p>Setelah pemilihan Presiden, ketika Facebook FB -0.23% menghadapi pengawasan karena memungkinkan penyebaran berita politik palsu, jaringan sosial terus mengambil langkah baru untuk memberantas informasi palsu di seluruh aplikasinya.<br />\r\n<!--[if !supportLineBreakNewLine]--><br />\r\n<!--[endif]-->Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel. Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2017-08-07 02:51:02', 2, 'Teknologi', 11, '054646a61adf67fbc074f23415a96531.jpg', 1, 'Administrator', 0, 'facebook-meluas-melawan-berita-fake-dengan-artikel-otomatis.html', 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indeks untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indeks untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indeks untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indeks untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indeks untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indeks untuk tabel `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  ADD PRIMARY KEY (`port_id`);

--
-- Indeks untuk tabel `tbl_post_rating`
--
ALTER TABLE `tbl_post_rating`
  ADD PRIMARY KEY (`rate_id`);

--
-- Indeks untuk tabel `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  ADD PRIMARY KEY (`views_id`);

--
-- Indeks untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indeks untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=948;

--
-- AUTO_INCREMENT untuk tabel `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  MODIFY `port_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_post_rating`
--
ALTER TABLE `tbl_post_rating`
  MODIFY `rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  MODIFY `views_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
