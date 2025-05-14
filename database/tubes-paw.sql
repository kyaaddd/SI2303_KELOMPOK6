-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2025 at 08:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desa-laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `agamas`
--

CREATE TABLE `agamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agama` varchar(255) NOT NULL,
  `penganut` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agamas`
--

INSERT INTO `agamas` (`id`, `agama`, `penganut`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Islam', 100, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(2, 'Kristen', 30, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(3, 'Katolik', 20, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(4, 'Hindu', 10, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(5, 'Budha', 15, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(6, 'Konghucu', 6, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `anggarans`
--

CREATE TABLE `anggarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `keterangan` longtext NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggarans`
--

INSERT INTO `anggarans` (`id`, `judul`, `slug`, `keterangan`, `gambar`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Rincian Dana Desa 2024', 'rincian-dana-desa', '<p>Contoh saja</p>', 'img-anggaran//67aaf242796a8.jpeg', 1, '2025-02-11 06:46:26', '2025-02-11 06:46:49'),
(2, 'Rincian 2025', 'rincian-2025', '<p>Contoh Saja</p>', 'img-anggaran//67aaf2a551c24.png', 1, '2025-02-11 06:48:05', '2025-02-11 06:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `excerpt` longtext NOT NULL,
  `isi_pengumuman` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `judul`, `slug`, `views`, `excerpt`, `isi_pengumuman`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Cek Kesehatan Gratis', 'cek-kesehatan-gratis', 2, 'Dinas Kesehatan Kota Tangerang mengadakan Cek Kesehatan Gratis bagi seluruh warga Tangerang! Manfaatkan kesempatan ini untuk mengetahui kondisi kesehatan Anda dan mendapatkan konsultasi medis secara g...', '<p>Dinas Kesehatan Kota Tangerang mengadakan <strong>Cek Kesehatan Gratis</strong> bagi seluruh warga Tangerang! Manfaatkan kesempatan ini untuk mengetahui kondisi kesehatan Anda dan mendapatkan konsultasi medis secara gratis.</p><p>📅 <strong>Tanggal:</strong> [Isi tanggal kegiatan]<br>🕘 <strong>Waktu:</strong> [Isi waktu kegiatan]<br>📍 <strong>Lokasi:</strong> [Isi lokasi kegiatan]</p><p>🔍 <strong>Layanan yang tersedia:</strong><br>✅ Pemeriksaan tekanan darah<br>✅ Cek gula darah<br>✅ Pemeriksaan kolesterol<br>✅ Konsultasi kesehatan dengan dokter<br>✅ Edukasi pola hidup sehat</p><p>💡 <strong>Syarat &amp; Ketentuan:</strong><br>📌 Warga Kota Tangerang (bawa KTP/KK)<br>📌 Datang sesuai jadwal dan tetap menjaga protokol kesehatan</p><p>Jangan lewatkan kesempatan ini! Ajak keluarga dan kerabat untuk bersama-sama menjaga kesehatan.</p><p>📞 <strong>Informasi lebih lanjut:</strong> [Isi kontak atau link resmi]</p><p>Salam sehat,<br><strong>Dinas Kesehatan Kota Tangerang</strong></p>', 1, '2025-02-11 06:42:52', '2025-05-09 09:33:15'),
(2, 'PROGRAM BANTUAN DAN PELATIHAN UNTUK UMKM KOTA TANGERANG', 'program-bantuan-dan-pelatihan-untuk-umkm-kota-tangerang', 0, 'Pemerintah Kota Tangerang melalui Dinas Koperasi dan UMKM mengadakan program bantuan dan pelatihan bagi para pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) untuk meningkatkan daya saing dan memperluas...', '<p>Pemerintah Kota Tangerang melalui Dinas Koperasi dan UMKM mengadakan <strong>program bantuan dan pelatihan</strong> bagi para pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) untuk meningkatkan daya saing dan memperluas pasar!</p><p>📅 <strong>Tanggal Pendaftaran:</strong> [Isi tanggal]<br>📍 <strong>Lokasi:</strong> [Isi lokasi atau link pendaftaran]</p><p>🔍 <strong>Fasilitas yang diberikan:</strong><br>✅ Bantuan modal usaha<br>✅ Pelatihan digital marketing dan branding<br>✅ Pendampingan legalitas usaha (NIB, PIRT, Halal, dll.)<br>✅ Akses ke marketplace dan jaringan bisnis</p><p>💡 <strong>Syarat &amp; Ketentuan:</strong><br>📌 Pelaku UMKM yang berdomisili di Kota Tangerang<br>📌 Memiliki usaha yang sudah berjalan minimal 6 bulan<br>📌 Bersedia mengikuti seluruh rangkaian pelatihan</p><p>📞 <strong>Informasi lebih lanjut:</strong> [Isi kontak atau link resmi]</p><p>Jangan lewatkan kesempatan ini untuk mengembangkan usaha Anda!</p><p>Salam sukses,<br><strong>Dinas Koperasi dan UMKM Kota Tangerang</strong></p>', 1, '2025-02-11 06:43:42', '2025-05-09 09:32:39'),
(3, 'LOMBA UMKM INOVATIF 2025', 'lomba-umkm-inovatif-2025', 2, 'Pemerintah Kota Tangerang melalui Dinas Koperasi dan UMKM mengundang para pelaku usaha mikro, kecil, dan menengah (UMKM) untuk mengikuti Lomba UMKM Inovatif 2025! Tunjukkan kreativitas dan inovasi usa...', '<p>Pemerintah Kota Tangerang melalui <strong>Dinas Koperasi dan UMKM</strong> mengundang para pelaku usaha mikro, kecil, dan menengah (UMKM) untuk mengikuti <strong>Lomba UMKM Inovatif 2025</strong>! Tunjukkan kreativitas dan inovasi usaha Anda serta raih hadiah menarik!</p><p>📅 <strong>Pendaftaran:</strong> [Isi tanggal pendaftaran]<br>📅 <strong>Batas Akhir Pendaftaran:</strong> [Isi batas waktu]<br>📍 <strong>Lokasi Acara:</strong> [Isi lokasi acara]</p><p>🔍 <strong>Kategori Lomba:</strong><br>🏆 UMKM Kuliner<br>🏆 UMKM Fashion &amp; Kerajinan<br>🏆 UMKM Teknologi &amp; Jasa</p><p>🎁 <strong>Hadiah:</strong><br>🏅 Juara 1: Rp [Isi nominal] + Sertifikat + Pembinaan Eksklusif<br>🥈 Juara 2: Rp [Isi nominal] + Sertifikat<br>🥉 Juara 3: Rp [Isi nominal] + Sertifikat</p><p>💡 <strong>Syarat &amp; Ketentuan:</strong><br>📌 UMKM berdomisili di Kota Tangerang<br>📌 Usaha sudah berjalan minimal 6 bulan<br>📌 Mengisi formulir pendaftaran dan mengunggah profil usaha</p><p>📞 <strong>Informasi &amp; Pendaftaran:</strong> [Isi kontak/link pendaftaran]</p><p>Jangan lewatkan kesempatan ini! Tunjukkan inovasi terbaik dan jadilah UMKM unggulan Kota Tangerang! 🚀</p><p><strong>Dinas Koperasi dan UMKM Kota Tangerang</strong></p>', 1, '2025-02-11 06:44:26', '2025-05-09 09:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `excerpt` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `body` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beritas`
--

