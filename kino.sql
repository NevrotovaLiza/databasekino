-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 29 2022 г., 23:51
-- Версия сервера: 8.0.11
-- Версия PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kino`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cinema`
--

CREATE TABLE `cinema` (
  `ID` int(11) NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `cinema`
--

INSERT INTO `cinema` (`ID`, `name`, `address`) VALUES
(1, 'Formula kino Aura', 'st. Voennaya, 5'),
(2, 'Cinema park San-City', 'pl. Karl Marx, 7'),
(3, 'Kronverk Cinema Megaplex', 'st. Trolleynaya, 130a'),
(4, 'Sinema park Royal park ', 'st. Krasny prospect, 101'),
(5, 'Pobeda', 'st. Lenin, 7'),
(6, 'KARO 10 Galereya', 'st. Gogol, 13');

-- --------------------------------------------------------

--
-- Структура таблицы `connection`
--

CREATE TABLE `connection` (
  `cinemaID` int(11) NOT NULL,
  `filmsID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `connection`
--

INSERT INTO `connection` (`cinemaID`, `filmsID`) VALUES
(2, 23),
(2, 16),
(2, 1),
(2, 28),
(2, 13),
(2, 12),
(2, 3),
(2, 5),
(2, 26),
(2, 22),
(2, 19),
(2, 21),
(2, 11),
(2, 4),
(2, 25),
(2, 14),
(4, 23),
(4, 17),
(4, 1),
(4, 20),
(4, 28),
(4, 13),
(4, 12),
(4, 10),
(4, 26),
(4, 22),
(4, 29),
(4, 31),
(4, 19),
(4, 21),
(4, 4),
(4, 6),
(4, 7),
(4, 25),
(1, 17),
(1, 1),
(1, 20),
(1, 30),
(1, 24),
(1, 28),
(1, 13),
(1, 12),
(1, 3),
(1, 9),
(1, 26),
(1, 22),
(1, 19),
(1, 21),
(1, 6),
(1, 7),
(1, 18),
(1, 25),
(1, 31),
(6, 16),
(6, 20),
(6, 28),
(6, 8),
(6, 12),
(6, 13),
(6, 3),
(6, 9),
(6, 2),
(6, 10),
(6, 26),
(6, 22),
(6, 31),
(6, 21),
(6, 7),
(6, 14),
(6, 25),
(5, 23),
(5, 1),
(5, 28),
(5, 13),
(5, 12),
(5, 3),
(5, 9),
(5, 32),
(5, 2),
(5, 26),
(5, 22),
(5, 27),
(5, 31),
(5, 19),
(5, 21),
(5, 4),
(5, 6),
(5, 25),
(3, 1),
(3, 20),
(3, 24),
(3, 28),
(3, 13),
(3, 12),
(3, 3),
(3, 32),
(3, 26),
(3, 27),
(3, 31),
(3, 21),
(3, 11),
(3, 6),
(3, 7),
(3, 25);

-- --------------------------------------------------------

--
-- Структура таблицы `film`
--

CREATE TABLE `film` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `film`
--

INSERT INTO `film` (`ID`, `name`) VALUES
(1, 'Shutter Island'),
(2, 'Only the Brave'),
(3, 'The Wolf of Wall Street'),
(4, 'The Royal Tenenbaums'),
(5, 'Joker'),
(6, 'I, Tonya'),
(7, 'The Intern'),
(8, 'Brooklyn'),
(9, 'The Kindergarten Teacher'),
(10, 'The Danish Girl'),
(11, 'Hidden Figures'),
(12, 'Eternal Sunshine Of The Spotless Mind'),
(13, 'The Great Gatsby'),
(14, 'Sherlock Holms'),
(15, 'Spider-Man: Far From Home'),
(16, 'Alladin'),
(17, 'It'),
(18, 'Glass'),
(19, 'Legend'),
(20, 'The Grand Budapest Hotel'),
(21, 'Legend 17'),
(22, 'Real Steel'),
(23, '12 Years a Slave'),
(24, 'Help'),
(25, 'Eddie the Eagle'),
(26, 'Eddie the Eagle'),
(27, 'A Star Is Born'),
(28, 'Bohemian Rhapsody'),
(29, 'Green Book'),
(30, 'Hacksaw Ridge'),
(31, 'La-La-Lend'),
(32, 'The Revenant');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `connection`
--
ALTER TABLE `connection`
  ADD KEY `cinemaID` (`cinemaID`),
  ADD KEY `filmsID` (`filmsID`);

--
-- Индексы таблицы `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cinema`
--
ALTER TABLE `cinema`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `film`
--
ALTER TABLE `film`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `connection`
--
ALTER TABLE `connection`
  ADD CONSTRAINT `connection_ibfk_1` FOREIGN KEY (`cinemaID`) REFERENCES `cinema` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `connection_ibfk_2` FOREIGN KEY (`filmsID`) REFERENCES `film` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
