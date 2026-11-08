-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 08 Nov 2026 pada 07.49
-- Versi server: 11.8.6-MariaDB-log
-- Versi PHP: 8.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Basis data: `portofolio`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `achievements`
--

CREATE TABLE `achievements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penyelenggara` varchar(255) NOT NULL,
  `tahun` smallint(5) UNSIGNED NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `link_sertifikat` varchar(255) DEFAULT NULL,
  `urutan` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `achievements`
--

INSERT INTO `achievements` (`id`, `profile_id`, `judul`, `penyelenggara`, `tahun`, `deskripsi`, `link_sertifikat`, `urutan`, `created_at`, `updated_at`) VALUES
(1, 1, 'Basic SQL Certificate', 'HackerRank', 2025, 'Sertifikasi keahlian dasar database SQL dari HackerRank', 'https://www.hackerrank.com/certificates/iframe/f4f0deee0414', 1, '2026-11-08 00:24:21', '2026-11-08 00:24:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_id` bigint(20) UNSIGNED NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ikon` varchar(255) DEFAULT NULL,
  `urutan` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`id`, `profile_id`, `jenis`, `label`, `url`, `ikon`, `urutan`, `created_at`, `updated_at`) VALUES
(1, 1, 'email', 'Email', 'https://mail.google.com/mail/?view=cm&to=zakwanabdurrahman74@gmail.com', 'mail', 1, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(2, 1, 'github', 'GitHub', 'https://github.com/zwann74', 'github', 2, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(3, 1, 'linkedin', 'LinkedIn', 'https://www.linkedin.com/in/zakwan-abdurrahman-4b3a1232b', 'linkedin', 3, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(4, 1, 'instagram', 'Instagram', 'https://instagram.com/zwan_vy', 'instagram', 4, '2026-11-08 00:24:21', '2026-11-08 00:24:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `educations`
--

CREATE TABLE `educations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_id` bigint(20) UNSIGNED NOT NULL,
  `institusi` varchar(255) NOT NULL,
  `jenjang` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `tahun_mulai` smallint(5) UNSIGNED DEFAULT NULL,
  `tahun_selesai` smallint(5) UNSIGNED DEFAULT NULL,
  `ipk` decimal(3,2) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `urutan` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `educations`
--

INSERT INTO `educations` (`id`, `profile_id`, `institusi`, `jenjang`, `jurusan`, `tahun_mulai`, `tahun_selesai`, `ipk`, `deskripsi`, `urutan`, `created_at`, `updated_at`) VALUES
(1, 1, 'Universitas Muhammadiyah Kota Sukabumi', 'S1', 'Teknik Informatika', 2024, NULL, 3.45, NULL, 1, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(2, 1, 'SMAN 5 Kota Sukabumi', 'SMA', 'IPS', 2021, 2024, NULL, NULL, 2, '2026-11-08 00:24:21', '2026-11-08 00:24:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `organizations`
--

CREATE TABLE `organizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `tahun_mulai` smallint(5) UNSIGNED DEFAULT NULL,
  `tahun_selesai` smallint(5) UNSIGNED DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `urutan` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `organizations`
--

INSERT INTO `organizations` (`id`, `profile_id`, `nama`, `jabatan`, `tahun_mulai`, `tahun_selesai`, `deskripsi`, `urutan`, `created_at`, `updated_at`) VALUES
(1, 1, 'Himpunan Mahasiswa Teknik Informatika (HMIF)', 'Staf Divisi Kesehatan', 2025, NULL, 'Memfasilitasi kebutuhan kesehatan, P3K, dan kesejahteraan mahasiswa selama kegiatan himpunan atau acara kampus berlangsung', 1, '2026-11-08 00:24:21', '2026-11-08 00:24:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `headline` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `cv_file` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profiles`
--

INSERT INTO `profiles` (`id`, `nama`, `headline`, `bio`, `foto`, `cv_file`, `email`, `lokasi`, `created_at`, `updated_at`) VALUES
(1, 'Zakwan Abdurrahman', 'Aspiring Web Developer', 'Mahasiswa Teknik Informatika yang tertarik pada pengembangan web dan aplikasi mobile. Saya belajar lewat praktikum dan proyek kuliah, mulai dari Laravel dan React Native sampai pengolahan citra dan mikrokontroler.', 'foto_zakwan.jpg', 'cv_zakwan_abdurrahman.pdf', 'zakwanabdurrahman74@gmail.com', 'Kota Sukabumi, Jawa Barat', '2026-11-08 00:24:21', '2026-11-08 00:24:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_id` bigint(20) UNSIGNED NOT NULL,
  `project_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `link_demo` varchar(255) DEFAULT NULL,
  `link_repo` varchar(255) DEFAULT NULL,
  `urutan` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `projects`
--

INSERT INTO `projects` (`id`, `profile_id`, `project_category_id`, `judul`, `deskripsi`, `thumbnail`, `link_demo`, `link_repo`, `urutan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Website Portofolio Pribadi', 'Website CV dan portofolio berbasis database dengan Laravel, MySQL, dan Tailwind CSS. Desain diambil dari Figma.', 'portofolio.png', NULL, NULL, 1, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(2, 1, 2, 'Diary App', 'Aplikasi catatan harian dengan React Native (Expo Router), memakai state dan hooks.', 'diary-app.jpeg', NULL, NULL, 2, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(3, 1, 4, 'Image Enhancement Biji Kopi', 'Perbaikan kualitas citra biji kopi dengan koreksi gamma, CLAHE, dan filter derau di Python.', 'image-enhancement-kopi.png', NULL, NULL, 3, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(4, 1, 3, 'Seven Segment dengan Push Button', 'Rangkaian Arduino Uno dengan seven segment dan dua push button untuk menaikkan dan menurunkan angka.', 'seven-segment.jpeg', NULL, NULL, 4, '2026-11-08 00:24:21', '2026-11-08 00:24:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_categories`
--

CREATE TABLE `project_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `project_categories`
--

INSERT INTO `project_categories` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Web', '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(2, 'Mobile', '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(3, 'IoT / Embedded', '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(4, 'Image Processing', '2026-11-08 00:24:21', '2026-11-08 00:24:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_id` bigint(20) UNSIGNED NOT NULL,
  `skill_category_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `level` tinyint(3) UNSIGNED DEFAULT NULL,
  `ikon` varchar(255) DEFAULT NULL,
  `urutan` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `skills`
--

INSERT INTO `skills` (`id`, `profile_id`, `skill_category_id`, `nama`, `level`, `ikon`, `urutan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'HTML', NULL, NULL, 1, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(2, 1, 1, 'CSS', NULL, NULL, 2, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(3, 1, 1, 'JavaScript', NULL, NULL, 3, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(4, 1, 1, 'Tailwind CSS', NULL, NULL, 4, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(5, 1, 1, 'React Native', NULL, NULL, 5, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(6, 1, 2, 'PHP', NULL, NULL, 1, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(7, 1, 2, 'Laravel', NULL, NULL, 2, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(8, 1, 2, 'MySQL', NULL, NULL, 3, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(9, 1, 3, 'Python', NULL, NULL, 1, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(10, 1, 3, 'Arduino', NULL, NULL, 2, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(11, 1, 4, 'Figma', NULL, NULL, 1, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(12, 1, 4, 'Git', NULL, NULL, 2, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(13, 1, 4, 'VS Code', NULL, NULL, 3, '2026-11-08 00:24:21', '2026-11-08 00:24:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `skill_categories`
--

CREATE TABLE `skill_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `urutan` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `skill_categories`
--

INSERT INTO `skill_categories` (`id`, `nama`, `urutan`, `created_at`, `updated_at`) VALUES
(1, 'Frontend', 1, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(2, 'Backend', 2, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(3, 'Lainnya', 3, '2026-11-08 00:24:21', '2026-11-08 00:24:21'),
(4, 'Tools', 4, '2026-11-08 00:24:21', '2026-11-08 00:24:21');

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `achievements_profile_id_foreign` (`profile_id`);

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_profile_id_foreign` (`profile_id`);

--
-- Indeks untuk tabel `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `educations_profile_id_foreign` (`profile_id`);

--
-- Indeks untuk tabel `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organizations_profile_id_foreign` (`profile_id`);

--
-- Indeks untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_profile_id_foreign` (`profile_id`),
  ADD KEY `projects_project_category_id_foreign` (`project_category_id`);

--
-- Indeks untuk tabel `project_categories`
--
ALTER TABLE `project_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_categories_nama_unique` (`nama`);

--
-- Indeks untuk tabel `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skills_profile_id_foreign` (`profile_id`),
  ADD KEY `skills_skill_category_id_foreign` (`skill_category_id`);

--
-- Indeks untuk tabel `skill_categories`
--
ALTER TABLE `skill_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `skill_categories_nama_unique` (`nama`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `educations`
--
ALTER TABLE `educations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `project_categories`
--
ALTER TABLE `project_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `skill_categories`
--
ALTER TABLE `skill_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `achievements`
--
ALTER TABLE `achievements`
  ADD CONSTRAINT `achievements_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `educations`
--
ALTER TABLE `educations`
  ADD CONSTRAINT `educations_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `organizations`
--
ALTER TABLE `organizations`
  ADD CONSTRAINT `organizations_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_project_category_id_foreign` FOREIGN KEY (`project_category_id`) REFERENCES `project_categories` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `skills_skill_category_id_foreign` FOREIGN KEY (`skill_category_id`) REFERENCES `skill_categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