INSERT INTO `beritas` (`id`, `gambar`, `judul`, `excerpt`, `slug`, `views`, `body`, `user_id`, `status_id`, `kategori_id`, `created_at`, `updated_at`) VALUES
(1, 'img-berita//681dcb0ea2aed.jpg', 'Heboh Aliansi Warga Perkampungan Geruduk Kantor Desa. Begini Jawaban Kades Cikasungka.', 'LINTASCAKRWALANEWS.COM – Warga Masyarakat yang tergabung dalam Forum Komunikasi Masyarakat Perkampun...', 'heboh-aliansi-warga-perkampungan-geruduk-kantor-desa-begini-jawaban-kades-cikasungka', 1, '<p>LINTASCAKRWALANEWS.COM – Warga Masyarakat yang tergabung dalam Forum Komunikasi Masyarakat Perkampungan Desa Cikasungka laksanakan aksi damai menuntut adanya penjelasan terkait pembuatan sertipikat tanah warga tidak mau menandatangani.</p><p>Tepatnya aksi damai Forum Komunikasi Masyarakat di laksanakan di depan Kantor Desa Cikasungka Kecamatan Solear Kabupaten Tangerang Banten Rabu 09/10/24.</p><p>“Hari ini kami bersama anggota forum komunikasi masyarakat perkampungan Desa Cikasungka melaksanakan aksi damai menuntut ada beberapa point yang pertama (1) menuntut pada pihak Kepala Desa Cikasungka untuk segera memberikan jawaban apa alasannya ada sebanyak kurang lebih dari 60 warga mengajukan untuk membuat surat sertipikat tanah Kepala Desa tidak mau menandatangani</p><p>Yang kedua (2) menuntut warga kampung Babakan yang sudah masuk zona kuning artinya sudah sertipikat masuk milik perusahan padahal warga tersebut tidak merasa memperjual belikan tanah tersebut.</p><p>Yang ketiga memperjuangkan tanah hak milik ibu Aswati sudah tiga tahun mengurus administrasi tanahnya untuk di buatkan AJB mengapa SPPT&nbsp; tanahnya sudah tiga tahun belum juga menjadi atas nama miliknya padahal dirinya sudah membayar administrasi”Jelasnya Korlap Hamid dalam orasinya.</p><p>Aswati Ibu Rumah tangga menyampaikan aspirasinya dengan menggunakan alat pengeras suara. Saya mengajukan surat tanah untuk menggantikan atas ke pemilikan tanah menjadi atas nama saya udah tiga tahun dari setiap bayar pajak SPPT belum berubah padahal sudah lama mengajukan atas nama ke pemilikan bahkan kami sudah membayar administrasi sebesar 23 juta untuk mengurus administrasi perpindahan nama ke pemilikan tanah AJB sampai sekarang SPPT masih nama orang lain</p><p>Mangkanya kami datang ke kantor desa untuk menyampaikan dan untuk menuntut hak kami sebagai warga masyarakat Desa Cikasungka ada apa dan apa kendalanya sampai saat ini untuk pemberkasan surat SPPT lahan belum atas nama kami.</p><p>Sementara itu Farid Warga Kampung Babakan mengatakan Kampung kami tepatnya di Babakan terkena plot zona kuning sudah bersertifikat ke pemilikan punya orang lain sedangkan saya sendiri belum pernah menjual belikan tanah kami untuk itu kami datang ke desa untuk menyampaikan suara dan aspirasi kami supaya tau apa jawaban penjelasan&nbsp; dari pihak desa.</p><p>Supriyadi/Upi Kades Cikasungka menyampaikan dalam pres convers terkait permasalahan warga kami ada satu kampung yang berlokasi di kampung Babakan terkait masuk zona kuning tentunya kami selaku pemerintah desa tidak diam dan kami sudah berkordinasi dengan pihak BPN Kabupaten Tangerang adanya program PTSL tapi itu bukan masuk desa kami namun masuk wilayah Kabupaten Lebak berlokasi di Desa Maja Kecamatan Maja mangkanya kami hadirkan Kepala Desa tersebut untuk memberikan jawaban pada warga kami.”Tegasnya.</p><p>Dan terkait untuk zona kuning itu baru wacana pihak pengembang akan met ploting untuk pembangunan perumahan bukan berarti sudah membuat surat ke pemilikan tanah milik pengembang tadi udah kami sampaikan dan kami jelaskan dengan detil pada warga kami.</p><p>Tentunya kami sebagai Pemerintah Desa sangat apresiasi atas adanya penyampaian aspirasi warga kami yang menyampaikan suara di tempat umum dan itu sudah di atur oleh undang undang kami sangat bangga bahwa warga kami semuanya udah prihatin dan kritis untuk membangun desa Cikasungka kedepan bisa lebih baik</p><p>Terkait tadi yang di sampaikan oleh masyarakat kami yang di suarakan di tempat umum masalah kenapa kami tidak mau menandatangani pengajuan pembuatan surat sertipikat perlu kami luruskan bukannya kami tidak mau menandatangani permohonan warga&nbsp; namun kami akan mempelajari terlebih dahulu bukan semata mata minta tanda tangan kami tanda tangani karena ini menyangkut bidang tanah.</p><p>Memang dulu ada dari perwakilan masyarakat yang datang ke rumah untuk meminta tanda tangan untuk pengajuan&nbsp; surat permohonan tanda tangan bahkan impormasi yang kami terima sudah ada pengukuran sedangkan kami tidak tau adanya pengukuran tanah tersebut kalou kami langsung tanda tangani karena waktu pengukuran kami tidak tau khawatir ada tanah warga yang lainnya ikut terukur karena klou mengukur tanah harus di hadirkan dari pihak pemilik tanah yang berdekatan supaya lebih jelas, dan perlu di ketahui yang mereka pertanyakan terkait pembuatan sertipikat mandiri bukan prona.</p><p>Saya pribadi atas nama Pemerintah Desa Cikasungka mengucapkan terimakasih pada teman teman media sudah hadir dan langsung mengkonfirmasi pada kami terkait adanya aksi damai di depan kantor desa sehingga untuk pembuatan berita bisa berimbang tidak mendengarkan sebelah pihak saja.”Tutupnya.</p>', 1, 2, 3, '2025-02-11 06:05:19', '2025-05-09 09:29:50'),
(2, 'img-berita//681dcaaf1887d.jpeg', 'Perwakabta Berikan Bantuan Alat Kompresor Semprotan Antiseptik Untuk Desa Cikasungka', 'Tangerang (WBO) – Perhimpunan Tionghoa Kalimantan Barat (PTK) Indonesia, bersama Perhimpunan Warga K...', 'perwakabta-berikan-bantuan-alat-kompresor-semprotan-antiseptik-untuk-desa-cikasungka', 0, '<p>Tangerang (WBO) – Perhimpunan Tionghoa Kalimantan Barat (PTK) Indonesia, bersama Perhimpunan Warga Kalimantan Barat Tangarerang, bersatu mengantisipasi penyebaran virus covid – 19. Dengan memberikan bantuan alat pembersih diri (Antiseptik) yang diakui oleh WHO, kali ini alat kompresor beserta cairan antiseptik diberikan langsung kepada kepala Desa Cikasungka.</p><p>Ketua Bidang Sosial Perhimpunan Tionghoa Kalimantan Barat Wandri mengatakan, Kegiatan ini bertujuan untuk membantu masyarakat mencegah dan memutus mata rantai penyebaran virus Covid-19.</p><p>“Dalam rangka pencegahan Covid-19, kami juga mengajak masyarakat untuk mencuci tangan dengan sabun dan air mengalir adalah cara yang paling ampuh untuk membunuh virus. Namun, apabila tidak bisa mencuci tangan segera, maka bisa menggunakan cairan pembersih tangan dengan bijak dan aman,” ucapnya.</p><p>Sementara itu, Kepala Desa Cikasungka M.Supriyadi mengatakan, terimakasih atas bantuan yang diberikan oleh Perhimpunan Tionghoa Kalimantan Barat (PTK) semoga bantuan ini bisa bermanfaat untuk masyarakat Desa Cikasungka.</p><p>“Kami akan lakukan penyemprotan kepada seluruh petugas desa cikasungka yang akan masuk kantor desa dan kepada masyarakat yang datang juga kami akan lakukan penyemprotan, guna memutus dan mencegah mata rantai penyebaran virus covid-19,” ungkapnya.</p><p>Tak hanya aksi penyemprotan, kegiatan dibarengi sosialisasi kebijakan pemerintah terkait Covid-19. Melalui pengeras suara, petugas berkeliling wilayah desa mengimbau masyarakat mengurangi aktivitas di luar rumah.</p><p>“Seperti yang dilakukan pemerintah pusat dan daerah, kami juga mengimbau masyarakat mengurangi aktivitas di luar rumah, dan interaksi dengan masyarakat lain dalam keramaian,” paparnya.</p><p>Komitmen Desa Cikasungka mencegah penyebaran virus makin meluas juga dibuktikan dengan menghentikan beberapa kegiatan yang berpotensi mengumpulkan massa dalam jumlah banyak. Di antaranya kegiatan peringatan Isra Mi’raj, kegiatan pasar malam, dan menyetop sementara kegiatan PKK.</p><p>“Khusus warga yang baru pulang dari luar kota, kami minta mereka periksa ke Puskesmas. Kami sudah koordinasi dengan Puskesmas Cikuya untuk sama-sama memaksimalkan&nbsp;&nbsp;gerakan melawan virus corona,” ujarnya.</p><p>Tak hanya kegiatan preventif, pihaknya juga melakukan tindakan pemantauan masyarakat yang baru tiba dari luar kota. (tris)</p>', 1, 2, 1, '2025-02-11 06:28:51', '2025-05-09 09:28:15'),
(3, 'img-berita//681dca54f2a71.jpg', 'Warga Cikasungka Tangerang Tawarkan Lahan Untuk SMA Negeri: Ketika  Zonasi “Menutup” Akses Pendidikan', 'KABUPATEN Tangerang dikenal sebagai kawasan penyangga ibu kota dengan pembangunan yang kian pesat, t...', 'warga-cikasungka-tangerang-tawarkan-lahan-untuk-sma-negeri-ketika-zonasi-menutup-akses-pendidikan', 2, '<p><strong>KABUPATEN</strong> Tangerang dikenal sebagai kawasan penyangga ibu kota dengan pembangunan yang kian pesat, termasuk di wilayah Kecamatan Solear. Namun di tengah laju pertumbuhan properti dan padatnya permukiman, Desa Cikasungka, &nbsp;justru menghadapi ironi: belum memiliki Sekolah Menengah Atas Negeri (SMAN).</p><p>Desa &nbsp;Cikasungka berpenduduk sekitar 17 ribu jiwa lebih dan berada di lokasi yang sangat strategis—diapit Stasiun Tigaraksa dan Stasiun Cikoya, serta dikelilingi sejumlah perumahan besar seperti Podomoro, Citra Maja, dan Batara Parkview di jalur Cisoka–Maja. Tapi hingga kini, tidak ada fasilitas pendidikan menengah atas negeri yang bisa diakses oleh warga secara langsung.</p><p>Karena tidak ada SMAN di sekitar desa, anak-anak usia sekolah dari Desa Cikasungka terpaksa sekolah ke luar zona, seperti ke SMAN Tigaraksa atau SMAN Cisoka. Namun banyak dari mereka tidak tertampung karena sistem zonasi yang membatasi kuota berdasarkan domisili.</p><p>Kondisi ini bahkan mendorong beberapa orang tua menitipkan administrasi kependudukan (Adminduk) anaknya agar bisa sekolah ke SMAN Maja yang &nbsp;berada di wilayah Kabupaten Lebak. Desa Cikasungka dengan Maja hanya dibatasi oleh Kali Cidurian. Jaraknya relatif dekat dan bisa ditempuh dengan waktu kurang dari 30 menit, asalkan jalan tidak sedang macet parah karena angkutan truk muatan tanah.</p><p>Kondisi belum tersedianya prasarana pendidikan, mencerminkan betapa masyarakat di Kecamatan Solear, Tangerang, masih sulit dalam mengakses pendidikan negeri yang seharusnya bisa dinikmati setiap warga negara tanpa diskriminasi administratif.</p><p><strong>Warga Siap Hibahkan Tanah</strong></p><p>Aspirasi warga Desa Cikasungka sudah disampaikan ke Dinas Pendidikan Provinsi Banten. Perwakilan warga, pernah beraudiensi dengan Asisten Daerah I Pemprov Banten, Komarudin. Hasilnya cukup menggembirakan. “Pemprov siap merealisasikan dan menyiapkan anggaran pembangunan SMAN di Cikasungka. Tapi lahan harus sudah tersedia,” kata Komarudin dalam pertemuan itu.</p><p>Kepala Desa Cikasungka, HM. Supryadi, bersama para tokoh masyarakat menyatakan kesiapan menyediakan lahan untuk lokasi pembangunan SMAN seluas 10.000 M2. Pemerintah Desa Cikasungka akan menghibahkan tanah aset desa seluas&nbsp; 5.000 m2 dan hibah dari salah seorang warga seluas 5.000 M2.<i>&nbsp;</i> Lokasi tanah ini berada di titik strategis antara dua stasiun kereta api Cikuya dan Tigaraksa.</p><p><strong>Ada Lahan Terbengkalai</strong></p><p>Diluar lahan hibah dari warga, terdapat alternatif lain. Desa Cikasungka terdapat 2 (dua) lokasi lahan Fasos/Fasum pengembang perumahan Adiyasa. Lahan tersebut seluas 17.383 m2 diperuntukan&nbsp; Taman Pemakaman Umum (TPU) dan lahan seluas 7.150 M2.</p><p>Masyarakat diatas dua lokasi lahan fasos/fasum tersebut menolak untuk TPU, karena berdekatan dengan perumahan. Dan hingga sekarang, ke dua lokasi lahan tersebut belum dimanfaatkan. Seiring dengan kebutuhan prasarana pendidikan, masyarakat mengusulkan agar lahan Fasos/Fasum seluas 17.383 M2 bisa digunakan untuk lahan pembangunan SMAN.&nbsp; Sementara lahan seluas 7.150 M2 untuk TPU.</p><p>Akses pun semakin terbuka. Pengembang <a href=\"https://bataraparkview.com/\">Batara Parkview</a> bahkan sudah membangun jalan penghubung dari perumahan menuju dua stasiun kereta api terdekat. Rencana pembangunan jalan penghubung dari Stasiun Tigaraksa ke Stasiun Cikoya dan hingga ke wilayah Maja juga sedang dikaji oleh Kementerian Pekerjaan Umum.</p><p>Badan Perencanaan Pembangunan Daerah (Bappeda) Kabupaten Tangerang bersama OPD terkait dan perwakilan warga sudah mengadakan pertemuan, sebagai tindaklanjuti usulan pembangunan SMAN, pada tanggal 30 April 2024. &nbsp;Peserta&nbsp; rapat setuju dan&nbsp; mengusulkan &nbsp;kepada Bupati Tangerang, terkait Fasos/Fasum untuk bisa digunakan lokasi pembangunan SMAN, kecuali dari OPD bagian aset yang tidak setuju. Anggaran untuk pembangunan SMAN di Cikasungka sudah masuk di APBD Provinsi Banten Tahun 2025.</p><p>Pembangunan SMAN di Cikasungka bukan hanya soal memenuhi hak pendidikan, tetapi juga soal membangun masa depan. Pendidikan menengah atas adalah pondasi penting dalam membentuk SDM unggul dan kompetitif.</p><p>Dengan adanya SMAN di Cikasungka, Solear, anak-anak tidak perlu lagi menempuh perjalanan jauh atau orang tua “mengakali” adminstrasi dokumen kependudukan demi bisa anaknya sekolah. Lebih dari itu, keberadaan sekolah negeri akan membuka peluang kolaborasi dengan sektor ekonomi lokal, seperti UMKM dalam pengembangan wirausaha muda berbasis potensi desa.</p><p>Desa Cikasungka memiliki dua kekuatan utama yang belum sepenuhnya dimaksimalkan: sumber daya manusia muda dan sumber daya alam yang masih menganggur. Tanpa dukungan fasilitas pendidikan formal, kedua potensi ini akan sia-sia dan hanya menjadi beban pembangunan.</p><p>Pendidikan adalah instrumen untuk membentuk karakter, membuka wawasan, dan membekali keterampilan hidup. Di saat yang sama, lahan-lahan tidak produktif harus mulai diarahkan untuk kepentingan rakyat, bukan hanya jadi obyek investasi tak tersentuh.—(***)</p>', 1, 2, 1, '2025-02-11 06:30:02', '2025-05-09 09:26:45');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `berita_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment_replies`
--

