-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 27 2022 г., 14:45
-- Версия сервера: 5.7.33
-- Версия PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mburnaevg4_fulls`
--

-- --------------------------------------------------------

--
-- Структура таблицы `coins`
--

CREATE TABLE `coins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `action` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `coins`
--

INSERT INTO `coins` (`id`, `user_id`, `price`, `action`) VALUES
(1, 1, 1, 'ach1'),
(2, 1, 12, 'ach2'),
(3, 1, 3, 'ach3'),
(4, 1, 3, 'ach3'),
(5, 2, 12, 'ach132'),
(6, 2, 5, 'ach2'),
(7, 2, 12, 'ach132'),
(8, 2, 20, 'ach3'),
(9, 2, 12, 'ach132'),
(10, 2, 20, 'ach3'),
(11, 3, 1, 'ach5'),
(12, 3, 2, 'ach6'),
(13, 3, 3, 'ach7'),
(14, 3, 1, 'ach3'),
(15, 3, 2, 'ach132'),
(16, 3, 1, 'ach3'),
(17, 3, 5, 'ach1'),
(18, 3, 20, 'ach2'),
(19, 3, 1, 'ach3'),
(20, 3, 1, 'ach3'),
(21, 1, 2, 'ach7'),
(22, 1, 3, 'ach8'),
(23, 1, 4, 'ach9'),
(24, 4, 1, 'ach3x'),
(25, 4, 2, 'ach1'),
(26, 4, 1, 'ach3x'),
(27, 4, 2, 'ach5'),
(28, 4, 1, 'ach3'),
(29, 4, 2, 'ach4'),
(30, 4, 1, 'ach3'),
(31, 5, 100, 'ach1'),
(32, 5, 100, 'ach1');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `created_at`, `updated_at`, `name`, `text`) VALUES
(1, '2022-09-11 14:36:45', '2022-09-11 14:36:45', 'Lori Kreiger', 'Eos quo voluptatem impedit quaerat tempore eum aperiam. Possimus aut ullam aliquam cumque voluptates iure necessitatibus. Rerum numquam libero doloribus ipsum sapiente recusandae.'),
(2, '2022-09-11 14:36:45', '2022-09-11 14:36:45', 'Prof. Bernita Pfeffer', 'Sequi minus vero maiores voluptatem sequi est sed. Cum ipsam et velit occaecati non. Fugit quibusdam illum quos similique modi in aut.'),
(3, '2022-09-11 14:36:45', '2022-09-11 14:36:45', 'Gaetano Kris', 'Non quia est qui explicabo dolor non. Autem nam quo quia enim inventore. Rerum repellendus corrupti deserunt et recusandae. Perspiciatis quia quos fugiat sunt dignissimos esse similique.'),
(4, '2022-09-11 15:06:34', '2022-09-11 15:06:34', 'Fredy Reichel', 'Sint et libero nihil accusantium velit. Quae sit nemo placeat atque sunt explicabo. Quis ab quasi et porro quaerat nemo.'),
(5, '2022-09-11 15:06:34', '2022-09-11 15:06:34', 'Ellie Witting V', 'Minus iste illo aliquam velit debitis. Ipsa dolorem repellendus cum quia quam alias. Sed velit aspernatur a impedit veniam iste sint tenetur. Quis maxime dolore voluptatum.'),
(6, '2022-09-11 15:06:34', '2022-09-11 15:06:34', 'Toni Heller', 'Expedita est non consequuntur quae voluptates. Nihil nostrum et sint ut. Sit saepe animi animi.'),
(7, '2022-09-11 15:08:54', '2022-09-11 15:08:54', 'Mr. Willard Welch PhD', 'Odio similique nihil sapiente ut error autem reiciendis tenetur. Quos eum pariatur pariatur. Sed et aut aut. Sed voluptas ut voluptate voluptatem ipsam vel et.'),
(8, '2022-09-11 15:08:54', '2022-09-11 15:08:54', 'Justyn Pfannerstill', 'Eaque eveniet expedita eligendi occaecati facere at. Possimus non sed quo. Dolorum illum maiores nostrum odio iste. Dolor totam voluptas perferendis et adipisci aspernatur.'),
(9, '2022-09-11 15:08:54', '2022-09-11 15:08:54', 'Dr. Lamont Bode Sr.', 'Eum molestiae voluptates aperiam natus. Et voluptatem perferendis iste aut atque nisi. Ullam culpa ut rerum enim pariatur.');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `loggedusers`
--

CREATE TABLE `loggedusers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `logged_users`
--

CREATE TABLE `logged_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_loggedUsers_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_000000_create_logged_users_table', 2),
(6, '2022_09_11_165814_create_comments_table', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `orders_users`
--

CREATE TABLE `orders_users` (
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders_users`
--

INSERT INTO `orders_users` (`product_id`, `user_id`) VALUES
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `description`, `price`) VALUES
(1, '50% на звонки ST', 5),
(2, '30% за спецкурс', 10),
(3, '50% за курс', 20),
(4, '65% за курс', 25);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `coins` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `login`, `pass`, `coins`) VALUES
(1, 'test1', 'test1', '$2y$10$R7wJNoXd5ogmEVFJ2J6oUukjH4sTMX.nFJGgpCFWDjyE0Jk8gwdpC', 20),
(2, 'test2', 'test2', '$2y$10$Ak/Da9HEqL.EuWYwDj/67.0LRsbOeRR2q1kA2ZStTvkZ0FDmJx9Wy', 12),
(3, 'mike', 'user', '$2y$10$2Q4qmlBweqZPpy6nGePteuOcITukI7ESCfPYSN1dFVbTBK2fBpIGC', 90),
(4, 'test1mike', 'test1m', '$2y$10$vhBYb/qm07ROc0vUr4ndnObga1oEKC7RDsBGisZDwgBtKfJH7h/kC', 27),
(5, 'mtest2', '2test2', '$2y$10$xbdxtF4NVNYVp74.Jb87r.GMX/lrk26p6qLbOte73DYay1/AKWRXu', 62);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `coins`
--
ALTER TABLE `coins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coins_users_id_fk` (`user_id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `loggedusers`
--
ALTER TABLE `loggedusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `loggedusers_email_unique` (`email`);

--
-- Индексы таблицы `logged_users`
--
ALTER TABLE `logged_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `logged_users_email_unique` (`email`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders_users`
--
ALTER TABLE `orders_users`
  ADD PRIMARY KEY (`product_id`,`user_id`),
  ADD KEY `orders_users_users_id_fk` (`user_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `loggedusers`
--
ALTER TABLE `loggedusers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `logged_users`
--
ALTER TABLE `logged_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `coins`
--
ALTER TABLE `coins`
  ADD CONSTRAINT `coins_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `orders_users`
--
ALTER TABLE `orders_users`
  ADD CONSTRAINT `orders_users_products_id_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `orders_users_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
