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
-- База данных: `reg_system`
--

-- --------------------------------------------------------

--
-- Структура таблицы `pwdreset`
--

CREATE TABLE `pwdreset` (
  `pwdResetId` int(11) NOT NULL,
  `pwdResetEmail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `PwdResetSelector` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pwdResetToken` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pwdResetExpires` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pwdreset`
--

INSERT INTO `pwdreset` (`pwdResetId`, `pwdResetEmail`, `PwdResetSelector`, `pwdResetToken`, `pwdResetExpires`) VALUES
(6, 'vahanvardanyan156@gmail.com', 'ad3dd815cbaf4417', '$2y$10$OApO61a253W1MzQadcNeGuiPOPbO9XYx0Tdr3BKIbT7RHpwLLz83G', '1664126126');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `usersId` int(11) NOT NULL,
  `usersName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usersEmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usersUid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usersPwd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`usersId`, `usersName`, `usersEmail`, `usersUid`, `usersPwd`) VALUES
(1, 'Vahan', 'vahanvardanyan156@gmail.com', 'vhan', '$2y$10$xtBqxiUfZl2S1lr0Aqhpye8jcSdCE5DzDCsIJg/H3xa0yKxExp0te'),
(2, 'arman', 'arman@arman.ru', 'armarm', '$2y$10$vZ.i0NY5Mj4ANo0rGa4lzusdsv0wBYMyh0CjasS9JRlBFz64a0e7y'),
(3, 'aaaaaaaaa', 'a@a.mo', 'aa', '$2y$10$5R1ut1CAJCtWKMcNkR35.ea6KR.f2l7uu5wl/yS5GDmvoNZsr/jca'),
(4, 'user', 'user@user.com', 'MainUser', '$2y$10$wnXo9QfML29s9QG0/96mx./DJ1/9uQx8VH1X1b.p9q5teO3Iinzfi'),
(5, 'a', 'a@a.com', 'aaaaaa', '$2y$10$OK8e3ovRtO4X7VzR5vdDjuMO0WKwtzj5jRkpKLzqPVYO0NtTr2sWO');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pwdreset`
--
ALTER TABLE `pwdreset`
  ADD PRIMARY KEY (`pwdResetId`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `pwdreset`
--
ALTER TABLE `pwdreset`
  MODIFY `pwdResetId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `usersId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