CREATE TABLE `comment_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `gambar`, `keterangan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'img-gallery//681dccef7a7a7.jpg', 'Keramat Solear', 1, '2025-02-11 06:34:33', '2025-05-09 09:37:51'),
(2, 'img-gallery//681dcea5e2c0f.jpg', 'Contoh gallery', 1, '2025-02-11 06:35:24', '2025-05-09 09:45:09'),
(3, 'img-gallery//681dcebb407e8.jpg', 'Contoh gallery1', 1, '2025-02-11 06:36:15', '2025-05-09 09:45:31'),
(4, 'img-gallery//681dcecee4d7f.jpg', 'Contoh gallery2', 1, '2025-02-11 06:36:56', '2025-05-09 09:45:50');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kelamins`
--

CREATE TABLE `jenis_kelamins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_kelamins`
--

INSERT INTO `jenis_kelamins` (`id`, `jenis_kelamin`, `jumlah`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Laki-laki', 70, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(2, 'Perempuan', 55, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `kategori`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Teknologi', 'teknologi', 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(2, 'Kesenian', 'kesenian', 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(3, 'UMKM', 'umkm', 1, '2025-02-11 06:05:44', '2025-02-11 06:05:44'),
(4, 'pariwisata', 'pariwisata', 1, '2025-02-11 06:26:07', '2025-02-11 06:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `kontaks`
--

CREATE TABLE `kontaks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lokasi` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kontaks`
--

