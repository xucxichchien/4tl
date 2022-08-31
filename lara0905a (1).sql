-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 31, 2022 lúc 06:19 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lara0905a`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Pham Kim Tai', 'pkt@gmail.com', '2022-08-31 09:17:55', '2022-08-31 09:17:55'),
(2, 'Nguyen Trung Hieu', 'nth@gmail.com', '2022-08-31 09:18:12', '2022-08-31 09:18:12'),
(3, 'Phan Truong Giang', 'ptg@gmail.com', '2022-08-31 09:18:27', '2022-08-31 09:18:27'),
(4, 'Nguyen Dan Que', 'ndq@gmail.com', '2022-08-31 09:19:02', '2022-08-31 09:19:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `brandID` bigint(20) UNSIGNED NOT NULL,
  `brandName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brandImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`brandID`, `brandName`, `brandImage`, `created_at`, `updated_at`) VALUES
(1, 'CREED', 'CREED.jpeg', '2022-08-31 08:55:56', '2022-08-31 08:55:56'),
(2, 'Le Labo', 'Le labo.jpg', '2022-08-31 08:56:01', '2022-08-31 08:56:01'),
(3, 'Kilian', 'Kilian.png', '2022-08-31 08:56:06', '2022-08-31 08:56:06'),
(4, 'Mancera', 'mancera.png', '2022-08-31 08:56:18', '2022-08-31 08:56:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `categoryID` bigint(20) UNSIGNED NOT NULL,
  `categoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`categoryID`, `categoryName`, `categoryImage`, `created_at`, `updated_at`) VALUES
(1, 'Male', 'male.jpg', '2022-08-31 08:54:46', '2022-08-31 08:54:46'),
(2, 'Female', 'female.jpg', '2022-08-31 08:54:52', '2022-08-31 08:54:52'),
(3, 'Unisex', 'banana.png', '2022-08-31 08:55:07', '2022-08-31 08:55:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `managers`
--

CREATE TABLE `managers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `managers`
--

INSERT INTO `managers` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Duong Tuong Yen', 'dty@gmail.com', '123456', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_08_19_162627_create_brands_table', 1),
(5, '2022_08_20_160220_create_users_table', 1),
(6, '2022_08_21_080723_create_admins_table', 1),
(7, '2022_08_21_090222_create_managers_table', 1),
(8, '2022_08_31_152123_create_parfums_table', 2),
(9, '2022_08_31_155127_create_categories_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `parfums`
--

CREATE TABLE `parfums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prodName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodPrice` double(8,2) NOT NULL,
  `prodDes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brandID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `parfums`
--

INSERT INTO `parfums` (`id`, `prodName`, `prodPrice`, `prodDes`, `prodImage`, `categoryID`, `brandID`, `created_at`, `updated_at`) VALUES
(2, 'CREED AVENTUS', 350.00, 'The exceptional Aventus was inspired by the dramatic life of a historic emperor, celebrating strength, power, and success. Introduced in 2010, this scent has grown to become the best-selling fragrance in the history of the brand. Olivier Creed created its iconic name derived from a (\"from\") ventus (\"the wind\"), illustrating the Aventus man as destined to live a driven life, ever galloping with the wind at his back toward success. Aventus is a sophisticated blend for individuals who savor a life well-lived.', 'AVENTUS.webp', '1', '1', '2022-08-31 08:59:31', '2022-08-31 08:59:31'),
(3, 'CREED ROYAL', 340.00, 'This vibrant, clean, and understated classic was created as a tribute to Britain\'s young royals, the next generation of the House of Windsor heirs. A perfect balance of effervescent citrus and a brisk coolness brings us this invigorating scent. Royal Water\'s contemporary clear glass bottle conveys the energy, power, and glamour of tomorrow\'s royalty and international newsmakers.', 'ROYAL.webp', '2', '1', '2022-08-31 09:02:51', '2022-08-31 09:02:51'),
(4, 'CREED SILVER MOUNTAIN WATER', 340.00, 'The adventurous Silver Mountain Water evokes sparkling streams coursing through the snow-capped Swiss Alps, a bracing landscape in which Olivier Creed, a championship skier, finds relaxation and renewal. A bestseller since its launch, this modern marine/green scent captures the purity of the mountains-soft, milky-sweet blackcurrants mixed with green tea, the richness of bergamot, and sandalwood. Its opaque white bottle hints at icy snowbanks topped with a glistening cap.', '1110035_SMW_100ml_650x.webp', '3', '1', '2022-08-31 09:03:37', '2022-08-31 09:04:47'),
(5, 'LE LABO ROSE 31', 220.00, 'The perfume’s aim is clear: to transform the famous Grasse Rose, a symbol of voluptuousness and unqualified femininity, into an assertively virile fragrance that can be worn by men and women…  The result is a model of its kind: alternating feminine/masculine with the disturbing ambiguity of the Centifolia rose, quickly picked up by a chorus of warm, spicy and woodsy notes such as cumin, olbanum, cedar and a touch of amber…In the background, the declared sensuality of Gaïac wood and cistus highlighted by a distinctly physical animal note, give this perfume a disconcerting sense of mystery.', '100PR31100__PRODUCT_01--IMG_1200--ROSE31--1127523500.webp', '2', '2', '2022-08-31 09:06:11', '2022-08-31 09:06:11'),
(6, 'LE LABO TABAC 28', 371.00, 'Available online September 1st through September 30th only.  Sometimes a cigar is just a cigar…​  And sometimes, it becomes a perfume!​  Smoky, seductive, alluring – TABAC 28 is Miami in a bottle.  Deeply aromatic tobacco absolute (picture a Cuban Havana distilled) combined with opulent oud and a striking cedarwood blend creating a smooth, smoldering feel. Gaiac wood and rum give the fragrance an intoxicating warmth rounded with green cardamom. The whole thing is alive, vibrant, sensual – decadent, even! And it brings to Wynwood more colorful graffiti… but this one for your nostrils only. Only available in Miami.  All year round, City Exclusive 50ml and 100ml bottles can be refilled in select Le Labo labs, world-wide.', 'J29501R000__PRODUCT_01--IMG_1200--TABAC28-848906699.webp', '1', '2', '2022-08-31 09:07:31', '2022-08-31 09:08:46'),
(7, 'LE LABO CITRON 28', 371.00, 'Available online September 1st through September 30th only.  In the beginning, CITRON 28’s early code name was “Citron Boheme”; we wanted a real lemon perfume that wasn’t just lemon, but a twist on this icon of citruses. A mix and match of freshness and structure (lemon, ginger, and jasmine, resting on cedar and musk notes), it strikes the right balance between the original and the conservative. CITRON 28 meets the need for purity and simplicity and, as such, delivers something almost universal and easy to understand – yet remains inscrutable.', 'J2TF01R000__PRODUCT_01--IMG_1200--CITRON28--886768537.webp', '3', '2', '2022-08-31 09:08:33', '2022-08-31 09:08:33'),
(8, 'KILIAN MOONLIGHT IN HEAVEN', 265.00, 'Omnipresent, Moonlight in Heaven sparkles with a citrus-forward opening, driven by a duo of lemon and grapefruit, spiced with pink pepper berry. Coconut milk and rice–white as the moon’s face–rounds out creamy mango and powdery jasmine sambac, while a tonka bean drydown envelops delicate vetiver.', 'kl_sku_N3CX01_833x968_4 (1).webp', '1', '3', '2022-08-31 09:10:19', '2022-08-31 09:10:19'),
(9, 'KILIAN GOOD GIRL GONE BAD', 265.00, 'Half-innocent, half-voluptuous, the apricot-tinged osmanthus absolute, orange blossom and rose of May absolute that open the fragrance are beholden by the ultimate temptress: an explosion of the three-sirens of flowers: tuberose absolute, jasmine and narcissus.', 'kl_sku_N3E401_833x968_4.webp', '2', '3', '2022-08-31 09:11:07', '2022-08-31 09:11:07'),
(10, 'KILIAN MUSK OUD', 265.00, 'A contemporary, Western twist on classic Rose Oud, Musk Oud is a quiet expression of syrupy rose and geranium petals, silken musk and spices. A heady drydown of oud accord, patchouli and musk anchors an intoxicating rum-filled opening. Going down smooth, as sweet as it is seductive, a new page for ancient oud is written.', 'kl_sku_N3EL01_833x968_4.webp', '3', '3', '2022-08-31 09:12:08', '2022-08-31 09:12:08'),
(11, 'MANCERA FABULOUS YUZU', 135.00, 'Riche et vif, gourmand et acidulé, boisé et fruité ... un voyage inspiré par l’Empire du Soleil Levant. Associé au bois de santal et à la fève tonka pour la gourmande touche signé Mancera, Fabulous Yuzu allie poésie et frénésie.', 'YUZU.jpg', '2', '4', '2022-08-31 09:14:59', '2022-08-31 09:14:59'),
(12, 'MANCERA BLACK LINE', 150.00, 'Une explosion d’épices sur une rose boisée orientale.', 'BLACK LINE.jpg', '1', '4', '2022-08-31 09:15:49', '2022-08-31 09:15:49'),
(13, 'MANCERA AOUD LEMON MINT', 150.00, 'Inspiration cubaine pour ce cocktail frais et délicieusement sucré.', 'aoud-lemon-mint.jpg', '3', '4', '2022-08-31 09:16:56', '2022-08-31 09:16:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(2, 'Lam Hue Quan', 'lhq@gmail.com', '$2y$10$7RmhFpxH9XsYKytuS5EE..KquoarPRxYhBGJL169Hk7U2MdxNEOU.', '2022-08-31 08:31:03', '2022-08-31 08:31:03'),
(3, 'Nguyen Dan Que', 'quenguyendan123456789@gmail.com', '$2y$10$HzR0.q8GJPPPOlCGDyPng.I3h7lrBYfV4K8e5kYGu5pwa9iHfpJl.', '2022-08-31 08:38:03', '2022-08-31 08:38:03');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brandID`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `managers_email_unique` (`email`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `parfums`
--
ALTER TABLE `parfums`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `brandID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `managers`
--
ALTER TABLE `managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `parfums`
--
ALTER TABLE `parfums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
