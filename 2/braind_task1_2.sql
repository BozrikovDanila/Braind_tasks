-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 24 2023 г., 16:22
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `braind_task1.2`
--
CREATE DATABASE IF NOT EXISTS `braind_task1.2` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `braind_task1.2`;

-- --------------------------------------------------------

--
-- Структура таблицы `article`
--

CREATE TABLE `article` (
  `ID` int UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `preview` varchar(250) DEFAULT NULL,
  `text` mediumtext,
  `creation_date` date DEFAULT NULL,
  `tag` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `article`
--

INSERT INTO `article` (`ID`, `title`, `preview`, `text`, `creation_date`, `tag`) VALUES
(1, 'Груши', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eleifend rhoncus neque, at ullamcorper leo porttitor a. Donec ex arcu, cursus vitae elit a, lacinia pharetra dolor.  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eleifend rhoncus neque, at ullamcorper leo porttitor a. Donec ex arcu, cursus vitae elit a, lacinia pharetra dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus ligula tortor, egestas in tempus ut, malesuada eget massa. Nam quis egestas purus. Aliquam metus dolor, pulvinar non nisl et, fermentum consequat odio. Etiam felis ex, consequat nec arcu ac, accumsan porta sapien.\r\n\r\nProin auctor pretium tellus congue facilisis. Suspendisse enim libero, porta ac orci sit amet, ornare pulvinar justo. Sed vehicula, nibh sed pharetra aliquam, nulla velit lacinia sem, in varius est leo quis nunc. Ut dictum volutpat eros, id tristique odio pulvinar eget. Etiam tincidunt vulputate dui, in ultrices dui posuere eget. Donec efficitur finibus vulputate. Maecenas eleifend, urna ac condimentum finibus, magna nisi interdum nunc, ac sagittis nunc lacus varius nulla. Cras tempus sapien ultricies justo fringilla accumsan nec non nisi.\r\n\r\nQuisque libero nisl, viverra quis mattis at, rhoncus et massa. Aliquam auctor dolor vel ante imperdiet, id tincidunt risus sagittis. Praesent vitae mauris pharetra dolor rutrum posuere vitae et elit. Vestibulum tincidunt dictum dolor vel varius. Curabitur blandit porta ex, sed convallis mi convallis in. Suspendisse tortor metus, posuere eu scelerisque eget, vulputate ut est. Sed hendrerit lacus ac mollis aliquet. Suspendisse facilisis sodales sem suscipit elementum.\r\n\r\nSed erat augue, luctus porta libero vel, convallis tempus nunc. Quisque quis nibh volutpat, porttitor ligula vel, egestas tellus. In vitae orci nec sem cursus imperdiet. Nam quis mi vitae lacus lacinia mollis. Maecenas blandit erat at eros iaculis, in auctor turpis laoreet. Aliquam pulvinar orci vitae semper volutpat. Ut vel pharetra metus, sit amet vehicula urna. Aliquam erat volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nCurabitur ut purus quis magna faucibus efficitur. Morbi sodales commodo accumsan. Praesent ut massa viverra, ultrices felis eget, porta tortor. Donec tempus dolor non enim mattis tempus. Sed porta velit a sollicitudin mollis. Nulla facilisi. Nulla maximus non arcu sit amet accumsan. Nam id velit a mi ullamcorper hendrerit. Etiam porttitor eleifend nunc, nec posuere enim fermentum a. Donec nec ipsum felis. Suspendisse ut fringilla purus, nec tempus sapien.', '2023-10-24', 'Фрукты'),
(2, 'Яблоки', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eleifend rhoncus neque, at ullamcorper leo porttitor a. Donec ex arcu, cursus vitae elit a, lacinia pharetra dolor.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eleifend rhoncus neque, at ullamcorper leo porttitor a. Donec ex arcu, cursus vitae elit a, lacinia pharetra dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus ligula tortor, egestas in tempus ut, malesuada eget massa. Nam quis egestas purus. Aliquam metus dolor, pulvinar non nisl et, fermentum consequat odio. Etiam felis ex, consequat nec arcu ac, accumsan porta sapien.\r\n\r\nProin auctor pretium tellus congue facilisis. Suspendisse enim libero, porta ac orci sit amet, ornare pulvinar justo. Sed vehicula, nibh sed pharetra aliquam, nulla velit lacinia sem, in varius est leo quis nunc. Ut dictum volutpat eros, id tristique odio pulvinar eget. Etiam tincidunt vulputate dui, in ultrices dui posuere eget. Donec efficitur finibus vulputate. Maecenas eleifend, urna ac condimentum finibus, magna nisi interdum nunc, ac sagittis nunc lacus varius nulla. Cras tempus sapien ultricies justo fringilla accumsan nec non nisi.\r\n\r\nQuisque libero nisl, viverra quis mattis at, rhoncus et massa. Aliquam auctor dolor vel ante imperdiet, id tincidunt risus sagittis. Praesent vitae mauris pharetra dolor rutrum posuere vitae et elit. Vestibulum tincidunt dictum dolor vel varius. Curabitur blandit porta ex, sed convallis mi convallis in. Suspendisse tortor metus, posuere eu scelerisque eget, vulputate ut est. Sed hendrerit lacus ac mollis aliquet. Suspendisse facilisis sodales sem suscipit elementum.\r\n\r\nSed erat augue, luctus porta libero vel, convallis tempus nunc. Quisque quis nibh volutpat, porttitor ligula vel, egestas tellus. In vitae orci nec sem cursus imperdiet. Nam quis mi vitae lacus lacinia mollis. Maecenas blandit erat at eros iaculis, in auctor turpis laoreet. Aliquam pulvinar orci vitae semper volutpat. Ut vel pharetra metus, sit amet vehicula urna. Aliquam erat volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nCurabitur ut purus quis magna faucibus efficitur. Morbi sodales commodo accumsan. Praesent ut massa viverra, ultrices felis eget, porta tortor. Donec tempus dolor non enim mattis tempus. Sed porta velit a sollicitudin mollis. Nulla facilisi. Nulla maximus non arcu sit amet accumsan. Nam id velit a mi ullamcorper hendrerit. Etiam porttitor eleifend nunc, nec posuere enim fermentum a. Donec nec ipsum felis. Suspendisse ut fringilla purus, nec tempus sapien.', '2023-10-23', 'Фрукты'),
(3, 'Бананы', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eleifend rhoncus neque, at ullamcorper leo porttitor a. Donec ex arcu, cursus vitae elit a, lacinia pharetra dolor.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eleifend rhoncus neque, at ullamcorper leo porttitor a. Donec ex arcu, cursus vitae elit a, lacinia pharetra dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus ligula tortor, egestas in tempus ut, malesuada eget massa. Nam quis egestas purus. Aliquam metus dolor, pulvinar non nisl et, fermentum consequat odio. Etiam felis ex, consequat nec arcu ac, accumsan porta sapien.\r\n\r\nProin auctor pretium tellus congue facilisis. Suspendisse enim libero, porta ac orci sit amet, ornare pulvinar justo. Sed vehicula, nibh sed pharetra aliquam, nulla velit lacinia sem, in varius est leo quis nunc. Ut dictum volutpat eros, id tristique odio pulvinar eget. Etiam tincidunt vulputate dui, in ultrices dui posuere eget. Donec efficitur finibus vulputate. Maecenas eleifend, urna ac condimentum finibus, magna nisi interdum nunc, ac sagittis nunc lacus varius nulla. Cras tempus sapien ultricies justo fringilla accumsan nec non nisi.\r\n\r\nQuisque libero nisl, viverra quis mattis at, rhoncus et massa. Aliquam auctor dolor vel ante imperdiet, id tincidunt risus sagittis. Praesent vitae mauris pharetra dolor rutrum posuere vitae et elit. Vestibulum tincidunt dictum dolor vel varius. Curabitur blandit porta ex, sed convallis mi convallis in. Suspendisse tortor metus, posuere eu scelerisque eget, vulputate ut est. Sed hendrerit lacus ac mollis aliquet. Suspendisse facilisis sodales sem suscipit elementum.\r\n\r\nSed erat augue, luctus porta libero vel, convallis tempus nunc. Quisque quis nibh volutpat, porttitor ligula vel, egestas tellus. In vitae orci nec sem cursus imperdiet. Nam quis mi vitae lacus lacinia mollis. Maecenas blandit erat at eros iaculis, in auctor turpis laoreet. Aliquam pulvinar orci vitae semper volutpat. Ut vel pharetra metus, sit amet vehicula urna. Aliquam erat volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nCurabitur ut purus quis magna faucibus efficitur. Morbi sodales commodo accumsan. Praesent ut massa viverra, ultrices felis eget, porta tortor. Donec tempus dolor non enim mattis tempus. Sed porta velit a sollicitudin mollis. Nulla facilisi. Nulla maximus non arcu sit amet accumsan. Nam id velit a mi ullamcorper hendrerit. Etiam porttitor eleifend nunc, nec posuere enim fermentum a. Donec nec ipsum felis. Suspendisse ut fringilla purus, nec tempus sapien.', '2023-10-23', 'Фрукты'),
(4, 'Футбол', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eleifend rhoncus neque, at ullamcorper leo porttitor a. Donec ex arcu, cursus vitae elit a, lacinia pharetra dolor.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eleifend rhoncus neque, at ullamcorper leo porttitor a. Donec ex arcu, cursus vitae elit a, lacinia pharetra dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus ligula tortor, egestas in tempus ut, malesuada eget massa. Nam quis egestas purus. Aliquam metus dolor, pulvinar non nisl et, fermentum consequat odio. Etiam felis ex, consequat nec arcu ac, accumsan porta sapien.\r\n\r\nProin auctor pretium tellus congue facilisis. Suspendisse enim libero, porta ac orci sit amet, ornare pulvinar justo. Sed vehicula, nibh sed pharetra aliquam, nulla velit lacinia sem, in varius est leo quis nunc. Ut dictum volutpat eros, id tristique odio pulvinar eget. Etiam tincidunt vulputate dui, in ultrices dui posuere eget. Donec efficitur finibus vulputate. Maecenas eleifend, urna ac condimentum finibus, magna nisi interdum nunc, ac sagittis nunc lacus varius nulla. Cras tempus sapien ultricies justo fringilla accumsan nec non nisi.\r\n\r\nQuisque libero nisl, viverra quis mattis at, rhoncus et massa. Aliquam auctor dolor vel ante imperdiet, id tincidunt risus sagittis. Praesent vitae mauris pharetra dolor rutrum posuere vitae et elit. Vestibulum tincidunt dictum dolor vel varius. Curabitur blandit porta ex, sed convallis mi convallis in. Suspendisse tortor metus, posuere eu scelerisque eget, vulputate ut est. Sed hendrerit lacus ac mollis aliquet. Suspendisse facilisis sodales sem suscipit elementum.\r\n\r\nSed erat augue, luctus porta libero vel, convallis tempus nunc. Quisque quis nibh volutpat, porttitor ligula vel, egestas tellus. In vitae orci nec sem cursus imperdiet. Nam quis mi vitae lacus lacinia mollis. Maecenas blandit erat at eros iaculis, in auctor turpis laoreet. Aliquam pulvinar orci vitae semper volutpat. Ut vel pharetra metus, sit amet vehicula urna. Aliquam erat volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nCurabitur ut purus quis magna faucibus efficitur. Morbi sodales commodo accumsan. Praesent ut massa viverra, ultrices felis eget, porta tortor. Donec tempus dolor non enim mattis tempus. Sed porta velit a sollicitudin mollis. Nulla facilisi. Nulla maximus non arcu sit amet accumsan. Nam id velit a mi ullamcorper hendrerit. Etiam porttitor eleifend nunc, nec posuere enim fermentum a. Donec nec ipsum felis. Suspendisse ut fringilla purus, nec tempus sapien.', '2023-10-23', 'Cпорт'),
(5, 'Баскетбол', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eleifend rhoncus neque, at ullamcorper leo porttitor a. Donec ex arcu, cursus vitae elit a, lacinia pharetra dolor.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eleifend rhoncus neque, at ullamcorper leo porttitor a. Donec ex arcu, cursus vitae elit a, lacinia pharetra dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus ligula tortor, egestas in tempus ut, malesuada eget massa. Nam quis egestas purus. Aliquam metus dolor, pulvinar non nisl et, fermentum consequat odio. Etiam felis ex, consequat nec arcu ac, accumsan porta sapien.\r\n\r\nProin auctor pretium tellus congue facilisis. Suspendisse enim libero, porta ac orci sit amet, ornare pulvinar justo. Sed vehicula, nibh sed pharetra aliquam, nulla velit lacinia sem, in varius est leo quis nunc. Ut dictum volutpat eros, id tristique odio pulvinar eget. Etiam tincidunt vulputate dui, in ultrices dui posuere eget. Donec efficitur finibus vulputate. Maecenas eleifend, urna ac condimentum finibus, magna nisi interdum nunc, ac sagittis nunc lacus varius nulla. Cras tempus sapien ultricies justo fringilla accumsan nec non nisi.\r\n\r\nQuisque libero nisl, viverra quis mattis at, rhoncus et massa. Aliquam auctor dolor vel ante imperdiet, id tincidunt risus sagittis. Praesent vitae mauris pharetra dolor rutrum posuere vitae et elit. Vestibulum tincidunt dictum dolor vel varius. Curabitur blandit porta ex, sed convallis mi convallis in. Suspendisse tortor metus, posuere eu scelerisque eget, vulputate ut est. Sed hendrerit lacus ac mollis aliquet. Suspendisse facilisis sodales sem suscipit elementum.\r\n\r\nSed erat augue, luctus porta libero vel, convallis tempus nunc. Quisque quis nibh volutpat, porttitor ligula vel, egestas tellus. In vitae orci nec sem cursus imperdiet. Nam quis mi vitae lacus lacinia mollis. Maecenas blandit erat at eros iaculis, in auctor turpis laoreet. Aliquam pulvinar orci vitae semper volutpat. Ut vel pharetra metus, sit amet vehicula urna. Aliquam erat volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nCurabitur ut purus quis magna faucibus efficitur. Morbi sodales commodo accumsan. Praesent ut massa viverra, ultrices felis eget, porta tortor. Donec tempus dolor non enim mattis tempus. Sed porta velit a sollicitudin mollis. Nulla facilisi. Nulla maximus non arcu sit amet accumsan. Nam id velit a mi ullamcorper hendrerit. Etiam porttitor eleifend nunc, nec posuere enim fermentum a. Donec nec ipsum felis. Suspendisse ut fringilla purus, nec tempus sapien.', '2022-10-23', 'Cпорт'),
(6, 'Волейбол', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eleifend rhoncus neque, at ullamcorper leo porttitor a. Donec ex arcu, cursus vitae elit a, lacinia pharetra dolor.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eleifend rhoncus neque, at ullamcorper leo porttitor a. Donec ex arcu, cursus vitae elit a, lacinia pharetra dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus ligula tortor, egestas in tempus ut, malesuada eget massa. Nam quis egestas purus. Aliquam metus dolor, pulvinar non nisl et, fermentum consequat odio. Etiam felis ex, consequat nec arcu ac, accumsan porta sapien.\r\n\r\nProin auctor pretium tellus congue facilisis. Suspendisse enim libero, porta ac orci sit amet, ornare pulvinar justo. Sed vehicula, nibh sed pharetra aliquam, nulla velit lacinia sem, in varius est leo quis nunc. Ut dictum volutpat eros, id tristique odio pulvinar eget. Etiam tincidunt vulputate dui, in ultrices dui posuere eget. Donec efficitur finibus vulputate. Maecenas eleifend, urna ac condimentum finibus, magna nisi interdum nunc, ac sagittis nunc lacus varius nulla. Cras tempus sapien ultricies justo fringilla accumsan nec non nisi.\r\n\r\nQuisque libero nisl, viverra quis mattis at, rhoncus et massa. Aliquam auctor dolor vel ante imperdiet, id tincidunt risus sagittis. Praesent vitae mauris pharetra dolor rutrum posuere vitae et elit. Vestibulum tincidunt dictum dolor vel varius. Curabitur blandit porta ex, sed convallis mi convallis in. Suspendisse tortor metus, posuere eu scelerisque eget, vulputate ut est. Sed hendrerit lacus ac mollis aliquet. Suspendisse facilisis sodales sem suscipit elementum.\r\n\r\nSed erat augue, luctus porta libero vel, convallis tempus nunc. Quisque quis nibh volutpat, porttitor ligula vel, egestas tellus. In vitae orci nec sem cursus imperdiet. Nam quis mi vitae lacus lacinia mollis. Maecenas blandit erat at eros iaculis, in auctor turpis laoreet. Aliquam pulvinar orci vitae semper volutpat. Ut vel pharetra metus, sit amet vehicula urna. Aliquam erat volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nCurabitur ut purus quis magna faucibus efficitur. Morbi sodales commodo accumsan. Praesent ut massa viverra, ultrices felis eget, porta tortor. Donec tempus dolor non enim mattis tempus. Sed porta velit a sollicitudin mollis. Nulla facilisi. Nulla maximus non arcu sit amet accumsan. Nam id velit a mi ullamcorper hendrerit. Etiam porttitor eleifend nunc, nec posuere enim fermentum a. Donec nec ipsum felis. Suspendisse ut fringilla purus, nec tempus sapien.', '2022-10-23', 'Cпорт');

-- --------------------------------------------------------

--
-- Структура таблицы `author`
--

CREATE TABLE `author` (
  `ID` int UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `author`
--

INSERT INTO `author` (`ID`, `name`) VALUES
(1, 'Иванов И.И'),
(2, 'Брусков К.К'),
(3, 'Сидоров М.М'),
(4, 'Малютина К.В.'),
(5, 'Икоркина В.А.');

-- --------------------------------------------------------

--
-- Структура таблицы `author_has_article`
--

CREATE TABLE `author_has_article` (
  `author_ID` int UNSIGNED NOT NULL,
  `article_ID` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `author_has_article`
--

INSERT INTO `author_has_article` (`author_ID`, `article_ID`) VALUES
(4, 1),
(5, 1),
(1, 2),
(3, 2),
(2, 3),
(1, 4),
(3, 5),
(2, 6),
(4, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `ID` int UNSIGNED NOT NULL,
  `name` varchar(45) GENERATED ALWAYS AS (_utf8mb4'Anonymous') VIRTUAL,
  `text` tinytext,
  `article_ID` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`ID`, `text`, `article_ID`) VALUES
(1, 'Комментарий №1 к #1 статье.', 1),
(2, 'Комментарий №2 к #1 статье.', 1),
(3, 'Комментарий №3 к #1 статье.', 1),
(4, 'Комментарий №1 к #2 статье.', 2),
(5, 'Комментарий №2 к #2 статье.', 2),
(6, 'Комментарий №3 к #2 статье.', 2),
(7, 'Комментарий №4 к #2 статье.', 2),
(8, 'Комментарий №1 к #3 статье.', 3),
(9, 'Комментарий №2 к #3 статье.', 3),
(10, 'Комментарий №1 к #4 статье.', 4),
(11, 'Комментарий №2 к #4 статье.', 4),
(12, 'Комментарий №3 к #4 статье.', 4),
(13, 'Комментарий №4 к #4 статье.', 4),
(14, 'Комментарий №5 к #4 статье.', 4),
(15, 'Комментарий №6 к #4 статье.', 4),
(16, 'Комментарий №1 к #5 статье.', 5),
(17, 'Комментарий №2 к #5 статье.', 5),
(18, 'Комментарий №3 к #5 статье.', 5),
(19, 'Комментарий №4 к #5 статье.', 5),
(20, 'Комментарий №1 к #6 статье.', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `score`
--

CREATE TABLE `score` (
  `ID` int UNSIGNED NOT NULL,
  `article_ID` int UNSIGNED NOT NULL,
  `mark` tinyint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `score`
--

INSERT INTO `score` (`ID`, `article_ID`, `mark`) VALUES
(1, 1, 8),
(2, 1, 8),
(3, 1, 7),
(4, 1, 9),
(5, 1, 6),
(6, 1, 7),
(7, 2, 5),
(8, 2, 6),
(9, 2, 7),
(10, 2, 8),
(11, 2, 6),
(12, 2, 9),
(13, 2, 10),
(14, 2, 9),
(15, 2, 9),
(16, 2, 8),
(17, 3, 9),
(18, 3, 10),
(19, 3, 9),
(20, 3, 9),
(21, 3, 8),
(22, 4, 9),
(23, 4, 9),
(24, 4, 9),
(25, 4, 9),
(26, 4, 10),
(27, 4, 8),
(28, 5, 9),
(29, 5, 9),
(30, 5, 9),
(31, 5, 9),
(32, 5, 9),
(33, 5, 9),
(34, 5, 9),
(35, 5, 9),
(36, 5, 8),
(37, 5, 7),
(38, 5, 8),
(39, 5, 8),
(40, 5, 9),
(41, 6, 9),
(42, 6, 8),
(43, 6, 7),
(44, 6, 10),
(45, 6, 9),
(46, 6, 9),
(47, 6, 10);

--
-- Триггеры `score`
--
DELIMITER $$
CREATE TRIGGER `score_mark_on_insert` BEFORE INSERT ON `score` FOR EACH ROW IF (NEW.mark < 1 OR NEW.mark > 10)
THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'ERROR! Mark must be from 1 to 10.';
END IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `score_mark_on_update` BEFORE UPDATE ON `score` FOR EACH ROW IF (NEW.mark < 1 OR NEW.mark > 10)
THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'ERROR! Mark must be from 1 to 10.';
END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `subsection`
--

CREATE TABLE `subsection` (
  `ID` int UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `subsection_has_article`
--

CREATE TABLE `subsection_has_article` (
  `subsection_ID` int UNSIGNED NOT NULL,
  `article_ID` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `author_has_article`
--
ALTER TABLE `author_has_article`
  ADD PRIMARY KEY (`author_ID`,`article_ID`),
  ADD KEY `fk_author_has_article_article1_idx` (`article_ID`),
  ADD KEY `fk_author_has_article_author1_idx` (`author_ID`);

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`ID`,`article_ID`),
  ADD KEY `fk_comment_article1_idx` (`article_ID`);

--
-- Индексы таблицы `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`ID`,`article_ID`),
  ADD KEY `fk_score_article_idx` (`article_ID`);

--
-- Индексы таблицы `subsection`
--
ALTER TABLE `subsection`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `subsection_has_article`
--
ALTER TABLE `subsection_has_article`
  ADD PRIMARY KEY (`subsection_ID`,`article_ID`),
  ADD KEY `fk_subsection_has_article_article1_idx` (`article_ID`),
  ADD KEY `fk_subsection_has_article_subsection1_idx` (`subsection_ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `article`
--
ALTER TABLE `article`
  MODIFY `ID` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `author`
--
ALTER TABLE `author`
  MODIFY `ID` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `ID` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `score`
--
ALTER TABLE `score`
  MODIFY `ID` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `subsection`
--
ALTER TABLE `subsection`
  MODIFY `ID` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `author_has_article`
--
ALTER TABLE `author_has_article`
  ADD CONSTRAINT `fk_author_has_article_article1` FOREIGN KEY (`article_ID`) REFERENCES `article` (`ID`),
  ADD CONSTRAINT `fk_author_has_article_author1` FOREIGN KEY (`author_ID`) REFERENCES `author` (`ID`);

--
-- Ограничения внешнего ключа таблицы `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_comment_article1` FOREIGN KEY (`article_ID`) REFERENCES `article` (`ID`);

--
-- Ограничения внешнего ключа таблицы `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `fk_score_article` FOREIGN KEY (`article_ID`) REFERENCES `article` (`ID`);

--
-- Ограничения внешнего ключа таблицы `subsection_has_article`
--
ALTER TABLE `subsection_has_article`
  ADD CONSTRAINT `fk_subsection_has_article_article1` FOREIGN KEY (`article_ID`) REFERENCES `article` (`ID`),
  ADD CONSTRAINT `fk_subsection_has_article_subsection1` FOREIGN KEY (`subsection_ID`) REFERENCES `subsection` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