INSERT INTO `kontaks` (`id`, `lokasi`, `email`, `no_hp`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Cikasungka, Kabupaten Tangerang, Banten', 'cikasungka21@gmail.com', '081296403215', 1, '2025-02-11 03:21:45', '2025-05-01 23:25:39');

-- --------------------------------------------------------

--
-- Table structure for table `layanans`
--

CREATE TABLE `layanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `layanan` varchar(255) NOT NULL,
  `persyaratan` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layanans`
--

INSERT INTO `layanans` (`id`, `layanan`, `persyaratan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Program UHC di Kota Tangerang', '<p><strong>Identitas Resmi:</strong> Memiliki identitas yang dikeluarkan oleh Pemerintah Kota Tangerang selama lebih dari 1 tahun.</p><p><strong>Kartu Keluarga (KK):</strong> Bagi bayi yang usianya lebih dari 1 bulan, namanya harus sudah tercantum di Kartu Keluarga untuk bisa masuk dalam UHC.</p><p><strong>Dokumen Pendukung:</strong> Menyiapkan KTP, KK, dan hasil pemeriksaan pasien/rujukan/surat rawat.</p><p><strong>Kepesertaan JKN:</strong> UHC berlaku untuk:</p><ul><li>Pasien yang belum memiliki JKN atau PBI non-aktif (sesuai persyaratan).</li><li>Pasien terdaftar BPJS Mandiri non-aktif karena masalah premi (dengan tambahan formulir PYDOPD).</li><li>Pasien terdaftar BPJS pegawai swasta non-aktif (dengan tambahan surat keterangan kerja).</li><li>Pasien BBL (bayi dari ibu yang terdaftar PBI dengan usia &lt;28 hari) dengan tambahan Surat Keterangan Lahir.</li></ul>', 1, '2025-02-11 06:23:03', '2025-05-09 09:50:06'),
(2, 'Pendaftaran Layanan Kesehatan di Puskesmas Secara Online', '<p><strong>Sistem yang Dikembangkan Sendiri oleh Puskesmas:</strong> Setiap Puskesmas mungkin memiliki sistem pendaftaran online yang unik. Petunjuk pendaftaran biasanya tersedia di situs web Puskesmas atau dapat diperoleh melalui kontak telepon.</p><p><strong>Platform Kesehatan Online Pemerintah:</strong> Jika tersedia, platform ini terintegrasi dengan beberapa Puskesmas. Anda mungkin perlu mendaftar akun terlebih dahulu sebelum dapat mendaftar di Puskesmas. Informasi lebih lanjut dapat ditemukan di situs web Dinas Kesehatan Kota Tangerang.</p><p><strong>Aplikasi Pihak Ketiga:</strong> Beberapa Puskesmas mungkin bekerja sama dengan aplikasi pihak ketiga untuk menyediakan layanan pendaftaran online. Pastikan aplikasi tersebut terpercaya dan aman sebelum menggunakannya.</p><p>Langkah-langkah umum pendaftaran online di Puskesmas Tangerang meliputi:</p><p><strong>Akses Situs Web atau Aplikasi:</strong> Buka situs web Puskesmas atau aplikasi yang telah ditentukan.</p><p><strong>Pendaftaran Akun:</strong> Jika diperlukan, buat akun dengan mengisi data diri yang diminta.</p><p><strong>Pilih Layanan:</strong> Pilih jenis layanan kesehatan yang dibutuhkan dan jadwal kunjungan.</p><p><strong>Konfirmasi Pendaftaran:</strong> Setelah mengisi semua informasi yang diperlukan, konfirmasi pendaftaran Anda.</p>', 1, '2025-02-11 06:24:18', '2025-05-09 09:49:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_09_13_022605_create_sliders_table', 1),
(7, '2023_09_14_134427_create_beritas_table', 1),
(8, '2023_09_14_142413_create_post_statuses_table', 1),
(9, '2023_09_14_223318_create_kategoris_table', 1),
(10, '2023_09_17_091224_create_comments_table', 1),
(11, '2023_09_18_054320_create_comment_replies_table', 1),
(12, '2023_09_18_173129_create_wilayahs_table', 1),
(13, '2023_09_18_203110_create_sejarahs_table', 1),
(14, '2023_09_18_210113_create_visi_misis_table', 1),
(15, '2023_09_19_061945_create_perangkat_desas_table', 1),
(16, '2023_09_21_054915_create_agamas_table', 1),
(17, '2023_09_21_073255_create_jenis_kelamins_table', 1),
(18, '2023_09_21_085821_create_pekerjaans_table', 1),
(19, '2023_09_23_063218_create_petas_table', 1),
(20, '2023_09_24_051908_create_umkms_table', 1),
(21, '2023_09_25_061424_create_kontaks_table', 1),
(22, '2023_09_25_075226_create_video_profils_table', 1),
(23, '2023_09_26_054211_create_situses_table', 1),
(24, '2023_11_29_060538_create_layanans_table', 1),
(25, '2023_11_29_073753_create_galleries_table', 1),
(26, '2023_11_29_164313_create_announcements_table', 1),
(27, '2023_11_29_201150_create_anggarans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaans`
--

CREATE TABLE `pekerjaans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pekerjaans`
--

INSERT INTO `pekerjaans` (`id`, `pekerjaan`, `jumlah`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Petani', 132, 1, '2025-02-11 03:21:45', '2025-02-11 04:55:09'),
(2, 'Pegawai Negeri', 14, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(3, 'Belum/Tidak bekerja', 10, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(4, 'Pensiunan', 20, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `perangkat_desas`
--

CREATE TABLE `perangkat_desas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perangkat_desas`
--

INSERT INTO `perangkat_desas` (`id`, `nama`, `foto`, `jabatan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Kasep Code', 'img-perangkat//67aaf46b5d68e.jpg', 'Kepala Desa', 1, '2025-02-11 03:21:45', '2025-02-11 06:55:39'),
(2, 'Zilong', 'img-perangkat//67aaf45773274.jpg', 'Sekretaris Desa', 1, '2025-02-11 03:21:45', '2025-02-11 06:55:19'),
(3, 'Qiara', 'img-perangkat//67aaf3cb12ce6.png', 'Kepala Urusan Umum', 1, '2025-02-11 03:21:45', '2025-02-11 06:52:59'),
(4, 'Julian', 'img-perangkat//67aaf3e13146a.jpg', 'Kepala Dusun', 1, '2025-02-11 03:21:45', '2025-02-11 06:53:21');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petas`
--

CREATE TABLE `petas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `petas`
--

INSERT INTO `petas` (`id`, `judul`, `alamat`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Peta Desa', 'Cikasungka Kec. Solear Kabupaten Tangerang Banten', 1, '2025-02-11 03:21:45', '2025-05-01 22:57:27');

-- --------------------------------------------------------

--
-- Table structure for table `post_statuses`
--

CREATE TABLE `post_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_statuses`
--

INSERT INTO `post_statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'draft', '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(2, 'publish', '2025-02-11 03:21:45', '2025-02-11 03:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `sejarahs`
--

CREATE TABLE `sejarahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sejarahs`
--

INSERT INTO `sejarahs` (`id`, `judul`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Sejarah Desa Cikasungka', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1, '2025-02-11 03:21:45', '2025-05-04 15:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `situses`
--

CREATE TABLE `situses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `nm_desa` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kabupaten` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `situses`
--

INSERT INTO `situses` (`id`, `logo`, `nm_desa`, `kecamatan`, `kabupaten`, `provinsi`, `kode_pos`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'img-logo//6814022cd194e.png', 'Desa Cikasungka', 'Solear', 'Tangerang', 'Banten', 15730, 1, '2025-02-11 03:21:45', '2025-05-01 23:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `img_slider` varchar(255) DEFAULT NULL,
  `link_btn` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `judul`, `deskripsi`, `img_slider`, `link_btn`, `created_at`, `updated_at`) VALUES
(1, 'Website Desa Cikasungka', 'Desa Cikasungka adalah desa yang terletak di kecamatan Solear, Kabupaten Tangerang, Provinsi Banten, Kode Pos 15730.', 'img-slider//6813fb40b1ba0.jpg', 'wilayah', '2025-02-11 03:21:45', '2025-05-09 05:40:33'),
(2, 'Sejarah Desa Cikasungka', 'Desa Cikasungka adalah desa yang terletak di kecamatan Solear, Kabupaten Tangerang, Provinsi Banten, Kode Pos 15730.', 'img-slider//681dd1a87e622.jpg', 'sejarah', '2025-02-11 03:21:45', '2025-05-09 09:58:00'),
(3, 'Visi & Misi', 'Visi & Misi desa Cikasungka dalah Terwujudnya masyarakat Desa OHA yang Bersih, Relegius, Sejahtera, Rapi dan Indah', 'img-slider//681dd1b3bbf27.jpg', 'visi-misi', '2025-02-11 03:21:45', '2025-05-09 09:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `umkms`
--

CREATE TABLE `umkms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) NOT NULL,
  `produk` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `deskripsi` text NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `umkms`
--

INSERT INTO `umkms` (`id`, `foto`, `produk`, `slug`, `harga`, `deskripsi`, `no_hp`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'img-produk/67aae72a74e39.jpeg', 'Kerajinan Rajut Eceng Gondok', 'kerajinan-rajut-eceng-gondok', 150000, '<p>KERANJANG MINI ENCENG GONDOK DIMENSI 30X28X10 CM ( UKURAN PAKET )<br>DETAIL SIZE PRODUK : 30X18X10 CM<br>dikarenakan produk merupakan handmade wajar bila ada selisih dengan size yg tertera dideskripsi.<br><br>LANGSUNG PENGRAJIN , BELI DI MALL PASTI 100 LEBIH<br><br>LANGUNS AJA SIS.<br><br>NOTE : SUPAYA TIDAK RUSAK KAMI MENYEDIAKAN KARDUS BERBAYAR HANYA 500 RUPIAH , SILAHKAN CHECK OUT DI ETALASE<br><br>#ENCENGGONDOK #STORAGE #KERANJANGANYAMAN #SEAGRASS</p>', '895347109472', 1, '2025-02-11 05:59:06', '2025-05-09 09:48:20'),
(2, 'img-produk/67aae9ee8b60f.png', 'Pisang Bolen', 'pisang-bolen', 30000, '<p>Perpaduan pisang yang dibalut dengan kulit pastry yang renyah ini jadi camilan khas. Saat dimakan, kombinasi lembutnya pisang, manis gurihnya cokelat dan keju yang jadi isian rasa dan renyahnya pastry menjadikan camilan ini oleh-oleh khas yang wajib untuk dibeli.</p>', '895347109472', 1, '2025-02-11 06:10:54', '2025-05-09 09:47:34'),
(3, 'img-produk/67aaeaf668166.jpeg', 'Dorokdokcu, Banjaran', 'dorokdokcu-banjaran', 15000, '<p>Dorokdok Pedas Jeruk Brand: Dorokdokcu Rasa: Pedas daun jeruk Netto: 50gr Harga: Rp 10.000 Terbuat dari 100% kulit sapi . Ini enak banget rasanya pedes asin gurih plus ada sedikit rasa khas daun jeruknya, sobi micin dijamin nagih!!</p>', '895347109472', 1, '2025-02-11 06:15:18', '2025-05-09 09:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `foto`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'img-profil/user-1.jpg', 'admin', 'admin@gmail.com', NULL, '$2y$10$y524SMmxYHjWaYnq9OmZvOyo9tMISdjVPs72wj9ngvruf3sj7D0S2', NULL, '2025-02-11 03:21:45', '2025-02-11 07:11:28');

-- --------------------------------------------------------

--
-- Table structure for table `video_profils`
--

CREATE TABLE `video_profils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url_video` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_profils`
--

INSERT INTO `video_profils` (`id`, `url_video`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'https://www.youtube.com/embed/tBD3nhmQbl8', 1, '2025-02-11 03:21:45', '2025-05-05 17:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `visi_misis`
--

CREATE TABLE `visi_misis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visi_misis`
--

INSERT INTO `visi_misis` (`id`, `visi`, `misi`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '2025-02-11 03:21:45', '2025-05-04 15:08:29');

-- --------------------------------------------------------

--
-- Table structure for table `wilayahs`
--

CREATE TABLE `wilayahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wilayahs`
--

INSERT INTO `wilayahs` (`id`, `judul`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Wilayah Desa Cikasungka', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1, '2025-02-11 03:21:45', '2025-05-04 15:05:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agamas`
--
ALTER TABLE `agamas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anggarans`
--
ALTER TABLE `anggarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `announcements_slug_unique` (`slug`);

--
-- Indexes for table `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `beritas_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_kelamins`
--
ALTER TABLE `jenis_kelamins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontaks`
--
ALTER TABLE `kontaks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanans`
--
ALTER TABLE `layanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pekerjaans`
--
ALTER TABLE `pekerjaans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perangkat_desas`
--
ALTER TABLE `perangkat_desas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `petas`
--
ALTER TABLE `petas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_statuses`
--
ALTER TABLE `post_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sejarahs`
--
ALTER TABLE `sejarahs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `situses`
--
ALTER TABLE `situses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `umkms`
--
ALTER TABLE `umkms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `video_profils`
--
ALTER TABLE `video_profils`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visi_misis`
--
ALTER TABLE `visi_misis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wilayahs`
--
ALTER TABLE `wilayahs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agamas`
--
ALTER TABLE `agamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `anggarans`
--
ALTER TABLE `anggarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment_replies`
--
ALTER TABLE `comment_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jenis_kelamins`
--
ALTER TABLE `jenis_kelamins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kontaks`
--
ALTER TABLE `kontaks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `layanans`
--
ALTER TABLE `layanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pekerjaans`
--
ALTER TABLE `pekerjaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `perangkat_desas`
--
ALTER TABLE `perangkat_desas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petas`
--
ALTER TABLE `petas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post_statuses`
--
ALTER TABLE `post_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sejarahs`
--
ALTER TABLE `sejarahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `situses`
--
ALTER TABLE `situses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `umkms`
--
ALTER TABLE `umkms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `video_profils`
--
ALTER TABLE `video_profils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visi_misis`
--
ALTER TABLE `visi_misis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wilayahs`
--
ALTER TABLE `wilayahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
