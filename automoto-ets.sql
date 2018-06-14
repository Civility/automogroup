-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 23 2018 г., 14:13
-- Версия сервера: 10.1.26-MariaDB
-- Версия PHP: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `automoto-ets`
--

-- --------------------------------------------------------

--
-- Структура таблицы `mart_assets`
--

CREATE TABLE `mart_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_assets`
--

INSERT INTO `mart_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 807, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":0,\"2\":0,\"7\":0,\"3\":0,\"4\":0,\"5\":0},\"core.login.admin\":{\"6\":0,\"7\":0},\"core.login.offline\":{\"6\":0,\"7\":0},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":0},\"core.create\":{\"6\":0,\"3\":0,\"7\":0,\"4\":0,\"5\":0},\"core.delete\":{\"6\":0,\"7\":0},\"core.edit\":{\"6\":0,\"4\":0,\"7\":0,\"5\":0},\"core.edit.state\":{\"6\":0,\"5\":0,\"7\":0},\"core.edit.own\":{\"6\":0,\"3\":0,\"7\":0,\"4\":0,\"5\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 380, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 381, 382, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 383, 384, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 385, 390, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 391, 392, 1, 'com_login', 'com_login', '{}'),
(13, 1, 393, 394, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 395, 396, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 397, 398, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 399, 406, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 407, 408, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 409, 470, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 471, 474, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 475, 476, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 477, 478, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 479, 480, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 481, 482, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 483, 486, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 487, 488, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 37, 2, 'com_content.category.2', 'Простой', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 472, 473, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 484, 485, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 489, 490, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 491, 492, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 493, 494, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 495, 496, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 497, 498, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 499, 500, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 410, 411, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 412, 413, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 414, 415, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 416, 417, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 418, 419, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 420, 421, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 422, 423, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 424, 425, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 426, 427, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 428, 429, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 430, 431, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 432, 433, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 434, 435, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 436, 437, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 438, 439, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 400, 401, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 440, 441, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 11, 386, 387, 2, 'com_languages.language.2', 'Русский (Россия)', '{}'),
(57, 18, 442, 443, 2, 'com_modules.module.88', 'Language Switcher', '{}'),
(58, 16, 402, 403, 2, 'com_menus.menu.2', 'Main Menu (en-GB)', '{}'),
(59, 18, 444, 445, 2, 'com_modules.module.89', 'Menu en-GB', '{}'),
(60, 8, 38, 41, 2, 'com_content.category.8', 'Default', '{}'),
(61, 60, 39, 40, 3, 'com_content.article.1', 'About company', '{}'),
(62, 16, 404, 405, 2, 'com_menus.menu.3', 'Main Menu (ru-RU)', '{}'),
(63, 18, 446, 447, 2, 'com_modules.module.90', 'Menu ru-RU', '{}'),
(64, 8, 42, 351, 2, 'com_content.category.9', 'Продукция', '{}'),
(65, 27, 19, 20, 3, 'com_content.article.2', 'Automotogroup', '{}'),
(66, 1, 501, 502, 1, 'com_fields', 'com_fields', '{}'),
(67, 1, 503, 504, 1, 'com_associations', 'com_associations', '{}'),
(68, 18, 448, 449, 2, 'com_modules.module.91', 'RokAjaxSearch', '{}'),
(69, 18, 450, 451, 2, 'com_modules.module.92', 'find&buy', '{}'),
(70, 1, 505, 506, 1, 'com_gantry5', 'com_gantry5', '{}'),
(71, 1, 507, 508, 1, 'com_jce', 'COM_JCE', '{}'),
(72, 64, 43, 290, 3, 'com_content.category.10', 'Аккумуляторные батареи', '{}'),
(73, 64, 291, 292, 3, 'com_content.category.11', 'Масла и смазочные материалы', '{}'),
(74, 64, 293, 350, 3, 'com_content.category.12', 'Аксессуары', '{}'),
(75, 72, 44, 195, 4, 'com_content.category.13', 'Автомобильные батареи', '{}'),
(76, 72, 196, 289, 4, 'com_content.category.14', 'Мотоциклетные батареи', '{}'),
(77, 75, 45, 50, 5, 'com_content.category.15', 'HUGEL NANOGOLDEN START-STOP AGM. Enhanced Lead Acid Battery with Nano Chtystal Technology', '{}'),
(78, 75, 51, 64, 5, 'com_content.category.16', 'HUGEL NANOGOLDEN START-STOP EFB. Enhanced Lead Acid Battery with Nano Chtystal Technology', '{}'),
(79, 75, 65, 90, 5, 'com_content.category.17', 'HUGEL ULTRA. Sealed Maintenance Free with Silver Tin Alloy', '{}'),
(80, 75, 91, 122, 5, 'com_content.category.18', 'HUGEL ULTRA ASIA. Sealed Maintenance Free with Silver Tin Alloy', '{}'),
(81, 75, 123, 156, 5, 'com_content.category.19', 'HUGEL ACTION. Closed Lid With Ca-Ca Technology', '{}'),
(82, 75, 157, 170, 5, 'com_content.category.20', 'HUGEL ACTION HEAVY DUTY. Super Calcium Alloy', '{}'),
(83, 75, 171, 192, 5, 'com_content.category.21', 'HUGEL ACTION LEISURE', '{}'),
(84, 74, 294, 347, 4, 'com_content.category.22', 'Чехлы', '{}'),
(85, 74, 348, 349, 4, 'com_content.category.23', 'Зарядка', '{}'),
(86, 8, 352, 353, 2, 'com_content.category.24', 'Материалы', '{}'),
(87, 8, 354, 365, 2, 'com_content.fieldgroup.1', 'Основные Характеристики', '{}'),
(88, 8, 366, 377, 2, 'com_content.fieldgroup.2', 'Дополнительные Характеристики', '{}'),
(89, 88, 367, 368, 3, 'com_content.field.1', 'размер', '{}'),
(90, 88, 369, 370, 3, 'com_content.field.2', 'емкость', '{}'),
(91, 88, 371, 372, 3, 'com_content.field.3', 'ток', '{}'),
(92, 87, 355, 356, 3, 'com_content.field.4', 'количество', '{}'),
(93, 87, 357, 358, 3, 'com_content.field.5', 'вес', '{}'),
(94, 88, 375, 376, 3, 'com_content.field.6', 'полярность', '{}'),
(95, 88, 373, 374, 3, 'com_content.field.7', 'назначение', '{}'),
(96, 87, 359, 360, 3, 'com_content.field.8', 'скачать', '{}'),
(97, 27, 21, 22, 3, 'com_content.article.3', 'Контакты', '{}'),
(98, 18, 452, 453, 2, 'com_modules.module.93', 'Блок на главной 1', '{}'),
(99, 18, 454, 455, 2, 'com_modules.module.94', 'Блок на главной 2', '{}'),
(100, 18, 456, 457, 2, 'com_modules.module.95', 'Блок на главной 3', '{}'),
(101, 18, 458, 459, 2, 'com_modules.module.96', 'Search', '{}'),
(102, 18, 460, 461, 2, 'com_modules.module.97', 'Slider', '{}'),
(103, 18, 462, 463, 2, 'com_modules.module.98', 'Automotogroup', '{}'),
(104, 77, 46, 47, 6, 'com_content.article.4', 'L3 070 072 013', '{}'),
(105, 1, 509, 510, 1, '#__ucm_content.1', '#__ucm_content.1', '{}'),
(106, 1, 511, 512, 1, '#__ucm_content.2', '#__ucm_content.2', '{}'),
(107, 1, 513, 514, 1, '#__ucm_content.3', '#__ucm_content.3', '{}'),
(108, 1, 515, 516, 1, '#__ucm_content.4', '#__ucm_content.4', '{}'),
(109, 1, 517, 518, 1, '#__ucm_content.5', '#__ucm_content.5', '{}'),
(110, 1, 519, 520, 1, '#__ucm_content.6', '#__ucm_content.6', '{}'),
(111, 1, 521, 522, 1, '#__ucm_content.7', '#__ucm_content.7', '{}'),
(112, 77, 48, 49, 6, 'com_content.article.5', 'L5 092 085 013', '{}'),
(113, 1, 523, 524, 1, '#__ucm_content.8', '#__ucm_content.8', '{}'),
(114, 78, 52, 53, 6, 'com_content.article.6', 'L2 60 560 013', '{}'),
(115, 1, 525, 526, 1, '#__ucm_content.9', '#__ucm_content.9', '{}'),
(116, 78, 54, 55, 6, 'com_content.article.7', 'LB2 60 560 013', '{}'),
(117, 1, 527, 528, 1, '#__ucm_content.10', '#__ucm_content.10', '{}'),
(118, 78, 56, 57, 6, 'com_content.article.8', 'L3 72 680 013', '{}'),
(119, 1, 529, 530, 1, '#__ucm_content.11', '#__ucm_content.11', '{}'),
(120, 78, 58, 59, 6, 'com_content.article.9', 'LB3 65 430 013', '{}'),
(121, 1, 531, 532, 1, '#__ucm_content.12', '#__ucm_content.12', '{}'),
(122, 78, 60, 61, 6, 'com_content.article.10', 'LB4 75 730 013', '{}'),
(123, 1, 533, 534, 1, '#__ucm_content.13', '#__ucm_content.13', '{}'),
(124, 78, 62, 63, 6, 'com_content.article.11', 'L5 100 920 013', '{}'),
(125, 1, 535, 536, 1, '#__ucm_content.14', '#__ucm_content.14', '{}'),
(126, 79, 66, 67, 6, 'com_content.article.12', 'L1 052 046 013', '{}'),
(127, 1, 537, 538, 1, '#__ucm_content.15', '#__ucm_content.15', '{}'),
(128, 79, 68, 69, 6, 'com_content.article.13', 'LB1 50 042 013', '{}'),
(129, 1, 539, 540, 1, '#__ucm_content.16', '#__ucm_content.16', '{}'),
(130, 79, 70, 71, 6, 'com_content.article.14', 'L2 062 054 113', '{}'),
(131, 1, 541, 542, 1, '#__ucm_content.17', '#__ucm_content.17', '{}'),
(132, 79, 72, 73, 6, 'com_content.article.15', 'LB2 062 054 013', '{}'),
(133, 1, 543, 544, 1, '#__ucm_content.18', '#__ucm_content.18', '{}'),
(134, 79, 74, 75, 6, 'com_content.article.16', 'L3 075 070 013', '{}'),
(135, 1, 545, 546, 1, '#__ucm_content.19', '#__ucm_content.19', '{}'),
(136, 79, 76, 77, 6, 'com_content.article.17', 'L3 075 070 113', '{}'),
(137, 1, 547, 548, 1, '#__ucm_content.20', '#__ucm_content.20', '{}'),
(138, 79, 78, 79, 6, 'com_content.article.18', 'L2 062 054 013', '{}'),
(139, 1, 549, 550, 1, '#__ucm_content.21', '#__ucm_content.21', '{}'),
(140, 79, 80, 81, 6, 'com_content.article.19', 'LB3 070 070 013', '{}'),
(141, 1, 551, 552, 1, '#__ucm_content.22', '#__ucm_content.22', '{}'),
(142, 79, 82, 83, 6, 'com_content.article.20', 'L4 082 080 013', '{}'),
(143, 1, 553, 554, 1, '#__ucm_content.23', '#__ucm_content.23', '{}'),
(144, 79, 84, 85, 6, 'com_content.article.21', 'LB4 082 074 013', '{}'),
(145, 1, 555, 556, 1, '#__ucm_content.24', '#__ucm_content.24', '{}'),
(146, 79, 86, 87, 6, 'com_content.article.22', 'L5 100 086 013', '{}'),
(147, 1, 557, 558, 1, '#__ucm_content.25', '#__ucm_content.25', '{}'),
(148, 79, 88, 89, 6, 'com_content.article.23', 'L5 100 960 013', '{}'),
(149, 1, 559, 560, 1, '#__ucm_content.26', '#__ucm_content.26', '{}'),
(150, 80, 92, 93, 6, 'com_content.article.24', 'NS40 035 030 030', '{}'),
(151, 1, 561, 562, 1, '#__ucm_content.27', '#__ucm_content.27', '{}'),
(152, 80, 94, 95, 6, 'com_content.article.25', 'NS40 035 030 130', '{}'),
(153, 1, 563, 564, 1, '#__ucm_content.28', '#__ucm_content.28', '{}'),
(154, 80, 96, 97, 6, 'com_content.article.26', 'NS40 042 036 030', '{}'),
(155, 1, 565, 566, 1, '#__ucm_content.29', '#__ucm_content.29', '{}'),
(156, 80, 98, 99, 6, 'com_content.article.27', 'NS40 042 036 130', '{}'),
(157, 1, 567, 568, 1, '#__ucm_content.30', '#__ucm_content.30', '{}'),
(158, 80, 100, 101, 6, 'com_content.article.28', 'NS60 045 040 010', '{}'),
(159, 1, 569, 570, 1, '#__ucm_content.31', '#__ucm_content.31', '{}'),
(160, 80, 102, 103, 6, 'com_content.article.29', 'NS60 045 040 110', '{}'),
(161, 1, 571, 572, 1, '#__ucm_content.32', '#__ucm_content.32', '{}'),
(162, 80, 104, 105, 6, 'com_content.article.30', 'D20 050 042 013', '{}'),
(163, 1, 573, 574, 1, '#__ucm_content.33', '#__ucm_content.33', '{}'),
(164, 80, 106, 107, 6, 'com_content.article.31', 'D23 060 054 011', '{}'),
(165, 1, 575, 576, 1, '#__ucm_content.34', '#__ucm_content.34', '{}'),
(166, 80, 108, 109, 6, 'com_content.article.32', 'D23 060 054 110', '{}'),
(167, 1, 577, 578, 1, '#__ucm_content.35', '#__ucm_content.35', '{}'),
(168, 80, 110, 111, 6, 'com_content.article.33', 'D26 072 060 017', '{}'),
(169, 1, 579, 580, 1, '#__ucm_content.36', '#__ucm_content.36', '{}'),
(170, 80, 112, 113, 6, 'com_content.article.34', 'D26 072 060 117', '{}'),
(171, 1, 581, 582, 1, '#__ucm_content.37', '#__ucm_content.37', '{}'),
(172, 80, 114, 115, 6, 'com_content.article.35', 'D31 090 075 011', '{}'),
(173, 1, 583, 584, 1, '#__ucm_content.38', '#__ucm_content.38', '{}'),
(174, 80, 116, 117, 6, 'com_content.article.36', 'D31 090 075 111', '{}'),
(175, 1, 585, 586, 1, '#__ucm_content.39', '#__ucm_content.39', '{}'),
(176, 80, 118, 119, 6, 'com_content.article.37', 'D31 100 076 011', '{}'),
(177, 1, 587, 588, 1, '#__ucm_content.40', '#__ucm_content.40', '{}'),
(178, 80, 120, 121, 6, 'com_content.article.38', 'D31 100 076 111', '{}'),
(179, 1, 589, 590, 1, '#__ucm_content.41', '#__ucm_content.41', '{}'),
(181, 1, 591, 592, 1, '#__ucm_content.43', '#__ucm_content.43', '{}'),
(182, 1, 593, 594, 1, '#__ucm_content.44', '#__ucm_content.44', '{}'),
(184, 8, 378, 379, 2, 'com_content.field.10', 'Наименование', '{}'),
(185, 11, 388, 389, 2, 'com_languages.language.1', 'English (en-GB)', '{}'),
(186, 81, 124, 125, 6, 'com_content.article.39', 'L1 050 045 013', '{}'),
(187, 1, 595, 596, 1, '#__ucm_content.45', '#__ucm_content.45', '{}'),
(188, 81, 126, 127, 6, 'com_content.article.40', 'L1 050 045 113', '{}'),
(189, 1, 597, 598, 1, '#__ucm_content.46', '#__ucm_content.46', '{}'),
(190, 81, 128, 129, 6, 'com_content.article.41', 'LB1 050 042 013', '{}'),
(191, 1, 599, 600, 1, '#__ucm_content.47', '#__ucm_content.47', '{}'),
(192, 81, 130, 131, 6, 'com_content.article.42', 'L2 55 490 013', '{}'),
(193, 1, 601, 602, 1, '#__ucm_content.48', '#__ucm_content.48', '{}'),
(194, 81, 132, 133, 6, 'com_content.article.43', 'L2 55 490 113', '{}'),
(195, 1, 603, 604, 1, '#__ucm_content.49', '#__ucm_content.49', '{}'),
(196, 81, 134, 135, 6, 'com_content.article.44', 'L2 060 054 013', '{}'),
(197, 1, 605, 606, 1, '#__ucm_content.50', '#__ucm_content.50', '{}'),
(198, 81, 136, 137, 6, 'com_content.article.45', 'L2 060 054 113', '{}'),
(199, 1, 607, 608, 1, '#__ucm_content.51', '#__ucm_content.51', '{}'),
(200, 81, 138, 139, 6, 'com_content.article.46', 'LB2 060 054 013', '{}'),
(201, 1, 609, 610, 1, '#__ucm_content.52', '#__ucm_content.52', '{}'),
(202, 81, 140, 141, 6, 'com_content.article.47', 'L3 075 070 013', '{}'),
(203, 1, 611, 612, 1, '#__ucm_content.53', '#__ucm_content.53', '{}'),
(204, 81, 142, 143, 6, 'com_content.article.48', 'L3 075 070 113', '{}'),
(205, 1, 613, 614, 1, '#__ucm_content.54', '#__ucm_content.54', '{}'),
(206, 81, 144, 145, 6, 'com_content.article.49', 'LB3 075 070 013', '{}'),
(207, 1, 615, 616, 1, '#__ucm_content.55', '#__ucm_content.55', '{}'),
(208, 81, 146, 147, 6, 'com_content.article.50', 'L4 082 072 013', '{}'),
(209, 1, 617, 618, 1, '#__ucm_content.56', '#__ucm_content.56', '{}'),
(210, 81, 148, 149, 6, 'com_content.article.51', 'LB4 080 074 013', '{}'),
(211, 1, 619, 620, 1, '#__ucm_content.57', '#__ucm_content.57', '{}'),
(212, 81, 150, 151, 6, 'com_content.article.52', 'L5 092 076 013', '{}'),
(213, 1, 621, 622, 1, '#__ucm_content.58', '#__ucm_content.58', '{}'),
(214, 81, 152, 153, 6, 'com_content.article.53', 'L5 100 086 013', '{}'),
(215, 1, 623, 624, 1, '#__ucm_content.59', '#__ucm_content.59', '{}'),
(216, 81, 154, 155, 6, 'com_content.article.54', 'LB5 100 086 013', '{}'),
(217, 1, 625, 626, 1, '#__ucm_content.60', '#__ucm_content.60', '{}'),
(218, 82, 158, 159, 6, 'com_content.article.55', 'TRCT L 115 076 010', '{}'),
(219, 1, 627, 628, 1, '#__ucm_content.61', '#__ucm_content.61', '{}'),
(220, 82, 160, 161, 6, 'com_content.article.56', 'TRCT 125 080 010', '{}'),
(221, 1, 629, 630, 1, '#__ucm_content.62', '#__ucm_content.62', '{}'),
(222, 82, 162, 163, 6, 'com_content.article.57', 'A 140 088 313', '{}'),
(223, 1, 631, 632, 1, '#__ucm_content.63', '#__ucm_content.63', '{}'),
(224, 82, 164, 165, 6, 'com_content.article.58', 'B 150 092 313', '{}'),
(225, 1, 633, 634, 1, '#__ucm_content.64', '#__ucm_content.64', '{}'),
(226, 82, 166, 167, 6, 'com_content.article.59', 'B 190 110 313', '{}'),
(227, 1, 635, 636, 1, '#__ucm_content.65', '#__ucm_content.65', '{}'),
(228, 82, 168, 169, 6, 'com_content.article.60', 'C 225 125 310', '{}'),
(229, 1, 637, 638, 1, '#__ucm_content.66', '#__ucm_content.66', '{}'),
(230, 83, 172, 173, 6, 'com_content.article.61', 'L1 050 036 013', '{}'),
(231, 1, 639, 640, 1, '#__ucm_content.67', '#__ucm_content.67', '{}'),
(232, 83, 174, 175, 6, 'com_content.article.62', 'L2 060 046 013', '{}'),
(233, 1, 641, 642, 1, '#__ucm_content.68', '#__ucm_content.68', '{}'),
(234, 83, 176, 177, 6, 'com_content.article.63', 'L3 070 054 013', '{}'),
(235, 1, 643, 644, 1, '#__ucm_content.69', '#__ucm_content.69', '{}'),
(236, 83, 178, 179, 6, 'com_content.article.64', 'L5 090 070 013', '{}'),
(237, 1, 645, 646, 1, '#__ucm_content.70', '#__ucm_content.70', '{}'),
(238, 83, 180, 181, 6, 'com_content.article.65', 'TRCT L 090 062 010', '{}'),
(239, 1, 647, 648, 1, '#__ucm_content.71', '#__ucm_content.71', '{}'),
(240, 83, 182, 183, 6, 'com_content.article.66', 'TRCT L 115 076 010', '{}'),
(241, 1, 649, 650, 1, '#__ucm_content.72', '#__ucm_content.72', '{}'),
(242, 83, 184, 185, 6, 'com_content.article.67', 'TRCT 125 080 010', '{}'),
(243, 1, 651, 652, 1, '#__ucm_content.73', '#__ucm_content.73', '{}'),
(244, 83, 186, 187, 6, 'com_content.article.68', 'A 130 088 313', '{}'),
(245, 1, 653, 654, 1, '#__ucm_content.74', '#__ucm_content.74', '{}'),
(246, 83, 188, 189, 6, 'com_content.article.69', 'B 180 110 310', '{}'),
(247, 1, 655, 656, 1, '#__ucm_content.75', '#__ucm_content.75', '{}'),
(248, 83, 190, 191, 6, 'com_content.article.70', 'C 225 115 310', '{}'),
(249, 1, 657, 658, 1, '#__ucm_content.76', '#__ucm_content.76', '{}'),
(250, 76, 197, 214, 5, 'com_content.category.25', 'UPLUS EB PP/Wet Saries (MF)', '{}'),
(251, 1, 659, 660, 1, '#__ucm_content.77', '#__ucm_content.77', '{}'),
(252, 76, 215, 248, 5, 'com_content.category.26', 'UPLUS HPG Series (MF)', '{}'),
(253, 1, 661, 662, 1, '#__ucm_content.78', '#__ucm_content.78', '{}'),
(254, 76, 249, 262, 5, 'com_content.category.27', 'UPLUS MX PP/High Performance (MF)', '{}'),
(255, 1, 663, 664, 1, '#__ucm_content.79', '#__ucm_content.79', '{}'),
(256, 250, 198, 199, 6, 'com_content.article.71', 'EBZ7-3-1', '{}'),
(257, 1, 665, 666, 1, '#__ucm_content.80', '#__ucm_content.80', '{}'),
(258, 250, 200, 201, 6, 'com_content.article.72', 'EB9B-4', '{}'),
(259, 1, 667, 668, 1, '#__ucm_content.81', '#__ucm_content.81', '{}'),
(260, 250, 202, 203, 6, 'com_content.article.73', 'EBZ10-4', '{}'),
(261, 1, 669, 670, 1, '#__ucm_content.82', '#__ucm_content.82', '{}'),
(262, 250, 204, 205, 6, 'com_content.article.74', 'EBZ12-4-1', '{}'),
(263, 1, 671, 672, 1, '#__ucm_content.83', '#__ucm_content.83', '{}'),
(264, 250, 206, 207, 6, 'com_content.article.75', 'EBZ14-4', '{}'),
(265, 1, 673, 674, 1, '#__ucm_content.84', '#__ucm_content.84', '{}'),
(266, 250, 208, 209, 6, 'com_content.article.76', 'EB20-4', '{}'),
(267, 1, 675, 676, 1, '#__ucm_content.85', '#__ucm_content.85', '{}'),
(268, 250, 210, 211, 6, 'com_content.article.77', 'EB20CH-4', '{}'),
(269, 1, 677, 678, 1, '#__ucm_content.86', '#__ucm_content.86', '{}'),
(270, 250, 212, 213, 6, 'com_content.article.78', 'EB30-3', '{}'),
(271, 1, 679, 680, 1, '#__ucm_content.87', '#__ucm_content.87', '{}'),
(272, 1, 681, 682, 1, '#__ucm_content.88', '#__ucm_content.88', '{}'),
(273, 76, 263, 288, 5, 'com_content.category.28', 'UPLUS LT ABS/Wet Series (MF)', '{}'),
(274, 1, 683, 684, 1, '#__ucm_content.89', '#__ucm_content.89', '{}'),
(275, 273, 264, 265, 6, 'com_content.article.79', 'LT4-3', '{}'),
(276, 1, 685, 686, 1, '#__ucm_content.90', '#__ucm_content.90', '{}'),
(277, 273, 266, 267, 6, 'com_content.article.80', 'LT5-3', '{}'),
(278, 1, 687, 688, 1, '#__ucm_content.91', '#__ucm_content.91', '{}'),
(279, 273, 268, 269, 6, 'com_content.article.81', 'LT7A-4', '{}'),
(280, 1, 689, 690, 1, '#__ucm_content.92', '#__ucm_content.92', '{}'),
(281, 273, 270, 271, 6, 'com_content.article.82', 'LT7-3', '{}'),
(282, 1, 691, 692, 1, '#__ucm_content.93', '#__ucm_content.93', '{}'),
(283, 273, 272, 273, 6, 'com_content.article.83', 'LT9A-4', '{}'),
(284, 1, 693, 694, 1, '#__ucm_content.94', '#__ucm_content.94', '{}'),
(285, 273, 274, 275, 6, 'com_content.article.84', 'LT9-4', '{}'),
(286, 1, 695, 696, 1, '#__ucm_content.95', '#__ucm_content.95', '{}'),
(287, 273, 276, 277, 6, 'com_content.article.85', 'LT12-4', '{}'),
(288, 1, 697, 698, 1, '#__ucm_content.96', '#__ucm_content.96', '{}'),
(289, 273, 278, 279, 6, 'com_content.article.86', 'LT14-4', '{}'),
(290, 1, 699, 700, 1, '#__ucm_content.97', '#__ucm_content.97', '{}'),
(291, 273, 280, 281, 6, 'com_content.article.87', 'LT18-3', '{}'),
(292, 1, 701, 702, 1, '#__ucm_content.98', '#__ucm_content.98', '{}'),
(293, 273, 282, 283, 6, 'com_content.article.88', 'LT20H-3', '{}'),
(294, 1, 703, 704, 1, '#__ucm_content.99', '#__ucm_content.99', '{}'),
(295, 273, 284, 285, 6, 'com_content.article.89', 'LT24-3', '{}'),
(296, 1, 705, 706, 1, '#__ucm_content.100', '#__ucm_content.100', '{}'),
(297, 273, 286, 287, 6, 'com_content.article.90', 'LT30-3', '{}'),
(298, 1, 707, 708, 1, '#__ucm_content.101', '#__ucm_content.101', '{}'),
(299, 252, 216, 217, 6, 'com_content.article.91', 'HPG4-3', '{}'),
(300, 1, 709, 710, 1, '#__ucm_content.102', '#__ucm_content.102', '{}'),
(301, 252, 218, 219, 6, 'com_content.article.92', 'HPG5-3', '{}'),
(302, 1, 711, 712, 1, '#__ucm_content.103', '#__ucm_content.103', '{}'),
(303, 252, 220, 221, 6, 'com_content.article.93', 'HPG7-3', '{}'),
(304, 1, 713, 714, 1, '#__ucm_content.104', '#__ucm_content.104', '{}'),
(305, 252, 222, 223, 6, 'com_content.article.94', 'HPG7A-4', '{}'),
(306, 1, 715, 716, 1, '#__ucm_content.105', '#__ucm_content.105', '{}'),
(307, 252, 224, 225, 6, 'com_content.article.95', 'HPG7B-4', '{}'),
(308, 1, 717, 718, 1, '#__ucm_content.106', '#__ucm_content.106', '{}'),
(309, 252, 226, 227, 6, 'com_content.article.96', 'HPG7C-3', '{}'),
(310, 1, 719, 720, 1, '#__ucm_content.107', '#__ucm_content.107', '{}'),
(311, 252, 228, 229, 6, 'com_content.article.97', 'HPG9-4', '{}'),
(312, 1, 721, 722, 1, '#__ucm_content.108', '#__ucm_content.108', '{}'),
(313, 252, 230, 231, 6, 'com_content.article.98', 'HPG9B-4', '{}'),
(314, 1, 723, 724, 1, '#__ucm_content.109', '#__ucm_content.109', '{}'),
(315, 252, 232, 233, 6, 'com_content.article.99', 'HPG10A-4', '{}'),
(316, 1, 725, 726, 1, '#__ucm_content.110', '#__ucm_content.110', '{}'),
(317, 252, 234, 235, 6, 'com_content.article.100', 'HPG12C-4', '{}'),
(318, 1, 727, 728, 1, '#__ucm_content.111', '#__ucm_content.111', '{}'),
(319, 252, 236, 237, 6, 'com_content.article.101', 'HPG12B-4', '{}'),
(320, 1, 729, 730, 1, '#__ucm_content.112', '#__ucm_content.112', '{}'),
(321, 252, 238, 239, 6, 'com_content.article.102', 'HPG14-4', '{}'),
(322, 1, 731, 732, 1, '#__ucm_content.113', '#__ucm_content.113', '{}'),
(323, 252, 240, 241, 6, 'com_content.article.103', 'HPG14A-3', '{}'),
(324, 1, 733, 734, 1, '#__ucm_content.114', '#__ucm_content.114', '{}'),
(325, 252, 242, 243, 6, 'com_content.article.104', 'HPG14B-4', '{}'),
(326, 1, 735, 736, 1, '#__ucm_content.115', '#__ucm_content.115', '{}'),
(327, 252, 244, 245, 6, 'com_content.article.105', 'HPG16-4', '{}'),
(328, 1, 737, 738, 1, '#__ucm_content.116', '#__ucm_content.116', '{}'),
(329, 252, 246, 247, 6, 'com_content.article.106', 'HPG20-3', '{}'),
(330, 1, 739, 740, 1, '#__ucm_content.117', '#__ucm_content.117', '{}'),
(331, 254, 250, 251, 6, 'com_content.article.107', 'MX9-4', '{}'),
(332, 1, 741, 742, 1, '#__ucm_content.118', '#__ucm_content.118', '{}'),
(333, 254, 252, 253, 6, 'com_content.article.108', 'MX12-4', '{}'),
(334, 1, 743, 744, 1, '#__ucm_content.119', '#__ucm_content.119', '{}'),
(335, 254, 254, 255, 6, 'com_content.article.109', 'MX14-4', '{}'),
(336, 1, 745, 746, 1, '#__ucm_content.120', '#__ucm_content.120', '{}'),
(337, 254, 256, 257, 6, 'com_content.article.110', 'MX18-3', '{}'),
(338, 1, 747, 748, 1, '#__ucm_content.121', '#__ucm_content.121', '{}'),
(339, 254, 258, 259, 6, 'com_content.article.111', 'MX20-3', '{}'),
(340, 1, 749, 750, 1, '#__ucm_content.122', '#__ucm_content.122', '{}'),
(341, 254, 260, 261, 6, 'com_content.article.112', 'MX30-3', '{}'),
(342, 1, 751, 752, 1, '#__ucm_content.123', '#__ucm_content.123', '{}'),
(343, 84, 295, 312, 5, 'com_content.category.29', 'HighPerformance', '{}'),
(344, 1, 753, 754, 1, '#__ucm_content.124', '#__ucm_content.124', '{}'),
(345, 84, 313, 332, 5, 'com_content.category.30', 'Truck', '{}'),
(346, 1, 755, 756, 1, '#__ucm_content.125', '#__ucm_content.125', '{}'),
(347, 84, 333, 346, 5, 'com_content.category.31', 'Forklifts', '{}'),
(348, 1, 757, 758, 1, '#__ucm_content.126', '#__ucm_content.126', '{}'),
(349, 343, 296, 297, 6, 'com_content.article.113', '540', '{}'),
(350, 1, 759, 760, 1, '#__ucm_content.127', '#__ucm_content.127', '{}'),
(351, 343, 298, 299, 6, 'com_content.article.114', '600', '{}'),
(352, 1, 761, 762, 1, '#__ucm_content.128', '#__ucm_content.128', '{}'),
(353, 343, 300, 301, 6, 'com_content.article.115', '645', '{}'),
(354, 1, 763, 764, 1, '#__ucm_content.129', '#__ucm_content.129', '{}'),
(355, 343, 302, 303, 6, 'com_content.article.116', '685', '{}'),
(356, 1, 765, 766, 1, '#__ucm_content.130', '#__ucm_content.130', '{}'),
(357, 343, 304, 305, 6, 'com_content.article.117', '695', '{}'),
(358, 1, 767, 768, 1, '#__ucm_content.131', '#__ucm_content.131', '{}'),
(359, 343, 306, 307, 6, 'com_content.article.118', '697', '{}'),
(360, 1, 769, 770, 1, '#__ucm_content.132', '#__ucm_content.132', '{}'),
(361, 343, 308, 309, 6, 'com_content.article.119', '698', '{}'),
(362, 1, 771, 772, 1, '#__ucm_content.133', '#__ucm_content.133', '{}'),
(363, 343, 310, 311, 6, 'com_content.article.120', '699', '{}'),
(364, 1, 773, 774, 1, '#__ucm_content.134', '#__ucm_content.134', '{}'),
(365, 345, 314, 315, 6, 'com_content.article.121', 'AL59', '{}'),
(366, 1, 775, 776, 1, '#__ucm_content.135', '#__ucm_content.135', '{}'),
(367, 345, 316, 317, 6, 'com_content.article.122', 'AL64', '{}'),
(368, 1, 777, 778, 1, '#__ucm_content.136', '#__ucm_content.136', '{}'),
(369, 345, 318, 319, 6, 'com_content.article.123', 'AL69', '{}'),
(370, 1, 779, 780, 1, '#__ucm_content.137', '#__ucm_content.137', '{}'),
(371, 345, 320, 321, 6, 'com_content.article.124', 'AL71', '{}'),
(372, 1, 781, 782, 1, '#__ucm_content.138', '#__ucm_content.138', '{}'),
(373, 345, 322, 323, 6, 'com_content.article.125', 'AL74', '{}'),
(374, 1, 783, 784, 1, '#__ucm_content.139', '#__ucm_content.139', '{}'),
(375, 345, 324, 325, 6, 'com_content.article.126', 'AL79', '{}'),
(376, 1, 785, 786, 1, '#__ucm_content.140', '#__ucm_content.140', '{}'),
(377, 345, 326, 327, 6, 'com_content.article.127', 'AL84', '{}'),
(378, 1, 787, 788, 1, '#__ucm_content.141', '#__ucm_content.141', '{}'),
(379, 345, 328, 329, 6, 'com_content.article.128', 'AL89', '{}'),
(380, 1, 789, 790, 1, '#__ucm_content.142', '#__ucm_content.142', '{}'),
(381, 345, 330, 331, 6, 'com_content.article.129', 'AL111', '{}'),
(382, 1, 791, 792, 1, '#__ucm_content.143', '#__ucm_content.143', '{}'),
(383, 347, 334, 335, 6, 'com_content.article.130', 'AF12', '{}'),
(384, 1, 793, 794, 1, '#__ucm_content.144', '#__ucm_content.144', '{}'),
(385, 347, 336, 337, 6, 'com_content.article.131', 'AF16', '{}'),
(386, 1, 795, 796, 1, '#__ucm_content.145', '#__ucm_content.145', '{}'),
(387, 347, 338, 339, 6, 'com_content.article.132', 'AF20', '{}'),
(388, 1, 797, 798, 1, '#__ucm_content.146', '#__ucm_content.146', '{}'),
(389, 347, 340, 341, 6, 'com_content.article.133', 'AF24', '{}'),
(390, 1, 799, 800, 1, '#__ucm_content.147', '#__ucm_content.147', '{}'),
(391, 347, 342, 343, 6, 'com_content.article.134', 'AF28', '{}'),
(392, 1, 801, 802, 1, '#__ucm_content.148', '#__ucm_content.148', '{}'),
(393, 347, 344, 345, 6, 'com_content.article.135', 'AF32', '{}'),
(394, 1, 803, 804, 1, '#__ucm_content.149', '#__ucm_content.149', '{}'),
(395, 18, 464, 465, 2, 'com_modules.module.99', 'Бренды', '{}'),
(396, 402, 26, 27, 4, 'com_content.article.136', 'AutoSock', '{}'),
(397, 402, 28, 29, 4, 'com_content.article.137', 'Hugel', '{}'),
(398, 402, 30, 31, 4, 'com_content.article.138', 'OleoBlitz', '{}'),
(399, 402, 24, 25, 4, 'com_content.article.139', 'Uplus', '{}'),
(400, 27, 33, 34, 3, 'com_content.article.140', 'Где купить', '{}'),
(401, 18, 466, 467, 2, 'com_modules.module.100', 'Бренды', '{}'),
(402, 27, 23, 32, 3, 'com_content.category.32', 'Automotogroup', '{}'),
(403, 18, 468, 469, 2, 'com_modules.module.101', 'Бренды', '{}'),
(408, 87, 361, 362, 3, 'com_content.field.11', 'картинка', '{}'),
(409, 87, 363, 364, 3, 'com_content.field.12', 'картинка', '{}'),
(410, 27, 35, 36, 3, 'com_content.article.141', 'Политика безопасности', '{}'),
(411, 75, 193, 194, 5, 'com_content.category.33', 'test', '{}'),
(412, 1, 805, 806, 1, '#__ucm_content.150', '#__ucm_content.150', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `mart_associations`
--

CREATE TABLE `mart_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_associations`
--

INSERT INTO `mart_associations` (`id`, `context`, `key`) VALUES
(1, 'com_content.item', '11f96f3a9bb94ce21ab7cf4781a86857'),
(2, 'com_content.item', '11f96f3a9bb94ce21ab7cf4781a86857'),
(103, 'com_menus.item', '876172e387f7d8e3841875e0b6e08a31'),
(105, 'com_menus.item', '876172e387f7d8e3841875e0b6e08a31');

-- --------------------------------------------------------

--
-- Структура таблицы `mart_banners`
--

CREATE TABLE `mart_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_banner_clients`
--

CREATE TABLE `mart_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_banner_tracks`
--

CREATE TABLE `mart_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_categories`
--

CREATE TABLE `mart_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_categories`
--

INSERT INTO `mart_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 63, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 359, '2018-04-12 11:09:20', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 4, 1, 'automotogroup', 'com_content', 'Простой', 'automotogroup', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:09:20', 359, '2018-05-21 13:03:18', 0, '*', 1),
(3, 28, 1, 5, 6, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:09:20', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 7, 8, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:09:20', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 9, 10, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:09:20', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:09:20', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 60, 1, 13, 14, 1, 'default-eng', 'com_content', 'Default', 'default-eng', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:09:57', 359, '2018-05-21 13:01:36', 0, 'en-GB', 1),
(9, 64, 1, 15, 60, 1, 'products', 'com_content', 'Продукция', 'products', '', '<h4>Категория Продукция</h4>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo laboriosam nostrum saepe omnis magni eos repellat perspiciatis temporibus quibusdam perferendis. Modi porro aut, iste unde nobis nisi voluptates, repellendus harum?</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo laboriosam nostrum saepe omnis magni eos repellat perspiciatis temporibus quibusdam perferendis. Modi porro aut, iste unde nobis nisi voluptates, repellendus harum?</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo laboriosam nostrum saepe omnis magni eos repellat perspiciatis temporibus quibusdam perferendis. Modi porro aut, iste unde nobis nisi voluptates, repellendus harum?</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo laboriosam nostrum saepe omnis magni eos repellat perspiciatis temporibus quibusdam perferendis. Modi porro aut, iste unde nobis nisi voluptates, repellendus harum?</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo laboriosam nostrum saepe omnis magni eos repellat perspiciatis temporibus quibusdam perferendis. Modi porro aut, iste unde nobis nisi voluptates, repellendus harum?</p>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:09:57', 359, '2018-05-18 10:38:14', 0, 'ru-RU', 1),
(10, 72, 9, 16, 45, 2, 'products/akk', 'com_content', 'Аккумуляторные батареи', 'akk', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:49:22', 359, '2018-05-18 09:52:45', 0, '*', 1),
(11, 73, 9, 46, 47, 2, 'products/oil', 'com_content', 'Масла и смазочные материалы', 'oil', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:49:34', 359, '2018-05-18 07:36:20', 0, '*', 1),
(12, 74, 9, 48, 59, 2, 'products/aksessuary', 'com_content', 'Аксессуары', 'aksessuary', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:49:43', 359, '2018-05-18 07:36:28', 0, '*', 1),
(13, 75, 10, 17, 34, 3, 'products/akk/akk-avto', 'com_content', 'Автомобильные батареи', 'akk-avto', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:50:01', 359, '2018-05-23 08:47:47', 0, '*', 1),
(14, 76, 10, 35, 44, 3, 'products/akk/akk-moto', 'com_content', 'Мотоциклетные батареи', 'akk-moto', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:50:16', 359, '2018-05-18 07:36:15', 0, '*', 1),
(15, 77, 13, 18, 19, 4, 'products/akk/akk-avto/hugel-nanogolden-start-stop-agm', 'com_content', 'HUGEL NANOGOLDEN START-STOP AGM. Enhanced Lead Acid Battery with Nano Chtystal Technology', 'hugel-nanogolden-start-stop-agm', '', '<ul>\r\n<li>Полностью герметичная двойная крышка.</li>\r\n<li>Запатентованная конструкция отвечает самым сложным требованиям герметичности и прошла тест на опрокидывание при угле наклона 180º:\r\n<ul>\r\n<li>пробки со специальными лабиринтами</li>\r\n<li>пламегасители интегрированы в крышку</li>\r\n<li>индикатор уровня заряда, расположенный на крышке</li>\r\n<li>специальная крышка клеммной коробки и удобная для переноса ручка.</li>\r\n</ul>\r\n</li>\r\n<li>Положительные литые пластины.</li>\r\n<li>Специальные сепараторы с низким внутренним сопротивлением.</li>\r\n<li>Специальная формула пасты, изготовленной по технологии «Nano Crystal».</li>\r\n<li>Специальный сплав с улучшенной коррозионной стойкостью при высоких температурах.</li>\r\n<li>Максимальный уровень электролита поверх пластин.</li>\r\n</ul>\r\n<p>Преимущества&nbsp;</p>\r\n<ul>\r\n<li>Срок службы аккумулятора в 2,5 раза больше, чем у стандартных свинцово-кислотных аккумуляторов.</li>\r\n<li>Пусковая мощность выше на 15%, по сравнению со стандартными аккумуляторами.</li>\r\n<li>Готов к эксплуатации.</li>\r\n<li>Повышенная безопасность благодаря пламегасителям.</li>\r\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_avto\\/hugel\\/NANOGOLDEN_START_STOP_AGM.png\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:51:10', 359, '2018-05-18 07:34:15', 0, '*', 1),
(16, 78, 13, 20, 21, 4, 'products/akk/akk-avto/hugel-nanogolden-start-stop-efb', 'com_content', 'HUGEL NANOGOLDEN START-STOP EFB. Enhanced Lead Acid Battery with Nano Chtystal Technology', 'hugel-nanogolden-start-stop-efb', '', '<ul>\r\n<li>Полностью герметичная двойная крышка.</li>\r\n<li>Запатентованная конструкция отвечает самым сложным требованиям герметичности и прошла тест на опрокидывание при угле наклона 180º:\r\n<ul>\r\n<li>пробки со специальными лабиринтами</li>\r\n<li>пламегасители интегрированы в крышку</li>\r\n<li>индикатор уровня заряда, расположенный на крышке</li>\r\n<li>специальная крышка клеммной коробки и удобная для переноса ручка.</li>\r\n</ul>\r\n</li>\r\n<li>Положительные литые пластины.</li>\r\n<li>Специальные сепараторы с низким внутренним сопротивлением.</li>\r\n<li>Специальная формула пасты, изготовленной по технологии «Nano Crystal».</li>\r\n<li>Специальный сплав с улучшенной коррозионной стойкостью при высоких температурах.</li>\r\n<li>Максимальный уровень электролита поверх пластин.</li>\r\n</ul>\r\n<p>Преимущества&nbsp;</p>\r\n<ul>\r\n<li>Срок службы аккумулятора в 2,5 раза больше, чем у стандартных свинцово-кислотных аккумуляторов.</li>\r\n<li>Пусковая мощность выше на 15%, по сравнению со стандартными аккумуляторами.</li>\r\n<li>Готов к эксплуатации.</li>\r\n<li>Повышенная безопасность благодаря пламегасителям.</li>\r\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_avto\\/hugel\\/NANOGOLDEN_START_STOP_EFB.png\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:51:24', 359, '2018-05-18 07:34:25', 0, '*', 1),
(17, 79, 13, 22, 23, 4, 'products/akk/akk-avto/hugel-ultra', 'com_content', 'HUGEL ULTRA. Sealed Maintenance Free with Silver Tin Alloy', 'hugel-ultra', '', '<ul>\r\n<li>Полная герметичность двойной крышки. Запатентованная конструкция отвечает самым сложным требованиям герметичности и прошла тест на опрокидывание при угле наклона 180º:\r\n<ul>\r\n<li>пробки со специальными лабиринтами;</li>\r\n<li>пламегасители, интегрированные в крышку;</li>\r\n<li>индикатор уровня заряда, расположенный на крышке;</li>\r\n<li>специальная крышка клеммной коробки и удобная для переноса ручка.</li>\r\n</ul>\r\n</li>\r\n<li>Пластины CA-CA, легированнные сплавом серебра и олова.</li>\r\n<li>Полиэтиленовые сепараторы, препятствующие возникновению короткого замыкания.</li>\r\n</ul>\r\n<p>Преимущества:</p>\r\n<ul>\r\n<li>Срок службы аккумулятора в 1,5 раза больше, чем у стандартных свинцово-кислотных аккумуляторов.</li>\r\n<li>Пусковая мощность выше на 10%, по сравнению со стандартными аккумуляторами.</li>\r\n<li>Готов к эксплуатации, нет необходимости в обслуживании.</li>\r\n<li>Повышенная безопасность благодаря пламегасителям.</li>\r\n<li>Увеличенное количество циклов заряд-разряд.</li>\r\n<li>Повышенный пусковой ток и увеличенная емкость.</li>\r\n<li>Широкий ассортимент продукции, совместимой как с малолитражными транспортными средствами, так и с автомобилями нового поколения с бензиновыми или дизельными двигателями.</li>\r\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:51:34', 359, '2018-05-18 07:34:21', 0, '*', 1),
(18, 80, 13, 24, 25, 4, 'products/akk/akk-avto/hugel-ultra-asia', 'com_content', 'HUGEL ULTRA ASIA. Sealed Maintenance Free with Silver Tin Alloy', 'hugel-ultra-asia', '', '<ul>\r\n<li>Полная герметичность двойной крышки. Запатентованная конструкция отвечает самым сложным требованиям герметичности и прошла тест на опрокидывание при угле наклона 180º:\r\n<ul>\r\n<li>пробки со специальными лабиринтами;</li>\r\n<li>пламегасители, интегрированные в крышку;</li>\r\n<li>индикатор уровня заряда, расположенный на крышке;</li>\r\n<li>специальная крышка клеммной коробки и удобная для переноса ручка.</li>\r\n</ul>\r\n</li>\r\n<li>Пластины CA-CA, легированнные сплавом серебра и олова.</li>\r\n<li>Полиэтиленовые сепараторы, препятствующие возникновению короткого замыкания.</li>\r\n</ul>\r\n<p>Преимущества:</p>\r\n<ul>\r\n<li>Срок службы аккумулятора в 1,5 раза больше, чем у стандартных свинцово-кислотных аккумуляторов.</li>\r\n<li>Пусковая мощность выше на 10%, по сравнению со стандартными аккумуляторами.</li>\r\n<li>Готов к эксплуатации, нет необходимости в обслуживании.</li>\r\n<li>Повышенная безопасность благодаря пламегасителям.</li>\r\n<li>Увеличенное количество циклов заряд-разряд.</li>\r\n<li>Повышенный пусковой ток и увеличенная емкость.</li>\r\n<li>Широкий ассортимент продукции, совместимой как с малолитражными транспортными средствами, так и с автомобилями нового поколения с бензиновыми или дизельными двигателями.</li>\r\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:51:40', 359, '2018-05-18 07:34:40', 0, '*', 1),
(19, 81, 13, 26, 27, 4, 'products/akk/akk-avto/hugel-action', 'com_content', 'HUGEL ACTION. Closed Lid With Ca-Ca Technology', 'hugel-action', '', '<ul>\r\n<li>Полугерметичная специальная крышка запатентованной конструкции.</li>\r\n<li>Пластины СА-СА Exmet (СА-СА технология Эксмет).</li>\r\n<li>Специальная ручка для переноски аккумулятора.</li>\r\n<li>Специально разработанные лабиринтные пробки.</li>\r\n<li>В крышке АКБ имеется специально разработанный интегральный пламегаситель.</li>\r\n<li>Индикатор заряда батареи на крышке.</li>\r\n<li>Конверт-сепараторы из полиэтилена.</li>\r\n</ul>\r\n<p>Преимущества:</p>\r\n<ul>\r\n<li>Срок службы на 15% дольше, чем у стандартных батарей.</li>\r\n<li>Ток холодной прокрутки на 5% выше, чем у стандартных батарей</li>\r\n<li>Не требует обслуживания.</li>\r\n<li>Долгий срок службы при любом климате.</li>\r\n<li>Высокая устойчивость к коррозии и короткому замыканию</li>\r\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:51:47', 359, '2018-05-18 07:34:38', 0, '*', 1),
(20, 82, 13, 28, 29, 4, 'products/akk/akk-avto/hugel-action-heavy-duty', 'com_content', 'HUGEL ACTION HEAVY DUTY. Super Calcium Alloy', 'hugel-action-heavy-duty', '', '<ul>\r\n<li>Усиленные пластины, изготовленные по гибридной технологии.</li>\r\n<li>Glassmate сепараторы.</li>\r\n<li>Специальный термоклей для повышенной устойчивости к вибрации.</li>\r\n<li>Максимальный уровень электролита поверх пластин.</li>\r\n<li>Не нуждается в обслуживании.</li>\r\n</ul>\r\n<p>Преимущества:</p>\r\n<ul>\r\n<li>Ток холодной прокрутки на 5% выше, по сравнению со стандартными батареями.</li>\r\n<li>Высокая устойчивость к вибрационным нагрузкам.</li>\r\n<li>Долгий срок службы. • Готовность к эксплуатации.</li>\r\n<li>Не требует обслуживания.</li>\r\n<li>Устойчивость к сложным погодным и дорожным условиям.</li>\r\n<li>Высокая пусковая мощность.</li>\r\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_avto\\/hugel\\/HEAVY_DUTY.png\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:51:55', 359, '2018-05-18 07:34:34', 0, '*', 1),
(21, 83, 13, 30, 31, 4, 'products/akk/akk-avto/hugel-action-leisure', 'com_content', 'HUGEL ACTION LEISURE', 'hugel-action-leisure', '', '<ul>\r\n<li>Гибридные пластины специально усилены для использования на катерах и автофургонах.</li>\r\n<li>Специально разработанные пластины и разделители.</li>\r\n<li>Особый состав электролита.</li>\r\n<li>Высокая пусковая мощность и производительность.</li>\r\n</ul>\r\n<p>Преимущества:</p>\r\n<ul>\r\n<li>Повышенный пусковой ток и увеличенная емкость.</li>\r\n<li>Максимальная производительность.</li>\r\n<li>Сверхустойчивость к ударным толчкам и воздействию волн.</li>\r\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"g5_hydrogen:prods\",\"image\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:52:08', 359, '2018-05-17 15:41:46', 0, '*', 1),
(22, 84, 12, 49, 56, 3, 'products/aksessuary/chekhly', 'com_content', 'Чехлы', 'chekhly', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:52:30', 359, '2018-05-18 07:36:32', 0, '*', 1),
(23, 85, 12, 57, 58, 3, 'products/aksessuary/zaryadka', 'com_content', 'Зарядка', 'zaryadka', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:52:39', 359, '2018-05-18 07:36:38', 0, '*', 1),
(24, 86, 1, 61, 62, 1, 'materialy', 'com_content', 'Материалы', 'materialy', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:52:51', 359, '2018-05-18 07:36:42', 0, '*', 1),
(25, 250, 14, 36, 37, 4, 'products/akk/akk-moto/uplus-eb-pp-wet-saries-mf', 'com_content', 'UPLUS EB PP/Wet Saries (MF)', 'uplus-eb-pp-wet-saries-mf', '', '<ul>\r\n<li>Высокий пусковой ток и хорошие стартерные характеристики (до 40% выше в сравнении с классическими батареями).</li>\r\n<li>Высокая производительность и долгий срок службы. (до 5 лет).</li>\r\n<li>Батарея изготовлена по технологии AGM.</li>\r\n<li>Высокая виброустойчивость.</li>\r\n<li>Улучшенный прием заряда.</li>\r\n<li>Корпус выполнен из высококачественного ABS-пластика.</li>\r\n<li>Надежная герметичная конструкция.</li>\r\n<li>Батарея залита и заряжена на заводе.</li>\r\n<li>Не требует обслуживания.</li>\r\n<li>Длительный срок хранения, низкий саморазряд батареи.</li>\r\n<li>Продвинутая технология свинцово-кальциевого сплава и усовершенствованная сульфатостойкость.</li>\r\n<li>Литьевая конструкция клеммы и крышки.</li>\r\n<li>Применение COS и TTP технологии.</li>\r\n<li>Диапазон рабочих температур: от -40С до +60С</li>\r\n</ul>\r\n<p>Гарантийный срок: 18 месяцев Области применения: 1. Мотоциклы 2.Гидроциклы 3.Квадроциклы 4. Снегоходы 5. Садовая техника</p>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_moto\\/UPLUS_EB_PP_Wet_Saries\\/EB20-4(1).png\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-05-18 06:35:25', 359, '2018-05-22 11:41:39', 0, '*', 1),
(26, 252, 14, 40, 41, 4, 'products/akk/akk-moto/hpg-series-mf', 'com_content', 'UPLUS HPG Series (MF)', 'hpg-series-mf', '', '<ul>\r\n<li>Батарея изготовлена по технологии AGM – нано гель.</li>\r\n<li>Высокодисперсный нано-гель электролит.</li>\r\n<li>Высокий пусковой ток и хорошие стартерные характеристики (до 40% выше в сравнении с классическими батареями).</li>\r\n<li>Герметичная конструкция, установка под углом до 3600.</li>\r\n<li>Высокая производительность.</li>\r\n<li>Срок службы больше на 15% в сравнении с традиционными AGM\\VRLA батареями. (до 6 лет службы).</li>\r\n<li>Высокая виброустойчивость и удароустойчивость.</li>\r\n<li>Быстрый прием заряда батареи и улучшенная способность к восстановлению.</li>\r\n<li>Корпус выполнен из высококачественного ABS-пластика.</li>\r\n<li>Батарея залита и заряжена на заводе.</li>\r\n<li>Не требует обслуживания.</li>\r\n<li>Длительный срок хранения, низкий саморазряд батареи.</li>\r\n<li>Продвинутая технология свинцово-кальциевого сплава и усовершенствованная сульфатостойкость.</li>\r\n<li>Более эффективный рецепт пасты.</li>\r\n<li>Литьевая конструкция клеммы и крышки.</li>\r\n<li>Применение COS и TTP технологии.</li>\r\n<li>Широкий диапазон рабочих температур: от -40С до +60С</li>\r\n</ul>\r\n<p>Гарантийный срок: 24 месяца Области применения: 1. Мотоциклы 2.Гидроциклы 3.Квадроциклы 4. Снегоходы 5. Вспомогательное электропитание автомобилей. 6. Водный транспорт. 7. Садовая техника и т.д.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG4-3(1).png\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-05-18 06:51:44', 359, '2018-05-22 11:40:53', 0, '*', 1),
(27, 254, 14, 42, 43, 4, 'products/akk/akk-moto/mx-pp-high-performance-mf', 'com_content', 'UPLUS MX PP/High Performance (MF)', 'mx-pp-high-performance-mf', '', '<ul>\r\n<li>Батарея изготовлена по технологии AGM.</li>\r\n<li>Увеличенный счет сборки пластин и более высокое сжатие.</li>\r\n<li>Специальная конструкция пластин, увеличенная до 20% площадь контакта.</li>\r\n<li>Превосходная стартовая мощность, высокая резервная мощность и долговечность. (до 60% выше в сравнении с классическими батареями).</li>\r\n<li>Герметичная конструкция, установка под углом до 3600.</li>\r\n<li>Высокая производительность.</li>\r\n<li>Срок службы больше на 25% в сравнении с традиционными AGM\\VRLA батареями. (до 7 лет службы).</li>\r\n<li>Высокая виброустойчивость и удароустойчивость.</li>\r\n<li>Специальные микропористые сепараторы.</li>\r\n<li>Быстрый прием заряда батареи и улучшенная способность к восстановлению.</li>\r\n<li>Корпус выполнен из высококачественного ABS-пластика.</li>\r\n<li>Батарея залита и заряжена на заводе.</li>\r\n<li>Не требует обслуживания.</li>\r\n<li>Длительный срок хранения, низкий саморазряд батареи.</li>\r\n<li>Продвинутая технология свинцово-кальциевого сплава и усовершенствованная сульфатостойкость.</li>\r\n<li>Более эффективный рецепт пасты.</li>\r\n<li>Улучшенная специальная конструкция токоотводов.</li>\r\n<li>Применение COS и TTP технологии.</li>\r\n<li>Широкий диапазон рабочих температур: от -40С до +60С</li>\r\n</ul>\r\n<p>Гарантийный срок: 24 месяца Области применения: 1. Мотоциклы 2.Гидроциклы 3.Квадроциклы 4. Снегоходы 5. Водный транспорт. 6. Садовая техника</p>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_moto\\/UPLUS_MX_PP_High_Performance\\/MX9-4(1).png\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-05-18 06:52:07', 359, '2018-05-22 11:41:14', 0, '*', 1),
(28, 273, 14, 38, 39, 4, 'products/akk/akk-moto/lt-abs-wet-series-mf', 'com_content', 'UPLUS LT ABS/Wet Series (MF)', 'lt-abs-wet-series-mf', '', '<ul>\r\n<li>Высокий пусковой ток и хорошие стартерные характеристики (до 40% выше в сравнении с классическими батареями).</li>\r\n<li>Высокая производительность и долгий срок службы. (до 5 лет).</li>\r\n<li>Батарея изготовлена по технологии AGM.</li>\r\n<li>Высокая виброустойчивость.</li>\r\n<li>Улучшенный прием заряда.</li>\r\n<li>Корпус выполнен из высококачественного ABS-пластика.</li>\r\n<li>Надежная герметичная конструкция.</li>\r\n<li>Батарея залита и заряжена на заводе.</li>\r\n<li>Не требует обслуживания.</li>\r\n<li>Длительный срок хранения, низкий саморазряд батареи.</li>\r\n<li>Продвинутая технология свинцово-кальциевого сплава и усовершенствованная сульфатостойкость.</li>\r\n<li>Литьевая конструкция клеммы и крышки.</li>\r\n<li>Применение COS и TTP технологии.</li>\r\n<li>Диапазон рабочих температур: от -40С до +60С</li>\r\n</ul>\r\n<p>Гарантийный срок: 18 месяцев Области применения: 1. Мотоциклы 2.Гидроциклы 3.Квадроциклы 4. Снегоходы 5. Садовая техника</p>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT4-3(1).png\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-05-18 07:39:36', 359, '2018-05-22 11:41:47', 0, '*', 1),
(29, 343, 22, 50, 51, 4, 'products/aksessuary/chekhly/highperformance', 'com_content', 'HighPerformance', 'highperformance', '', '<ul>\r\n<li>Обеспечивает мгновенное сцепление с дорогой и курсовую устойчивость, позволяет контролировать торможение и уменьшает тормозной путь.</li>\r\n<li>Максимальная безопасность для водителя и автомобиля, работает со всеми электронными системами безопасности (ABS,ESP и т.д.).</li>\r\n<li>Не вызывает шума и вибрации при вождении.</li>\r\n<li>Быстрая и удобная установка.</li>\r\n<li>Совместим с любыми типами шин, в том числе и шипованными.</li>\r\n<li>Легкий, складной, компактный и удобный при хранении в машине круглый год.</li>\r\n<li>Годен для стирки в стиральной машинке и многократного использования.</li>\r\n<li>Сертифицирован и являются официально разрешенной альтернативой цепям противоскольжения</li>\r\n<li>Работает на всех транспортных средствах в том числе с низким просветом между шиной и колесной аркой.</li>\r\n<li>Не наносит вред любым колесным дискам.</li>\r\n<li>Не вызывает износ дорожного полотна.</li>\r\n<li>Экологически чистый и возможен для вторичной переработки.\r\n<ul>\r\n<li>Устойчив: к низким и высоким температурам от -196 С до +180 С, химическим реагентам, соли и воде, гниению, микробам и плесени.</li>\r\n</ul>\r\n</li>\r\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"images\\/aks_covers\\/HighPerformance\\/HighPerformance.png\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-05-18 08:20:24', 359, '2018-05-22 10:05:51', 0, '*', 1),
(30, 345, 22, 52, 53, 4, 'products/aksessuary/chekhly/truck', 'com_content', 'Truck', 'truck', '', '<ul>\r\n<li>Обеспечивает мгновенное сцепление с дорогой и курсовую устойчивость, позволяет контролировать торможение и уменьшает тормозной путь.</li>\r\n<li>Максимальная безопасность для водителя и автомобиля, работает со всеми электронными системами безопасности (ABS,ESP и т.д.).</li>\r\n<li>Не вызывает шума и вибрации при вождении.</li>\r\n<li>Быстрая и удобная установка.</li>\r\n<li>Совместим с любыми типами шин, в том числе и шипованными.</li>\r\n<li>Легкий, складной, компактный и удобный при хранении в машине круглый год.</li>\r\n<li>Годен для стирки в стиральной машинке и многократного использования.</li>\r\n<li>Сертифицирован и являются официально разрешенной альтернативой цепям противоскольжения.</li>\r\n<li>Работает на всех транспортных средствах в том числе с низким просветом между шиной и колесной аркой.</li>\r\n<li>Не наносит вред любым колесным дискам.</li>\r\n<li>Не вызывает износ дорожного полотна.</li>\r\n<li>Экологически чистый и возможен для вторичной переработки.\r\n<ul>\r\n<li>Устойчив: к низким и высоким температурам от -196 С до +180 С, химическим реагентам, соли и воде, гниению, микробам и плесени.</li>\r\n</ul>\r\n</li>\r\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-05-18 08:20:55', 359, '2018-05-18 12:59:50', 0, '*', 1),
(31, 347, 22, 54, 55, 4, 'products/aksessuary/chekhly/forklifts', 'com_content', 'Forklifts', 'forklifts', '', '<ul>\r\n<li>Обеспечивает мгновенное сцепление с дорогой и курсовую устойчивость, позволяет контролировать торможение и уменьшает тормозной путь.</li>\r\n<li>Максимальная безопасность для водителя и автомобиля, работает со всеми электронными системами безопасности (ABS,ESP и т.д.).</li>\r\n<li>Не вызывает шума и вибрации при вождении.</li>\r\n<li>Быстрая и удобная установка.</li>\r\n<li>Совместим с любыми типами шин, в том числе и шипованными.</li>\r\n<li>Легкий, складной, компактный и удобный при хранении в машине круглый год.</li>\r\n<li>Годен для стирки в стиральной машинке и многократного использования.</li>\r\n<li>Сертифицирован и являются официально разрешенной альтернативой цепям противоскольжения.</li>\r\n<li>Работает на всех транспортных средствах в том числе с низким просветом между шиной и колесной аркой.</li>\r\n<li>Не наносит вред любым колесным дискам. Не вызывает износ дорожного полотна.</li>\r\n<li>Экологически чистый и возможен для вторичной переработки.\r\n<ul>\r\n<li>Устойчив: к низким и высоким температурам от -196 С до +180 С, химическим реагентам, соли и воде, гниению, микробам и плесени.</li>\r\n</ul>\r\n</li>\r\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-05-18 08:21:17', 359, '2018-05-18 13:00:59', 0, '*', 1),
(32, 402, 2, 2, 3, 2, 'automotogroup/automotogroup', 'com_content', 'Automotogroup', 'automotogroup', '', '<p>Lorem ipsum ad his scripta blandit partiendo, eum fastidii accumsan euripidis in, eum liber hendrerit an. Qui ut wisi vocibus suscipiantur, quo dicit ridens inciderint id. Quo mundi lobortis reformidans eu, legimus senseritdefiniebas an eos. Eu sit tincidunt incorrupte definitionem, vis mutat affert percipit cu, eirmod consectetuer signiferumque eu per. In usu latineequidem dolores. Quo no falli viris intellegam, ut fugit veritus placeratper. Ius id vidit volumus mandamus, vide veritus democritum te nec, ei eosdebet libris consulatu.</p>\r\n<p>Lorem ipsum ad his scripta blandit partiendo, eum fastidii accumsan euripidis in, eum liber hendrerit an. Qui ut wisi vocibus suscipiantur, quo dicit ridens inciderint id. Quo mundi lobortis reformidans eu, legimus senseritdefiniebas an eos. Eu sit tincidunt incorrupte definitionem, vis mutat affert percipit cu, eirmod consectetuer signiferumque eu per. In usu latineequidem dolores. Quo no falli viris intellegam, ut fugit veritus placeratper. Ius id vidit volumus mandamus, vide veritus democritum te nec, ei eosdebet libris consulatu.</p>\r\n<p><img src=\"images/banner/1.jpg\" alt=\"1\" /></p>\r\n<p>Lorem ipsum ad his scripta blandit partiendo, eum fastidii accumsan euripidis in, eum liber hendrerit an. Qui ut wisi vocibus suscipiantur, quo dicit ridens inciderint id. Quo mundi lobortis reformidans eu, legimus senseritdefiniebas an eos. Eu sit tincidunt incorrupte definitionem, vis mutat affert percipit cu, eirmod consectetuer signiferumque eu per. In usu latineequidem dolores. Quo no falli viris intellegam, ut fugit veritus placeratper. Ius id vidit volumus mandamus, vide veritus democritum te nec, ei eosdebet libris consulatu.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"images\\/logo.png\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-05-21 11:38:10', 359, '2018-05-22 08:13:44', 0, '*', 1),
(33, 411, 13, 32, 33, 4, 'products/akk/akk-avto/test', 'com_content', 'test', 'test', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG7-3(1).png\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-05-23 07:44:19', 359, '2018-05-23 07:47:12', 0, '*', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `mart_contact_details`
--

CREATE TABLE `mart_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_content`
--

CREATE TABLE `mart_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_content`
--

INSERT INTO `mart_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 61, 'About company', 'about', '<p>Lorem ipsum ad his scripta blandit partiendo, eum fastidii accumsan euripidis in, eum liber hendrerit an. Qui ut wisi vocibus suscipiantur, quo dicit ridens inciderint id. Quo mundi lobortis reformidans eu, legimus senseritdefiniebas an eos. Eu sit tincidunt incorrupte definitionem, vis mutat affert percipit cu, eirmod consectetuer signiferumque eu per. In usu latineequidem dolores. Quo no falli viris intellegam, ut fugit veritus placeratper. Ius id vidit volumus mandamus, vide veritus democritum te nec, ei eosdebet libris consulatu.</p>', '', 1, 8, '2018-04-12 11:09:57', 359, 'Joomla', '2018-05-16 14:46:25', 359, 0, '0000-00-00 00:00:00', '2018-04-12 11:09:57', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"g5_hydrogen:article\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 1, 'en-GB', ''),
(2, 65, 'Automotogroup', 'about', '<p>Lorem ipsum ad his scripta blandit partiendo, eum fastidii accumsan euripidis in, eum liber hendrerit an. Qui ut wisi vocibus suscipiantur, quo dicit ridens inciderint id. Quo mundi lobortis reformidans eu, legimus senseritdefiniebas an eos. Eu sit tincidunt incorrupte definitionem, vis mutat affert percipit cu, eirmod consectetuer signiferumque eu per. In usu latineequidem dolores. Quo no falli viris intellegam, ut fugit veritus placeratper. Ius id vidit volumus mandamus, vide veritus democritum te nec, ei eosdebet libris consulatu.</p>', '', 1, 2, '2018-04-12 11:09:57', 359, 'Joomla', '2018-05-21 14:40:21', 359, 0, '0000-00-00 00:00:00', '2018-04-12 11:09:57', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/logo.png\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/logo.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"g5_hydrogen:article\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"Automotogroup\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 8, 3, '', '', 1, 160, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 1, 'ru-RU', ''),
(3, 97, 'Контакты', 'contacts', '<address class=\"main-cont\">\r\n<div class=\"cont\">\r\n<h4>{source}<?php echo JText::_(\'PETERSBURG\');?>{/source}</h4>\r\n<ul>\r\n<li><i class=\"fa fa-map-marker fa-lg\" aria-hidden=\"true\"></i>\r\n<p>192241, Россия, Санкт-Петербург, пр. Александровской Фермы, д.29, к.3</p>\r\n</li>\r\n<li><i class=\"fa fa-phone fa-lg\" aria-hidden=\"true\"></i>\r\n<p>+7 812 426-74-47</p>\r\n</li>\r\n<li><i class=\"fa fa-envelope-o fa-lg\" aria-hidden=\"true\"></i>\r\n<p>info@automotogroup.ru</p>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"cont\">\r\n<h4>{source}<?php echo JText::_(\'MOSCOW\');?>{/source}</h4>\r\n<ul>\r\n<li><i class=\"fa fa-map-marker fa-lg\" aria-hidden=\"true\"></i>\r\n<p>121351, Россия, Москва, улица Ивана Франко, 48</p>\r\n</li>\r\n<li><i class=\"fa fa-phone fa-lg\" aria-hidden=\"true\"></i>\r\n<p>+7 499 649-14-14</p>\r\n</li>\r\n<li><i class=\"fa fa-fax fa-lg\" aria-hidden=\"true\"></i>\r\n<p>+7 499 649-14-14</p>\r\n</li>\r\n<li><i class=\"fa fa-envelope-o fa-lg\" aria-hidden=\"true\"></i>\r\n<p>info@automotogroup.ru</p>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"cont\">\r\n<h4>{source}<?php echo JText::_(\'EKATERINBURG\');?>{/source}</h4>\r\n<ul>\r\n<li><i class=\"fa fa-map-marker fa-lg\" aria-hidden=\"true\"></i>\r\n<p>620016, Россия, Екатеринбург, улица Академика Вонсовского, 1 \"А\", офис 309</p>\r\n</li>\r\n<li><i class=\"fa fa-phone fa-lg\" aria-hidden=\"true\"></i>\r\n<p>+7 343 226-04-56</p>\r\n</li>\r\n<li><i class=\"fa fa-fax fa-lg\" aria-hidden=\"true\"></i>\r\n<p>+7 343 211-84-19</p>\r\n</li>\r\n<li><i class=\"fa fa-envelope-o fa-lg\" aria-hidden=\"true\"></i>\r\n<p>info@automotogroup.ru</p>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"cont\">\r\n<h4>{source}<?php echo JText::_(\'NOVOSIBIRSK\');?>{/source}</h4>\r\n<ul>\r\n<li><i class=\"fa fa-map-marker fa-lg\" aria-hidden=\"true\"></i>\r\n<p>630088, Россия, Новосибирск, улица Северный проезд, 33</p>\r\n</li>\r\n<li><i class=\"fa fa-phone fa-lg\" aria-hidden=\"true\"></i>\r\n<p>+7 383 383-29-42</p>\r\n</li>\r\n<li><i class=\"fa fa-envelope-o fa-lg\" aria-hidden=\"true\"></i>\r\n<p>info@automotogroup.ru</p>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"cont\">\r\n<h4>{source}<?php echo JText::_(\'ALMATY\');?>{/source}</h4>\r\n<ul>\r\n<li><i class=\"fa fa-map-marker fa-lg\" aria-hidden=\"true\"></i>\r\n<p>050039, Казахстан, Алматы, ул. Домбровского 3 \"А\"</p>\r\n</li>\r\n<li><i class=\"fa fa-phone fa-lg\" aria-hidden=\"true\"></i>\r\n<p>+ 7 727 251-59-88</p>\r\n</li>\r\n<li><i class=\"fa fa-fax fa-lg\" aria-hidden=\"true\"></i>\r\n<p>+ 7 727 251-58-06</p>\r\n</li>\r\n<li><i class=\"fa fa-envelope-o fa-lg\" aria-hidden=\"true\"></i>\r\n<p>info@automotogroup.ru</p>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"cont\">\r\n<h4>{source}<?php echo JText::_(\'ROSTOV_NA_DONU\');?>{/source}</h4>\r\n<ul>\r\n<li><i class=\"fa fa-map-marker fa-lg\" aria-hidden=\"true\"></i>\r\n<p>344065, Россия, Ростов-на-Дону, улица 50-летия Ростсельмаша, 1/52</p>\r\n</li>\r\n<li><i class=\"fa fa-phone fa-lg\" aria-hidden=\"true\"></i>\r\n<p>+ 7 863 303-46-46</p>\r\n</li>\r\n<li><i class=\"fa fa-fax fa-lg\" aria-hidden=\"true\"></i>\r\n<p>+ 7 863 203-70-66</p>\r\n</li>\r\n<li><i class=\"fa fa-envelope-o fa-lg\" aria-hidden=\"true\"></i>\r\n<p>stroy-south@utsrus.com</p>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"cont\">\r\n<h4>{source}<?php echo JText::_(\'MINSK\');?>{/source}</h4>\r\n<ul>\r\n<li><i class=\"fa fa-map-marker fa-lg\" aria-hidden=\"true\"></i>\r\n<p>220053, Беларусь, Минск, улица Бегомльская, 23</p>\r\n</li>\r\n<li><i class=\"fa fa-phone fa-lg\" aria-hidden=\"true\"></i>\r\n<p>+375 17 289-84-74</p>\r\n</li>\r\n<li><i class=\"fa fa-fax fa-lg\" aria-hidden=\"true\"></i>\r\n<p>+375 17 289-84-75</p>\r\n</li>\r\n<li><i class=\"fa fa-envelope-o fa-lg\" aria-hidden=\"true\"></i>\r\n<p>info@automotogroup.ru</p>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"cont\">\r\n<h4>{source}<?php echo JText::_(\'KAZAN\');?>{/source}</h4>\r\n<ul>\r\n<li><i class=\"fa fa-map-marker fa-lg\" aria-hidden=\"true\"></i>\r\n<p>420053 , Россия, г. Казань, ул. Сибирский тракт, д.59, оф. 40</p>\r\n</li>\r\n<li><i class=\"fa fa-phone fa-lg\" aria-hidden=\"true\"></i>\r\n<p>+7 (843) 500-50-86</p>\r\n</li>\r\n<li><i class=\"fa fa-envelope-o fa-lg\" aria-hidden=\"true\"></i>\r\n<p>kazan@utsrus.com</p>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"cont\">\r\n<h4>{source}<?php echo JText::_(\'KRASNODAR\');?>{/source}</h4>\r\n<ul>\r\n<li><i class=\"fa fa-map-marker fa-lg\" aria-hidden=\"true\"></i>\r\n<p>350031, Краснодарский край, г. Краснодар, Прикубанский округ, пос. Березовый, ул. Скульптора Коломийцева, 93</p>\r\n</li>\r\n<li><i class=\"fa fa-phone fa-lg\" aria-hidden=\"true\"></i>\r\n<p>+7 (863) 203-70-67 / 203-70-66</p>\r\n</li>\r\n<li><i class=\"fa fa-envelope-o fa-lg\" aria-hidden=\"true\"></i>\r\n<p>info@automotogroup.ru</p>\r\n</li>\r\n</ul>\r\n</div>\r\n</address>', '', 1, 2, '2018-04-13 06:27:11', 359, '', '2018-05-16 14:47:37', 359, 0, '0000-00-00 00:00:00', '2018-04-13 06:27:11', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"g5_hydrogen:article\",\"show_title\":\"0\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 6, 2, '', '', 1, 49, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 1, '*', ''),
(4, 104, 'L3 070 072 013', 'l3-070-072-013', '', '', 1, 15, '2018-05-08 06:59:52', 359, '', '2018-05-16 13:30:01', 359, 0, '0000-00-00 00:00:00', '2018-05-08 06:59:52', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/NANOGOLDEN_START_STOP_AGM.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 17, 1, '', '', 1, 8, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(5, 112, 'L5 092 085 013', 'l5-092-085-013', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta error amet ab molestiae ea quis dolores dignissimos et harum excepturi. Neque illum in iste quidem, veritatis nesciunt, ut perspiciatis architecto.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta error amet ab molestiae ea quis dolores dignissimos et harum excepturi. Neque illum in iste quidem, veritatis nesciunt, ut perspiciatis architecto.Dolor suscipit autem cum, consectetur animi mollitia id, neque saepe velit vero quia ullam asperiores quaerat error ipsa aut, sit officiis dolorum labore. Nam perferendis aperiam velit, placeat similique. Blanditiis!Quae officiis quam aspernatur sequi vitae id laudantium pariatur et, asperiores ad autem, quos quibusdam reiciendis in non provident! Praesentium, ipsum ex similique amet dicta possimus qui quo nisi nobis!</p>', '', 1, 15, '2018-05-08 07:48:47', 359, '', '2018-05-17 09:10:22', 359, 0, '0000-00-00 00:00:00', '2018-05-08 07:48:47', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/NANOGOLDEN_START_STOP_AGM.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 18, 0, '', '', 1, 141, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(6, 114, 'L2 60 560 013', 'l2-60-560-013', '', '', 1, 16, '2018-05-08 08:37:31', 359, '', '2018-05-08 08:37:31', 0, 0, '0000-00-00 00:00:00', '2018-05-08 08:37:31', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/NANOGOLDEN_START_STOP_EFB.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 5, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(7, 116, 'LB2 60 560 013', 'lb2-60-560-013', '', '', 1, 16, '2018-05-08 08:37:31', 359, '', '2018-05-08 08:39:00', 359, 0, '0000-00-00 00:00:00', '2018-05-08 08:37:31', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/NANOGOLDEN_START_STOP_EFB.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 4, '', '', 1, 2, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(8, 118, 'L3 72 680 013', 'l3-72-680-013', '', '', 1, 16, '2018-05-08 08:53:39', 359, '', '2018-05-08 08:53:39', 0, 0, '0000-00-00 00:00:00', '2018-05-08 08:53:39', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/NANOGOLDEN_START_STOP_EFB.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 3, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(9, 120, 'LB3 65 430 013', 'lb3-65-430-013', '', '', 1, 16, '2018-05-08 08:53:39', 359, '', '2018-05-08 08:54:33', 359, 0, '0000-00-00 00:00:00', '2018-05-08 08:53:39', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/NANOGOLDEN_START_STOP_EFB.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 2, '', '', 1, 1, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(10, 122, 'LB4 75 730 013', 'lb4-75-730-013', '', '', 1, 16, '2018-05-08 08:53:39', 359, '', '2018-05-08 08:55:43', 359, 0, '0000-00-00 00:00:00', '2018-05-08 08:53:39', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/NANOGOLDEN_START_STOP_EFB.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 1, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(11, 124, 'L5 100 920 013', 'l5-100-920-013', '', '', 1, 16, '2018-05-08 08:53:39', 359, '', '2018-05-08 08:56:29', 359, 0, '0000-00-00 00:00:00', '2018-05-08 08:53:39', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/NANOGOLDEN_START_STOP_EFB.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(12, 126, 'L1 052 046 013', 'l1-052-046-013', '', '', 1, 17, '2018-05-08 09:07:30', 359, '', '2018-05-08 09:07:30', 0, 0, '0000-00-00 00:00:00', '2018-05-08 09:07:30', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 11, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(13, 128, 'LB1 50 042 013', 'lb1-50-042-013', '', '', 1, 17, '2018-05-08 09:07:30', 359, '', '2018-05-08 09:08:14', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:07:30', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 10, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(14, 130, 'L2 062 054 113', 'l2-062-054-113', '', '', 1, 17, '2018-05-08 09:07:30', 359, '', '2018-05-08 09:10:51', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:07:30', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 9, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(15, 132, 'LB2 062 054 013', 'lb2-062-054-013', '', '', 1, 17, '2018-05-08 09:07:30', 359, '', '2018-05-10 09:00:19', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:07:30', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 8, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(16, 134, 'L3 075 070 013', 'l3-075-070-013', '', '', 1, 17, '2018-05-08 09:07:30', 359, '', '2018-05-08 09:16:18', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:07:30', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 7, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(17, 136, 'L3 075 070 113', 'l3-075-070-113', '', '', 1, 17, '2018-05-08 09:07:30', 359, '', '2018-05-08 09:17:07', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:07:30', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 6, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(18, 138, 'L2 062 054 013', 'l2-062-054-013', '', '', 1, 17, '2018-05-08 09:07:29', 359, '', '2018-05-08 09:19:06', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:07:29', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 5, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(19, 140, 'LB3 070 070 013', 'lb3-070-070-013', '', '', 1, 17, '2018-05-08 09:21:27', 359, '', '2018-05-08 09:26:49', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:21:27', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 4, '', '', 1, 2, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(20, 142, 'L4 082 080 013', 'l4-082-080-013', '', '', 1, 17, '2018-05-08 09:21:27', 359, '', '2018-05-08 09:26:57', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:21:27', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 3, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(21, 144, 'LB4 082 074 013', 'lb4-082-074-013', '', '', 1, 17, '2018-05-08 09:21:27', 359, '', '2018-05-08 09:24:17', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:21:27', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 2, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(22, 146, 'L5 100 086 013', 'l5-100-086-013', '', '', 1, 17, '2018-05-08 09:21:27', 359, '', '2018-05-08 09:25:07', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:21:27', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 1, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(23, 148, 'L5 100 960 013', 'l5-100-960-013', '', '', 1, 17, '2018-05-08 09:21:27', 359, '', '2018-05-08 09:25:50', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:21:27', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(24, 150, 'NS40 035 030 030', 'ns40-035-030-030', '', '', 1, 18, '2018-05-08 09:31:00', 359, '', '2018-05-08 09:31:00', 0, 0, '0000-00-00 00:00:00', '2018-05-08 09:31:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 14, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(25, 152, 'NS40 035 030 130', 'ns40-035-030-130', '', '', 1, 18, '2018-05-08 09:31:00', 359, '', '2018-05-08 09:31:43', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:31:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 13, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(26, 154, 'NS40 042 036 030', 'ns40-042-036-030', '', '', 1, 18, '2018-05-08 09:31:00', 359, '', '2018-05-08 09:32:52', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:31:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 12, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(27, 156, 'NS40 042 036 130', 'ns40-042-036-130', '', '', 1, 18, '2018-05-08 09:31:00', 359, '', '2018-05-17 11:16:22', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:31:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 11, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(28, 158, 'NS60 045 040 010', 'ns60-045-040-010', '', '', 1, 18, '2018-05-08 09:31:00', 359, '', '2018-05-17 11:16:18', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:31:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 10, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '');
INSERT INTO `mart_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(29, 160, 'NS60 045 040 110', 'ns60-045-040-110', '', '', 1, 18, '2018-05-08 09:31:00', 359, '', '2018-05-17 11:16:13', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:31:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 9, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(30, 162, 'D20 050 042 013', 'd20-050-042-013', '', '', 1, 18, '2018-05-08 09:31:00', 359, '', '2018-05-17 11:16:09', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:31:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 8, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(31, 164, 'D23 060 054 011', 'd23-060-054-011', '', '', 1, 18, '2018-05-08 09:31:00', 359, '', '2018-05-17 11:16:03', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:31:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 7, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(32, 166, 'D23 060 054 110', 'd23-060-054-110', '', '', 1, 18, '2018-05-08 09:31:00', 359, '', '2018-05-17 11:15:58', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:31:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 6, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(33, 168, 'D26 072 060 017', 'd26-072-060-017', '', '', 1, 18, '2018-05-08 09:31:00', 359, '', '2018-05-17 11:15:44', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:31:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 5, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(34, 170, 'D26 072 060 117', 'd26-072-060-117', '', '', 1, 18, '2018-05-08 09:31:00', 359, '', '2018-05-17 11:15:35', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:31:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 4, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(35, 172, 'D31 090 075 011', 'd31-090-075-011', '', '', 1, 18, '2018-05-08 09:31:00', 359, '', '2018-05-17 11:15:29', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:31:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 3, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(36, 174, 'D31 090 075 111', 'd31-090-075-111', '', '', 1, 18, '2018-05-08 09:31:00', 359, '', '2018-05-17 11:16:31', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:31:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 2, '', '', 1, 3, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(37, 176, 'D31 100 076 011', 'd31-100-076-011', '', '', 1, 18, '2018-05-08 09:31:00', 359, '', '2018-05-17 11:15:03', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:31:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 1, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(38, 178, 'D31 100 076 111', 'd31-100-076-111', '', '', 1, 18, '2018-05-08 09:31:00', 359, '', '2018-05-17 11:12:57', 359, 0, '0000-00-00 00:00:00', '2018-05-08 09:31:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(39, 186, 'L1 050 045 013', 'l1-050-045-013', '', '', 1, 19, '2018-05-17 07:41:13', 359, '', '2018-05-17 11:12:18', 359, 0, '0000-00-00 00:00:00', '2018-05-17 07:41:13', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 15, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(40, 188, 'L1 050 045 113', 'l1-050-045-113', '', '', 1, 19, '2018-05-17 07:41:13', 359, '', '2018-05-17 11:18:27', 359, 0, '0000-00-00 00:00:00', '2018-05-17 07:41:13', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 14, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(41, 190, 'LB1 050 042 013', 'lb1-050-042-013', '', '', 1, 19, '2018-05-17 07:41:13', 359, '', '2018-05-17 11:19:23', 359, 0, '0000-00-00 00:00:00', '2018-05-17 07:41:13', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 13, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(42, 192, 'L2 55 490 013', 'l2-55-490-013', '', '', 1, 19, '2018-05-17 07:41:13', 359, '', '2018-05-17 11:20:39', 359, 0, '0000-00-00 00:00:00', '2018-05-17 07:41:13', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 12, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(43, 194, 'L2 55 490 113', 'l2-55-490-113', '', '', 1, 19, '2018-05-17 07:41:13', 359, '', '2018-05-17 11:21:33', 359, 0, '0000-00-00 00:00:00', '2018-05-17 07:41:13', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 11, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(44, 196, 'L2 060 054 013', 'l2-060-054-013', '', '', 1, 19, '2018-05-17 07:41:13', 359, '', '2018-05-17 11:22:42', 359, 0, '0000-00-00 00:00:00', '2018-05-17 07:41:13', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 10, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(45, 198, 'L2 060 054 113', 'l2-060-054-113', '', '', 1, 19, '2018-05-17 07:41:13', 359, '', '2018-05-17 11:23:06', 359, 0, '0000-00-00 00:00:00', '2018-05-17 07:41:13', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 9, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(46, 200, 'LB2 060 054 013', 'lb2-060-054-013', '', '', 1, 19, '2018-05-17 07:41:13', 359, '', '2018-05-17 11:23:57', 359, 0, '0000-00-00 00:00:00', '2018-05-17 07:41:13', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 8, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(47, 202, 'L3 075 070 013', 'l3-075-070-013', '', '', 1, 19, '2018-05-17 07:41:13', 359, '', '2018-05-17 11:24:43', 359, 0, '0000-00-00 00:00:00', '2018-05-17 07:41:13', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 7, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(48, 204, 'L3 075 070 113', 'l3-075-070-113', '', '', 1, 19, '2018-05-17 07:41:13', 359, '', '2018-05-17 11:25:59', 359, 0, '0000-00-00 00:00:00', '2018-05-17 07:41:13', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 6, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(49, 206, 'LB3 075 070 013', 'lb3-075-070-013', '', '', 1, 19, '2018-05-17 07:41:13', 359, '', '2018-05-17 11:26:41', 359, 0, '0000-00-00 00:00:00', '2018-05-17 07:41:13', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 5, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(50, 208, 'L4 082 072 013', 'l4-082-072-013', '', '', 1, 19, '2018-05-17 07:41:13', 359, '', '2018-05-17 11:27:22', 359, 0, '0000-00-00 00:00:00', '2018-05-17 07:41:13', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 4, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(51, 210, 'LB4 080 074 013', 'lb4-080-074-013', '', '', 1, 19, '2018-05-17 07:41:13', 359, '', '2018-05-17 11:28:09', 359, 0, '0000-00-00 00:00:00', '2018-05-17 07:41:13', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 3, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(52, 212, 'L5 092 076 013', 'l5-092-076-013', '', '', 1, 19, '2018-05-17 07:41:13', 359, '', '2018-05-17 11:29:01', 359, 0, '0000-00-00 00:00:00', '2018-05-17 07:41:13', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 2, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(53, 214, 'L5 100 086 013', 'l5-100-086-013', '', '', 1, 19, '2018-05-17 07:41:13', 359, '', '2018-05-17 11:29:36', 359, 0, '0000-00-00 00:00:00', '2018-05-17 07:41:13', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 1, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(54, 216, 'LB5 100 086 013', 'lb5-100-086-013', '', '', 1, 19, '2018-05-17 07:41:13', 359, '', '2018-05-17 11:30:12', 359, 0, '0000-00-00 00:00:00', '2018-05-17 07:41:13', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(55, 218, 'TRCT L 115 076 010', 'trct-l-115-076-010', '', '', 1, 20, '2018-05-17 11:31:34', 359, '', '2018-05-17 11:31:34', 0, 0, '0000-00-00 00:00:00', '2018-05-17 11:31:34', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/HEAVY_DUTY.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 5, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(56, 220, 'TRCT 125 080 010', 'trct-125-080-010', '', '', 1, 20, '2018-05-17 11:31:34', 359, '', '2018-05-17 11:33:13', 359, 0, '0000-00-00 00:00:00', '2018-05-17 11:31:34', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/HEAVY_DUTY.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 4, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(57, 222, 'A 140 088 313', 'a-140-088-313', '', '', 1, 20, '2018-05-17 11:31:34', 359, '', '2018-05-17 11:33:52', 359, 0, '0000-00-00 00:00:00', '2018-05-17 11:31:34', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/HEAVY_DUTY.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 3, '', '', 1, 2, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(58, 224, 'B 150 092 313', 'b-150-092-313', '', '', 1, 20, '2018-05-17 11:31:34', 359, '', '2018-05-17 11:34:37', 359, 0, '0000-00-00 00:00:00', '2018-05-17 11:31:34', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/HEAVY_DUTY.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 2, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(59, 226, 'B 190 110 313', 'b-190-110-313', '', '', 1, 20, '2018-05-17 11:31:34', 359, '', '2018-05-17 11:35:21', 359, 0, '0000-00-00 00:00:00', '2018-05-17 11:31:34', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/HEAVY_DUTY.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 1, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(60, 228, 'C 225 125 310', 'c-225-125-310', '', '', 1, 20, '2018-05-17 11:31:34', 359, '', '2018-05-17 11:36:02', 359, 0, '0000-00-00 00:00:00', '2018-05-17 11:31:34', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/HEAVY_DUTY.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(61, 230, 'L1 050 036 013', '207x175x190', '', '', 1, 21, '2018-05-17 11:37:36', 359, '', '2018-05-17 15:40:34', 359, 0, '0000-00-00 00:00:00', '2018-05-17 11:37:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 9, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '');
INSERT INTO `mart_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(62, 232, 'L2 060 046 013', 'l2-060-046-013', '', '', 1, 21, '2018-05-17 11:37:36', 359, '', '2018-05-17 15:40:24', 359, 0, '0000-00-00 00:00:00', '2018-05-17 11:37:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 8, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(63, 234, 'L3 070 054 013', 'l3-070-054-013', '', '', 1, 21, '2018-05-17 11:37:36', 359, '', '2018-05-17 15:40:20', 359, 0, '0000-00-00 00:00:00', '2018-05-17 11:37:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 7, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(64, 236, 'L5 090 070 013', 'l5-090-070-013', '', '', 1, 21, '2018-05-17 11:37:36', 359, '', '2018-05-17 15:40:17', 359, 0, '0000-00-00 00:00:00', '2018-05-17 11:37:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 6, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(65, 238, 'TRCT L 090 062 010', 'trct-l-090-062-010', '', '', 1, 21, '2018-05-17 11:37:36', 359, '', '2018-05-17 15:40:13', 359, 0, '0000-00-00 00:00:00', '2018-05-17 11:37:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 5, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(66, 240, 'TRCT L 115 076 010', 'trct-l-115-076-010', '', '', 1, 21, '2018-05-17 11:37:36', 359, '', '2018-05-17 15:40:10', 359, 0, '0000-00-00 00:00:00', '2018-05-17 11:37:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 4, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(67, 242, 'TRCT 125 080 010', 'trct-125-080-010', '', '', 1, 21, '2018-05-17 11:37:36', 359, '', '2018-05-17 15:40:06', 359, 0, '0000-00-00 00:00:00', '2018-05-17 11:37:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 3, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(68, 244, 'A 130 088 313', 'a-130-088-313', '', '', 1, 21, '2018-05-17 11:37:36', 359, '', '2018-05-17 15:40:02', 359, 0, '0000-00-00 00:00:00', '2018-05-17 11:37:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 2, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(69, 246, 'B 180 110 310', 'b-180-110-310', '', '', 1, 21, '2018-05-17 11:37:36', 359, '', '2018-05-17 15:39:59', 359, 0, '0000-00-00 00:00:00', '2018-05-17 11:37:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 1, '', '', 1, 1, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(70, 248, 'C 225 115 310', 'c-225-115-310', '', '', 1, 21, '2018-05-17 11:37:36', 359, '', '2018-05-18 07:28:51', 359, 0, '0000-00-00 00:00:00', '2018-05-17 11:37:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(71, 256, 'EBZ7-3-1', 'ebz7-3-1', '', '', 1, 25, '2018-05-18 07:06:18', 359, '', '2018-05-22 11:45:01', 359, 0, '0000-00-00 00:00:00', '2018-05-18 07:06:18', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_EB_PP_Wet_Saries\\/EBZ7-3-1.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 5, 7, '', '', 1, 16, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(72, 258, 'EB9B-4', 'eb9b-4', '', '', 1, 25, '2018-05-18 07:06:18', 359, '', '2018-05-18 07:13:07', 359, 0, '0000-00-00 00:00:00', '2018-05-18 07:06:18', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 6, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(73, 260, 'EBZ10-4', 'ebz10-4', '', '', 1, 25, '2018-05-18 07:06:18', 359, '', '2018-05-18 07:17:52', 359, 0, '0000-00-00 00:00:00', '2018-05-18 07:06:18', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 5, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(74, 262, 'EBZ12-4-1', 'ebz12-4-1', '', '', 1, 25, '2018-05-18 07:06:18', 359, '', '2018-05-22 12:45:14', 359, 0, '0000-00-00 00:00:00', '2018-05-18 07:06:18', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_EB_PP_Wet_Saries\\/EBZ12-4-1(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 5, 4, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(75, 264, 'EBZ14-4', 'ebz14-4', '', '', 1, 25, '2018-05-18 07:06:18', 359, '', '2018-05-18 07:20:19', 359, 0, '0000-00-00 00:00:00', '2018-05-18 07:06:18', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 3, '', '', 1, 1, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(76, 266, 'EB20-4', 'eb20-4', '', '', 1, 25, '2018-05-18 07:06:18', 359, '', '2018-05-22 12:38:08', 359, 0, '0000-00-00 00:00:00', '2018-05-18 07:06:18', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_EB_PP_Wet_Saries\\/EB20-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 2, '', '', 1, 2, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(77, 268, 'EB20CH-4', 'eb20ch-4', '', '', 1, 25, '2018-05-18 07:06:18', 359, '', '2018-05-22 12:36:09', 359, 0, '0000-00-00 00:00:00', '2018-05-18 07:06:18', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_EB_PP_Wet_Saries\\/EB20CH-4.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 1, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(78, 270, 'EB30-3', 'eb30-3', '', '', 1, 25, '2018-05-18 07:06:18', 359, '', '2018-05-22 12:35:03', 359, 0, '0000-00-00 00:00:00', '2018-05-18 07:06:18', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_EB_PP_Wet_Saries\\/EB30-3.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(79, 275, 'LT4-3', 'lt4-3', '', '', 1, 28, '2018-05-18 07:47:47', 359, '', '2018-05-22 13:04:53', 359, 0, '0000-00-00 00:00:00', '2018-05-18 07:47:47', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT4-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 11, '', '', 1, 7, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(80, 277, 'LT5-3', 'lt5-3', '', '', 1, 28, '2018-05-18 07:47:47', 359, '', '2018-05-22 12:50:48', 359, 0, '0000-00-00 00:00:00', '2018-05-18 07:47:47', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT5-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 10, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(81, 279, 'LT7A-4', 'lt7a-4', '', '', 1, 28, '2018-05-18 07:47:47', 359, '', '2018-05-22 12:51:47', 359, 0, '0000-00-00 00:00:00', '2018-05-18 07:47:47', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT7A-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 9, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(82, 281, 'LT7-3', 'lt7-3', '', '', 1, 28, '2018-05-18 07:47:47', 359, '', '2018-05-22 12:52:18', 359, 0, '0000-00-00 00:00:00', '2018-05-18 07:47:47', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT7-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 8, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(83, 283, 'LT9A-4', 'lt9a-4', '', '', 1, 28, '2018-05-18 07:47:47', 359, '', '2018-05-22 12:53:02', 359, 0, '0000-00-00 00:00:00', '2018-05-18 07:47:47', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT9A-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 7, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(84, 285, 'LT9-4', 'lt9-4', '', '', 1, 28, '2018-05-18 07:47:47', 359, '', '2018-05-22 12:54:20', 359, 0, '0000-00-00 00:00:00', '2018-05-18 07:47:47', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT9-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 6, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(85, 287, 'LT12-4', 'lt12-4', '', '', 1, 28, '2018-05-18 07:47:47', 359, '', '2018-05-22 12:55:16', 359, 0, '0000-00-00 00:00:00', '2018-05-18 07:47:47', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT12-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 5, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(86, 289, 'LT14-4', 'lt14-4', '', '', 1, 28, '2018-05-18 07:47:47', 359, '', '2018-05-22 12:55:49', 359, 0, '0000-00-00 00:00:00', '2018-05-18 07:47:47', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT14-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 4, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(87, 291, 'LT18-3', 'lt18-3', '', '', 1, 28, '2018-05-18 07:47:47', 359, '', '2018-05-22 12:56:35', 359, 0, '0000-00-00 00:00:00', '2018-05-18 07:47:47', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT18-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 3, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(88, 293, 'LT20H-3', 'lt20h-3', '', '', 1, 28, '2018-05-18 07:47:47', 359, '', '2018-05-22 12:57:21', 359, 0, '0000-00-00 00:00:00', '2018-05-18 07:47:47', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT20H-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 2, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(89, 295, 'LT24-3', 'lt24-3', '', '', 1, 28, '2018-05-18 07:47:47', 359, '', '2018-05-22 12:58:57', 359, 0, '0000-00-00 00:00:00', '2018-05-18 07:47:47', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT24-3.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 1, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(90, 297, 'LT30-3', 'lt30-3', '', '', 1, 28, '2018-05-18 07:47:47', 359, '', '2018-05-22 12:59:31', 359, 0, '0000-00-00 00:00:00', '2018-05-18 07:47:47', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT30-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(91, 299, 'HPG4-3', 'hpg4-3', '', '', 1, 26, '2018-05-18 08:00:11', 359, '', '2018-05-22 13:23:56', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:00:11', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG4-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 15, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(92, 301, 'HPG5-3', 'hpg5-3', '', '', 1, 26, '2018-05-18 08:00:11', 359, '', '2018-05-22 13:25:01', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:00:11', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG5-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 14, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(93, 303, 'HPG7-3', 'hpg7-3', '', '', 1, 26, '2018-05-18 08:00:11', 359, '', '2018-05-22 13:25:37', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:00:11', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG7-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 13, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(94, 305, 'HPG7A-4', 'hpg7a-4', '', '', 1, 26, '2018-05-18 08:00:11', 359, '', '2018-05-22 13:26:06', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:00:11', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG7A-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 12, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '');
INSERT INTO `mart_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(95, 307, 'HPG7B-4', 'hpg7b-4', '', '', 1, 26, '2018-05-18 08:00:11', 359, '', '2018-05-22 13:26:30', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:00:11', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG7B-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 11, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(96, 309, 'HPG7C-3', 'hpg7c-3', '', '', 1, 26, '2018-05-18 08:00:11', 359, '', '2018-05-22 13:27:00', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:00:11', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG7C-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 10, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(97, 311, 'HPG9-4', 'hpg9-4', '', '', 1, 26, '2018-05-18 08:00:11', 359, '', '2018-05-22 13:27:23', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:00:11', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG9-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 9, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(98, 313, 'HPG9B-4', 'hpg9b-4', '', '', 1, 26, '2018-05-18 08:00:11', 359, '', '2018-05-22 13:47:02', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:00:11', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG9B-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 6, 8, '', '', 1, 3, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(99, 315, 'HPG10A-4', 'hpg10a-4', '', '', 1, 26, '2018-05-18 08:00:11', 359, '', '2018-05-22 13:48:05', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:00:11', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG10A-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 7, '', '', 1, 1, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(100, 317, 'HPG12C-4', 'hpg12c-4', '', '', 1, 26, '2018-05-18 08:00:11', 359, '', '2018-05-22 13:49:32', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:00:11', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG12C-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 6, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(101, 319, 'HPG12B-4', 'hpg12b-4', '', '', 1, 26, '2018-05-18 08:00:11', 359, '', '2018-05-22 13:50:02', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:00:11', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG12B-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 5, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(102, 321, 'HPG14-4', 'hpg14-4', '', '', 1, 26, '2018-05-18 08:00:11', 359, '', '2018-05-22 13:50:55', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:00:11', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG14-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 4, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(103, 323, 'HPG14A-3', 'hpg14a-3', '', '', 1, 26, '2018-05-18 08:00:11', 359, '', '2018-05-22 13:51:19', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:00:11', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG14A-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 3, '', '', 1, 1, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(104, 325, 'HPG14B-4', 'hpg14b-4', '', '', 1, 26, '2018-05-18 08:00:11', 359, '', '2018-05-22 13:52:35', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:00:11', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG14B-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 2, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(105, 327, 'HPG16-4', 'hpg16-4', '', '', 1, 26, '2018-05-18 08:00:11', 359, '', '2018-05-22 13:51:43', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:00:11', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG16-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 1, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(106, 329, 'HPG20-3', 'hpg20-3', '', '', 1, 26, '2018-05-18 08:00:11', 359, '', '2018-05-22 13:52:06', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:00:11', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG20-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(107, 331, 'MX9-4', 'mx9-4', '', '', 1, 27, '2018-05-18 08:10:58', 359, '', '2018-05-22 13:54:38', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:10:58', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_MX_PP_High_Performance\\/MX9-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 5, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(108, 333, 'MX12-4', 'mx12-4', '', '', 1, 27, '2018-05-18 08:10:58', 359, '', '2018-05-22 13:55:16', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:10:58', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_MX_PP_High_Performance\\/MX12-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 4, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(109, 335, 'MX14-4', 'mx14-4', '', '', 1, 27, '2018-05-18 08:10:58', 359, '', '2018-05-22 13:56:18', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:10:58', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_MX_PP_High_Performance\\/MX14-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 3, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(110, 337, 'MX18-3', 'mx18-3', '', '', 1, 27, '2018-05-18 08:10:58', 359, '', '2018-05-22 13:57:20', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:10:58', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_MX_PP_High_Performance\\/MX18-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 2, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(111, 339, 'MX20-3', 'mx20-3', '', '', 1, 27, '2018-05-18 08:10:58', 359, '', '2018-05-22 13:56:42', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:10:58', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_MX_PP_High_Performance\\/MX20-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 1, '', '', 1, 1, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(112, 341, 'MX30-3', 'mx30-3', '', '', 1, 27, '2018-05-18 08:10:58', 359, '', '2018-05-22 13:57:46', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:10:58', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_MX_PP_High_Performance\\/MX30-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(113, 349, '540', '540', '', '', 1, 29, '2018-05-18 08:40:36', 359, '', '2018-05-22 14:36:09', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:40:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/540\\/F_Car_540.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 14, 7, '', '', 1, 134, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(114, 351, '600', '600', '', '', 1, 29, '2018-05-18 08:40:36', 359, '', '2018-05-22 14:36:39', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:40:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/600\\/F_Car_600.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 6, '', '', 1, 1, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(115, 353, '645', '645', '', '', 1, 29, '2018-05-18 08:40:36', 359, '', '2018-05-22 14:39:33', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:40:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/645\\/F_Car_645.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 5, '', '', 1, 1, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(116, 355, '685', '685', '', '', 1, 29, '2018-05-18 08:40:36', 359, '', '2018-05-22 14:40:00', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:40:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/685\\/F_Car_685.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 4, '', '', 1, 2, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(117, 357, '695', '695', '', '', 1, 29, '2018-05-18 08:40:36', 359, '', '2018-05-22 14:37:16', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:40:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/695\\/F_Car_695.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 3, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(118, 359, '697', '697', '', '', 1, 29, '2018-05-18 08:40:36', 359, '', '2018-05-22 14:37:45', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:40:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/697\\/F_Car_697.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 2, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(119, 361, '698', '698', '', '', 1, 29, '2018-05-18 08:40:36', 359, '', '2018-05-22 14:38:09', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:40:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/698\\/F_Car_698.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 1, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(120, 363, '699', '699', '', '', 1, 29, '2018-05-18 08:40:36', 359, '', '2018-05-22 14:38:42', 359, 0, '0000-00-00 00:00:00', '2018-05-18 08:40:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/699\\/F_Car_699.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(121, 365, 'AL59', 'al59', '', '', 1, 30, '2018-05-18 13:05:45', 359, '', '2018-05-18 13:05:45', 0, 0, '0000-00-00 00:00:00', '2018-05-18 13:05:45', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/HighPerformance.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 8, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(122, 367, 'AL64', 'al64', '', '', 1, 30, '2018-05-18 13:05:45', 359, '', '2018-05-18 13:06:07', 359, 0, '0000-00-00 00:00:00', '2018-05-18 13:05:45', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/HighPerformance.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 7, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(123, 369, 'AL69', 'al69', '', '', 1, 30, '2018-05-18 13:05:45', 359, '', '2018-05-18 13:06:39', 359, 0, '0000-00-00 00:00:00', '2018-05-18 13:05:45', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/HighPerformance.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 6, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(124, 371, 'AL71', 'al71', '', '', 1, 30, '2018-05-18 13:05:45', 359, '', '2018-05-18 13:07:03', 359, 0, '0000-00-00 00:00:00', '2018-05-18 13:05:45', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/HighPerformance.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 5, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(125, 373, 'AL74', 'al74', '', '', 1, 30, '2018-05-18 13:05:45', 359, '', '2018-05-18 13:07:19', 0, 0, '0000-00-00 00:00:00', '2018-05-18 13:05:45', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/HighPerformance.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 4, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(126, 375, 'AL79', 'al79', '', '', 1, 30, '2018-05-18 13:05:45', 359, '', '2018-05-18 13:07:34', 0, 0, '0000-00-00 00:00:00', '2018-05-18 13:05:45', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/HighPerformance.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 3, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(127, 377, 'AL84', 'al84', '', '', 1, 30, '2018-05-18 13:05:45', 359, '', '2018-05-18 13:07:49', 0, 0, '0000-00-00 00:00:00', '2018-05-18 13:05:45', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/HighPerformance.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 2, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '');
INSERT INTO `mart_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(128, 379, 'AL89', 'al89', '', '', 1, 30, '2018-05-18 13:05:45', 359, '', '2018-05-18 13:09:51', 359, 0, '0000-00-00 00:00:00', '2018-05-18 13:05:45', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/HighPerformance.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 1, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(129, 381, 'AL111', 'al111', '', '', 1, 30, '2018-05-18 13:05:45', 359, '', '2018-05-18 13:10:13', 359, 0, '0000-00-00 00:00:00', '2018-05-18 13:05:45', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/HighPerformance.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(130, 383, 'AF12', 'af12', '', '', 1, 31, '2018-05-18 13:11:00', 359, '', '2018-05-18 13:11:00', 0, 0, '0000-00-00 00:00:00', '2018-05-18 13:11:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 5, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(131, 385, 'AF16', 'af16', '', '', 1, 31, '2018-05-18 13:11:00', 359, '', '2018-05-18 13:11:31', 359, 0, '0000-00-00 00:00:00', '2018-05-18 13:11:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 4, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(132, 387, 'AF20', 'af20', '', '', 1, 31, '2018-05-18 13:11:00', 359, '', '2018-05-18 13:11:53', 0, 0, '0000-00-00 00:00:00', '2018-05-18 13:11:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 3, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(133, 389, 'AF24', 'af24', '', '', 1, 31, '2018-05-18 13:11:00', 359, '', '2018-05-18 13:12:10', 0, 0, '0000-00-00 00:00:00', '2018-05-18 13:11:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 2, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(134, 391, 'AF28', 'af28', '', '', 1, 31, '2018-05-18 13:11:00', 359, '', '2018-05-18 13:12:24', 0, 0, '0000-00-00 00:00:00', '2018-05-18 13:11:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 1, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(135, 393, 'AF32', 'af32', '', '', 1, 31, '2018-05-18 13:11:00', 359, '', '2018-05-18 13:12:47', 359, 0, '0000-00-00 00:00:00', '2018-05-18 13:11:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(136, 396, 'AutoSock', 'autosock', '', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem eaque, necessitatibus, nesciunt sit optio officiis debitis officia vitae ullam, delectus iste aut culpa odit molestias neque nam quos expedita dolorem?</p>\r\n<p>Beatae illum quaerat eligendi id eveniet quibusdam perferendis saepe, autem laudantium minima optio explicabo praesentium vero laboriosam tempore error. Quo eaque eius harum magnam quaerat facilis, itaque molestias, dignissimos neque!</p>\r\n<p>Dignissimos facere, quidem. Earum dolore nulla eius itaque molestiae rerum rem voluptatum, vero perspiciatis, voluptates quaerat enim. Sapiente asperiores minima repudiandae accusantium ea et praesentium optio deleniti, vero nesciunt ipsa?</p>\r\n<p>Consequatur necessitatibus eveniet quisquam, maxime quo sunt sed a quae corrupti neque cumque veritatis unde deleniti asperiores aliquid libero voluptatibus consequuntur, in explicabo. Minus vitae at vel fugiat. Et, facere.</p>\r\n<p>Laborum esse hic nostrum animi cumque numquam qui maiores consequatur doloremque voluptas doloribus dicta voluptatibus sit totam, laboriosam quidem non! Voluptas libero velit quibusdam sed itaque culpa eius similique eaque.</p>', 1, 32, '2018-05-21 11:13:28', 359, '', '2018-05-22 09:08:32', 359, 0, '0000-00-00 00:00:00', '2018-05-21 11:13:28', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/logo\\/autosock.svg\",\"float_intro\":\"\",\"image_intro_alt\":\"AutoSock\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/logo\\/autosock.svg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"g5_hydrogen:article\",\"show_title\":\"1\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 19, 4, '', '', 1, 57, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 1, '*', ''),
(137, 397, 'Hugel', 'hugel', '', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem eaque, necessitatibus, nesciunt sit optio officiis debitis officia vitae ullam, delectus iste aut culpa odit molestias neque nam quos expedita dolorem?</p>\r\n<p>Beatae illum quaerat eligendi id eveniet quibusdam perferendis saepe, autem laudantium minima optio explicabo praesentium vero laboriosam tempore error. Quo eaque eius harum magnam quaerat facilis, itaque molestias, dignissimos neque!</p>\r\n<p>Dignissimos facere, quidem. Earum dolore nulla eius itaque molestiae rerum rem voluptatum, vero perspiciatis, voluptates quaerat enim. Sapiente asperiores minima repudiandae accusantium ea et praesentium optio deleniti, vero nesciunt ipsa?</p>\r\n<p>Consequatur necessitatibus eveniet quisquam, maxime quo sunt sed a quae corrupti neque cumque veritatis unde deleniti asperiores aliquid libero voluptatibus consequuntur, in explicabo. Minus vitae at vel fugiat. Et, facere.</p>\r\n<p>Laborum esse hic nostrum animi cumque numquam qui maiores consequatur doloremque voluptas doloribus dicta voluptatibus sit totam, laboriosam quidem non! Voluptas libero velit quibusdam sed itaque culpa eius similique eaque.</p>', 1, 32, '2018-05-21 11:13:28', 359, '', '2018-05-22 09:08:54', 359, 0, '0000-00-00 00:00:00', '2018-05-21 11:13:28', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/logo\\/hugel.svg\",\"float_intro\":\"\",\"image_intro_alt\":\"hugel\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/logo\\/hugel.svg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"g5_hydrogen:article\",\"show_title\":\"1\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 10, 3, '', '', 1, 22, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 1, '*', ''),
(138, 398, 'OleoBlitz', 'oleoblitz', '', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem eaque, necessitatibus, nesciunt sit optio officiis debitis officia vitae ullam, delectus iste aut culpa odit molestias neque nam quos expedita dolorem?</p>\r\n<p>Beatae illum quaerat eligendi id eveniet quibusdam perferendis saepe, autem laudantium minima optio explicabo praesentium vero laboriosam tempore error. Quo eaque eius harum magnam quaerat facilis, itaque molestias, dignissimos neque!</p>\r\n<p>Dignissimos facere, quidem. Earum dolore nulla eius itaque molestiae rerum rem voluptatum, vero perspiciatis, voluptates quaerat enim. Sapiente asperiores minima repudiandae accusantium ea et praesentium optio deleniti, vero nesciunt ipsa?</p>\r\n<p>Consequatur necessitatibus eveniet quisquam, maxime quo sunt sed a quae corrupti neque cumque veritatis unde deleniti asperiores aliquid libero voluptatibus consequuntur, in explicabo. Minus vitae at vel fugiat. Et, facere.</p>\r\n<p>Laborum esse hic nostrum animi cumque numquam qui maiores consequatur doloremque voluptas doloribus dicta voluptatibus sit totam, laboriosam quidem non! Voluptas libero velit quibusdam sed itaque culpa eius similique eaque.</p>', 1, 32, '2018-05-21 11:13:28', 359, '', '2018-05-22 09:09:14', 359, 0, '0000-00-00 00:00:00', '2018-05-21 11:13:28', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/logo\\/oleoblitz.svg\",\"float_intro\":\"\",\"image_intro_alt\":\"oleoblitz\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/logo\\/oleoblitz.svg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"g5_hydrogen:article\",\"show_title\":\"1\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 9, 2, '', '', 1, 2, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 1, '*', ''),
(139, 399, 'Uplus', 'uplus', '', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem eaque, necessitatibus, nesciunt sit optio officiis debitis officia vitae ullam, delectus iste aut culpa odit molestias neque nam quos expedita dolorem?</p>\r\n<p>Beatae illum quaerat eligendi id eveniet quibusdam perferendis saepe, autem laudantium minima optio explicabo praesentium vero laboriosam tempore error. Quo eaque eius harum magnam quaerat facilis, itaque molestias, dignissimos neque!</p>\r\n<p>Dignissimos facere, quidem. Earum dolore nulla eius itaque molestiae rerum rem voluptatum, vero perspiciatis, voluptates quaerat enim. Sapiente asperiores minima repudiandae accusantium ea et praesentium optio deleniti, vero nesciunt ipsa?</p>\r\n<p>Consequatur necessitatibus eveniet quisquam, maxime quo sunt sed a quae corrupti neque cumque veritatis unde deleniti asperiores aliquid libero voluptatibus consequuntur, in explicabo. Minus vitae at vel fugiat. Et, facere.</p>\r\n<p>Laborum esse hic nostrum animi cumque numquam qui maiores consequatur doloremque voluptas doloribus dicta voluptatibus sit totam, laboriosam quidem non! Voluptas libero velit quibusdam sed itaque culpa eius similique eaque.</p>', 1, 32, '2018-05-21 11:13:28', 359, '', '2018-05-22 09:09:26', 359, 0, '0000-00-00 00:00:00', '2018-05-21 11:13:28', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/logo\\/uplus.svg\",\"float_intro\":\"\",\"image_intro_alt\":\"leoch\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/logo\\/uplus.svg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"g5_hydrogen:article\",\"show_title\":\"1\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 10, 1, '', '', 1, 2, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 1, '*', ''),
(140, 400, 'Где купить', 'where-buy', '', '', 1, 2, '2018-05-21 11:13:28', 359, '', '2018-05-23 08:30:47', 359, 0, '0000-00-00 00:00:00', '2018-05-21 11:13:28', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"g5_hydrogen:article\",\"show_title\":\"0\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 12, 1, '', '', 1, 14, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 1, '*', ''),
(141, 410, 'Политика безопасности', 'security-policy', '<p><strong>1. ВВЕДЕНИЕ</strong></p>\r\n<p>Защита и целостность Ваших персональных данных очень важны для нас. По этой причине мы будем использовать Вашу информацию исключительно в соответствии с применимым законодательством.<br />Мы собираем, обрабатываем и используем персональные данные, которые Вы предоставляете нам, исключительно с целью возможности оказания информационной поддержки.</p>\r\n<p>Предоставляя Ваши персональные данные СП ООО «ЕТС» (далее - Компания) для обработки (включая систематизацию; накопление, хранение, уточнение (обновление, изменение), извлечение, использование, передачу (предоставление, доступ), обезличивание, блокирование, удаление, уничтожение персональных данных; сбор; запись; накопление; извлечение; использование, а также автоматизированные и иные способы обработки), Вы выражаете согласие с тем, что указанная информация будет использоваться Компанией исключительно с целью оказания Вам информационной поддержки (в том числе, но не ограничиваясь: предоставление информации о новых продуктах и услугах, и прочей информации, имеющей отношение к Компании). Предоставляя Ваши персональные данные, Вы подтверждаете свое согласие на обработку персональных данных в целях, изложеных в главе №3, в том числе для продвижения и совершенствования товаров и услуг, путем прямых контактов с помощью средств связи.</p>\r\n<p>Настоящий документ определяет политику Компании в отношении обработки персональных данных.</p>\r\n<p>Настоящая Политика разработана в соответствии с действующим законодательством Российской Федерации о персональных данных.</p>\r\n<p>Отмечая флажок «Я даю согласие на обработку персональных данных», Вы даете согласие на обработку своих персональных данных на неопределенный срок.</p>\r\n<p><strong>2. ПРИНЦИПЫ ОБРАБОТКИ ПЕРСОНАЛЬНЫХ ДАННЫХ</strong></p>\r\n<p><span style=\"text-decoration: underline;\">Обработка персональных данных осуществляется на основе следующих принципов:&nbsp;</span></p>\r\n<ol>\r\n<li>Обработка персональных данных осуществляется на законной и справедливой основе;</li>\r\n<li>Обработка персональных данных ограничивается достижением целей, изложенными в главе №3. Не допускается обработка персональных данных, несовместимая с целями сбора персональных данных;</li>\r\n<li>Не допускается объединение баз данных, содержащих персональные данные, обработка которых осуществляется в целях, несовместных между собой;</li>\r\n<li>Обработке подлежат только те персональные данные, которые отвечают целям их обработки;</li>\r\n<li>Содержание и объем обрабатываемых персональных данных соответствуют заявленным целям обработки. Обрабатываемые персональные данные не являются избыточными по отношению к заявленным целям обработки;</li>\r\n<li>При обработке персональных данных обеспечивается точность персональных данных, их достаточность, а в необходимых случаях и актуальность по отношению к заявленным целям их обработки.</li>\r\n<li>Хранение персональных данных осуществляется в форме, позволяющей определить субъекта персональных данных не дольше, чем этого требуют цели обработки персональных данных, если срок хранения персональных данных не установлен федеральным законом, договором, стороной которого, выгодоприобретателем или поручителем по которому является субъект персональных данных. Обрабатываемые персональные данные подлежат уничтожению, либо обезличиванию по достижении целей обработки или в случае утраты необходимости в достижении этих целей, если иное не предусмотрено федеральным законом.</li>\r\n</ol>\r\n<p><strong>3. ЦЕЛИ ОБРАБОТКИ ПЕРСОНАЛЬНЫХ ДАННЫХ</strong></p>\r\n<p>Компания осуществляет обработку персональных данных в следующих целях:</p>\r\n<ul>\r\n<li>проведения маркетинговых акций,</li>\r\n<li>продвижение продуктов и услуг клиентам,</li>\r\n<li>оценка качества обслуживания клиентов.</li>\r\n</ul>\r\n<p>Для целей оптимизации Компании своих веб-ресурсов, с учетом индивидуальных особенностей и предпочтения посетителей веб-сайта:</p>\r\n<ul>\r\n<li>Количество посетителей (новых посетителей) веб-сайта</li>\r\n<li>Адрес страницы и количество посещений страниц веб-сайта</li>\r\n<li>Количество визитов на веб-сайта</li>\r\n<li>Среднее время, проведенное на веб-сайта за визит</li>\r\n<li>Количество вернувшихся пользователей на веб-сайта</li>\r\n<li>Пол и возраст посетителей веб-сайта</li>\r\n<li>Интересы посетителей веб-сайта</li>\r\n<li>География: язык и местоположение посетителей веб-сайта</li>\r\n<li>Тип устройства посетителя: браузер и ОС, мобильные устройства</li>\r\n<li>Источники трафика, последний источник трафика</li>\r\n<li>Сравнение работы источников трафика</li>\r\n<li>Пути посетителей по веб-сайту</li>\r\n<li>Контент веб-сайта</li>\r\n<li>Поведение на веб-сайте</li>\r\n<li>Скорость загрузки веб-сайта</li>\r\n<li>Поиск по веб-сайта, поисковая фраза</li>\r\n<li>Статистика страницы.</li>\r\n<li>Страницы входа и выхода.</li>\r\n<li>Цели</li>\r\n<li>Многоканальные последовательности</li>\r\n<li>Атрибуция</li>\r\n<li>Отказы</li>\r\n<li>Глубина просмотра</li>\r\n</ul>\r\n<p>Компания осуществляет обработку указанных данных следующими способами: сбор, систематизация, накопление, хранение, обновление, изменение, использование.</p>\r\n<p>Согласие на обработку указанных данных может быть отозвано Вами путем направления в Компанию письменного уведомления об этом не менее, чем за один месяц до даты фактического прекращения обработки Ваших персональных данных Компанией.</p>\r\n<p><strong><span style=\"font-size: 1em;\">Cookies.</span></strong></p>\r\n<p>Компания использует cookies для отслеживания предпочтений посетителей сайта и соответствующей оптимизации его дизайна. Cookies – это файлы, сохраняющиеся на жестком диске Вашего компьютера. Они облегчают навигацию, делают посещение сайта более удобным. Cookies могут использоваться для того, чтобы установить наличие прежних выходов с Вашего компьютера на наш сайт. На вашем компьютере происходит лишь идентификация cookies. Персональные данные сохраняются в cookies только в том случае, если Вы даете на это разрешение, например, чтобы облегчить защищенный доступ в Интернет и не вводить повторно ID пользователя и пароль. Просмотры нашего сайта возможны и без cookies. В большинстве браузеров прием cookies осуществляется автоматически. Сохранению cookies на Вашем жестком диске Вы можете воспрепятствовать, заблокировав в настройках браузера опцию «прием cookies». Вы можете также в любое время удалить cookies, находящиеся на жестком диске Вашего компьютера. Блокировка приема cookies, однако, может привести к ограничению доступа к сервисам, которые предоставляются на нашем сайте.</p>\r\n<p><strong>4. УСЛОВИЯ ОБРАБОТКИ ПЕРСОНАЛЬНЫХ ДАННЫХ</strong></p>\r\n<ol>\r\n<li>Обработка персональных данных осуществляется с соблюдением принципов и правил, установленных Федеральным законом № 152-ФЗ от 27.07.2006г. «О персональных данных». Обработка персональных данных допускается в следующих случаях:<ol>\r\n<li>Обработка персональных данных осуществляется с согласия субъекта персональных данных на обработку его персональных данных;</li>\r\n<li>Обработка персональных данных необходима для осуществления правосудия, исполнения судебного акта, акта другого органа или должностного лица, подлежащих исполнению в соответствии с законодательством Российской Федерации об исполнительном производстве;</li>\r\n<li>обработка персональных данных необходима для исполнения договора, стороной которого либо выгодоприобретателем или поручителем по которому является субъект персональных данных, а также для заключения договора по инициативе субъекта персональных данных или договора, по которому субъект персональных данных будет являться выгодоприобретателем или поручителем;</li>\r\n<li>обработка персональных данных необходима для осуществления прав и законных интересов оператора или третьих лиц, либо для достижения общественно значимых целей при условии, что при этом не нарушаются права и свободы субъекта персональных данных;</li>\r\n<li>обработка персональных данных осуществляется в статистических или иных исследовательских целях, при условии обязательного обезличивания персональных данных. Исключение составляет обработка персональных данных в целях продвижения товаров, работ, услуг на рынке путем осуществления прямых контактов с потенциальным потребителем с помощью средств связи, а также в целях политической агитации;</li>\r\n<li>осуществляется обработка персональных данных, доступ неограниченного круга лиц к которым предоставлен субъектом персональных данных, либо по его просьбе (далее – персональные данные, сделанные общедоступными субъектом персональных данных);</li>\r\n<li>осуществляется обработка персональных данных, подлежащих опубликованию или обязательному раскрытию в соответствии с федеральным законом.</li>\r\n</ol></li>\r\n<li>Биометрические персональные данные (сведения, которые характеризуют физиологические и биологические особенности человека, на основании которых можно установить его личность и которые используются оператором для установления личности субъекта персональных данных) в Компании не обрабатываются.</li>\r\n<li>Принятие на основании исключительно автоматизированной обработки персональных данных решений, порождающих юридические последствия в отношении субъекта персональных данных или иным образом затрагивающих его права и законные интересы, не осуществляется.</li>\r\n<li>Компания обязуется и обязует иные лица, получившие доступ к персональным данным, не раскрывать третьим лицам и не распространять персональные данные без согласия субъекта персональных данных, если иное не предусмотрено федеральным законом.</li>\r\n</ol>\r\n<p><strong>5. ОБЯЗАННОСТИ КОМПАНИИ</strong></p>\r\n<p>В соответствии с требованиями Федерального закона № 152-ФЗ от 27.07.2006г. «О персональных данных» Компания обязана:</p>\r\n<ul>\r\n<li>Предоставлять субъекту персональных данных по его запросу информацию, касающуюся обработки его персональных данных.</li>\r\n<li>По требованию субъекта персональных данных уточнять обрабатываемые персональные данные, блокировать или удалять, если персональных данных являются неполными, устаревшими, неточными, незаконно полученными или не являются необходимыми для заявленной цели обработки.</li>\r\n<li>Вести Журнал учета обращений субъектов персональных данных, в котором должны фиксироваться запросы субъектов персональных данных на получение персональных данных, а также факты предоставления персональных данных по этим запросам.</li>\r\n<li>В случае достижения цели обработки персональных данных незамедлительно прекратить обработку персональных данных и уничтожить соответствующие персональные данные в срок, не превышающий тридцати дней с даты достижения цели обработки персональных данных, если иное не предусмотрено договором, стороной которого, выгодоприобретателем или поручителем по которому является субъект персональных данных, иным соглашением между Компанией и субъектом персональных данных либо если Компания не вправе осуществлять обработку персональных данных без согласия субъекта персональных данных на основаниях, предусмотренных №152-ФЗ от 27.07.2006г. «О персональных данных» или другими федеральными законами.</li>\r\n<li>В случае отзыва субъектом персональных данных согласия на обработку своих персональных данных прекратить обработку персональных данных и уничтожить персональные данные в срок, не превышающий тридцати дней с даты поступления указанного отзыва, если иное не предусмотрено соглашением между Компанией и субъектом персональных данных. Об уничтожении персональных данных Компания обязана уведомить субъекта персональных данных.</li>\r\n<li>В случае поступления требования субъекта о прекращении обработки персональных данных в целях продвижения товаров, работ, услуг на рынке немедленно прекратить обработку персональных данных.</li>\r\n</ul>\r\n<p><br /><strong>6. МЕРЫ ПО ОБЕСПЕЧЕНИЮ БЕЗОПАСНОСТИ ПЕРСОНАЛЬНЫХ ДАННЫХ ПРИ ИХ ОБРАБОТКЕ</strong></p>\r\n<ol>\r\n<li>При обработке персональных данных Компания принимает необходимые правовые, организационные и технические меры для защиты персональных данных от неправомерного или случайного доступа к ним, уничтожения, изменения, блокирования, копирования, предоставления, распространения персональных данных, а также от иных неправомерных действий в отношении персональных данных.</li>\r\n<li>Обеспечение безопасности персональных данных достигается, в частности:\r\n<ul>\r\n<li>определением угроз безопасности персональных данных при их обработке в информационных системах персональных данных;</li>\r\n<li>применением организационных и технических мер по обеспечению безопасности персональных данных при их обработке в информационных системах персональных данных, необходимых для выполнения требований к защите персональных данных, исполнение которых обеспечивает установленные Правительством Российской Федерации уровни защищенности персональных данных;</li>\r\n<li>применением прошедших в установленном порядке процедуру оценки соответствия средств защиты информации;</li>\r\n<li>оценкой эффективности принимаемых мер по обеспечению безопасности персональных данных до ввода в эксплуатацию информационной системы персональных данных;</li>\r\n<li>учетом машинных носителей персональных данных;</li>\r\n<li>обнаружением фактов несанкционированного доступа к персональным данным и принятием мер;</li>\r\n<li>восстановлением персональных данных, модифицированных или уничтоженных вследствие несанкционированного доступа к ним;</li>\r\n<li>установлением правил доступа к персональным данным, обрабатываемым в информационной системе персональных данных, а также обеспечением регистрации и учета всех действий, совершаемых с персональными данными в информационной системе персональных данных;</li>\r\n<li>контролем за принимаемыми мерами по обеспечению безопасности персональных данных и уровня защищенности информационных систем персональных данных.</li>\r\n</ul>\r\n</li>\r\n</ol>\r\n<p><strong>7. СОГЛАСИЕ НА ОБРАБОТКУ ПЕРСОНАЛЬНЫХ ДАННЫХ ДЛЯ ПОСЕТИТЕЛЕЙ САЙТА</strong></p>\r\n<p>Настоящим, выражаю свое согласие СП ООО «ЕТС» (почтовый адрес: 198216, Санкт-Петербург, Ленинский пр-кт, дом 140, лит. Л) на автоматизированную и не автоматизированную обработку моих персональных данных в соответствии со следующим перечнем:</p>\r\n<ul>\r\n<li>Мои запросы, как посетителя сайта;</li>\r\n<li>Системная информация, данные из моего браузера;</li>\r\n<li>Файлы cookie;</li>\r\n<li>Мой IP-адрес;</li>\r\n<li>Установленные на моем устройстве операционные системы;</li>\r\n<li>Установленные на моем устройстве типы браузеров;</li>\r\n<li>Установленные на моем устройстве расширения и настройки цвета экрана;</li>\r\n<li>Установленные и используемые на моем устройстве языки;</li>\r\n<li>Версии Flash и поддержка JavaScript;</li>\r\n<li>Типы мобильных устройств, используемых мной, если применимо;</li>\r\n<li>Географическое положение;</li>\r\n<li>Количество посещений сайта и просмотров страниц;</li>\r\n<li>Длительность пребывания на сайте;</li>\r\n<li>Запросы, использованные мной при переходе на сайт;</li>\r\n<li>Страницы, с которых были совершены переходы.</li>\r\n</ul>\r\n<p>Для целей оптимизации оператором своих web-ресурсов, с учетом моих индивидуальных особенностей и предпочтений. Оператор вправе осуществлять обработку моих персональных данных следующими способами: сбор, систематизация, накопление, хранение, обновление, изменение, использование.</p>\r\n<p>Настоящее согласие вступает в силу с момента моей отметки флажка «Я даю согласие на обработку персональных данных» на сайте оператора и действует до момента его отзыва. Согласие на обработку персональных данных может быть отозвано мною путем направления в Компанию письменного уведомления об этом не менее чем за один месяц до даты фактического прекращения обработки моих персональных данных Компанией.</p>\r\n<p><strong>8. ОБРАТНАЯ СВЯЗЬ</strong></p>\r\n<p>Компания предпринимает разумные меры для поддержания точности и актуальности имеющихся персональных данных, а также удаления персональных данных в случаях, если они являются устаревшими, недостоверными или излишними, либо если достигнуты цели их обработки.</p>\r\n<p>Субъекты персональных данных несут ответственность за предоставление Компании достоверных сведений, а также за своевременное обновление предоставленных данных в случае каких-либо изменений.</p>\r\n<p>При этом в некоторых случаях (например, если вы хотите удалить Ваши персональные данные или прекратить их обработку) такое обращение также может означать, что Компания больше не сможет предоставлять Вам услуги.</p>\r\n<p>Ваше согласие может быть в любое время отозвано путем уведомления Компании по адресу: 198216, Санкт-Петербург, Ленинский пр-кт, дом 140, лит. Л, либо по телефону +7 812 703-103-5.</p>\r\n<p><strong>С политикой СП ООО «ЕТС» в отношении обработки персональных данных ознакомлен.</strong></p>', '', 1, 2, '2018-05-23 06:28:49', 359, '', '2018-05-23 09:43:53', 359, 0, '0000-00-00 00:00:00', '2018-05-23 06:28:49', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"g5_hydrogen:article\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 6, 0, '', '', 1, 9, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 1, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `mart_contentitem_tag_map`
--

CREATE TABLE `mart_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

--
-- Дамп данных таблицы `mart_contentitem_tag_map`
--

INSERT INTO `mart_contentitem_tag_map` (`type_alias`, `core_content_id`, `content_item_id`, `tag_id`, `tag_date`, `type_id`) VALUES
('com_content.article', 1, 4, 2, '2018-05-16 13:30:02', 1),
('com_content.article', 8, 5, 2, '2018-05-17 09:10:23', 1),
('com_content.article', 9, 6, 2, '2018-05-08 08:37:33', 1),
('com_content.article', 10, 7, 2, '2018-05-08 08:39:00', 1),
('com_content.article', 11, 8, 2, '2018-05-08 08:53:41', 1),
('com_content.article', 12, 9, 2, '2018-05-08 08:54:34', 1),
('com_content.article', 13, 10, 2, '2018-05-08 08:55:44', 1),
('com_content.article', 14, 11, 2, '2018-05-08 08:56:30', 1),
('com_content.article', 15, 12, 2, '2018-05-08 09:07:32', 1),
('com_content.article', 16, 13, 2, '2018-05-08 09:08:15', 1),
('com_content.article', 17, 14, 2, '2018-05-08 09:10:52', 1),
('com_content.article', 18, 15, 2, '2018-05-10 09:00:20', 1),
('com_content.article', 19, 16, 2, '2018-05-08 09:16:19', 1),
('com_content.article', 20, 17, 2, '2018-05-08 09:17:08', 1),
('com_content.article', 21, 18, 2, '2018-05-08 09:19:07', 1),
('com_content.article', 22, 19, 2, '2018-05-08 09:26:51', 1),
('com_content.article', 23, 20, 2, '2018-05-08 09:26:57', 1),
('com_content.article', 24, 21, 2, '2018-05-08 09:24:18', 1),
('com_content.article', 25, 22, 2, '2018-05-08 09:25:08', 1),
('com_content.article', 26, 23, 2, '2018-05-08 09:25:51', 1),
('com_content.article', 27, 24, 2, '2018-05-08 09:31:03', 1),
('com_content.article', 28, 25, 2, '2018-05-08 09:31:45', 1),
('com_content.article', 29, 26, 2, '2018-05-08 09:32:53', 1),
('com_content.article', 30, 27, 2, '2018-05-17 11:16:23', 1),
('com_content.article', 31, 28, 2, '2018-05-17 11:16:19', 1),
('com_content.article', 32, 29, 2, '2018-05-17 11:16:14', 1),
('com_content.article', 33, 30, 2, '2018-05-17 11:16:10', 1),
('com_content.article', 34, 31, 2, '2018-05-17 11:16:04', 1),
('com_content.article', 35, 32, 2, '2018-05-17 11:16:00', 1),
('com_content.article', 36, 33, 2, '2018-05-17 11:15:45', 1),
('com_content.article', 37, 34, 2, '2018-05-17 11:15:35', 1),
('com_content.article', 38, 35, 2, '2018-05-17 11:15:31', 1),
('com_content.article', 39, 36, 2, '2018-05-17 11:16:32', 1),
('com_content.article', 40, 37, 2, '2018-05-17 11:15:05', 1),
('com_content.article', 41, 38, 2, '2018-05-17 11:12:59', 1),
('com_content.article', 45, 39, 2, '2018-05-17 11:12:19', 1),
('com_content.article', 46, 40, 2, '2018-05-17 11:18:28', 1),
('com_content.article', 47, 41, 2, '2018-05-17 11:19:24', 1),
('com_content.article', 48, 42, 2, '2018-05-17 11:20:40', 1),
('com_content.article', 49, 43, 2, '2018-05-17 11:21:34', 1),
('com_content.article', 50, 44, 2, '2018-05-17 11:22:44', 1),
('com_content.article', 51, 45, 2, '2018-05-17 11:23:07', 1),
('com_content.article', 52, 46, 2, '2018-05-17 11:23:59', 1),
('com_content.article', 53, 47, 2, '2018-05-17 11:24:44', 1),
('com_content.article', 54, 48, 2, '2018-05-17 11:26:00', 1),
('com_content.article', 55, 49, 2, '2018-05-17 11:26:42', 1),
('com_content.article', 56, 50, 2, '2018-05-17 11:27:23', 1),
('com_content.article', 57, 51, 2, '2018-05-17 11:28:10', 1),
('com_content.article', 58, 52, 2, '2018-05-17 11:29:02', 1),
('com_content.article', 59, 53, 2, '2018-05-17 11:29:37', 1),
('com_content.article', 60, 54, 2, '2018-05-17 11:30:13', 1),
('com_content.article', 61, 55, 2, '2018-05-17 11:31:35', 1),
('com_content.article', 62, 56, 2, '2018-05-17 11:33:15', 1),
('com_content.article', 63, 57, 2, '2018-05-17 11:33:53', 1),
('com_content.article', 64, 58, 2, '2018-05-17 11:34:38', 1),
('com_content.article', 65, 59, 2, '2018-05-17 11:35:22', 1),
('com_content.article', 66, 60, 2, '2018-05-17 11:36:03', 1),
('com_content.article', 67, 61, 2, '2018-05-17 15:40:35', 1),
('com_content.article', 68, 62, 2, '2018-05-17 15:40:26', 1),
('com_content.article', 69, 63, 2, '2018-05-17 15:40:21', 1),
('com_content.article', 70, 64, 2, '2018-05-17 15:40:18', 1),
('com_content.article', 71, 65, 2, '2018-05-17 15:40:14', 1),
('com_content.article', 72, 66, 2, '2018-05-17 15:40:11', 1),
('com_content.article', 73, 67, 2, '2018-05-17 15:40:07', 1),
('com_content.article', 74, 68, 2, '2018-05-17 15:40:03', 1),
('com_content.article', 75, 69, 2, '2018-05-17 15:40:00', 1),
('com_content.article', 76, 70, 2, '2018-05-18 07:28:52', 1),
('com_content.article', 80, 71, 3, '2018-05-22 11:45:02', 1),
('com_content.article', 81, 72, 3, '2018-05-18 07:13:08', 1),
('com_content.article', 82, 73, 3, '2018-05-18 07:17:53', 1),
('com_content.article', 83, 74, 3, '2018-05-22 12:45:15', 1),
('com_content.article', 84, 75, 3, '2018-05-18 07:20:20', 1),
('com_content.article', 85, 76, 3, '2018-05-22 12:38:09', 1),
('com_content.article', 86, 77, 3, '2018-05-22 12:36:10', 1),
('com_content.article', 87, 78, 3, '2018-05-22 12:35:04', 1),
('com_content.article', 90, 79, 3, '2018-05-22 13:04:54', 1),
('com_content.article', 91, 80, 3, '2018-05-22 12:50:49', 1),
('com_content.article', 92, 81, 3, '2018-05-22 12:51:48', 1),
('com_content.article', 93, 82, 3, '2018-05-22 12:52:19', 1),
('com_content.article', 94, 83, 3, '2018-05-22 12:53:03', 1),
('com_content.article', 95, 84, 3, '2018-05-22 12:54:21', 1),
('com_content.article', 96, 85, 3, '2018-05-22 12:55:17', 1),
('com_content.article', 97, 86, 3, '2018-05-22 12:55:50', 1),
('com_content.article', 98, 87, 3, '2018-05-22 12:56:36', 1),
('com_content.article', 99, 88, 3, '2018-05-22 12:57:22', 1),
('com_content.article', 100, 89, 3, '2018-05-22 12:58:58', 1),
('com_content.article', 101, 90, 3, '2018-05-22 12:59:32', 1),
('com_content.article', 102, 91, 3, '2018-05-22 13:23:57', 1),
('com_content.article', 103, 92, 3, '2018-05-22 13:25:02', 1),
('com_content.article', 104, 93, 3, '2018-05-22 13:25:38', 1),
('com_content.article', 105, 94, 3, '2018-05-22 13:26:08', 1),
('com_content.article', 106, 95, 3, '2018-05-22 13:26:32', 1),
('com_content.article', 107, 96, 3, '2018-05-22 13:27:01', 1),
('com_content.article', 108, 97, 3, '2018-05-22 13:27:24', 1),
('com_content.article', 109, 98, 3, '2018-05-22 13:47:02', 1),
('com_content.article', 110, 99, 3, '2018-05-22 13:48:06', 1),
('com_content.article', 111, 100, 3, '2018-05-22 13:49:33', 1),
('com_content.article', 112, 101, 3, '2018-05-22 13:50:03', 1),
('com_content.article', 113, 102, 3, '2018-05-22 13:50:56', 1),
('com_content.article', 114, 103, 3, '2018-05-22 13:51:20', 1),
('com_content.article', 115, 104, 3, '2018-05-22 13:52:36', 1),
('com_content.article', 116, 105, 3, '2018-05-22 13:51:44', 1),
('com_content.article', 117, 106, 3, '2018-05-22 13:52:06', 1),
('com_content.article', 118, 107, 3, '2018-05-22 13:54:39', 1),
('com_content.article', 119, 108, 3, '2018-05-22 13:55:17', 1),
('com_content.article', 120, 109, 3, '2018-05-22 13:56:20', 1),
('com_content.article', 121, 110, 3, '2018-05-22 13:57:21', 1),
('com_content.article', 122, 111, 3, '2018-05-22 13:56:43', 1),
('com_content.article', 123, 112, 3, '2018-05-22 13:57:47', 1),
('com_content.article', 127, 113, 5, '2018-05-22 14:36:10', 1),
('com_content.article', 128, 114, 5, '2018-05-22 14:36:40', 1),
('com_content.article', 129, 115, 5, '2018-05-22 14:39:34', 1),
('com_content.article', 130, 116, 5, '2018-05-22 14:40:01', 1),
('com_content.article', 131, 117, 5, '2018-05-22 14:37:17', 1),
('com_content.article', 132, 118, 5, '2018-05-22 14:37:46', 1),
('com_content.article', 133, 119, 5, '2018-05-22 14:38:11', 1),
('com_content.article', 134, 120, 5, '2018-05-22 14:38:42', 1),
('com_content.article', 135, 121, 5, '2018-05-18 13:05:47', 1),
('com_content.article', 136, 122, 5, '2018-05-18 13:06:08', 1),
('com_content.article', 137, 123, 5, '2018-05-18 13:06:40', 1),
('com_content.article', 138, 124, 5, '2018-05-18 13:07:04', 1),
('com_content.article', 139, 125, 5, '2018-05-18 13:07:21', 1),
('com_content.article', 140, 126, 5, '2018-05-18 13:07:36', 1),
('com_content.article', 141, 127, 5, '2018-05-18 13:07:50', 1),
('com_content.article', 142, 128, 5, '2018-05-18 13:09:53', 1),
('com_content.article', 143, 129, 5, '2018-05-18 13:10:14', 1),
('com_content.article', 144, 130, 5, '2018-05-18 13:11:02', 1),
('com_content.article', 145, 131, 5, '2018-05-18 13:11:33', 1),
('com_content.article', 146, 132, 5, '2018-05-18 13:11:54', 1),
('com_content.article', 147, 133, 5, '2018-05-18 13:12:11', 1),
('com_content.article', 148, 134, 5, '2018-05-18 13:12:25', 1),
('com_content.article', 149, 135, 5, '2018-05-18 13:12:48', 1),
('com_content.category', 44, 13, 2, '2018-05-23 08:47:48', 5),
('com_content.category', 88, 14, 3, '2018-05-18 07:36:16', 5),
('com_content.category', 3, 15, 2, '2018-05-18 07:34:16', 5),
('com_content.category', 2, 16, 2, '2018-05-18 07:34:26', 5),
('com_content.category', 4, 17, 2, '2018-05-18 07:34:22', 5),
('com_content.category', 43, 18, 2, '2018-05-18 07:34:41', 5),
('com_content.category', 5, 19, 2, '2018-05-18 07:34:39', 5),
('com_content.category', 6, 20, 2, '2018-05-18 07:34:35', 5),
('com_content.category', 7, 21, 2, '2018-05-17 15:41:47', 5),
('com_content.category', 77, 25, 3, '2018-05-22 11:41:40', 5),
('com_content.category', 78, 26, 3, '2018-05-22 11:40:54', 5),
('com_content.category', 79, 27, 3, '2018-05-22 11:41:15', 5),
('com_content.category', 89, 28, 3, '2018-05-22 11:41:48', 5),
('com_content.category', 124, 29, 5, '2018-05-22 10:05:52', 5),
('com_content.category', 125, 30, 5, '2018-05-18 12:59:51', 5),
('com_content.category', 126, 31, 5, '2018-05-18 13:01:00', 5),
('com_content.category', 150, 33, 3, '2018-05-23 07:47:13', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `mart_content_frontpage`
--

CREATE TABLE `mart_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_content_frontpage`
--

INSERT INTO `mart_content_frontpage` (`content_id`, `ordering`) VALUES
(1, 7),
(2, 8),
(3, 9),
(136, 3),
(137, 4),
(138, 5),
(139, 6),
(140, 2),
(141, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `mart_content_rating`
--

CREATE TABLE `mart_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_content_types`
--

CREATE TABLE `mart_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_content_types`
--

INSERT INTO `mart_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Структура таблицы `mart_core_log_searches`
--

CREATE TABLE `mart_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_extensions`
--

CREATE TABLE `mart_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_extensions`
--

INSERT INTO `mart_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 0, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 0, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"0\",\"cachetimeout\":\"24\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"ru-RU\",\"site\":\"ru-RU\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"svg,bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png,svg\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/svg+xml,image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 0, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"0\",\"search_areas\":\"0\",\"show_date\":\"0\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass,yaml,twig\",\"font_formats\":\"woff,ttf,otf,eot,svg\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"0\",\"show_category\":\"0\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"0\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_tags\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"0\",\"history_limit\":10,\"show_urls_images_frontend\":\"1\",\"show_urls_images_backend\":\"1\",\"targeta\":1,\"targetb\":2,\"targetc\":3,\"float_intro\":\"none\",\"float_fulltext\":\"none\",\"category_layout\":\"g5_hydrogen:prods\",\"show_category_heading_title_text\":\"0\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"0\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"0\",\"num_leading_articles\":\"20\",\"num_intro_articles\":\"0\",\"num_columns\":\"0\",\"num_links\":\"0\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"0\",\"filter_field\":\"hide\",\"show_headings\":\"0\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"0\",\"list_show_author\":\"0\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"1\",\"sef_advanced\":1,\"sef_ids\":1,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"8\",\"guest_usergroup\":\"1\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"2\",\"reset_time\":\"3\",\"minimum_length\":\"7\",\"minimum_integers\":\"5\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"0\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\",\"debugUsers\":\"0\",\"debugGroups\":\"0\",\"sef_advanced\":1,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 0, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:list\",\"save_history\":\"0\",\"history_limit\":5,\"show_tag_title\":\"1\",\"tag_list_show_tag_image\":\"1\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"c.core_title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"min_term_length\":\"3\",\"return_any_or_all\":\"1\",\"include_children\":\"1\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"1\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 0, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"Januar 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"a67723e30797eb76e33ed873e9dee981\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 0, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 0, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 0, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 0, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 0, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 0, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 0, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 0, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 0, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 0, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 0, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 0, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 0, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 0, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 0, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 0, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 0, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 0, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 0, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 0, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 0, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `mart_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 0, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.34.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 0, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2017\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.5.8\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 0, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 0, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '{\"detect_browser\":\"0\",\"automatic_change\":\"1\",\"item_associations\":\"1\",\"alternate_meta\":\"1\",\"xdefault\":\"1\",\"xdefault_language\":\"ru-RU\",\"remove_default_prefix\":\"1\",\"lang_cookie\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 0, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 0, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 0, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 0, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 0, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 0, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 0, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1523531408}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"unique_id\":\"7ca0d009d91b35e476c6bded4061bdd43b9ff797\",\"interval\":8760,\"mode\":\"3\",\"lastrun\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 0, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 0, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 0, 1, 0, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 0, 1, 0, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 0, 1, 0, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 0, 1, 0, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '{\"buttons\":\"0\",\"width\":\"100%\",\"height\":\"150px\",\"filter\":\"raw\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 0, 1, 0, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 0, 1, 0, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 0, 1, 0, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 0, 1, 0, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 0, 1, 0, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 0, 1, 0, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 0, 1, 0, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 0, 1, 0, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 0, 1, 0, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 0, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"March 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"March 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"March 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"March 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 10002, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2017-11-07\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.8.2.1\",\"description\":\"Russian language pack (site) for Joomla! 3.8.2\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 10002, 'ru-RU', 'language', 'ru-RU', '', 1, 1, 0, 0, '{\"name\":\"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439 (ru-RU)\",\"type\":\"language\",\"creationDate\":\"2017-11-07\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.8.2.1\",\"description\":\"Russian language pack (administrator) for Joomla! 3.8.2\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 0, 'Russian (ru-RU) Language Pack', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{\"name\":\"Russian (ru-RU) Language Pack\",\"type\":\"package\",\"creationDate\":\"2017-11-07\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.8.2.1\",\"description\":\"Joomla 3.8 Russian Language Package\",\"group\":\"\",\"filename\":\"pkg_ru-RU\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `mart_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10004, 0, 'RokAjaxSearch', 'module', 'mod_rokajaxsearch', '', 0, 1, 1, 0, '{\"name\":\"RokAjaxSearch\",\"type\":\"module\",\"creationDate\":\"February 23, 2015\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.0.4\",\"description\":\"RokAjaxSearch is an ajaxian searcher that displays the results immediately and allows to choose the\\n        proper one.\\n    \",\"group\":\"\",\"filename\":\"mod_rokajaxsearch\"}', '{\"search_page\":\"index.php?option=com_search&view=search&tmpl=component\",\"adv_search_page\":\"index.php?option=com_search&view=search\",\"include_css\":\"1\",\"theme\":\"blue\",\"searchphrase\":\"any\",\"ordering\":\"newest\",\"limit\":\"10\",\"perpage\":\"3\",\"websearch\":\"0\",\"blogsearch\":\"0\",\"imagesearch\":\"0\",\"videosearch\":\"0\",\"websearch_api\":\"\",\"show_pagination\":\"1\",\"safesearch\":\"MODERATE\",\"image_size\":\"MEDIUM\",\"show_estimated\":\"1\",\"hide_divs\":\"\",\"include_link\":\"1\",\"show_description\":\"1\",\"include_category\":\"1\",\"show_readmore\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 0, 'Regular Labs Library', 'library', 'regularlabs', '', 0, 1, 1, 0, '{\"name\":\"Regular Labs Library\",\"type\":\"library\",\"creationDate\":\"December 2017\",\"author\":\"Regular Labs (Peter van Westen)\",\"copyright\":\"Copyright \\u00a9 2017 Regular Labs - All Rights Reserved\",\"authorEmail\":\"info@regularlabs.com\",\"authorUrl\":\"https:\\/\\/www.regularlabs.com\",\"version\":\"17.12.16024\",\"description\":\"\",\"group\":\"\",\"filename\":\"regularlabs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 0, 'plg_system_regularlabs', 'plugin', 'regularlabs', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_regularlabs\",\"type\":\"plugin\",\"creationDate\":\"December 2017\",\"author\":\"Regular Labs (Peter van Westen)\",\"copyright\":\"Copyright \\u00a9 2017 Regular Labs - All Rights Reserved\",\"authorEmail\":\"info@regularlabs.com\",\"authorUrl\":\"https:\\/\\/www.regularlabs.com\",\"version\":\"17.12.16024\",\"description\":\"PLG_SYSTEM_REGULARLABS_DESC\",\"group\":\"\",\"filename\":\"regularlabs\"}', '{\"combine_admin_menu\":\"0\",\"show_help_menu\":\"1\",\"max_list_count\":\"5000\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 0, 'plg_editors-xtd_sourcerer', 'plugin', 'sourcerer', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_sourcerer\",\"type\":\"plugin\",\"creationDate\":\"December 2017\",\"author\":\"Regular Labs (Peter van Westen)\",\"copyright\":\"Copyright \\u00a9 2017 Regular Labs - All Rights Reserved\",\"authorEmail\":\"info@regularlabs.com\",\"authorUrl\":\"https:\\/\\/www.regularlabs.com\",\"version\":\"7.1.11\",\"description\":\"PLG_EDITORS-XTD_SOURCERER_DESC\",\"group\":\"\",\"filename\":\"sourcerer\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 0, 'plg_system_sourcerer', 'plugin', 'sourcerer', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sourcerer\",\"type\":\"plugin\",\"creationDate\":\"December 2017\",\"author\":\"Regular Labs (Peter van Westen)\",\"copyright\":\"Copyright \\u00a9 2017 Regular Labs - All Rights Reserved\",\"authorEmail\":\"info@regularlabs.com\",\"authorUrl\":\"https:\\/\\/www.regularlabs.com\",\"version\":\"7.1.11\",\"description\":\"PLG_SYSTEM_SOURCERER_DESC\",\"group\":\"\",\"filename\":\"sourcerer\"}', '{\"syntax_word\":\"source\",\"tag_characters\":\"{.}\",\"trim\":\"0\",\"enable_in_head\":\"0\",\"remove_from_search\":\"0\",\"include_path\":\"\\/\",\"place_comments\":\"1\",\"enable_css\":\"1\",\"enable_js\":\"1\",\"enable_php\":\"1\",\"forbidden_php\":\"dl, escapeshellarg, escapeshellcmd, exec, passthru, popen, proc_close, proc_open, shell_exec, symlink, system\",\"forbidden_tags\":\"\",\"@notice_articles_security_level\":\"RL_ONLY_AVAILABLE_IN_PRO\",\"@notice_articles_enable_css\":\"RL_ONLY_AVAILABLE_IN_PRO\",\"@notice_articles_enable_js\":\"RL_ONLY_AVAILABLE_IN_PRO\",\"@notice_articles_enable_php\":\"RL_ONLY_AVAILABLE_IN_PRO\",\"@notice_components_enable_css\":\"RL_ONLY_AVAILABLE_IN_PRO\",\"@notice_components_enable_js\":\"RL_ONLY_AVAILABLE_IN_PRO\",\"@notice_components_enable_php\":\"RL_ONLY_AVAILABLE_IN_PRO\",\"@wizard\":\"0\",\"@noticeother_enable_css\":\"RL_ONLY_AVAILABLE_IN_PRO\",\"@notice_other_enable_js\":\"RL_ONLY_AVAILABLE_IN_PRO\",\"@notice_other_enable_php\":\"RL_ONLY_AVAILABLE_IN_PRO\",\"button_text\":\"Code\",\"enable_frontend\":\"1\",\"addsourcetags\":\"1\",\"@notice_use_example_code\":\"RL_ONLY_AVAILABLE_IN_PRO\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 10017, 'plg_system_gantry5', 'plugin', 'gantry5', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_gantry5\",\"type\":\"plugin\",\"creationDate\":\"February 20, 2018\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"5.4.23\",\"description\":\"PLG_SYSTEM_GANTRY5_DESCRIPTION\",\"group\":\"\",\"filename\":\"gantry5\"}', '{\"production\":\"1\",\"use_media_folder\":\"0\",\"asset_timestamps\":\"1\",\"asset_timestamps_period\":\"7\",\"compile_yaml\":\"1\",\"compile_twig\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 10017, 'plg_quickicon_gantry5', 'plugin', 'gantry5', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_gantry5\",\"type\":\"plugin\",\"creationDate\":\"February 20, 2018\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"5.4.23\",\"description\":\"PLG_QUICKICON_GANTRY5_DESCRIPTION\",\"group\":\"\",\"filename\":\"gantry5\"}', '{\"context\":\"mod_quickicon\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 10017, 'plg_gantry5_preset', 'plugin', 'preset', 'gantry5', 0, 1, 1, 0, '{\"name\":\"plg_gantry5_preset\",\"type\":\"plugin\",\"creationDate\":\"February 20, 2018\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"5.4.23\",\"description\":\"PLG_GANTRY5_PRESET_DESCRIPTION\",\"group\":\"\",\"filename\":\"preset\"}', '{\"preset\":\"presets\",\"reset\":\"reset-settings\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 10017, 'mod_gantry5_particle', 'module', 'mod_gantry5_particle', '', 0, 1, 0, 0, '{\"name\":\"mod_gantry5_particle\",\"type\":\"module\",\"creationDate\":\"February 20, 2018\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"5.4.23\",\"description\":\"MOD_GANTRY5_PARTICLE_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_gantry5_particle\"}', '{\"owncache\":\"0\",\"cache_time\":\"900\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 10017, 'Gantry 5 Framework', 'library', 'gantry5', '', 0, 1, 1, 0, '{\"name\":\"Gantry 5 Framework\",\"type\":\"library\",\"creationDate\":\"February 20, 2018\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"5.4.23\",\"description\":\"LIB_GANTRY5_DESCRIPTION\",\"group\":\"\",\"filename\":\"gantry5\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 10017, 'gantry5_nucleus', 'file', 'gantry5_nucleus', '', 0, 1, 0, 0, '{\"name\":\"gantry5_nucleus\",\"type\":\"file\",\"creationDate\":\"February 20, 2018\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"5.4.23\",\"description\":\"GANTRY5_NUCLEUS_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 10017, 'com_gantry5', 'component', 'com_gantry5', '', 1, 1, 0, 0, '{\"name\":\"com_gantry5\",\"type\":\"component\",\"creationDate\":\"February 20, 2018\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"5.4.23\",\"description\":\"COM_GANTRY5_DESCRIPTION\",\"group\":\"\",\"filename\":\"gantry5\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 0, 'pkg_gantry5', 'package', 'pkg_gantry5', '', 0, 1, 1, 0, '{\"name\":\"pkg_gantry5\",\"type\":\"package\",\"creationDate\":\"February 20, 2018\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"5.4.23\",\"description\":\"PKG_GANTRY5_DESCRIPTION\",\"group\":\"\",\"filename\":\"pkg_gantry5\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 0, 'g5_hydrogen', 'template', 'g5_hydrogen', '', 0, 1, 1, 0, '{\"name\":\"g5_hydrogen\",\"type\":\"template\",\"creationDate\":\"February 20, 2018\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2007 - 2017 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"5.4.23\",\"description\":\"TPL_G5_HYDROGEN_DESC\",\"group\":\"\",\"filename\":\"templateDetails\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 10027, 'COM_JCE', 'component', 'com_jce', '', 1, 1, 0, 0, '{\"name\":\"COM_JCE\",\"type\":\"component\",\"creationDate\":\"21-03-2018\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2018 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"www.joomlacontenteditor.net\",\"version\":\"2.6.28\",\"description\":\"COM_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 10027, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_jce\",\"type\":\"plugin\",\"creationDate\":\"21-03-2018\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2018 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.6.28\",\"description\":\"WF_EDITOR_PLUGIN_DESC\",\"group\":\"\",\"filename\":\"jce\"}', '{\"verify_html\":\"1\",\"schema\":\"html5\",\"entity_encoding\":\"raw\",\"keep_nbsp\":\"1\",\"pad_empty_tags\":\"0\",\"cleanup_pluginmode\":\"0\",\"forced_root_block\":\"forced_root_block:0|force_p_newlines:1\",\"content_style_reset\":\"0\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"body_class\":\"\",\"compress_javascript\":\"1\",\"compress_css\":\"1\",\"compress_gzip\":\"1\",\"custom_config\":\"\",\"callback_file\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 10027, 'plg_content_jce', 'plugin', 'jce', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_jce\",\"type\":\"plugin\",\"creationDate\":\"21-03-2018\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2018 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.6.28\",\"description\":\"PLG_CONTENT_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 10027, 'plg_extension_jce', 'plugin', 'jce', 'extension', 0, 1, 1, 0, '{\"name\":\"plg_extension_jce\",\"type\":\"plugin\",\"creationDate\":\"21-03-2018\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2018 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.6.28\",\"description\":\"PLG_EXTENSION_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 10027, 'plg_fields_mediajce', 'plugin', 'mediajce', 'fields', 0, 0, 1, 0, '{\"name\":\"plg_fields_mediajce\",\"type\":\"plugin\",\"creationDate\":\"21-03-2018\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2018 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"https:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.6.28\",\"description\":\"PLG_FIELDS_MEDIAJCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mediajce\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 10027, 'plg_installer_jce', 'plugin', 'jce', 'installer', 0, 1, 1, 0, '{\"name\":\"plg_installer_jce\",\"type\":\"plugin\",\"creationDate\":\"21-03-2018\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2018 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.6.28\",\"description\":\"PLG_INSTALLER_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 10027, 'plg_quickicon_jce', 'plugin', 'jce', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_jce\",\"type\":\"plugin\",\"creationDate\":\"21-03-2018\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2018 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.6.28\",\"description\":\"PLG_QUICKICON_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 10027, 'plg_system_jce', 'plugin', 'jce', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_jce\",\"type\":\"plugin\",\"creationDate\":\"21-03-2018\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2018 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.6.28\",\"description\":\"PLG_SYSTEM_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 0, 'PKG_JCE', 'package', 'pkg_jce', '', 0, 1, 1, 0, '{\"name\":\"PKG_JCE\",\"type\":\"package\",\"creationDate\":\"21-03-2018\",\"author\":\"Ryan Demmer\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"2.6.28\",\"description\":\"PKG_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pkg_jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 0, 'JCE - Russian', 'file', 'jce-ru-RU', '', 0, 1, 0, 0, '{\"name\":\"JCE - Russian\",\"type\":\"file\",\"creationDate\":\"2017-10-13\",\"author\":\"JCE Transifex Russian Team\",\"copyright\":\"\\u00a9 2017 Widget Factory Limited\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"https:\\/\\/www.transifex.com\\/projects\\/p\\/jce\\/language\\/ru-RU\\/\",\"version\":\"2.6.19\",\"description\":\"Russian Language Pack for JCE 2.6.19\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `mart_fields`
--

CREATE TABLE `mart_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_fields`
--

INSERT INTO `mart_fields` (`id`, `asset_id`, `context`, `group_id`, `title`, `name`, `label`, `default_value`, `type`, `note`, `description`, `state`, `required`, `checked_out`, `checked_out_time`, `ordering`, `params`, `fieldparams`, `language`, `created_time`, `created_user_id`, `modified_time`, `modified_by`, `access`) VALUES
(1, 89, 'com_content.article', 2, 'размер', 'size', 'размер', '', 'text', '', '', 1, 0, 0, '0000-00-00 00:00:00', 0, '{\"hint\":\"\",\"render_class\":\"\",\"class\":\"\",\"showlabel\":\"0\",\"show_on\":\"\",\"display\":\"0\"}', '{\"filter\":\"\",\"maxlength\":\"\"}', '*', '2018-04-12 11:54:53', 359, '2018-05-23 07:46:01', 359, 1),
(2, 90, 'com_content.article', 2, 'емкость', 'capacity', 'емкость', '', 'text', '', '', 1, 0, 0, '0000-00-00 00:00:00', 0, '{\"hint\":\"\",\"render_class\":\"\",\"class\":\"\",\"showlabel\":\"0\",\"show_on\":\"\",\"display\":\"0\"}', '{\"filter\":\"\",\"maxlength\":4}', '*', '2018-04-12 11:56:09', 359, '2018-05-18 07:46:29', 359, 1),
(3, 91, 'com_content.article', 2, 'ток', 'current', 'ток', '', 'text', '', '', 1, 0, 0, '0000-00-00 00:00:00', 0, '{\"hint\":\"\",\"render_class\":\"\",\"class\":\"\",\"showlabel\":\"0\",\"show_on\":\"\",\"display\":\"0\"}', '{\"filter\":\"\",\"maxlength\":5}', '*', '2018-04-12 11:56:35', 359, '2018-05-18 07:56:45', 359, 1),
(4, 92, 'com_content.article', 1, 'количество', 'quantity', 'количество', '', 'text', '', '', 1, 0, 0, '0000-00-00 00:00:00', 0, '{\"hint\":\"\",\"render_class\":\"\",\"class\":\"\",\"showlabel\":\"0\",\"show_on\":\"\",\"display\":\"0\"}', '{\"filter\":\"integer\",\"maxlength\":3}', '*', '2018-04-12 11:57:20', 359, '2018-05-18 08:22:44', 359, 1),
(5, 93, 'com_content.article', 1, 'вес', 'weight', 'вес', '', 'text', '', '', 1, 0, 0, '0000-00-00 00:00:00', 0, '{\"hint\":\"\",\"render_class\":\"\",\"class\":\"\",\"showlabel\":\"0\",\"show_on\":\"\",\"display\":\"0\"}', '{\"filter\":\"safehtml\",\"maxlength\":\"\"}', '*', '2018-04-12 11:57:59', 359, '2018-05-18 08:22:34', 359, 1),
(6, 94, 'com_content.article', 2, 'полярность', 'polarity', 'полярность', '', 'radio', '', '', 1, 0, 0, '0000-00-00 00:00:00', 0, '{\"hint\":\"\",\"render_class\":\"\",\"class\":\"btn-group\",\"showlabel\":\"0\",\"show_on\":\"\",\"display\":\"0\"}', '{\"options\":{\"options0\":{\"name\":\"0\\/1\",\"value\":\"0\"},\"options1\":{\"name\":\"1\\/1\",\"value\":\"1\"},\"options2\":{\"name\":\"3\\/1\",\"value\":\"2\"},\"options3\":{\"name\":\"+ -\",\"value\":\"3\"},\"options4\":{\"name\":\"- +\",\"value\":\"4\"}}}', '*', '2018-04-12 11:59:54', 359, '2018-05-18 07:46:37', 359, 1),
(7, 95, 'com_content.article', 2, 'назначение', 'purpose', 'назначение', '', 'radio', '', '', 1, 0, 0, '0000-00-00 00:00:00', 0, '{\"hint\":\"\",\"render_class\":\"\",\"class\":\"btn-group\",\"showlabel\":\"0\",\"show_on\":\"\",\"display\":\"0\"}', '{\"options\":{\"options0\":{\"name\":\"\\u041b\\u0435\\u0433\\u043a\\u043e\\u0432\\u044b\\u0435 \\u0430\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u0438\",\"value\":\"1\"},\"options1\":{\"name\":\"\\u0413\\u0440\\u0443\\u0437\\u043e\\u0432\\u044b\\u0435 \\u0430\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u0438\",\"value\":\"2\"},\"options2\":{\"name\":\"\\u041f\\u043e\\u0433\\u0440\\u0443\\u0437\\u0447\\u0438\\u043a\\u0438\",\"value\":\"3\"}}}', '*', '2018-04-12 12:00:51', 359, '2018-05-18 08:23:00', 359, 1),
(8, 96, 'com_content.article', 1, 'скачать', 'download', 'скачать', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>', 'editor', '', '', 1, 0, 0, '0000-00-00 00:00:00', 0, '{\"hint\":\"\",\"render_class\":\"\",\"class\":\"\",\"showlabel\":\"0\",\"show_on\":\"\",\"display\":\"0\"}', '{\"buttons\":\"\",\"width\":\"\",\"height\":\"\",\"filter\":\"\"}', '*', '2018-04-12 12:02:49', 359, '2018-05-18 08:22:25', 359, 1),
(10, 184, 'com_content.categories', 0, 'Наименование', 'full-title', 'Наименование', '', 'text', '', '', 1, 0, 0, '0000-00-00 00:00:00', 0, '{\"hint\":\"\",\"render_class\":\"\",\"class\":\"\",\"showlabel\":\"0\",\"show_on\":\"\",\"display\":\"0\"}', '{\"filter\":\"\",\"maxlength\":\"\"}', '*', '2018-05-15 09:35:09', 359, '2018-05-18 13:22:24', 359, 1),
(11, 408, 'com_content.article', 1, 'картинка', 'images', 'картинка', '', 'editor', '', '', 1, 0, 0, '0000-00-00 00:00:00', 0, '{\"hint\":\"\",\"render_class\":\"\",\"class\":\"\",\"showlabel\":\"0\",\"show_on\":\"\",\"display\":\"0\"}', '{\"buttons\":\"\",\"width\":\"\",\"height\":\"\",\"filter\":\"\"}', '*', '2018-05-22 11:06:25', 359, '2018-05-22 11:31:50', 359, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `mart_fields_categories`
--

CREATE TABLE `mart_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_fields_categories`
--

INSERT INTO `mart_fields_categories` (`field_id`, `category_id`) VALUES
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 33),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 25),
(3, 26),
(3, 27),
(3, 28),
(4, 15),
(4, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 20),
(4, 21),
(4, 25),
(4, 26),
(4, 27),
(4, 28),
(4, 29),
(4, 30),
(4, 31),
(5, 15),
(5, 16),
(5, 17),
(5, 18),
(5, 19),
(5, 20),
(5, 21),
(5, 25),
(5, 26),
(5, 27),
(5, 28),
(5, 29),
(5, 30),
(5, 31),
(6, 15),
(6, 16),
(6, 17),
(6, 18),
(6, 19),
(6, 20),
(6, 21),
(6, 25),
(6, 26),
(6, 27),
(6, 28),
(7, 29),
(7, 30),
(7, 31),
(8, 15),
(8, 16),
(8, 17),
(8, 18),
(8, 19),
(8, 20),
(8, 21),
(8, 25),
(8, 26),
(8, 27),
(8, 28),
(8, 29),
(8, 30),
(8, 31),
(10, 11),
(10, 13),
(10, 14),
(10, 15),
(10, 16),
(10, 17),
(10, 18),
(10, 19),
(10, 20),
(10, 21),
(10, 25),
(10, 26),
(10, 27),
(10, 28);

-- --------------------------------------------------------

--
-- Структура таблицы `mart_fields_groups`
--

CREATE TABLE `mart_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_fields_groups`
--

INSERT INTO `mart_fields_groups` (`id`, `asset_id`, `context`, `title`, `note`, `description`, `state`, `checked_out`, `checked_out_time`, `ordering`, `params`, `language`, `created`, `created_by`, `modified`, `modified_by`, `access`) VALUES
(1, 87, 'com_content.article', 'Основные Характеристики', '', '', 1, 0, '0000-00-00 00:00:00', 0, '', '*', '2018-04-12 11:53:46', 359, '0000-00-00 00:00:00', 0, 1),
(2, 88, 'com_content.article', 'Дополнительные Характеристики', '', '', 1, 0, '0000-00-00 00:00:00', 0, '', '*', '2018-04-12 11:53:49', 359, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `mart_fields_values`
--

CREATE TABLE `mart_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_fields_values`
--

INSERT INTO `mart_fields_values` (`field_id`, `item_id`, `value`) VALUES
(1, '4', '242x175x190'),
(2, '4', '70'),
(3, '4', '720'),
(4, '4', '68'),
(5, '4', '21,19'),
(6, '4', '0'),
(8, '4', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '5', '352x175x190'),
(2, '5', '92'),
(3, '5', '850'),
(4, '5', '48'),
(5, '5', '26,19'),
(6, '5', '0'),
(8, '5', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '6', '242x175x190'),
(2, '6', '60'),
(3, '6', '560'),
(4, '6', '72'),
(5, '6', '16,48'),
(6, '6', '0'),
(8, '6', '<?php echo JText::_(\'AM_DOWNLOAD\');?>'),
(1, '7', '242x175x175'),
(2, '7', '60'),
(3, '7', '560'),
(4, '7', '72'),
(5, '7', '15,94'),
(6, '7', '0'),
(8, '7', '<?php echo JText::_(\'AM_DOWNLOAD\');?>'),
(1, '8', '278x175x190'),
(2, '8', '72'),
(3, '8', '680'),
(4, '8', '63'),
(5, '8', '19,89'),
(6, '8', '0'),
(8, '8', '<?php echo JText::_(\'AM_DOWNLOAD\');?>'),
(1, '9', '278x175x175'),
(2, '9', '65'),
(3, '9', '430'),
(4, '9', '63'),
(5, '9', '17,51'),
(6, '9', '0'),
(8, '9', '<?php echo JText::_(\'AM_DOWNLOAD\');?>'),
(1, '10', '315x175x175'),
(2, '10', '75'),
(3, '10', '730'),
(4, '10', '72'),
(5, '10', '20,49'),
(6, '10', '0'),
(8, '10', '<?php echo JText::_(\'AM_DOWNLOAD\');?>'),
(1, '11', '352x175x190'),
(2, '11', '100'),
(3, '11', '920'),
(4, '11', '45'),
(5, '11', '24,85'),
(6, '11', '0'),
(8, '11', '<?php echo JText::_(\'AM_DOWNLOAD\');?>'),
(1, '12', '207x175x190'),
(2, '12', '50'),
(3, '12', '460'),
(4, '12', '87'),
(5, '12', '12,58'),
(6, '12', '0'),
(8, '12', '<?php echo JText::_(\'AM_DOWNLOAD\');?>'),
(1, '13', '207x175x175'),
(2, '13', '50'),
(3, '13', '420'),
(4, '13', '87'),
(5, '13', '11,83'),
(6, '13', '0'),
(8, '13', '<?php echo JText::_(\'AM_DOWNLOAD\');?>'),
(1, '14', '242x175x190'),
(2, '14', '60'),
(3, '14', '540'),
(4, '14', '72'),
(5, '14', '14,70'),
(6, '14', '1'),
(8, '14', '<?php echo JText::_(\'AM_DOWNLOAD\');?>'),
(1, '15', '242x175x175'),
(2, '15', '60'),
(3, '15', '540'),
(4, '15', '72'),
(5, '15', '14,00'),
(6, '15', '0'),
(8, '15', '<?php echo JText::_(\'AM_DOWNLOAD\');?>'),
(1, '16', '278x175x190'),
(2, '16', '75'),
(3, '16', '700'),
(4, '16', '63'),
(5, '16', '17,60'),
(6, '16', '0'),
(8, '16', '<?php echo JText::_(\'AM_DOWNLOAD\');?>'),
(1, '17', '278x175x190'),
(2, '17', '75'),
(3, '17', '700'),
(4, '17', '63'),
(5, '17', '17,60'),
(6, '17', '1'),
(8, '17', '<?php echo JText::_(\'AM_DOWNLOAD\');?>'),
(1, '18', '242x175x190'),
(2, '18', '60'),
(3, '18', '540'),
(4, '18', '72'),
(5, '18', '14,70'),
(6, '18', '0'),
(8, '18', '<?php echo JText::_(\'AM_DOWNLOAD\');?>'),
(1, '19', '278x175x175'),
(2, '19', '72'),
(3, '19', '700'),
(4, '19', '63'),
(5, '19', '16,70'),
(6, '19', '0'),
(8, '19', '<?php echo JText::_(\'AM_DOWNLOAD\');?>'),
(1, '20', '315x175x190'),
(2, '20', '82'),
(3, '20', '800'),
(4, '20', '72'),
(5, '20', '19,70'),
(6, '20', '0'),
(8, '20', '<?php echo JText::_(\'AM_DOWNLOAD\');?>'),
(1, '21', '315x175x175'),
(2, '21', '82'),
(3, '21', '740'),
(4, '21', '45'),
(5, '21', '23,00'),
(6, '21', '0'),
(8, '21', '<?php echo JText::_(\'AM_DOWNLOAD\');?>'),
(1, '22', '352x175x190'),
(2, '22', '100'),
(3, '22', '860'),
(4, '22', '45'),
(5, '22', '23,00'),
(6, '22', '0'),
(8, '22', '<?php echo JText::_(\'AM_DOWNLOAD\');?>'),
(1, '23', '352x175x190'),
(2, '23', '100'),
(3, '23', '960'),
(4, '23', '48'),
(5, '23', '23,07'),
(6, '23', '0'),
(8, '23', '<?php echo JText::_(\'AM_DOWNLOAD\');?>'),
(1, '24', '197x129x224'),
(2, '24', '35'),
(3, '24', '300'),
(4, '24', '120'),
(5, '24', '9,30'),
(6, '24', '0'),
(8, '24', '<?php echo JText::_(\'AM_DOWNLOAD\');?>'),
(1, '25', '197x129x224'),
(2, '25', '35'),
(3, '25', '300'),
(4, '25', '120'),
(5, '25', '9,30'),
(6, '25', '1'),
(8, '25', '<?php echo JText::_(\'AM_DOWNLOAD\');?>'),
(1, '26', '197x129x224'),
(2, '26', '42'),
(3, '26', '360'),
(4, '26', '120'),
(5, '26', '10,30'),
(6, '26', '0'),
(8, '26', '<?php echo JText::_(\'AM_DOWNLOAD\');?>'),
(1, '27', '197x129x224'),
(2, '27', '42'),
(3, '27', '360'),
(4, '27', '120'),
(5, '27', '10,30'),
(6, '27', '1'),
(8, '27', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '28', '238x129x224'),
(2, '28', '45'),
(3, '28', '400'),
(4, '28', '96'),
(5, '28', '11,30'),
(6, '28', '0'),
(8, '28', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '29', '238x129x224'),
(2, '29', '45'),
(3, '29', '400'),
(4, '29', '96'),
(5, '29', '11,30'),
(6, '29', '1'),
(8, '29', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '30', '232x173x225'),
(2, '30', '50'),
(3, '30', '420'),
(4, '30', '72'),
(5, '30', '13'),
(6, '30', '0'),
(8, '30', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '31', '232x173x225'),
(2, '31', '60'),
(3, '31', '540'),
(4, '31', '72'),
(5, '31', '14,10'),
(6, '31', '0'),
(8, '31', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '32', '232x173x225'),
(2, '32', '60'),
(3, '32', '540'),
(4, '32', '72'),
(5, '32', '14,10'),
(6, '32', '1'),
(8, '32', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '33', '264x175x220'),
(2, '33', '72'),
(3, '33', '600'),
(4, '33', '63'),
(5, '33', '16,50'),
(6, '33', '0'),
(8, '33', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '34', '264x175x220'),
(2, '34', '72'),
(3, '34', '600'),
(4, '34', '63'),
(5, '34', '16,50'),
(6, '34', '1'),
(8, '34', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '35', '306x175x224'),
(2, '35', '90'),
(3, '35', '750'),
(4, '35', '54'),
(5, '35', '20'),
(6, '35', '0'),
(8, '35', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '36', '306x175x224'),
(2, '36', '90'),
(3, '36', '750'),
(4, '36', '54'),
(5, '36', '20'),
(6, '36', '1'),
(8, '36', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '37', '306x175x224'),
(2, '37', '100'),
(3, '37', '760'),
(4, '37', '54'),
(5, '37', '21,40'),
(6, '37', '0'),
(8, '37', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '38', '306x175x224'),
(2, '38', '100'),
(3, '38', '760'),
(4, '38', '54'),
(5, '38', '21,40'),
(6, '38', '1'),
(8, '38', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(10, '15', 'HUGEL NANOGOLDEN START-STOP AGM'),
(10, '16', 'HUGEL NANOGOLDEN START-STOP EFB'),
(10, '17', 'HUGEL ULTRA'),
(10, '18', 'HUGEL ULTRA ASIA'),
(10, '19', 'HUGEL ACTION'),
(10, '20', 'HUGEL ACTION HEAVY'),
(10, '21', 'HUGEL ACTION LEISURE'),
(1, '39', '207x175x190'),
(2, '39', '50'),
(3, '39', '450'),
(4, '39', '87'),
(5, '39', '11.90'),
(6, '39', '0'),
(8, '39', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '40', '207x175x190'),
(2, '40', '50'),
(3, '40', '450'),
(4, '40', '87'),
(5, '40', '11.90'),
(6, '40', '1'),
(8, '40', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '41', '207x175x175'),
(2, '41', '50'),
(3, '41', '420'),
(4, '41', '87'),
(5, '41', '11.30'),
(6, '41', '0'),
(8, '41', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '42', '242X175X190'),
(2, '42', '51'),
(3, '42', '490'),
(4, '42', '72'),
(5, '42', '13,30'),
(6, '42', '0'),
(8, '42', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '43', '242X175X190'),
(2, '43', '51'),
(3, '43', '490'),
(4, '43', '72'),
(5, '43', '13,30'),
(6, '43', '1'),
(8, '43', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '44', '242x175x190'),
(2, '44', '60'),
(3, '44', '540'),
(4, '44', '72'),
(5, '44', '14,10'),
(6, '44', '0'),
(8, '44', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '45', '242x175x190'),
(2, '45', '60'),
(3, '45', '540'),
(4, '45', '72'),
(5, '45', '14,10'),
(6, '45', '1'),
(8, '45', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '46', '242x175x175'),
(2, '46', '60'),
(3, '46', '540'),
(4, '46', '72'),
(5, '46', '13,20'),
(6, '46', '0'),
(8, '46', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '47', '278x175x190'),
(2, '47', '75'),
(3, '47', '700'),
(4, '47', '63'),
(5, '47', '16,60'),
(6, '47', '0'),
(8, '47', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '48', '278x175x190'),
(2, '48', '75'),
(3, '48', '700'),
(4, '48', '63'),
(5, '48', '16,60'),
(6, '48', '1'),
(8, '48', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '49', '278x175x175'),
(2, '49', '75'),
(3, '49', '700'),
(4, '49', '63'),
(5, '49', '15,70'),
(6, '49', '0'),
(8, '49', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '50', '315x175x190'),
(2, '50', '82'),
(3, '50', '720'),
(4, '50', '72'),
(5, '50', '18,90'),
(6, '50', '0'),
(8, '50', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '51', '315x175x175'),
(2, '51', '80'),
(3, '51', '800'),
(4, '51', '72'),
(5, '51', '18,04'),
(6, '51', '0'),
(8, '51', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '52', '352x175x190'),
(2, '52', '92'),
(3, '52', '760'),
(4, '52', '54'),
(5, '52', '19,60'),
(6, '52', '0'),
(8, '52', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '53', '352x175x190'),
(2, '53', '100'),
(3, '53', '860'),
(4, '53', '45'),
(5, '53', '21,50'),
(6, '53', '0'),
(8, '53', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '54', '352x175x175'),
(2, '54', '100'),
(3, '54', '860'),
(4, '54', '45'),
(5, '54', '21,40'),
(6, '54', '0'),
(8, '54', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '55', '344x175x225'),
(2, '55', '115'),
(3, '55', '760'),
(4, '55', '45'),
(5, '55', '27.00'),
(6, '55', '0'),
(8, '55', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '56', '344x173x275'),
(2, '56', '125'),
(3, '56', '800'),
(4, '56', '45'),
(5, '56', '29.50'),
(6, '56', '0'),
(8, '56', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '57', '513x189x218'),
(2, '57', '140'),
(3, '57', '880'),
(4, '57', '30'),
(5, '57', '36.50'),
(8, '57', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '58', '513x223x218'),
(2, '58', '150'),
(3, '58', '920'),
(4, '58', '30'),
(5, '58', '42,50'),
(8, '58', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '59', '513x223x218'),
(2, '59', '190'),
(3, '59', '1100'),
(4, '59', '30'),
(5, '59', '46,00'),
(8, '59', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '60', '514x274x235'),
(2, '60', '225'),
(3, '60', '1250'),
(4, '60', '21'),
(5, '60', '58,40'),
(8, '60', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '61', '207x175x190'),
(2, '61', '50'),
(3, '61', '360'),
(4, '61', '87'),
(5, '61', '13,20'),
(6, '61', '0'),
(8, '61', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '62', '242x175x190'),
(2, '62', '60'),
(3, '62', '460'),
(4, '62', '72'),
(5, '62', '16,80'),
(6, '62', '0'),
(8, '62', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '63', '278x175x190'),
(2, '63', '70'),
(3, '63', '540'),
(4, '63', '63'),
(5, '63', '18'),
(6, '63', '0'),
(8, '63', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '64', '353x175x190'),
(2, '64', '90'),
(3, '64', '700'),
(4, '64', '45'),
(5, '64', '23,20'),
(6, '64', '0'),
(8, '64', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '65', '344x175x225'),
(2, '65', '90'),
(3, '65', '620'),
(4, '65', '45'),
(5, '65', '24,70'),
(6, '65', '0'),
(8, '65', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '66', '344x175x225'),
(2, '66', '115'),
(3, '66', '760'),
(4, '66', '45'),
(5, '66', '27'),
(6, '66', '0'),
(8, '66', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '67', '344x175x225'),
(2, '67', '125'),
(3, '67', '800'),
(4, '67', '45'),
(5, '67', '29.40'),
(6, '67', '0'),
(8, '67', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '68', '513x189x218'),
(2, '68', '130'),
(3, '68', '880'),
(4, '68', '30'),
(5, '68', '36,00'),
(8, '68', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '69', '513x223x218'),
(2, '69', '180'),
(3, '69', '1100'),
(4, '69', '30'),
(5, '69', '45,50'),
(8, '69', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '70', '513x274x235'),
(2, '70', '225'),
(3, '70', '1150'),
(4, '70', '21'),
(5, '70', '58,40'),
(8, '70', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(10, '13', ''),
(10, '25', 'EB PP/Wet Saries (MF)'),
(10, '26', 'HPG Series (MF)'),
(10, '27', 'MX PP/High Performance (MF)'),
(1, '71', '113x70x105'),
(2, '71', '6,0'),
(3, '71', '130'),
(4, '71', '10'),
(5, '71', '2,18'),
(1, '72', '150x70x105'),
(2, '72', '8,0'),
(3, '72', '115'),
(4, '72', '6'),
(5, '72', '2,83'),
(6, '72', '3'),
(6, '71', '3'),
(1, '73', '150x88x93'),
(2, '73', '8,6'),
(3, '73', '190'),
(4, '73', '6'),
(5, '73', '3.18'),
(6, '73', '3'),
(8, '73', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '74', '150x88x110'),
(2, '74', '11,0'),
(3, '74', '210'),
(4, '74', '6'),
(5, '74', '3,91'),
(6, '74', '3'),
(8, '74', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '75', '150x88x110'),
(2, '75', '11,2'),
(3, '75', '230'),
(4, '75', '6'),
(5, '75', '4,02'),
(6, '75', '3'),
(8, '75', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '76', '175x87x155'),
(2, '76', '18,0'),
(3, '76', '270'),
(4, '76', '4'),
(5, '76', '6,04'),
(6, '76', '3'),
(8, '76', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '77', '150x87x161'),
(2, '77', '18,0'),
(3, '77', '270'),
(4, '77', '4'),
(5, '77', '5,64'),
(6, '77', '3'),
(8, '77', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '78', '166x126x173'),
(2, '78', '30,0'),
(3, '78', '385'),
(4, '78', '2'),
(5, '78', '9,45'),
(6, '78', '4'),
(8, '78', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(10, '14', ''),
(6, '70', '0'),
(10, '11', ''),
(10, '12', ''),
(10, '22', ''),
(10, '23', ''),
(10, '28', 'LT ABS/Wet Series (MF)'),
(1, '79', '113x70x85'),
(2, '79', '3,0'),
(3, '79', '50,0'),
(4, '79', '10'),
(5, '79', '1,33'),
(6, '79', '4'),
(1, '80', '113x70x105'),
(2, '80', '4,0'),
(3, '80', '70,0'),
(4, '80', '10'),
(5, '80', '1,68'),
(6, '80', '4'),
(1, '81', '150xx87x93'),
(2, '81', '6,0'),
(3, '81', '90,0'),
(4, '81', '6'),
(5, '81', '2,55'),
(6, '81', '3'),
(1, '82', '113x70x130'),
(2, '82', '6,0'),
(3, '82', '85,0'),
(4, '82', '8'),
(5, '82', '2,42'),
(6, '82', '4'),
(1, '83', '135x75x139'),
(2, '83', '9,0'),
(3, '83', '120'),
(4, '83', '6'),
(5, '83', '3,08'),
(6, '83', '3'),
(1, '84', '150x87x105'),
(2, '84', '8,0'),
(3, '84', '115'),
(4, '84', '6'),
(5, '84', '3,05'),
(6, '84', '3'),
(1, '85', '150x87x130'),
(2, '85', '10,0'),
(3, '85', '118'),
(4, '85', '4'),
(5, '85', '3,95'),
(6, '85', '3'),
(1, '86', '150x87x145'),
(2, '86', '12,0'),
(3, '86', '200'),
(4, '86', '4'),
(5, '86', '4,42'),
(6, '86', '4'),
(1, '87', '205x87x162'),
(2, '87', '18,0'),
(3, '87', '250,0'),
(4, '87', '4'),
(5, '87', '6,55'),
(6, '87', '4'),
(1, '88', '175x87x155'),
(2, '88', '18,0'),
(3, '88', '310,0'),
(4, '88', '4'),
(5, '88', '6,00'),
(6, '88', '4'),
(1, '89', '205x87x162'),
(2, '89', '21,0'),
(3, '89', '350,0'),
(4, '89', '2'),
(5, '89', '7,10'),
(6, '89', '4'),
(1, '90', '165x125x175'),
(2, '90', '30,0'),
(3, '90', '385,0'),
(4, '90', '2'),
(5, '90', '9,56'),
(6, '90', '4'),
(1, '91', '113x70x85'),
(2, '91', '3,0'),
(3, '91', '60,0'),
(4, '91', '10'),
(5, '91', '1,45'),
(6, '91', '4'),
(8, '91', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '92', '70x113x70'),
(2, '92', '4,0'),
(3, '92', '70,0'),
(4, '92', '10'),
(5, '92', '1,84'),
(6, '92', '4'),
(8, '92', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '93', '113x70x130'),
(2, '93', '6,0'),
(3, '93', '85,0'),
(4, '93', '8'),
(5, '93', '2,43'),
(6, '93', '4'),
(8, '93', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '94', '150x87x93'),
(2, '94', '6,0'),
(3, '94', '90,0'),
(4, '94', '6'),
(5, '94', '2,56'),
(6, '94', '3'),
(8, '94', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '95', '150x65x93'),
(2, '95', '6,5'),
(3, '95', '85,0'),
(4, '95', '6'),
(5, '95', '2,31'),
(6, '95', '3'),
(8, '95', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '96', '113x70x105'),
(2, '96', '6,0'),
(3, '96', '80,0'),
(4, '96', '10'),
(5, '96', '2,09'),
(6, '96', '4'),
(8, '96', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '97', '150x87x105'),
(2, '97', '8,0'),
(3, '97', '120,0'),
(4, '97', '6'),
(5, '97', '3,07'),
(6, '97', '3'),
(8, '97', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '98', '150x68x105'),
(2, '98', '8,0'),
(3, '98', '115,0'),
(4, '98', '6'),
(5, '98', '2,72'),
(6, '98', '3'),
(8, '98', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '99', '150x87x93'),
(2, '99', '8,6'),
(3, '99', '110,0'),
(4, '99', '6'),
(5, '99', '2,87'),
(6, '99', '3'),
(8, '99', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '100', '150x87x110'),
(2, '100', '11,0'),
(3, '100', '140,0'),
(4, '100', '6'),
(5, '100', '3,29'),
(6, '100', '3'),
(8, '100', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '101', '150x69x130'),
(2, '101', '10,0'),
(3, '101', '175'),
(4, '101', '6'),
(5, '101', '3,58'),
(6, '101', '3'),
(8, '101', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '102', '150x87x145'),
(2, '102', '12,0'),
(3, '102', '200'),
(4, '102', '4'),
(5, '102', '4,44'),
(6, '102', '3'),
(8, '102', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '103', '135x90x167'),
(2, '103', '12,0'),
(3, '103', '180,0'),
(4, '103', '4'),
(5, '103', '4,62'),
(6, '103', '4'),
(8, '103', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '104', '150x69x145'),
(2, '104', '12,0'),
(3, '104', '190,0'),
(4, '104', '6'),
(5, '104', '4,18'),
(6, '104', '3'),
(8, '104', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '105', '150x87x161'),
(2, '105', '14,0'),
(3, '105', '170,0'),
(4, '105', '4'),
(5, '105', '4,77'),
(6, '105', '3'),
(8, '105', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '106', '175x87x155'),
(2, '106', '18,0'),
(3, '106', '250,0'),
(4, '106', '4'),
(5, '106', '5,68'),
(6, '106', '4'),
(8, '106', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '107', '150x87x105'),
(2, '107', '8,00'),
(3, '107', '120,0'),
(4, '107', '6'),
(5, '107', '3,10'),
(6, '107', '3'),
(8, '107', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '108', '150x87x130'),
(2, '108', '10,0'),
(3, '108', '180,0'),
(4, '108', '4'),
(5, '108', '4,05'),
(6, '108', '3'),
(8, '108', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '109', '150x87x145'),
(2, '109', '12,0'),
(3, '109', '230,0'),
(4, '109', '4'),
(5, '109', '4,70'),
(6, '109', '3'),
(8, '109', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '110', '205x90x162'),
(2, '110', '20,0'),
(3, '110', '340,0'),
(4, '110', '4'),
(5, '110', '7,80'),
(6, '110', '4'),
(8, '110', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '111', '176x87x154'),
(2, '111', '18,0'),
(3, '111', '310,0'),
(4, '111', '4'),
(5, '111', '6,55'),
(6, '111', '4'),
(8, '111', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(1, '112', '169x131x175'),
(2, '112', '30,0'),
(3, '112', '440,0'),
(4, '112', '2'),
(5, '112', '10,10'),
(6, '112', '4'),
(8, '112', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(10, '29', 'HighPerformance'),
(10, '30', 'Truck'),
(10, '31', 'Forklifts'),
(4, '113', '12'),
(5, '113', '0,82'),
(7, '113', '1'),
(8, '113', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '114', '12'),
(5, '114', '0,91'),
(7, '114', '1'),
(8, '114', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '115', '12'),
(5, '115', '1,04'),
(7, '115', '1'),
(8, '115', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '116', '12'),
(5, '116', '1,05'),
(7, '116', '1'),
(8, '116', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '117', '12'),
(5, '117', '1,15'),
(7, '117', '1'),
(8, '117', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '118', '12'),
(5, '118', '1,24'),
(7, '118', '1'),
(8, '118', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '119', '12'),
(5, '119', '1,32'),
(7, '119', '1'),
(8, '119', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '120', '12'),
(5, '120', '1,34'),
(7, '120', '1'),
(8, '120', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '121', '10'),
(5, '121', '1,37'),
(7, '121', '2'),
(8, '121', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '122', '10'),
(5, '122', '1,44'),
(7, '122', '2'),
(8, '122', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '123', '10'),
(5, '123', '1,62'),
(7, '123', '2'),
(8, '123', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '124', '10'),
(5, '124', '1,78'),
(7, '124', '2'),
(8, '124', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '125', '10'),
(5, '125', '1,86'),
(7, '125', '2'),
(8, '125', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '126', '10'),
(5, '126', '1,93'),
(7, '126', '2'),
(8, '126', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '127', '10'),
(5, '127', '2,02'),
(7, '127', '2'),
(8, '127', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '128', '10'),
(5, '128', '2,13'),
(7, '128', '2'),
(8, '128', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '129', '10'),
(5, '129', '2,40'),
(7, '129', '2'),
(8, '129', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '130', '10'),
(5, '130', '1,12'),
(7, '130', '3'),
(8, '130', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '131', '10'),
(5, '131', '1,32'),
(7, '131', '3'),
(8, '131', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '132', '10'),
(5, '132', '1,52'),
(7, '132', '3'),
(8, '132', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '133', '10'),
(5, '133', '1,92'),
(7, '133', '3'),
(8, '133', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '134', '10'),
(5, '134', '2,12'),
(7, '134', '3'),
(8, '134', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(4, '135', '10'),
(5, '135', '2,82'),
(7, '135', '3'),
(8, '135', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(11, '113', '<a href=\"images/aks_covers/HighPerformance/540/B_Car_540.png\"><img src=\"images/aks_covers/HighPerformance/540/B_Car_540.png\" alt=\"B Car 540\" /></a>'),
(8, '71', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(11, '71', '<a href=\"images/akk_moto/UPLUS_EB_PP_Wet_Saries/EBZ7-3-1(1).png\"><img src=\"images/akk_moto/UPLUS_EB_PP_Wet_Saries/EBZ7-3-1(1).png\" alt=\"EBZ7 3 1(1)\" /></a><a href=\"images/akk_moto/UPLUS_EB_PP_Wet_Saries/EBZ7-3-1(2).png\"><img src=\"images/akk_moto/UPLUS_EB_PP_Wet_Saries/EB30-3(2).png\" alt=\"EB30 3(2)\" /></a>'),
(11, '78', '<a href=\"images/akk_moto/UPLUS_EB_PP_Wet_Saries/EB30-3(1).png\"><img src=\"images/akk_moto/UPLUS_EB_PP_Wet_Saries/EB30-3(1).png\" alt=\"EB30 3(1)\" /></a><a href=\"images/akk_moto/UPLUS_EB_PP_Wet_Saries/EB30-3(2).png\"><img src=\"images/akk_moto/UPLUS_EB_PP_Wet_Saries/EB30-3(2).png\" alt=\"EB30 3(2)\" /></a>'),
(11, '77', '<a href=\"images/akk_moto/UPLUS_EB_PP_Wet_Saries/EB20CH-4(1).png\"><img src=\"images/akk_moto/UPLUS_EB_PP_Wet_Saries/EB20CH-4(1).png\" alt=\"EB20CH 4(1)\" /></a><a href=\"images/akk_moto/UPLUS_EB_PP_Wet_Saries/EB20CH-4(2).png\"><img src=\"images/akk_moto/UPLUS_EB_PP_Wet_Saries/EB20CH-4(2).png\" alt=\"EB20CH 4(2)\" /></a>'),
(11, '76', '<a href=\"images/akk_moto/UPLUS_EB_PP_Wet_Saries/EB20-4(2).png\"><img src=\"images/akk_moto/UPLUS_EB_PP_Wet_Saries/EB20-4(2).png\" alt=\"EB20 4(2)\" /></a>'),
(11, '74', '<a href=\"images/akk_moto/UPLUS_EB_PP_Wet_Saries/EBZ12-4-1(1).png\"><img src=\"images/akk_moto/UPLUS_EB_PP_Wet_Saries/EBZ12-4-1(2).png\" alt=\"EBZ12 4 1(2)\" /></a>'),
(8, '79', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(11, '79', '<a href=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT4-3(2).png\"><img src=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT4-3(2).png\" alt=\"LT4 3(2)\" /></a>'),
(8, '80', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(11, '80', '<a href=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT5-3(2).png\"><img src=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT5-3(2).png\" alt=\"LT5 3(2)\" /></a>'),
(8, '81', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(11, '81', '<a href=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT7A-4(2).png\"><img src=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT7A-4(2).png\" alt=\"LT7A 4(2)\" /></a>'),
(8, '82', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(11, '82', '<a href=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT7-3(2).png\"><img src=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT7-3(2).png\" alt=\"LT7 3(2)\" /></a>'),
(8, '83', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(11, '83', '<a href=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT9A-4(2).png\"><img src=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT9A-4(2).png\" alt=\"LT9A 4(2)\" /></a>'),
(8, '84', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(11, '84', '<a href=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT9-4(2).png\"><img src=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT9-4(2).png\" alt=\"LT9 4(2)\" /></a>'),
(8, '85', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(11, '85', '<a href=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT12-4(2).png\"><img src=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT12-4(2).png\" alt=\"LT12 4(2)\" /></a>'),
(8, '86', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(11, '86', '<a href=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT14-4(2).png\"><img src=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT14-4(2).png\" alt=\"LT14 4(2)\" /></a>'),
(8, '87', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(11, '87', '<a href=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT18-3(2).png\"><img src=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT18-3(2).png\" alt=\"LT18 3(2)\" /></a>'),
(8, '88', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(11, '88', '<a href=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT20H-3(2).png\"><img src=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT20H-3(2).png\" alt=\"LT20H 3(2)\" /></a>'),
(8, '89', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(11, '89', '<a href=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT24-3(1).png\"><img src=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT24-3(1).png\" alt=\"LT24 3(1)\" /></a><a href=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT24-3(2).png\"><img src=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT24-3(2).png\" alt=\"LT24 3(2)\" /></a>'),
(8, '90', '<a href=\"#\" target=\"_self\">{source}<?php echo JText::_(\'DOWNLOAD\')?>{/source}</a>'),
(11, '90', '<a href=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT30-3(2).png\"><img src=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT30-3(2).png\" alt=\"LT30 3(2)\" /></a>'),
(11, '91', '<a href=\"images/akk_moto/UPLUS_HPG_Series/HPG4-3(2).png\"><img src=\"images/akk_moto/UPLUS_LT_ABS_Wet_Series/LT4-3(2).png\" alt=\"LT4 3(2)\" /></a>'),
(11, '92', '<a href=\"images/akk_moto/UPLUS_HPG_Series/HPG5-3(2).png\"><img src=\"images/akk_moto/UPLUS_HPG_Series/HPG5-3(2).png\" alt=\"HPG5 3(2)\" /></a>'),
(11, '93', '<a href=\"images/akk_moto/UPLUS_HPG_Series/HPG7-3(2).png\"><img src=\"images/akk_moto/UPLUS_HPG_Series/HPG7-3(2).png\" alt=\"HPG7 3(2)\" /></a>'),
(11, '94', '<a href=\"images/akk_moto/UPLUS_HPG_Series/HPG7A-4(2).png\"><img src=\"images/akk_moto/UPLUS_HPG_Series/HPG7A-4(2).png\" alt=\"HPG7A 4(2)\" /></a>'),
(11, '95', '<a href=\"images/akk_moto/UPLUS_HPG_Series/HPG7B-4(2).png\"><img src=\"images/akk_moto/UPLUS_HPG_Series/HPG7B-4(2).png\" alt=\"HPG7B 4(2)\" /></a>'),
(11, '96', '<a href=\"images/akk_moto/UPLUS_HPG_Series/HPG7C-3(2).png\"><img src=\"images/akk_moto/UPLUS_HPG_Series/HPG7C-3(2).png\" alt=\"HPG7C 3(2)\" /></a>'),
(11, '97', '<a href=\"images/akk_moto/UPLUS_HPG_Series/HPG9-4(2).png\"><img src=\"images/akk_moto/UPLUS_HPG_Series/HPG9-4(2).png\" alt=\"HPG9 4(2)\" /></a>'),
(11, '98', '<a href=\"images/akk_moto/UPLUS_HPG_Series/HPG9B-4(2).png\"><img src=\"images/akk_moto/UPLUS_HPG_Series/HPG9B-4(2).png\" alt=\"HPG9B 4(2)\" /></a>'),
(11, '99', '<a href=\"images/akk_moto/UPLUS_HPG_Series/HPG10A-4(2).png\"><img src=\"images/akk_moto/UPLUS_HPG_Series/HPG10A-4(2).png\" alt=\"HPG10A 4(2)\" /></a>'),
(11, '100', '<a href=\"images/akk_moto/UPLUS_HPG_Series/HPG12C-4(2).png\"><img src=\"images/akk_moto/UPLUS_HPG_Series/HPG12C-4(2).png\" alt=\"HPG12C 4(2)\" /></a>'),
(11, '101', '<a href=\"images/akk_moto/UPLUS_HPG_Series/HPG12B-4(2).png\"><img src=\"images/akk_moto/UPLUS_HPG_Series/HPG12B-4(2).png\" alt=\"HPG12B 4(2)\" /></a>'),
(11, '102', '<a href=\"images/akk_moto/UPLUS_HPG_Series/HPG14-4(2).png\"><img src=\"images/akk_moto/UPLUS_HPG_Series/HPG14-4(2).png\" alt=\"HPG14 4(2)\" /></a>'),
(11, '103', '<a href=\"images/akk_moto/UPLUS_HPG_Series/HPG14A-3(2).png\"><img src=\"images/akk_moto/UPLUS_HPG_Series/HPG14A-3(2).png\" alt=\"HPG14A 3(2)\" /></a>'),
(11, '105', '<a href=\"images/akk_moto/UPLUS_HPG_Series/HPG16-4(2).png\"><img src=\"images/akk_moto/UPLUS_HPG_Series/HPG16-4(2).png\" alt=\"HPG16 4(2)\" /></a>'),
(11, '106', '<a href=\"images/akk_moto/UPLUS_HPG_Series/HPG20-3(2).png\"><img src=\"images/akk_moto/UPLUS_HPG_Series/HPG20-3(2).png\" alt=\"HPG20 3(2)\" /></a>'),
(11, '104', '<a href=\"images/akk_moto/UPLUS_HPG_Series/HPG14B-4(2).png\"><img src=\"images/akk_moto/UPLUS_HPG_Series/HPG14B-4(2).png\" alt=\"HPG14B 4(2)\" /></a>'),
(11, '107', '<a href=\"images/akk_moto/UPLUS_MX_PP_High_Performance/MX9-4(2).png\"><img src=\"images/akk_moto/UPLUS_MX_PP_High_Performance/MX9-4(2).png\" alt=\"MX9 4(2)\" /></a>'),
(11, '108', '<a href=\"images/akk_moto/UPLUS_MX_PP_High_Performance/MX12-4(2).png\"><img src=\"images/akk_moto/UPLUS_MX_PP_High_Performance/MX12-4(2).png\" alt=\"MX12 4(2)\" /></a>'),
(11, '109', '<a href=\"images/akk_moto/UPLUS_MX_PP_High_Performance/MX14-4(2).png\"><img src=\"images/akk_moto/UPLUS_MX_PP_High_Performance/MX14-4(2).png\" alt=\"MX14 4(2)\" /></a>'),
(11, '111', '<a href=\"images/akk_moto/UPLUS_MX_PP_High_Performance/MX20-3(2).png\"><img src=\"images/akk_moto/UPLUS_MX_PP_High_Performance/MX20-3(2).png\" alt=\"MX20 3(2)\" /></a>'),
(11, '110', '<a href=\"images/akk_moto/UPLUS_MX_PP_High_Performance/MX18-3(2).png\"><img src=\"images/akk_moto/UPLUS_MX_PP_High_Performance/MX18-3(2).png\" alt=\"MX18 3(2)\" /></a>'),
(11, '112', '<a href=\"images/akk_moto/UPLUS_MX_PP_High_Performance/MX30-3(2).png\"><img src=\"images/akk_moto/UPLUS_MX_PP_High_Performance/MX30-3(2).png\" alt=\"MX30 3(2)\" /></a>'),
(11, '114', '<a href=\"images/aks_covers/HighPerformance/600/B_Car_600.png\"><img src=\"images/aks_covers/HighPerformance/600/B_Car_600.png\" alt=\"B Car 600\" /></a>'),
(11, '117', '<a href=\"images/aks_covers/HighPerformance/695/B_Car_695.png\"><img src=\"images/aks_covers/HighPerformance/695/B_Car_695.png\" alt=\"B Car 695\" /></a>'),
(11, '118', '<a href=\"images/aks_covers/HighPerformance/697/B_Car_697.png\"><img src=\"images/aks_covers/HighPerformance/697/B_Car_697.png\" alt=\"B Car 697\" /></a>'),
(11, '119', '<a href=\"images/aks_covers/HighPerformance/698/F_Car_698.png\"><img src=\"images/aks_covers/HighPerformance/698/F_Car_698.png\" alt=\"F Car 698\" /></a>'),
(11, '120', '<a href=\"images/aks_covers/HighPerformance/699/B_Car_699.png\"><img src=\"images/aks_covers/HighPerformance/699/B_Car_699.png\" alt=\"B Car 699\" /></a>'),
(11, '115', '<a href=\"images/aks_covers/HighPerformance/645/B_Car_645.png\"><img src=\"images/aks_covers/HighPerformance/645/B_Car_645.png\" alt=\"B Car 645\" /></a>'),
(11, '116', '<a href=\"images/aks_covers/HighPerformance/685/B_Car_685.png\"><img src=\"images/aks_covers/HighPerformance/685/B_Car_685.png\" alt=\"B Car 685\" /></a>'),
(11, '141', ''),
(11, '140', ''),
(10, '33', ''),
(1, '141', '242x175x190');

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_filters`
--

CREATE TABLE `mart_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_links`
--

CREATE TABLE `mart_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_links_terms0`
--

CREATE TABLE `mart_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_links_terms1`
--

CREATE TABLE `mart_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_links_terms2`
--

CREATE TABLE `mart_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_links_terms3`
--

CREATE TABLE `mart_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_links_terms4`
--

CREATE TABLE `mart_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_links_terms5`
--

CREATE TABLE `mart_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_links_terms6`
--

CREATE TABLE `mart_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_links_terms7`
--

CREATE TABLE `mart_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_links_terms8`
--

CREATE TABLE `mart_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_links_terms9`
--

CREATE TABLE `mart_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_links_termsa`
--

CREATE TABLE `mart_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_links_termsb`
--

CREATE TABLE `mart_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_links_termsc`
--

CREATE TABLE `mart_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_links_termsd`
--

CREATE TABLE `mart_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_links_termse`
--

CREATE TABLE `mart_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_links_termsf`
--

CREATE TABLE `mart_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_taxonomy`
--

CREATE TABLE `mart_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `mart_finder_taxonomy`
--

INSERT INTO `mart_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_taxonomy_map`
--

CREATE TABLE `mart_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_terms`
--

CREATE TABLE `mart_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_terms_common`
--

CREATE TABLE `mart_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `mart_finder_terms_common`
--

INSERT INTO `mart_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_tokens`
--

CREATE TABLE `mart_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_tokens_aggregate`
--

CREATE TABLE `mart_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_finder_types`
--

CREATE TABLE `mart_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_languages`
--

CREATE TABLE `mart_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_languages`
--

INSERT INTO `mart_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 185, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'eng', 'en_gb', '', '', '', '', 1, 1, 2),
(2, 56, 'ru-RU', 'Русский (Россия)', 'Russian (Russia)', 'rus', 'ru_ru', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `mart_menu`
--

CREATE TABLE `mart_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_menu`
--

INSERT INTO `mart_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 85, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 33, 38, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 34, 35, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 36, 37, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 39, 42, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 40, 41, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 43, 48, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 44, 45, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 46, 47, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 49, 50, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 51, 52, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 53, 54, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 55, 56, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 57, 58, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 59, 60, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 61, 62, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 63, 64, 1, '*', 0),
(102, 'mainmenu-en-gb', 'Categories', 'allcategories-en-gb', '', 'allcategories-en-gb', 'index.php?option=com_content&view=categories&id=0', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_base_description\":\"\",\"categories_description\":\"\",\"maxLevelcat\":\"\",\"show_empty_categories_cat\":\"\",\"show_subcat_desc_cat\":\"\",\"show_cat_num_articles_cat\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"display_num\":\"10\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":0,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 65, 66, 0, 'en-GB', 0),
(103, 'mainmenu-en-gb', 'Home', 'home-en-gb', '', 'home-en-gb', 'index.php?option=com_gantry5&view=custom', 'component', 1, 1, 1, 10016, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"particle\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 67, 68, 1, 'en-GB', 0),
(104, 'mainmenu-ru-ru', 'Продукция', 'products', '', 'products', 'index.php?option=com_content&view=categories&layout=g5_hydrogen:products&id=9', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_base_description\":\"\",\"categories_description\":\"\",\"maxLevelcat\":\"\",\"show_empty_categories_cat\":\"\",\"show_subcat_desc_cat\":\"\",\"show_cat_num_articles_cat\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"display_num\":\"10\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 15, 26, 0, '*', 0),
(105, 'mainmenu-ru-ru', 'Главная', 'home-ru', '', 'home-ru', 'index.php?option=com_gantry5&view=custom', 'component', 1, 1, 1, 10016, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"particle\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":0,\"menu_show\":0,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 11, 12, 1, 'ru-RU', 0),
(106, 'main', 'COM_GANTRY5', 'com-gantry5', '', 'com-gantry5', 'index.php?option=com_gantry5', 'component', 1, 1, 1, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 69, 74, 0, '', 1),
(107, 'main', 'COM_GANTRY5_ADMIN_MENU_THEMES', 'com-gantry5-admin-menu-themes', '', 'com-gantry5/com-gantry5-admin-menu-themes', 'index.php?option=com_gantry5&view=themes', 'component', 1, 106, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 70, 71, 0, '', 1),
(108, 'main', 'COM_GANTRY5_ADMIN_MENU_THEME', 'com-gantry5-admin-menu-theme', '', 'com-gantry5/com-gantry5-admin-menu-theme', 'index.php?option=com_gantry5', 'component', 1, 106, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 72, 73, 0, '', 1),
(109, 'main', 'COM_JCE', 'com-jce', '', 'com-jce', 'index.php?option=com_jce', 'component', 1, 1, 1, 10019, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, '{}', 75, 82, 0, '', 1),
(110, 'main', 'COM_JCE_MENU_CPANEL', 'com-jce-menu-cpanel', '', 'com-jce/com-jce-menu-cpanel', 'index.php?option=com_jce', 'component', 1, 109, 2, 10019, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 76, 77, 0, '', 1),
(111, 'main', 'COM_JCE_MENU_CONFIG', 'com-jce-menu-config', '', 'com-jce/com-jce-menu-config', 'index.php?option=com_jce&view=config', 'component', 1, 109, 2, 10019, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 78, 79, 0, '', 1),
(112, 'main', 'COM_JCE_MENU_PROFILES', 'com-jce-menu-profiles', '', 'com-jce/com-jce-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 1, 109, 2, 10019, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 80, 81, 0, '', 1),
(113, 'mainmenu-ru-ru', 'Автомобильные батареи', 'akk-avto', '', 'products/akk-avto', 'index.php?option=com_content&view=category&layout=g5_hydrogen:prods&id=13&filter_tag[0]=2&filter_tag[1]=3', 'component', 1, 104, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":0,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 16, 17, 0, '*', 0),
(114, 'mainmenu-ru-ru', 'Мотоциклетные батареи', 'akk-moto', '', 'products/akk-moto', 'index.php?option=com_content&view=category&layout=g5_hydrogen:prods&id=14&filter_tag[0]=3', 'component', 1, 104, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":0,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 18, 19, 0, '*', 0),
(115, 'mainmenu-ru-ru', 'Чехлы', 'covers', '', 'products/covers', 'index.php?option=com_content&view=category&layout=g5_hydrogen:prods&id=22', 'component', 1, 104, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":0,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 20, 21, 0, '*', 0),
(116, 'mainmenu-ru-ru', 'Зарядка', 'charging', '', 'products/charging', 'index.php?option=com_content&view=category&layout=g5_hydrogen:prods&id=23', 'component', 1, 104, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":0,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 22, 23, 0, '*', 0),
(117, 'mainmenu-ru-ru', 'Материалы', 'materials', '', 'materials', 'index.php?option=com_content&view=category&layout=g5_hydrogen:prods&id=24', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 27, 28, 0, '*', 0),
(118, 'mainmenu-ru-ru', 'О компании', 'about', '', 'about', 'index.php?option=com_content&view=category&layout=blog&id=32', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"0\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"solid-flex\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 13, 14, 0, '*', 0),
(119, 'mainmenu-ru-ru', 'Контакты', 'contacts', '', 'contacts', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 29, 32, 0, '*', 0),
(120, 'mainmenu-ru-ru', 'Автомобильные батареи', 'akk-avt', '', 'products/akk-avt', 'index.php?option=com_tags&view=tag&id[0]=2&id[1]=3&types[0]=5', 'component', 0, 104, 2, 29, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"\",\"tag_list_show_tag_description\":\"\",\"tag_list_image\":\"\",\"tag_list_description\":\"\",\"tag_list_orderby\":\"\",\"tag_list_orderby_direction\":\"\",\"tag_list_show_item_image\":\"1\",\"tag_list_show_item_description\":\"1\",\"tag_list_item_maximum_characters\":\"\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"return_any_or_all\":\"\",\"include_children\":\"\",\"show_feed_link\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 24, 25, 0, '*', 0),
(121, 'mainmenu-ru-ru', 'Где купить', 'where-buy', '', 'contacts/where-buy', 'index.php?option=com_content&view=article&id=140', 'component', 1, 119, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":0,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 30, 31, 0, '*', 0),
(122, 'mainmenu-ru-ru', 'Политика безопасности', 'security-policy', '', 'security-policy', 'index.php?option=com_content&view=article&id=141', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":0,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 83, 84, 0, '*', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `mart_menu_types`
--

CREATE TABLE `mart_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_menu_types`
--

INSERT INTO `mart_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0),
(2, 58, 'mainmenu-en-gb', 'Main Menu (en-GB)', 'The main menu for the site in language English (en-GB)', 0),
(3, 62, 'mainmenu-ru-ru', 'Main Menu (ru-RU)', 'The main menu for the site in language Русский (Россия)', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `mart_messages`
--

CREATE TABLE `mart_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_messages_cfg`
--

CREATE TABLE `mart_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_modules`
--

CREATE TABLE `mart_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_modules`
--

INSERT INTO `mart_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 0, '{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '2018-04-13 06:34:41', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 0, '{\"showHere\":\"1\",\"showHome\":\"1\",\"homeText\":\"\",\"showLast\":\"1\",\"separator\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sampledata', 6, 1, '{}', 1, '*'),
(88, 57, 'Language Switcher', '', '', 1, 'lang', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_languages', 1, 0, '{\"header_text\":\"\",\"footer_text\":\"\",\"dropdown\":\"0\",\"dropdownimage\":\"1\",\"lineheight\":\"0\",\"image\":\"0\",\"show_active\":\"0\",\"full_name\":\"0\",\"inline\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(89, 59, 'Menu en-GB', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{\"menutype\":\"mainmenu-en-gb\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, 'en-GB'),
(90, 63, 'Menu ru-RU', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{\"menutype\":\"mainmenu-ru-ru\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, 'ru-RU'),
(92, 69, 'find&buy', '', '', 1, 'local', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{\"particle\":\"{\\\"type\\\":\\\"particle\\\",\\\"particle\\\":\\\"custom\\\",\\\"title\\\":\\\"Custom HTML\\\",\\\"options\\\":{\\\"particle\\\":{\\\"enabled\\\":\\\"1\\\",\\\"html\\\":\\\"<div class=\\\\\\\"find\\\\\\\">\\\\n<a href=\\\\\\\"{source}<?php echo JURI::base();?>{\\/source}#find\\\\\\\"><i class=\\\\\\\"fa fa-battery sample-icons\\\\\\\"><\\/i><p>{source}<?php echo JText::_(\'SEARCH\');?>{\\/source}<\\/p><\\/a>\\\\n<\\/div>\\\\n<div class=\\\\\\\"buy\\\\\\\">\\\\n<a href=\\\\\\\"index.php?option=com_content&view=article&id=140\\\\\\\"><i class=\\\\\\\"fa fa-map-marker sample-icons\\\\\\\"><\\/i><p>{source}<?php echo JText::_(\'WHERE_BUY\');?>{\\/source}<\\/p>\\\\n<\\/a>\\\\n<\\/div>\\\",\\\"twig\\\":\\\"1\\\",\\\"filter\\\":\\\"1\\\"}}}\",\"moduleclass_sfx\":\"find_buy\",\"owncache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(93, 98, 'Блок на главной 1', '', '', 1, 'akk', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{\"particle\":\"{\\\"type\\\":\\\"particle\\\",\\\"particle\\\":\\\"sample\\\",\\\"title\\\":\\\"Sample Card\\\",\\\"options\\\":{\\\"particle\\\":{\\\"enabled\\\":\\\"1\\\",\\\"image\\\":\\\"gantry-media:\\/\\/akk.png\\\",\\\"headlink\\\":\\\"index.php?option=com_content&view=category&id=10\\\",\\\"headline\\\":\\\"\\u0410\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440\\u043d\\u044b\\u0435 \\u0431\\u0430\\u0442\\u0430\\u0440\\u0435\\u0438\\\",\\\"description\\\":\\\"\\u041a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0410\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440\\u043d\\u044b\\u0435 \\u0431\\u0430\\u0442\\u0430\\u0440\\u0435\\u0438 \\u043f\\u043e \\u0441\\u0430\\u043c\\u044b\\u043c \\u0432\\u044b\\u0433\\u043e\\u0434\\u043d\\u044b\\u043c \\u0446\\u0435\\u043d\\u0430\\u043c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435. \\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439 \\u0432\\u044b\\u0431\\u043e\\u0440 \\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432 \\u0438 \\u0430\\u043a\\u0446\\u0438\\u0439. \\u0412 \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\\u0435 \\u043c\\u043e\\u0436\\u043d\\u043e \\u043e\\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u0438\\u0442\\u044c\\u0441\\u044f \\u0441 \\u0446\\u0435\\u043d\\u0430\\u043c\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u0430\\u043c\\u0438, \\u0444\\u043e\\u0442\\u043e\\u0433\\u0440\\u0430\\u0444\\u0438\\u044f\\u043c\\u0438 \\u0438 \\u043f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u044b\\u043c\\u0438 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0430\\u043c\\u0438 \\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432. \\\"}}}\",\"moduleclass_sfx\":\"\",\"owncache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(94, 99, 'Блок на главной 2', '', '', 1, 'oil', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_gantry5_particle', 1, 0, '{\"particle\":\"{\\\"type\\\":\\\"particle\\\",\\\"particle\\\":\\\"sample\\\",\\\"title\\\":\\\"Sample Card\\\",\\\"options\\\":{\\\"particle\\\":{\\\"enabled\\\":\\\"1\\\",\\\"image\\\":\\\"gantry-media:\\/\\/akk.png\\\",\\\"headlink\\\":\\\"index.php?option=com_content&view=category&id=11\\\",\\\"headline\\\":\\\"\\u041c\\u0430\\u0441\\u043b\\u0430\\\",\\\"description\\\":\\\"\\u041a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0410\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440\\u043d\\u044b\\u0435 \\u0431\\u0430\\u0442\\u0430\\u0440\\u0435\\u0438 \\u043f\\u043e \\u0441\\u0430\\u043c\\u044b\\u043c \\u0432\\u044b\\u0433\\u043e\\u0434\\u043d\\u044b\\u043c \\u0446\\u0435\\u043d\\u0430\\u043c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435. \\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439 \\u0432\\u044b\\u0431\\u043e\\u0440 \\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432 \\u0438 \\u0430\\u043a\\u0446\\u0438\\u0439. \\u0412 \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\\u0435 \\u043c\\u043e\\u0436\\u043d\\u043e \\u043e\\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u0438\\u0442\\u044c\\u0441\\u044f \\u0441 \\u0446\\u0435\\u043d\\u0430\\u043c\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u0430\\u043c\\u0438, \\u0444\\u043e\\u0442\\u043e\\u0433\\u0440\\u0430\\u0444\\u0438\\u044f\\u043c\\u0438 \\u0438 \\u043f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u044b\\u043c\\u0438 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0430\\u043c\\u0438 \\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432. \\\"}}}\",\"moduleclass_sfx\":\"\",\"owncache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(95, 100, 'Блок на главной 3', '', '', 1, 'aks', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{\"particle\":\"{\\\"type\\\":\\\"particle\\\",\\\"particle\\\":\\\"sample\\\",\\\"title\\\":\\\"Sample Card\\\",\\\"options\\\":{\\\"particle\\\":{\\\"enabled\\\":\\\"1\\\",\\\"image\\\":\\\"gantry-media:\\/\\/aks.png\\\",\\\"headlink\\\":\\\"index.php?option=com_content&view=category&id=12\\\",\\\"headline\\\":\\\"\\u0410\\u043a\\u0441\\u0435\\u0441\\u0441\\u0443\\u0430\\u0440\\u044b\\\",\\\"description\\\":\\\"\\u0412 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435  \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0410\\u043a\\u0441\\u0435\\u0441\\u0441\\u0443\\u0430\\u0440\\u044b \\u0434\\u043b\\u044f \\u0430\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u0435\\u0439 \\u0410\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440\\u044b \\u0438 \\u0437\\u0430\\u0440\\u044f\\u0434\\u043d\\u044b\\u0435 \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430 \\u043d\\u0435\\u0434\\u043e\\u0440\\u043e\\u0433\\u043e \\u0441 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u043e\\u0439. \\u0423 \\u043d\\u0430\\u0441 \\u043d\\u0438\\u0437\\u043a\\u0438\\u0435 \\u0446\\u0435\\u043d\\u044b \\u043d\\u0430 \\u0410\\u043a\\u0441\\u0435\\u0441\\u0441\\u0443\\u0430\\u0440\\u044b \\u0434\\u043b\\u044f \\u0430\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u0435\\u0439 \\u0410\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440\\u044b \\u0438 \\u0437\\u0430\\u0440\\u044f\\u0434\\u043d\\u044b\\u0435 \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.\\\"}}}\",\"moduleclass_sfx\":\"\",\"owncache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(96, 101, 'Search', '', '', 1, 'feature', 0, '0000-00-00 00:00:00', '2018-04-13 14:57:55', '0000-00-00 00:00:00', 1, 'mod_rokajaxsearch', 1, 1, '{\"search_page\":\"index.php?option=com_search&view=search&tmpl=component\",\"adv_search_page\":\"index.php?option=com_search&view=search\",\"include_css\":\"1\",\"theme\":\"light\",\"searchphrase\":\"exact\",\"ordering\":\"popular\",\"limit\":\"2\",\"perpage\":\"5\",\"websearch\":\"0\",\"blogsearch\":\"0\",\"imagesearch\":\"0\",\"videosearch\":\"0\",\"websearch_api\":\"\",\"show_pagination\":\"0\",\"safesearch\":\"OFF\",\"image_size\":\"MEDIUM\",\"show_estimated\":\"0\",\"hide_divs\":\"\",\"include_link\":\"0\",\"show_description\":\"0\",\"include_category\":\"0\",\"show_readmore\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(97, 102, 'Slider', '', '<div class=\"show_1\"></div>\r\n<div class=\"show_2\"></div>\r\n<div class=\"show_3\"></div>\r\n<div class=\"show_4\"></div>', 1, 'show', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"g5_hydrogen:slider\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(98, 103, 'Automotogroup', '', '', 1, 'show', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"g5_hydrogen:HeaderIMG\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(99, 395, 'Бренды', '', '<div class=\"brends\">\r\n<div class=\"brend\"><a href=\"index.php?option=com_content&amp;view=article&amp;id=2&amp;Itemid=118\"><img src=\"gantry-media://logo/autosock.svg\" alt=\"autosock\" /></a></div>\r\n<div class=\"brend\"><a href=\"index.php?option=com_content&amp;view=article&amp;id=137:hugel&amp;catid=32:brends\"><img src=\"gantry-media://logo/hugel.svg\" alt=\"hugel\" /></a></div>\r\n<div class=\"brend\"><a href=\"index.php?option=com_content&amp;view=article&amp;id=57:a-140-088-313&amp;catid=20:hugel-action-heavy-duty\"><img src=\"gantry-media://logo/leoch.svg\" alt=\"leoch\" /></a></div>\r\n<div class=\"brend\"><a href=\"index.php?option=com_content&amp;view=article&amp;id=57:a-140-088-313&amp;catid=20:hugel-action-heavy-duty\"><img src=\"gantry-media://logo/oleoblitz.svg\" alt=\"oleoblitz\" /></a></div>\r\n<div class=\"brend\"><a href=\"index.php?option=com_content&amp;view=article&amp;id=57:a-140-088-313&amp;catid=20:hugel-action-heavy-duty\"><img src=\"gantry-media://logo/uplus.svg\" alt=\"uplas\" /></a></div>\r\n</div>', 1, 'oil', 0, '0000-00-00 00:00:00', '2018-05-21 12:59:39', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h2\",\"header_class\":\"full-title\",\"style\":\"0\"}', 0, '*'),
(100, 401, 'Бренды', '', '', 1, 'oil', 0, '0000-00-00 00:00:00', '2018-04-02 15:07:08', '0000-00-00 00:00:00', -2, 'mod_articles_news', 1, 1, '{\"catid\":[\"32\"],\"image\":\"1\",\"item_title\":\"1\",\"link_titles\":\"1\",\"item_heading\":\"h4\",\"triggerevents\":\"0\",\"showLastSeparator\":\"0\",\"show_introtext\":\"0\",\"readmore\":\"0\",\"count\":\"20\",\"show_featured\":\"1\",\"ordering\":\"a.publish_up\",\"direction\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h2\",\"header_class\":\"full-title\",\"style\":\"0\"}', 0, '*'),
(101, 403, 'Бренды', '', '', 1, 'oil', 0, '0000-00-00 00:00:00', '2018-05-22 07:52:33', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"base\":\"121\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `mart_modules_menu`
--

CREATE TABLE `mart_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_modules_menu`
--

INSERT INTO `mart_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(92, 0),
(93, 103),
(93, 105),
(94, 103),
(94, 105),
(95, 103),
(95, 105),
(96, 103),
(96, 105),
(97, 103),
(97, 105),
(98, -105),
(98, -103),
(98, -101),
(99, 118),
(100, 118),
(101, 118);

-- --------------------------------------------------------

--
-- Структура таблицы `mart_newsfeeds`
--

CREATE TABLE `mart_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_overrider`
--

CREATE TABLE `mart_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_postinstall_messages`
--

CREATE TABLE `mart_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_postinstall_messages`
--

INSERT INTO `mart_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 0),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 0),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 0),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1),
(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `mart_redirect_links`
--

CREATE TABLE `mart_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_schemas`
--

CREATE TABLE `mart_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_schemas`
--

INSERT INTO `mart_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.8.6-2018-02-14');

-- --------------------------------------------------------

--
-- Структура таблицы `mart_session`
--

CREATE TABLE `mart_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_tags`
--

CREATE TABLE `mart_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_tags`
--

INSERT INTO `mart_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 11, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 359, '2018-04-12 11:09:20', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 1, 2, 1, 'hugel', 'Hugel', 'hugel', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem eaque, necessitatibus, nesciunt sit optio officiis debitis officia vitae ullam, delectus iste aut culpa odit molestias neque nam quos expedita dolorem?</p>\r\n<p>Beatae illum quaerat eligendi id eveniet quibusdam perferendis saepe, autem laudantium minima optio explicabo praesentium vero laboriosam tempore error. Quo eaque eius harum magnam quaerat facilis, itaque molestias, dignissimos neque!</p>\r\n<p>Dignissimos facere, quidem. Earum dolore nulla eius itaque molestiae rerum rem voluptatum, vero perspiciatis, voluptates quaerat enim. Sapiente asperiores minima repudiandae accusantium ea et praesentium optio deleniti, vero nesciunt ipsa?</p>\r\n<p>Consequatur necessitatibus eveniet quisquam, maxime quo sunt sed a quae corrupti neque cumque veritatis unde deleniti asperiores aliquid libero voluptatibus consequuntur, in explicabo. Minus vitae at vel fugiat. Et, facere.</p>\r\n<p>Laborum esse hic nostrum animi cumque numquam qui maiores consequatur doloremque voluptas doloribus dicta voluptatibus sit totam, laboriosam quidem non! Voluptas libero velit quibusdam sed itaque culpa eius similique eaque.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:53:13', '', 359, '2018-05-22 06:24:29', '{\"image_intro\":\"images\\/logo\\/hugel.svg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/logo\\/hugel.svg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{}', 63, '*', 1, '2018-04-12 11:53:13', '2018-04-12 11:53:13'),
(3, 1, 3, 4, 1, 'uplus', 'Uplus', 'uplus', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem eaque, necessitatibus, nesciunt sit optio officiis debitis officia vitae ullam, delectus iste aut culpa odit molestias neque nam quos expedita dolorem?</p>\r\n<p>Beatae illum quaerat eligendi id eveniet quibusdam perferendis saepe, autem laudantium minima optio explicabo praesentium vero laboriosam tempore error. Quo eaque eius harum magnam quaerat facilis, itaque molestias, dignissimos neque!</p>\r\n<p>Dignissimos facere, quidem. Earum dolore nulla eius itaque molestiae rerum rem voluptatum, vero perspiciatis, voluptates quaerat enim. Sapiente asperiores minima repudiandae accusantium ea et praesentium optio deleniti, vero nesciunt ipsa?</p>\r\n<p>Consequatur necessitatibus eveniet quisquam, maxime quo sunt sed a quae corrupti neque cumque veritatis unde deleniti asperiores aliquid libero voluptatibus consequuntur, in explicabo. Minus vitae at vel fugiat. Et, facere.</p>\r\n<p>Laborum esse hic nostrum animi cumque numquam qui maiores consequatur doloremque voluptas doloribus dicta voluptatibus sit totam, laboriosam quidem non! Voluptas libero velit quibusdam sed itaque culpa eius similique eaque.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:53:21', '', 359, '2018-05-22 06:38:26', '{\"image_intro\":\"images\\/logo\\/uplus.svg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/logo\\/uplus.svg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{}', 0, '*', 1, '2018-04-12 11:53:21', '2018-04-12 11:53:21'),
(4, 1, 5, 6, 1, 'oleoblitz', 'OleoBlitz', 'oleoblitz', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem eaque, necessitatibus, nesciunt sit optio officiis debitis officia vitae ullam, delectus iste aut culpa odit molestias neque nam quos expedita dolorem?</p>\r\n<p>Beatae illum quaerat eligendi id eveniet quibusdam perferendis saepe, autem laudantium minima optio explicabo praesentium vero laboriosam tempore error. Quo eaque eius harum magnam quaerat facilis, itaque molestias, dignissimos neque!</p>\r\n<p>Dignissimos facere, quidem. Earum dolore nulla eius itaque molestiae rerum rem voluptatum, vero perspiciatis, voluptates quaerat enim. Sapiente asperiores minima repudiandae accusantium ea et praesentium optio deleniti, vero nesciunt ipsa?</p>\r\n<p>Consequatur necessitatibus eveniet quisquam, maxime quo sunt sed a quae corrupti neque cumque veritatis unde deleniti asperiores aliquid libero voluptatibus consequuntur, in explicabo. Minus vitae at vel fugiat. Et, facere.</p>\r\n<p>Laborum esse hic nostrum animi cumque numquam qui maiores consequatur doloremque voluptas doloribus dicta voluptatibus sit totam, laboriosam quidem non! Voluptas libero velit quibusdam sed itaque culpa eius similique eaque.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:53:24', '', 359, '2018-05-22 06:38:22', '{\"image_intro\":\"images\\/logo\\/oleoblitz.svg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/logo\\/oleoblitz.svg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{}', 0, '*', 1, '2018-04-12 11:53:24', '2018-04-12 11:53:24'),
(5, 1, 7, 8, 1, 'autosock', 'AutoSock', 'autosock', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem eaque, necessitatibus, nesciunt sit optio officiis debitis officia vitae ullam, delectus iste aut culpa odit molestias neque nam quos expedita dolorem?</p>\r\n<p>Beatae illum quaerat eligendi id eveniet quibusdam perferendis saepe, autem laudantium minima optio explicabo praesentium vero laboriosam tempore error. Quo eaque eius harum magnam quaerat facilis, itaque molestias, dignissimos neque!</p>\r\n<p>Dignissimos facere, quidem. Earum dolore nulla eius itaque molestiae rerum rem voluptatum, vero perspiciatis, voluptates quaerat enim. Sapiente asperiores minima repudiandae accusantium ea et praesentium optio deleniti, vero nesciunt ipsa?</p>\r\n<p>Consequatur necessitatibus eveniet quisquam, maxime quo sunt sed a quae corrupti neque cumque veritatis unde deleniti asperiores aliquid libero voluptatibus consequuntur, in explicabo. Minus vitae at vel fugiat. Et, facere.</p>\r\n<p>Laborum esse hic nostrum animi cumque numquam qui maiores consequatur doloremque voluptas doloribus dicta voluptatibus sit totam, laboriosam quidem non! Voluptas libero velit quibusdam sed itaque culpa eius similique eaque.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-04-12 11:53:29', '', 359, '2018-05-22 06:38:12', '{\"image_intro\":\"images\\/logo\\/autosock.svg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/logo\\/autosock.svg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{}', 4, '*', 1, '2018-04-12 11:53:29', '2018-04-12 11:53:29'),
(6, 1, 9, 10, 1, 'brends', 'Brends', 'brends', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 359, '2018-05-22 07:54:09', '', 0, '2018-05-22 07:54:09', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{}', 7, '*', 1, '2018-05-22 07:54:09', '2018-05-22 07:54:09');

-- --------------------------------------------------------

--
-- Структура таблицы `mart_template_styles`
--

CREATE TABLE `mart_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_template_styles`
--

INSERT INTO `mart_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}'),
(9, 'g5_hydrogen', 0, '1', 'Hydrogen - По умолчанию', '{\"configuration\":\"9\",\"preset\":\"automotogroup\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `mart_ucm_base`
--

CREATE TABLE `mart_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_ucm_base`
--

INSERT INTO `mart_ucm_base` (`ucm_id`, `ucm_item_id`, `ucm_type_id`, `ucm_language_id`) VALUES
(1, 4, 1, 0),
(2, 16, 5, 0),
(3, 15, 5, 0),
(4, 17, 5, 0),
(5, 19, 5, 0),
(6, 20, 5, 0),
(7, 21, 5, 0),
(8, 5, 1, 0),
(9, 6, 1, 0),
(10, 7, 1, 0),
(11, 8, 1, 0),
(12, 9, 1, 0),
(13, 10, 1, 0),
(14, 11, 1, 0),
(15, 12, 1, 0),
(16, 13, 1, 0),
(17, 14, 1, 0),
(18, 15, 1, 0),
(19, 16, 1, 0),
(20, 17, 1, 0),
(21, 18, 1, 0),
(22, 19, 1, 0),
(23, 20, 1, 0),
(24, 21, 1, 0),
(25, 22, 1, 0),
(26, 23, 1, 0),
(27, 24, 1, 0),
(28, 25, 1, 0),
(29, 26, 1, 0),
(30, 27, 1, 0),
(31, 28, 1, 0),
(32, 29, 1, 0),
(33, 30, 1, 0),
(34, 31, 1, 0),
(35, 32, 1, 0),
(36, 33, 1, 0),
(37, 34, 1, 0),
(38, 35, 1, 0),
(39, 36, 1, 0),
(40, 37, 1, 0),
(41, 38, 1, 0),
(43, 18, 5, 0),
(44, 13, 5, 0),
(45, 39, 1, 0),
(46, 40, 1, 0),
(47, 41, 1, 0),
(48, 42, 1, 0),
(49, 43, 1, 0),
(50, 44, 1, 0),
(51, 45, 1, 0),
(52, 46, 1, 0),
(53, 47, 1, 0),
(54, 48, 1, 0),
(55, 49, 1, 0),
(56, 50, 1, 0),
(57, 51, 1, 0),
(58, 52, 1, 0),
(59, 53, 1, 0),
(60, 54, 1, 0),
(61, 55, 1, 0),
(62, 56, 1, 0),
(63, 57, 1, 0),
(64, 58, 1, 0),
(65, 59, 1, 0),
(66, 60, 1, 0),
(67, 61, 1, 0),
(68, 62, 1, 0),
(69, 63, 1, 0),
(70, 64, 1, 0),
(71, 65, 1, 0),
(72, 66, 1, 0),
(73, 67, 1, 0),
(74, 68, 1, 0),
(75, 69, 1, 0),
(76, 70, 1, 0),
(77, 25, 5, 0),
(78, 26, 5, 0),
(79, 27, 5, 0),
(80, 71, 1, 0),
(81, 72, 1, 0),
(82, 73, 1, 0),
(83, 74, 1, 0),
(84, 75, 1, 0),
(85, 76, 1, 0),
(86, 77, 1, 0),
(87, 78, 1, 0),
(88, 14, 5, 0),
(89, 28, 5, 0),
(90, 79, 1, 0),
(91, 80, 1, 0),
(92, 81, 1, 0),
(93, 82, 1, 0),
(94, 83, 1, 0),
(95, 84, 1, 0),
(96, 85, 1, 0),
(97, 86, 1, 0),
(98, 87, 1, 0),
(99, 88, 1, 0),
(100, 89, 1, 0),
(101, 90, 1, 0),
(102, 91, 1, 0),
(103, 92, 1, 0),
(104, 93, 1, 0),
(105, 94, 1, 0),
(106, 95, 1, 0),
(107, 96, 1, 0),
(108, 97, 1, 0),
(109, 98, 1, 0),
(110, 99, 1, 0),
(111, 100, 1, 0),
(112, 101, 1, 0),
(113, 102, 1, 0),
(114, 103, 1, 0),
(115, 104, 1, 0),
(116, 105, 1, 0),
(117, 106, 1, 0),
(118, 107, 1, 0),
(119, 108, 1, 0),
(120, 109, 1, 0),
(121, 110, 1, 0),
(122, 111, 1, 0),
(123, 112, 1, 0),
(124, 29, 5, 0),
(125, 30, 5, 0),
(126, 31, 5, 0),
(127, 113, 1, 0),
(128, 114, 1, 0),
(129, 115, 1, 0),
(130, 116, 1, 0),
(131, 117, 1, 0),
(132, 118, 1, 0),
(133, 119, 1, 0),
(134, 120, 1, 0),
(135, 121, 1, 0),
(136, 122, 1, 0),
(137, 123, 1, 0),
(138, 124, 1, 0),
(139, 125, 1, 0),
(140, 126, 1, 0),
(141, 127, 1, 0),
(142, 128, 1, 0),
(143, 129, 1, 0),
(144, 130, 1, 0),
(145, 131, 1, 0),
(146, 132, 1, 0),
(147, 133, 1, 0),
(148, 134, 1, 0),
(149, 135, 1, 0),
(150, 33, 5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `mart_ucm_content`
--

CREATE TABLE `mart_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

--
-- Дамп данных таблицы `mart_ucm_content`
--

INSERT INTO `mart_ucm_content` (`core_content_id`, `core_type_alias`, `core_title`, `core_alias`, `core_body`, `core_state`, `core_checked_out_time`, `core_checked_out_user_id`, `core_access`, `core_params`, `core_featured`, `core_metadata`, `core_created_user_id`, `core_created_by_alias`, `core_created_time`, `core_modified_user_id`, `core_modified_time`, `core_language`, `core_publish_up`, `core_publish_down`, `core_content_item_id`, `asset_id`, `core_images`, `core_urls`, `core_hits`, `core_version`, `core_ordering`, `core_metakey`, `core_metadesc`, `core_catid`, `core_xreference`, `core_type_id`) VALUES
(1, 'com_content.article', 'L3 070 072 013', 'l3-070-072-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 06:59:52', 359, '2018-05-16 13:30:01', '*', '2018-05-08 06:59:52', '0000-00-00 00:00:00', 4, 105, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/NANOGOLDEN_START_STOP_AGM.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 8, 17, 1, '', '', 15, '', 1),
(2, 'com_content.category', 'HUGEL NANOGOLDEN START-STOP EFB. Enhanced Lead Acid Battery with Nano Chtystal Technology', 'hugel-nanogolden-start-stop-efb', '<ul>\r\n<li>Полностью герметичная двойная крышка.</li>\r\n<li>Запатентованная конструкция отвечает самым сложным требованиям герметичности и прошла тест на опрокидывание при угле наклона 180º:\r\n<ul>\r\n<li>пробки со специальными лабиринтами</li>\r\n<li>пламегасители интегрированы в крышку</li>\r\n<li>индикатор уровня заряда, расположенный на крышке</li>\r\n<li>специальная крышка клеммной коробки и удобная для переноса ручка.</li>\r\n</ul>\r\n</li>\r\n<li>Положительные литые пластины.</li>\r\n<li>Специальные сепараторы с низким внутренним сопротивлением.</li>\r\n<li>Специальная формула пасты, изготовленной по технологии «Nano Crystal».</li>\r\n<li>Специальный сплав с улучшенной коррозионной стойкостью при высоких температурах.</li>\r\n<li>Максимальный уровень электролита поверх пластин.</li>\r\n</ul>\r\n<p>Преимущества&nbsp;</p>\r\n<ul>\r\n<li>Срок службы аккумулятора в 2,5 раза больше, чем у стандартных свинцово-кислотных аккумуляторов.</li>\r\n<li>Пусковая мощность выше на 15%, по сравнению со стандартными аккумуляторами.</li>\r\n<li>Готов к эксплуатации.</li>\r\n<li>Повышенная безопасность благодаря пламегасителям.</li>\r\n</ul>', 1, '0000-00-00 00:00:00', 0, 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_avto\\/hugel\\/NANOGOLDEN_START_STOP_EFB.png\",\"image_alt\":\"\"}', 0, '{\"author\":\"\",\"robots\":\"\"}', 359, '', '2018-04-12 11:51:24', 359, '2018-05-18 07:34:25', '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 16, 106, '{}', '{}', 0, 1, 0, '', '', 13, '', 5),
(3, 'com_content.category', 'HUGEL NANOGOLDEN START-STOP AGM. Enhanced Lead Acid Battery with Nano Chtystal Technology', 'hugel-nanogolden-start-stop-agm', '<ul>\r\n<li>Полностью герметичная двойная крышка.</li>\r\n<li>Запатентованная конструкция отвечает самым сложным требованиям герметичности и прошла тест на опрокидывание при угле наклона 180º:\r\n<ul>\r\n<li>пробки со специальными лабиринтами</li>\r\n<li>пламегасители интегрированы в крышку</li>\r\n<li>индикатор уровня заряда, расположенный на крышке</li>\r\n<li>специальная крышка клеммной коробки и удобная для переноса ручка.</li>\r\n</ul>\r\n</li>\r\n<li>Положительные литые пластины.</li>\r\n<li>Специальные сепараторы с низким внутренним сопротивлением.</li>\r\n<li>Специальная формула пасты, изготовленной по технологии «Nano Crystal».</li>\r\n<li>Специальный сплав с улучшенной коррозионной стойкостью при высоких температурах.</li>\r\n<li>Максимальный уровень электролита поверх пластин.</li>\r\n</ul>\r\n<p>Преимущества&nbsp;</p>\r\n<ul>\r\n<li>Срок службы аккумулятора в 2,5 раза больше, чем у стандартных свинцово-кислотных аккумуляторов.</li>\r\n<li>Пусковая мощность выше на 15%, по сравнению со стандартными аккумуляторами.</li>\r\n<li>Готов к эксплуатации.</li>\r\n<li>Повышенная безопасность благодаря пламегасителям.</li>\r\n</ul>', 1, '0000-00-00 00:00:00', 0, 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_avto\\/hugel\\/NANOGOLDEN_START_STOP_AGM.png\",\"image_alt\":\"\"}', 0, '{\"author\":\"\",\"robots\":\"\"}', 359, '', '2018-04-12 11:51:10', 359, '2018-05-18 07:34:15', '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 15, 107, '{}', '{}', 0, 1, 0, '', '', 13, '', 5),
(4, 'com_content.category', 'HUGEL ULTRA. Sealed Maintenance Free with Silver Tin Alloy', 'hugel-ultra', '<ul>\r\n<li>Полная герметичность двойной крышки. Запатентованная конструкция отвечает самым сложным требованиям герметичности и прошла тест на опрокидывание при угле наклона 180º:\r\n<ul>\r\n<li>пробки со специальными лабиринтами;</li>\r\n<li>пламегасители, интегрированные в крышку;</li>\r\n<li>индикатор уровня заряда, расположенный на крышке;</li>\r\n<li>специальная крышка клеммной коробки и удобная для переноса ручка.</li>\r\n</ul>\r\n</li>\r\n<li>Пластины CA-CA, легированнные сплавом серебра и олова.</li>\r\n<li>Полиэтиленовые сепараторы, препятствующие возникновению короткого замыкания.</li>\r\n</ul>\r\n<p>Преимущества:</p>\r\n<ul>\r\n<li>Срок службы аккумулятора в 1,5 раза больше, чем у стандартных свинцово-кислотных аккумуляторов.</li>\r\n<li>Пусковая мощность выше на 10%, по сравнению со стандартными аккумуляторами.</li>\r\n<li>Готов к эксплуатации, нет необходимости в обслуживании.</li>\r\n<li>Повышенная безопасность благодаря пламегасителям.</li>\r\n<li>Увеличенное количество циклов заряд-разряд.</li>\r\n<li>Повышенный пусковой ток и увеличенная емкость.</li>\r\n<li>Широкий ассортимент продукции, совместимой как с малолитражными транспортными средствами, так и с автомобилями нового поколения с бензиновыми или дизельными двигателями.</li>\r\n</ul>', 1, '0000-00-00 00:00:00', 0, 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"image_alt\":\"\"}', 0, '{\"author\":\"\",\"robots\":\"\"}', 359, '', '2018-04-12 11:51:34', 359, '2018-05-18 07:34:21', '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 17, 108, '{}', '{}', 0, 1, 0, '', '', 13, '', 5),
(5, 'com_content.category', 'HUGEL ACTION. Closed Lid With Ca-Ca Technology', 'hugel-action', '<ul>\r\n<li>Полугерметичная специальная крышка запатентованной конструкции.</li>\r\n<li>Пластины СА-СА Exmet (СА-СА технология Эксмет).</li>\r\n<li>Специальная ручка для переноски аккумулятора.</li>\r\n<li>Специально разработанные лабиринтные пробки.</li>\r\n<li>В крышке АКБ имеется специально разработанный интегральный пламегаситель.</li>\r\n<li>Индикатор заряда батареи на крышке.</li>\r\n<li>Конверт-сепараторы из полиэтилена.</li>\r\n</ul>\r\n<p>Преимущества:</p>\r\n<ul>\r\n<li>Срок службы на 15% дольше, чем у стандартных батарей.</li>\r\n<li>Ток холодной прокрутки на 5% выше, чем у стандартных батарей</li>\r\n<li>Не требует обслуживания.</li>\r\n<li>Долгий срок службы при любом климате.</li>\r\n<li>Высокая устойчивость к коррозии и короткому замыканию</li>\r\n</ul>', 1, '0000-00-00 00:00:00', 0, 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"image_alt\":\"\"}', 0, '{\"author\":\"\",\"robots\":\"\"}', 359, '', '2018-04-12 11:51:47', 359, '2018-05-18 07:34:38', '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 19, 109, '{}', '{}', 0, 1, 0, '', '', 13, '', 5),
(6, 'com_content.category', 'HUGEL ACTION HEAVY DUTY. Super Calcium Alloy', 'hugel-action-heavy-duty', '<ul>\r\n<li>Усиленные пластины, изготовленные по гибридной технологии.</li>\r\n<li>Glassmate сепараторы.</li>\r\n<li>Специальный термоклей для повышенной устойчивости к вибрации.</li>\r\n<li>Максимальный уровень электролита поверх пластин.</li>\r\n<li>Не нуждается в обслуживании.</li>\r\n</ul>\r\n<p>Преимущества:</p>\r\n<ul>\r\n<li>Ток холодной прокрутки на 5% выше, по сравнению со стандартными батареями.</li>\r\n<li>Высокая устойчивость к вибрационным нагрузкам.</li>\r\n<li>Долгий срок службы. • Готовность к эксплуатации.</li>\r\n<li>Не требует обслуживания.</li>\r\n<li>Устойчивость к сложным погодным и дорожным условиям.</li>\r\n<li>Высокая пусковая мощность.</li>\r\n</ul>', 1, '0000-00-00 00:00:00', 0, 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_avto\\/hugel\\/HEAVY_DUTY.png\",\"image_alt\":\"\"}', 0, '{\"author\":\"\",\"robots\":\"\"}', 359, '', '2018-04-12 11:51:55', 359, '2018-05-18 07:34:34', '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 20, 110, '{}', '{}', 0, 1, 0, '', '', 13, '', 5),
(7, 'com_content.category', 'HUGEL ACTION LEISURE', 'hugel-action-leisure', '<ul>\r\n<li>Гибридные пластины специально усилены для использования на катерах и автофургонах.</li>\r\n<li>Специально разработанные пластины и разделители.</li>\r\n<li>Особый состав электролита.</li>\r\n<li>Высокая пусковая мощность и производительность.</li>\r\n</ul>\r\n<p>Преимущества:</p>\r\n<ul>\r\n<li>Повышенный пусковой ток и увеличенная емкость.</li>\r\n<li>Максимальная производительность.</li>\r\n<li>Сверхустойчивость к ударным толчкам и воздействию волн.</li>\r\n</ul>', 1, '0000-00-00 00:00:00', 0, 1, '{\"category_layout\":\"g5_hydrogen:prods\",\"image\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"image_alt\":\"\"}', 0, '{\"author\":\"\",\"robots\":\"\"}', 359, '', '2018-04-12 11:52:08', 359, '2018-05-17 15:41:46', '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 21, 111, '{}', '{}', 0, 1, 0, '', '', 13, '', 5),
(8, 'com_content.article', 'L5 092 085 013', 'l5-092-085-013', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta error amet ab molestiae ea quis dolores dignissimos et harum excepturi. Neque illum in iste quidem, veritatis nesciunt, ut perspiciatis architecto.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta error amet ab molestiae ea quis dolores dignissimos et harum excepturi. Neque illum in iste quidem, veritatis nesciunt, ut perspiciatis architecto.Dolor suscipit autem cum, consectetur animi mollitia id, neque saepe velit vero quia ullam asperiores quaerat error ipsa aut, sit officiis dolorum labore. Nam perferendis aperiam velit, placeat similique. Blanditiis!Quae officiis quam aspernatur sequi vitae id laudantium pariatur et, asperiores ad autem, quos quibusdam reiciendis in non provident! Praesentium, ipsum ex similique amet dicta possimus qui quo nisi nobis!</p>', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 07:48:47', 359, '2018-05-17 09:10:22', '*', '2018-05-08 07:48:47', '0000-00-00 00:00:00', 5, 113, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/NANOGOLDEN_START_STOP_AGM.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 108, 18, 0, '', '', 15, '', 1),
(9, 'com_content.article', 'L2 60 560 013', 'l2-60-560-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 08:37:31', 359, '2018-05-08 08:37:31', '*', '2018-05-08 08:37:31', '0000-00-00 00:00:00', 6, 115, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/NANOGOLDEN_START_STOP_EFB.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 1, 0, '', '', 16, '', 1),
(10, 'com_content.article', 'LB2 60 560 013', 'lb2-60-560-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 08:37:31', 359, '2018-05-08 08:39:00', '*', '2018-05-08 08:37:31', '0000-00-00 00:00:00', 7, 117, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/NANOGOLDEN_START_STOP_EFB.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 16, '', 1),
(11, 'com_content.article', 'L3 72 680 013', 'l3-72-680-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 08:53:39', 359, '2018-05-08 08:53:39', '*', '2018-05-08 08:53:39', '0000-00-00 00:00:00', 8, 119, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/NANOGOLDEN_START_STOP_EFB.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 1, 0, '', '', 16, '', 1),
(12, 'com_content.article', 'LB3 65 430 013', 'lb3-65-430-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 08:53:39', 359, '2018-05-08 08:54:33', '*', '2018-05-08 08:53:39', '0000-00-00 00:00:00', 9, 121, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/NANOGOLDEN_START_STOP_EFB.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 16, '', 1),
(13, 'com_content.article', 'LB4 75 730 013', 'lb4-75-730-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 08:53:39', 359, '2018-05-08 08:55:43', '*', '2018-05-08 08:53:39', '0000-00-00 00:00:00', 10, 123, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/NANOGOLDEN_START_STOP_EFB.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 16, '', 1),
(14, 'com_content.article', 'L5 100 920 013', 'l5-100-920-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 08:53:39', 359, '2018-05-08 08:56:29', '*', '2018-05-08 08:53:39', '0000-00-00 00:00:00', 11, 125, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/NANOGOLDEN_START_STOP_EFB.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 16, '', 1),
(15, 'com_content.article', 'L1 052 046 013', 'l1-052-046-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:07:30', 359, '2018-05-08 09:07:30', '*', '2018-05-08 09:07:30', '0000-00-00 00:00:00', 12, 127, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 1, 0, '', '', 17, '', 1),
(16, 'com_content.article', 'LB1 50 042 013', 'lb1-50-042-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:07:30', 359, '2018-05-08 09:08:14', '*', '2018-05-08 09:07:30', '0000-00-00 00:00:00', 13, 129, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 17, '', 1),
(17, 'com_content.article', 'L2 062 054 113', 'l2-062-054-113', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:07:30', 359, '2018-05-08 09:10:51', '*', '2018-05-08 09:07:30', '0000-00-00 00:00:00', 14, 131, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 0, '', '', 17, '', 1),
(18, 'com_content.article', 'LB2 062 054 013', 'lb2-062-054-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:07:30', 359, '2018-05-10 09:00:19', '*', '2018-05-08 09:07:30', '0000-00-00 00:00:00', 15, 133, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 4, 8, '', '', 17, '', 1),
(19, 'com_content.article', 'L3 075 070 013', 'l3-075-070-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:07:30', 359, '2018-05-08 09:16:18', '*', '2018-05-08 09:07:30', '0000-00-00 00:00:00', 16, 135, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 17, '', 1),
(20, 'com_content.article', 'L3 075 070 113', 'l3-075-070-113', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:07:30', 359, '2018-05-08 09:17:07', '*', '2018-05-08 09:07:30', '0000-00-00 00:00:00', 17, 137, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 0, '', '', 17, '', 1),
(21, 'com_content.article', 'L2 062 054 013', 'l2-062-054-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:07:29', 359, '2018-05-08 09:19:06', '*', '2018-05-08 09:07:29', '0000-00-00 00:00:00', 18, 139, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 17, '', 1),
(22, 'com_content.article', 'LB3 070 070 013', 'lb3-070-070-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:21:27', 359, '2018-05-08 09:26:49', '*', '2018-05-08 09:21:27', '0000-00-00 00:00:00', 19, 141, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 4, '', '', 17, '', 1),
(23, 'com_content.article', 'L4 082 080 013', 'l4-082-080-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:21:27', 359, '2018-05-08 09:26:57', '*', '2018-05-08 09:21:27', '0000-00-00 00:00:00', 20, 143, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 3, '', '', 17, '', 1),
(24, 'com_content.article', 'LB4 082 074 013', 'lb4-082-074-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:21:27', 359, '2018-05-08 09:24:17', '*', '2018-05-08 09:21:27', '0000-00-00 00:00:00', 21, 145, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 17, '', 1),
(25, 'com_content.article', 'L5 100 086 013', 'l5-100-086-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:21:27', 359, '2018-05-08 09:25:07', '*', '2018-05-08 09:21:27', '0000-00-00 00:00:00', 22, 147, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 17, '', 1),
(26, 'com_content.article', 'L5 100 960 013', 'l5-100-960-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:21:27', 359, '2018-05-08 09:25:50', '*', '2018-05-08 09:21:27', '0000-00-00 00:00:00', 23, 149, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 17, '', 1),
(27, 'com_content.article', 'NS40 035 030 030', 'ns40-035-030-030', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:31:00', 359, '2018-05-08 09:31:00', '*', '2018-05-08 09:31:00', '0000-00-00 00:00:00', 24, 151, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 1, 0, '', '', 18, '', 1),
(28, 'com_content.article', 'NS40 035 030 130', 'ns40-035-030-130', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:31:00', 359, '2018-05-08 09:31:43', '*', '2018-05-08 09:31:00', '0000-00-00 00:00:00', 25, 153, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 18, '', 1),
(29, 'com_content.article', 'NS40 042 036 030', 'ns40-042-036-030', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:31:00', 359, '2018-05-08 09:32:52', '*', '2018-05-08 09:31:00', '0000-00-00 00:00:00', 26, 155, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 18, '', 1),
(30, 'com_content.article', 'NS40 042 036 130', 'ns40-042-036-130', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:31:00', 359, '2018-05-17 11:16:22', '*', '2018-05-08 09:31:00', '0000-00-00 00:00:00', 27, 157, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 11, '', '', 18, '', 1),
(31, 'com_content.article', 'NS60 045 040 010', 'ns60-045-040-010', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:31:00', 359, '2018-05-17 11:16:18', '*', '2018-05-08 09:31:00', '0000-00-00 00:00:00', 28, 159, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 10, '', '', 18, '', 1),
(32, 'com_content.article', 'NS60 045 040 110', 'ns60-045-040-110', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:31:00', 359, '2018-05-17 11:16:13', '*', '2018-05-08 09:31:00', '0000-00-00 00:00:00', 29, 161, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 9, '', '', 18, '', 1);
INSERT INTO `mart_ucm_content` (`core_content_id`, `core_type_alias`, `core_title`, `core_alias`, `core_body`, `core_state`, `core_checked_out_time`, `core_checked_out_user_id`, `core_access`, `core_params`, `core_featured`, `core_metadata`, `core_created_user_id`, `core_created_by_alias`, `core_created_time`, `core_modified_user_id`, `core_modified_time`, `core_language`, `core_publish_up`, `core_publish_down`, `core_content_item_id`, `asset_id`, `core_images`, `core_urls`, `core_hits`, `core_version`, `core_ordering`, `core_metakey`, `core_metadesc`, `core_catid`, `core_xreference`, `core_type_id`) VALUES
(33, 'com_content.article', 'D20 050 042 013', 'd20-050-042-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:31:00', 359, '2018-05-17 11:16:09', '*', '2018-05-08 09:31:00', '0000-00-00 00:00:00', 30, 163, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 8, '', '', 18, '', 1),
(34, 'com_content.article', 'D23 060 054 011', 'd23-060-054-011', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:31:00', 359, '2018-05-17 11:16:03', '*', '2018-05-08 09:31:00', '0000-00-00 00:00:00', 31, 165, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 7, '', '', 18, '', 1),
(35, 'com_content.article', 'D23 060 054 110', 'd23-060-054-110', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:31:00', 359, '2018-05-17 11:15:58', '*', '2018-05-08 09:31:00', '0000-00-00 00:00:00', 32, 167, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 6, '', '', 18, '', 1),
(36, 'com_content.article', 'D26 072 060 017', 'd26-072-060-017', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:31:00', 359, '2018-05-17 11:15:44', '*', '2018-05-08 09:31:00', '0000-00-00 00:00:00', 33, 169, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 5, '', '', 18, '', 1),
(37, 'com_content.article', 'D26 072 060 117', 'd26-072-060-117', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:31:00', 359, '2018-05-17 11:15:35', '*', '2018-05-08 09:31:00', '0000-00-00 00:00:00', 34, 171, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 4, 4, '', '', 18, '', 1),
(38, 'com_content.article', 'D31 090 075 011', 'd31-090-075-011', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:31:00', 359, '2018-05-17 11:15:29', '*', '2018-05-08 09:31:00', '0000-00-00 00:00:00', 35, 173, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 3, '', '', 18, '', 1),
(39, 'com_content.article', 'D31 090 075 111', 'd31-090-075-111', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:31:00', 359, '2018-05-17 11:16:31', '*', '2018-05-08 09:31:00', '0000-00-00 00:00:00', 36, 175, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 3, 4, 2, '', '', 18, '', 1),
(40, 'com_content.article', 'D31 100 076 011', 'd31-100-076-011', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:31:00', 359, '2018-05-17 11:15:03', '*', '2018-05-08 09:31:00', '0000-00-00 00:00:00', 37, 177, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 1, '', '', 18, '', 1),
(41, 'com_content.article', 'D31 100 076 111', 'd31-100-076-111', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-08 09:31:00', 359, '2018-05-17 11:12:57', '*', '2018-05-08 09:31:00', '0000-00-00 00:00:00', 38, 179, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 0, '', '', 18, '', 1),
(43, 'com_content.category', 'HUGEL ULTRA ASIA. Sealed Maintenance Free with Silver Tin Alloy', 'hugel-ultra-asia', '<ul>\r\n<li>Полная герметичность двойной крышки. Запатентованная конструкция отвечает самым сложным требованиям герметичности и прошла тест на опрокидывание при угле наклона 180º:\r\n<ul>\r\n<li>пробки со специальными лабиринтами;</li>\r\n<li>пламегасители, интегрированные в крышку;</li>\r\n<li>индикатор уровня заряда, расположенный на крышке;</li>\r\n<li>специальная крышка клеммной коробки и удобная для переноса ручка.</li>\r\n</ul>\r\n</li>\r\n<li>Пластины CA-CA, легированнные сплавом серебра и олова.</li>\r\n<li>Полиэтиленовые сепараторы, препятствующие возникновению короткого замыкания.</li>\r\n</ul>\r\n<p>Преимущества:</p>\r\n<ul>\r\n<li>Срок службы аккумулятора в 1,5 раза больше, чем у стандартных свинцово-кислотных аккумуляторов.</li>\r\n<li>Пусковая мощность выше на 10%, по сравнению со стандартными аккумуляторами.</li>\r\n<li>Готов к эксплуатации, нет необходимости в обслуживании.</li>\r\n<li>Повышенная безопасность благодаря пламегасителям.</li>\r\n<li>Увеличенное количество циклов заряд-разряд.</li>\r\n<li>Повышенный пусковой ток и увеличенная емкость.</li>\r\n<li>Широкий ассортимент продукции, совместимой как с малолитражными транспортными средствами, так и с автомобилями нового поколения с бензиновыми или дизельными двигателями.</li>\r\n</ul>', 1, '0000-00-00 00:00:00', 0, 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_avto\\/hugel\\/ULTRA_ASIA.png\",\"image_alt\":\"\"}', 0, '{\"author\":\"\",\"robots\":\"\"}', 359, '', '2018-04-12 11:51:40', 359, '2018-05-18 07:34:40', '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 18, 181, '{}', '{}', 0, 1, 0, '', '', 13, '', 5),
(44, 'com_content.category', 'Автомобильные батареи', 'akk-avto', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}', 0, '{\"author\":\"\",\"robots\":\"\"}', 359, '', '2018-04-12 11:50:01', 359, '2018-05-23 08:47:47', '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 13, 182, '{}', '{}', 0, 1, 0, '', '', 10, '', 5),
(45, 'com_content.article', 'L1 050 045 013', 'l1-050-045-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 07:41:13', 359, '2018-05-17 11:12:18', '*', '2018-05-17 07:41:13', '0000-00-00 00:00:00', 39, 187, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 19, '', 1),
(46, 'com_content.article', 'L1 050 045 113', 'l1-050-045-113', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 07:41:13', 359, '2018-05-17 11:18:27', '*', '2018-05-17 07:41:13', '0000-00-00 00:00:00', 40, 189, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 19, '', 1),
(47, 'com_content.article', 'LB1 050 042 013', 'lb1-050-042-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 07:41:13', 359, '2018-05-17 11:19:23', '*', '2018-05-17 07:41:13', '0000-00-00 00:00:00', 41, 191, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 19, '', 1),
(48, 'com_content.article', 'L2 55 490 013', 'l2-55-490-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 07:41:13', 359, '2018-05-17 11:20:39', '*', '2018-05-17 07:41:13', '0000-00-00 00:00:00', 42, 193, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 19, '', 1),
(49, 'com_content.article', 'L2 55 490 113', 'l2-55-490-113', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 07:41:13', 359, '2018-05-17 11:21:33', '*', '2018-05-17 07:41:13', '0000-00-00 00:00:00', 43, 195, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 19, '', 1),
(50, 'com_content.article', 'L2 060 054 013', 'l2-060-054-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 07:41:13', 359, '2018-05-17 11:22:42', '*', '2018-05-17 07:41:13', '0000-00-00 00:00:00', 44, 197, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 19, '', 1),
(51, 'com_content.article', 'L2 060 054 113', 'l2-060-054-113', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 07:41:13', 359, '2018-05-17 11:23:06', '*', '2018-05-17 07:41:13', '0000-00-00 00:00:00', 45, 199, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 19, '', 1),
(52, 'com_content.article', 'LB2 060 054 013', 'lb2-060-054-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 07:41:13', 359, '2018-05-17 11:23:57', '*', '2018-05-17 07:41:13', '0000-00-00 00:00:00', 46, 201, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 19, '', 1),
(53, 'com_content.article', 'L3 075 070 013', 'l3-075-070-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 07:41:13', 359, '2018-05-17 11:24:43', '*', '2018-05-17 07:41:13', '0000-00-00 00:00:00', 47, 203, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 19, '', 1),
(54, 'com_content.article', 'L3 075 070 113', 'l3-075-070-113', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 07:41:13', 359, '2018-05-17 11:25:59', '*', '2018-05-17 07:41:13', '0000-00-00 00:00:00', 48, 205, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 0, '', '', 19, '', 1),
(55, 'com_content.article', 'LB3 075 070 013', 'lb3-075-070-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 07:41:13', 359, '2018-05-17 11:26:41', '*', '2018-05-17 07:41:13', '0000-00-00 00:00:00', 49, 207, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 19, '', 1),
(56, 'com_content.article', 'L4 082 072 013', 'l4-082-072-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 07:41:13', 359, '2018-05-17 11:27:22', '*', '2018-05-17 07:41:13', '0000-00-00 00:00:00', 50, 209, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 19, '', 1),
(57, 'com_content.article', 'LB4 080 074 013', 'lb4-080-074-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 07:41:13', 359, '2018-05-17 11:28:09', '*', '2018-05-17 07:41:13', '0000-00-00 00:00:00', 51, 211, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 19, '', 1),
(58, 'com_content.article', 'L5 092 076 013', 'l5-092-076-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 07:41:13', 359, '2018-05-17 11:29:01', '*', '2018-05-17 07:41:13', '0000-00-00 00:00:00', 52, 213, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 19, '', 1),
(59, 'com_content.article', 'L5 100 086 013', 'l5-100-086-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 07:41:13', 359, '2018-05-17 11:29:36', '*', '2018-05-17 07:41:13', '0000-00-00 00:00:00', 53, 215, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 19, '', 1),
(60, 'com_content.article', 'LB5 100 086 013', 'lb5-100-086-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 07:41:13', 359, '2018-05-17 11:30:12', '*', '2018-05-17 07:41:13', '0000-00-00 00:00:00', 54, 217, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 19, '', 1),
(61, 'com_content.article', 'TRCT L 115 076 010', 'trct-l-115-076-010', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 11:31:34', 359, '2018-05-17 11:31:34', '*', '2018-05-17 11:31:34', '0000-00-00 00:00:00', 55, 219, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/HEAVY_DUTY.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 1, 0, '', '', 20, '', 1),
(62, 'com_content.article', 'TRCT 125 080 010', 'trct-125-080-010', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 11:31:34', 359, '2018-05-17 11:33:13', '*', '2018-05-17 11:31:34', '0000-00-00 00:00:00', 56, 221, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/HEAVY_DUTY.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 20, '', 1),
(63, 'com_content.article', 'A 140 088 313', 'a-140-088-313', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 11:31:34', 359, '2018-05-17 11:33:52', '*', '2018-05-17 11:31:34', '0000-00-00 00:00:00', 57, 223, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/HEAVY_DUTY.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 20, '', 1),
(64, 'com_content.article', 'B 150 092 313', 'b-150-092-313', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 11:31:34', 359, '2018-05-17 11:34:37', '*', '2018-05-17 11:31:34', '0000-00-00 00:00:00', 58, 225, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/HEAVY_DUTY.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 20, '', 1),
(65, 'com_content.article', 'B 190 110 313', 'b-190-110-313', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 11:31:34', 359, '2018-05-17 11:35:21', '*', '2018-05-17 11:31:34', '0000-00-00 00:00:00', 59, 227, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/HEAVY_DUTY.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 20, '', 1),
(66, 'com_content.article', 'C 225 125 310', 'c-225-125-310', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 11:31:34', 359, '2018-05-17 11:36:02', '*', '2018-05-17 11:31:34', '0000-00-00 00:00:00', 60, 229, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/HEAVY_DUTY.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 20, '', 1);
INSERT INTO `mart_ucm_content` (`core_content_id`, `core_type_alias`, `core_title`, `core_alias`, `core_body`, `core_state`, `core_checked_out_time`, `core_checked_out_user_id`, `core_access`, `core_params`, `core_featured`, `core_metadata`, `core_created_user_id`, `core_created_by_alias`, `core_created_time`, `core_modified_user_id`, `core_modified_time`, `core_language`, `core_publish_up`, `core_publish_down`, `core_content_item_id`, `asset_id`, `core_images`, `core_urls`, `core_hits`, `core_version`, `core_ordering`, `core_metakey`, `core_metadesc`, `core_catid`, `core_xreference`, `core_type_id`) VALUES
(67, 'com_content.article', 'L1 050 036 013', '207x175x190', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 11:37:36', 359, '2018-05-17 15:40:34', '*', '2018-05-17 11:37:36', '0000-00-00 00:00:00', 61, 231, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 9, '', '', 21, '', 1),
(68, 'com_content.article', 'L2 060 046 013', 'l2-060-046-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 11:37:36', 359, '2018-05-17 15:40:24', '*', '2018-05-17 11:37:36', '0000-00-00 00:00:00', 62, 233, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 4, 8, '', '', 21, '', 1),
(69, 'com_content.article', 'L3 070 054 013', 'l3-070-054-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 11:37:36', 359, '2018-05-17 15:40:20', '*', '2018-05-17 11:37:36', '0000-00-00 00:00:00', 63, 235, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 7, '', '', 21, '', 1),
(70, 'com_content.article', 'L5 090 070 013', 'l5-090-070-013', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 11:37:36', 359, '2018-05-17 15:40:17', '*', '2018-05-17 11:37:36', '0000-00-00 00:00:00', 64, 237, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 6, '', '', 21, '', 1),
(71, 'com_content.article', 'TRCT L 090 062 010', 'trct-l-090-062-010', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 11:37:36', 359, '2018-05-17 15:40:13', '*', '2018-05-17 11:37:36', '0000-00-00 00:00:00', 65, 239, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 5, '', '', 21, '', 1),
(72, 'com_content.article', 'TRCT L 115 076 010', 'trct-l-115-076-010', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 11:37:36', 359, '2018-05-17 15:40:10', '*', '2018-05-17 11:37:36', '0000-00-00 00:00:00', 66, 241, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 4, '', '', 21, '', 1),
(73, 'com_content.article', 'TRCT 125 080 010', 'trct-125-080-010', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 11:37:36', 359, '2018-05-17 15:40:06', '*', '2018-05-17 11:37:36', '0000-00-00 00:00:00', 67, 243, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 3, '', '', 21, '', 1),
(74, 'com_content.article', 'A 130 088 313', 'a-130-088-313', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 11:37:36', 359, '2018-05-17 15:40:02', '*', '2018-05-17 11:37:36', '0000-00-00 00:00:00', 68, 245, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 2, '', '', 21, '', 1),
(75, 'com_content.article', 'B 180 110 310', 'b-180-110-310', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 11:37:36', 359, '2018-05-17 15:39:59', '*', '2018-05-17 11:37:36', '0000-00-00 00:00:00', 69, 247, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 1, '', '', 21, '', 1),
(76, 'com_content.article', 'C 225 115 310', 'c-225-115-310', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-17 11:37:36', 359, '2018-05-18 07:28:51', '*', '2018-05-17 11:37:36', '0000-00-00 00:00:00', 70, 249, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_avto\\/hugel\\/ACTION_LEISURE .png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 4, 0, '', '', 21, '', 1),
(77, 'com_content.category', 'UPLUS EB PP/Wet Saries (MF)', 'uplus-eb-pp-wet-saries-mf', '<ul>\r\n<li>Высокий пусковой ток и хорошие стартерные характеристики (до 40% выше в сравнении с классическими батареями).</li>\r\n<li>Высокая производительность и долгий срок службы. (до 5 лет).</li>\r\n<li>Батарея изготовлена по технологии AGM.</li>\r\n<li>Высокая виброустойчивость.</li>\r\n<li>Улучшенный прием заряда.</li>\r\n<li>Корпус выполнен из высококачественного ABS-пластика.</li>\r\n<li>Надежная герметичная конструкция.</li>\r\n<li>Батарея залита и заряжена на заводе.</li>\r\n<li>Не требует обслуживания.</li>\r\n<li>Длительный срок хранения, низкий саморазряд батареи.</li>\r\n<li>Продвинутая технология свинцово-кальциевого сплава и усовершенствованная сульфатостойкость.</li>\r\n<li>Литьевая конструкция клеммы и крышки.</li>\r\n<li>Применение COS и TTP технологии.</li>\r\n<li>Диапазон рабочих температур: от -40С до +60С</li>\r\n</ul>\r\n<p>Гарантийный срок: 18 месяцев Области применения: 1. Мотоциклы 2.Гидроциклы 3.Квадроциклы 4. Снегоходы 5. Садовая техника</p>', 1, '0000-00-00 00:00:00', 0, 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_moto\\/UPLUS_EB_PP_Wet_Saries\\/EB20-4(1).png\",\"image_alt\":\"\"}', 0, '{\"author\":\"\",\"robots\":\"\"}', 359, '', '2018-05-18 06:35:25', 359, '2018-05-22 11:41:39', '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 25, 251, '{}', '{}', 0, 1, 0, '', '', 14, '', 5),
(78, 'com_content.category', 'UPLUS HPG Series (MF)', 'hpg-series-mf', '<ul>\r\n<li>Батарея изготовлена по технологии AGM – нано гель.</li>\r\n<li>Высокодисперсный нано-гель электролит.</li>\r\n<li>Высокий пусковой ток и хорошие стартерные характеристики (до 40% выше в сравнении с классическими батареями).</li>\r\n<li>Герметичная конструкция, установка под углом до 3600.</li>\r\n<li>Высокая производительность.</li>\r\n<li>Срок службы больше на 15% в сравнении с традиционными AGM\\VRLA батареями. (до 6 лет службы).</li>\r\n<li>Высокая виброустойчивость и удароустойчивость.</li>\r\n<li>Быстрый прием заряда батареи и улучшенная способность к восстановлению.</li>\r\n<li>Корпус выполнен из высококачественного ABS-пластика.</li>\r\n<li>Батарея залита и заряжена на заводе.</li>\r\n<li>Не требует обслуживания.</li>\r\n<li>Длительный срок хранения, низкий саморазряд батареи.</li>\r\n<li>Продвинутая технология свинцово-кальциевого сплава и усовершенствованная сульфатостойкость.</li>\r\n<li>Более эффективный рецепт пасты.</li>\r\n<li>Литьевая конструкция клеммы и крышки.</li>\r\n<li>Применение COS и TTP технологии.</li>\r\n<li>Широкий диапазон рабочих температур: от -40С до +60С</li>\r\n</ul>\r\n<p>Гарантийный срок: 24 месяца Области применения: 1. Мотоциклы 2.Гидроциклы 3.Квадроциклы 4. Снегоходы 5. Вспомогательное электропитание автомобилей. 6. Водный транспорт. 7. Садовая техника и т.д.</p>', 1, '0000-00-00 00:00:00', 0, 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG4-3(1).png\",\"image_alt\":\"\"}', 0, '{\"author\":\"\",\"robots\":\"\"}', 359, '', '2018-05-18 06:51:44', 359, '2018-05-22 11:40:53', '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 26, 253, '{}', '{}', 0, 1, 0, '', '', 14, '', 5),
(79, 'com_content.category', 'UPLUS MX PP/High Performance (MF)', 'mx-pp-high-performance-mf', '<ul>\r\n<li>Батарея изготовлена по технологии AGM.</li>\r\n<li>Увеличенный счет сборки пластин и более высокое сжатие.</li>\r\n<li>Специальная конструкция пластин, увеличенная до 20% площадь контакта.</li>\r\n<li>Превосходная стартовая мощность, высокая резервная мощность и долговечность. (до 60% выше в сравнении с классическими батареями).</li>\r\n<li>Герметичная конструкция, установка под углом до 3600.</li>\r\n<li>Высокая производительность.</li>\r\n<li>Срок службы больше на 25% в сравнении с традиционными AGM\\VRLA батареями. (до 7 лет службы).</li>\r\n<li>Высокая виброустойчивость и удароустойчивость.</li>\r\n<li>Специальные микропористые сепараторы.</li>\r\n<li>Быстрый прием заряда батареи и улучшенная способность к восстановлению.</li>\r\n<li>Корпус выполнен из высококачественного ABS-пластика.</li>\r\n<li>Батарея залита и заряжена на заводе.</li>\r\n<li>Не требует обслуживания.</li>\r\n<li>Длительный срок хранения, низкий саморазряд батареи.</li>\r\n<li>Продвинутая технология свинцово-кальциевого сплава и усовершенствованная сульфатостойкость.</li>\r\n<li>Более эффективный рецепт пасты.</li>\r\n<li>Улучшенная специальная конструкция токоотводов.</li>\r\n<li>Применение COS и TTP технологии.</li>\r\n<li>Широкий диапазон рабочих температур: от -40С до +60С</li>\r\n</ul>\r\n<p>Гарантийный срок: 24 месяца Области применения: 1. Мотоциклы 2.Гидроциклы 3.Квадроциклы 4. Снегоходы 5. Водный транспорт. 6. Садовая техника</p>', 1, '0000-00-00 00:00:00', 0, 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_moto\\/UPLUS_MX_PP_High_Performance\\/MX9-4(1).png\",\"image_alt\":\"\"}', 0, '{\"author\":\"\",\"robots\":\"\"}', 359, '', '2018-05-18 06:52:07', 359, '2018-05-22 11:41:14', '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 27, 255, '{}', '{}', 0, 1, 0, '', '', 14, '', 5),
(80, 'com_content.article', 'EBZ7-3-1', 'ebz7-3-1', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 07:06:18', 359, '2018-05-22 11:45:01', '*', '2018-05-18 07:06:18', '0000-00-00 00:00:00', 71, 257, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_EB_PP_Wet_Saries\\/EBZ7-3-1.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 1, 5, 7, '', '', 25, '', 1),
(81, 'com_content.article', 'EB9B-4', 'eb9b-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 07:06:18', 359, '2018-05-18 07:13:07', '*', '2018-05-18 07:06:18', '0000-00-00 00:00:00', 72, 259, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 0, '', '', 25, '', 1),
(82, 'com_content.article', 'EBZ10-4', 'ebz10-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 07:06:18', 359, '2018-05-18 07:17:52', '*', '2018-05-18 07:06:18', '0000-00-00 00:00:00', 73, 261, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 25, '', 1),
(83, 'com_content.article', 'EBZ12-4-1', 'ebz12-4-1', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 07:06:18', 359, '2018-05-22 12:45:14', '*', '2018-05-18 07:06:18', '0000-00-00 00:00:00', 74, 263, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_EB_PP_Wet_Saries\\/EBZ12-4-1(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 5, 4, '', '', 25, '', 1),
(84, 'com_content.article', 'EBZ14-4', 'ebz14-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 07:06:18', 359, '2018-05-18 07:20:19', '*', '2018-05-18 07:06:18', '0000-00-00 00:00:00', 75, 265, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 25, '', 1),
(85, 'com_content.article', 'EB20-4', 'eb20-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 07:06:18', 359, '2018-05-22 12:38:08', '*', '2018-05-18 07:06:18', '0000-00-00 00:00:00', 76, 267, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_EB_PP_Wet_Saries\\/EB20-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 1, 4, 2, '', '', 25, '', 1),
(86, 'com_content.article', 'EB20CH-4', 'eb20ch-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 07:06:18', 359, '2018-05-22 12:36:09', '*', '2018-05-18 07:06:18', '0000-00-00 00:00:00', 77, 269, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_EB_PP_Wet_Saries\\/EB20CH-4.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 4, 1, '', '', 25, '', 1),
(87, 'com_content.article', 'EB30-3', 'eb30-3', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 07:06:18', 359, '2018-05-22 12:35:03', '*', '2018-05-18 07:06:18', '0000-00-00 00:00:00', 78, 271, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_EB_PP_Wet_Saries\\/EB30-3.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 4, 0, '', '', 25, '', 1),
(88, 'com_content.category', 'Мотоциклетные батареи', 'akk-moto', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}', 0, '{\"author\":\"\",\"robots\":\"\"}', 359, '', '2018-04-12 11:50:16', 359, '2018-05-18 07:36:15', '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 14, 272, '{}', '{}', 0, 1, 0, '', '', 10, '', 5),
(89, 'com_content.category', 'UPLUS LT ABS/Wet Series (MF)', 'lt-abs-wet-series-mf', '<ul>\r\n<li>Высокий пусковой ток и хорошие стартерные характеристики (до 40% выше в сравнении с классическими батареями).</li>\r\n<li>Высокая производительность и долгий срок службы. (до 5 лет).</li>\r\n<li>Батарея изготовлена по технологии AGM.</li>\r\n<li>Высокая виброустойчивость.</li>\r\n<li>Улучшенный прием заряда.</li>\r\n<li>Корпус выполнен из высококачественного ABS-пластика.</li>\r\n<li>Надежная герметичная конструкция.</li>\r\n<li>Батарея залита и заряжена на заводе.</li>\r\n<li>Не требует обслуживания.</li>\r\n<li>Длительный срок хранения, низкий саморазряд батареи.</li>\r\n<li>Продвинутая технология свинцово-кальциевого сплава и усовершенствованная сульфатостойкость.</li>\r\n<li>Литьевая конструкция клеммы и крышки.</li>\r\n<li>Применение COS и TTP технологии.</li>\r\n<li>Диапазон рабочих температур: от -40С до +60С</li>\r\n</ul>\r\n<p>Гарантийный срок: 18 месяцев Области применения: 1. Мотоциклы 2.Гидроциклы 3.Квадроциклы 4. Снегоходы 5. Садовая техника</p>', 1, '0000-00-00 00:00:00', 0, 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT4-3(1).png\",\"image_alt\":\"\"}', 0, '{\"author\":\"\",\"robots\":\"\"}', 359, '', '2018-05-18 07:39:36', 359, '2018-05-22 11:41:47', '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 28, 274, '{}', '{}', 0, 1, 0, '', '', 14, '', 5),
(90, 'com_content.article', 'LT4-3', 'lt4-3', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 07:47:47', 359, '2018-05-22 13:04:53', '*', '2018-05-18 07:47:47', '0000-00-00 00:00:00', 79, 276, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT4-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 2, 4, 11, '', '', 28, '', 1),
(91, 'com_content.article', 'LT5-3', 'lt5-3', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 07:47:47', 359, '2018-05-22 12:50:48', '*', '2018-05-18 07:47:47', '0000-00-00 00:00:00', 80, 278, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT5-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 10, '', '', 28, '', 1),
(92, 'com_content.article', 'LT7A-4', 'lt7a-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 07:47:47', 359, '2018-05-22 12:51:47', '*', '2018-05-18 07:47:47', '0000-00-00 00:00:00', 81, 280, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT7A-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 9, '', '', 28, '', 1),
(93, 'com_content.article', 'LT7-3', 'lt7-3', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 07:47:47', 359, '2018-05-22 12:52:18', '*', '2018-05-18 07:47:47', '0000-00-00 00:00:00', 82, 282, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT7-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 8, '', '', 28, '', 1),
(94, 'com_content.article', 'LT9A-4', 'lt9a-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 07:47:47', 359, '2018-05-22 12:53:02', '*', '2018-05-18 07:47:47', '0000-00-00 00:00:00', 83, 284, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT9A-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 7, '', '', 28, '', 1),
(95, 'com_content.article', 'LT9-4', 'lt9-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 07:47:47', 359, '2018-05-22 12:54:20', '*', '2018-05-18 07:47:47', '0000-00-00 00:00:00', 84, 286, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT9-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 6, '', '', 28, '', 1),
(96, 'com_content.article', 'LT12-4', 'lt12-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 07:47:47', 359, '2018-05-22 12:55:16', '*', '2018-05-18 07:47:47', '0000-00-00 00:00:00', 85, 288, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT12-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 5, '', '', 28, '', 1),
(97, 'com_content.article', 'LT14-4', 'lt14-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 07:47:47', 359, '2018-05-22 12:55:49', '*', '2018-05-18 07:47:47', '0000-00-00 00:00:00', 86, 290, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT14-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 4, '', '', 28, '', 1),
(98, 'com_content.article', 'LT18-3', 'lt18-3', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 07:47:47', 359, '2018-05-22 12:56:35', '*', '2018-05-18 07:47:47', '0000-00-00 00:00:00', 87, 292, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT18-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 4, 3, '', '', 28, '', 1);
INSERT INTO `mart_ucm_content` (`core_content_id`, `core_type_alias`, `core_title`, `core_alias`, `core_body`, `core_state`, `core_checked_out_time`, `core_checked_out_user_id`, `core_access`, `core_params`, `core_featured`, `core_metadata`, `core_created_user_id`, `core_created_by_alias`, `core_created_time`, `core_modified_user_id`, `core_modified_time`, `core_language`, `core_publish_up`, `core_publish_down`, `core_content_item_id`, `asset_id`, `core_images`, `core_urls`, `core_hits`, `core_version`, `core_ordering`, `core_metakey`, `core_metadesc`, `core_catid`, `core_xreference`, `core_type_id`) VALUES
(99, 'com_content.article', 'LT20H-3', 'lt20h-3', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 07:47:47', 359, '2018-05-22 12:57:21', '*', '2018-05-18 07:47:47', '0000-00-00 00:00:00', 88, 294, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT20H-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 2, '', '', 28, '', 1),
(100, 'com_content.article', 'LT24-3', 'lt24-3', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 07:47:47', 359, '2018-05-22 12:58:57', '*', '2018-05-18 07:47:47', '0000-00-00 00:00:00', 89, 296, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT24-3.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 1, '', '', 28, '', 1),
(101, 'com_content.article', 'LT30-3', 'lt30-3', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 07:47:47', 359, '2018-05-22 12:59:31', '*', '2018-05-18 07:47:47', '0000-00-00 00:00:00', 90, 298, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_LT_ABS_Wet_Series\\/LT30-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 0, '', '', 28, '', 1),
(102, 'com_content.article', 'HPG4-3', 'hpg4-3', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:00:11', 359, '2018-05-22 13:23:56', '*', '2018-05-18 08:00:11', '0000-00-00 00:00:00', 91, 300, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG4-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 15, '', '', 26, '', 1),
(103, 'com_content.article', 'HPG5-3', 'hpg5-3', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:00:11', 359, '2018-05-22 13:25:01', '*', '2018-05-18 08:00:11', '0000-00-00 00:00:00', 92, 302, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG5-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 14, '', '', 26, '', 1),
(104, 'com_content.article', 'HPG7-3', 'hpg7-3', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:00:11', 359, '2018-05-22 13:25:37', '*', '2018-05-18 08:00:11', '0000-00-00 00:00:00', 93, 304, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG7-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 13, '', '', 26, '', 1),
(105, 'com_content.article', 'HPG7A-4', 'hpg7a-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:00:11', 359, '2018-05-22 13:26:06', '*', '2018-05-18 08:00:11', '0000-00-00 00:00:00', 94, 306, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG7A-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 12, '', '', 26, '', 1),
(106, 'com_content.article', 'HPG7B-4', 'hpg7b-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:00:11', 359, '2018-05-22 13:26:30', '*', '2018-05-18 08:00:11', '0000-00-00 00:00:00', 95, 308, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG7B-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 11, '', '', 26, '', 1),
(107, 'com_content.article', 'HPG7C-3', 'hpg7c-3', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:00:11', 359, '2018-05-22 13:27:00', '*', '2018-05-18 08:00:11', '0000-00-00 00:00:00', 96, 310, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG7C-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 10, '', '', 26, '', 1),
(108, 'com_content.article', 'HPG9-4', 'hpg9-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:00:11', 359, '2018-05-22 13:27:23', '*', '2018-05-18 08:00:11', '0000-00-00 00:00:00', 97, 312, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG9-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 9, '', '', 26, '', 1),
(109, 'com_content.article', 'HPG9B-4', 'hpg9b-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:00:11', 359, '2018-05-22 13:47:02', '*', '2018-05-18 08:00:11', '0000-00-00 00:00:00', 98, 314, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG9B-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 3, 6, 8, '', '', 26, '', 1),
(110, 'com_content.article', 'HPG10A-4', 'hpg10a-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:00:11', 359, '2018-05-22 13:48:05', '*', '2018-05-18 08:00:11', '0000-00-00 00:00:00', 99, 316, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG10A-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 4, 7, '', '', 26, '', 1),
(111, 'com_content.article', 'HPG12C-4', 'hpg12c-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:00:11', 359, '2018-05-22 13:49:32', '*', '2018-05-18 08:00:11', '0000-00-00 00:00:00', 100, 318, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG12C-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 6, '', '', 26, '', 1),
(112, 'com_content.article', 'HPG12B-4', 'hpg12b-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:00:11', 359, '2018-05-22 13:50:02', '*', '2018-05-18 08:00:11', '0000-00-00 00:00:00', 101, 320, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG12B-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 5, '', '', 26, '', 1),
(113, 'com_content.article', 'HPG14-4', 'hpg14-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:00:11', 359, '2018-05-22 13:50:55', '*', '2018-05-18 08:00:11', '0000-00-00 00:00:00', 102, 322, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG14-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 4, '', '', 26, '', 1),
(114, 'com_content.article', 'HPG14A-3', 'hpg14a-3', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:00:11', 359, '2018-05-22 13:51:19', '*', '2018-05-18 08:00:11', '0000-00-00 00:00:00', 103, 324, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG14A-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 1, 3, 3, '', '', 26, '', 1),
(115, 'com_content.article', 'HPG14B-4', 'hpg14b-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:00:11', 359, '2018-05-22 13:52:35', '*', '2018-05-18 08:00:11', '0000-00-00 00:00:00', 104, 326, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG14B-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 2, '', '', 26, '', 1),
(116, 'com_content.article', 'HPG16-4', 'hpg16-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:00:11', 359, '2018-05-22 13:51:43', '*', '2018-05-18 08:00:11', '0000-00-00 00:00:00', 105, 328, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG16-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 1, '', '', 26, '', 1),
(117, 'com_content.article', 'HPG20-3', 'hpg20-3', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:00:11', 359, '2018-05-22 13:52:06', '*', '2018-05-18 08:00:11', '0000-00-00 00:00:00', 106, 330, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG20-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 0, '', '', 26, '', 1),
(118, 'com_content.article', 'MX9-4', 'mx9-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:10:58', 359, '2018-05-22 13:54:38', '*', '2018-05-18 08:10:58', '0000-00-00 00:00:00', 107, 332, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_MX_PP_High_Performance\\/MX9-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 5, '', '', 27, '', 1),
(119, 'com_content.article', 'MX12-4', 'mx12-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:10:58', 359, '2018-05-22 13:55:16', '*', '2018-05-18 08:10:58', '0000-00-00 00:00:00', 108, 334, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_MX_PP_High_Performance\\/MX12-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 4, '', '', 27, '', 1),
(120, 'com_content.article', 'MX14-4', 'mx14-4', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:10:58', 359, '2018-05-22 13:56:18', '*', '2018-05-18 08:10:58', '0000-00-00 00:00:00', 109, 336, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_MX_PP_High_Performance\\/MX14-4(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 3, '', '', 27, '', 1),
(121, 'com_content.article', 'MX18-3', 'mx18-3', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:10:58', 359, '2018-05-22 13:57:20', '*', '2018-05-18 08:10:58', '0000-00-00 00:00:00', 110, 338, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_MX_PP_High_Performance\\/MX18-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 2, '', '', 27, '', 1),
(122, 'com_content.article', 'MX20-3', 'mx20-3', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:10:58', 359, '2018-05-22 13:56:42', '*', '2018-05-18 08:10:58', '0000-00-00 00:00:00', 111, 340, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_MX_PP_High_Performance\\/MX20-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 1, 3, 1, '', '', 27, '', 1),
(123, 'com_content.article', 'MX30-3', 'mx30-3', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:10:58', 359, '2018-05-22 13:57:46', '*', '2018-05-18 08:10:58', '0000-00-00 00:00:00', 112, 342, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/akk_moto\\/UPLUS_MX_PP_High_Performance\\/MX30-3(1).png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 0, '', '', 27, '', 1),
(124, 'com_content.category', 'HighPerformance', 'highperformance', '<ul>\r\n<li>Обеспечивает мгновенное сцепление с дорогой и курсовую устойчивость, позволяет контролировать торможение и уменьшает тормозной путь.</li>\r\n<li>Максимальная безопасность для водителя и автомобиля, работает со всеми электронными системами безопасности (ABS,ESP и т.д.).</li>\r\n<li>Не вызывает шума и вибрации при вождении.</li>\r\n<li>Быстрая и удобная установка.</li>\r\n<li>Совместим с любыми типами шин, в том числе и шипованными.</li>\r\n<li>Легкий, складной, компактный и удобный при хранении в машине круглый год.</li>\r\n<li>Годен для стирки в стиральной машинке и многократного использования.</li>\r\n<li>Сертифицирован и являются официально разрешенной альтернативой цепям противоскольжения</li>\r\n<li>Работает на всех транспортных средствах в том числе с низким просветом между шиной и колесной аркой.</li>\r\n<li>Не наносит вред любым колесным дискам.</li>\r\n<li>Не вызывает износ дорожного полотна.</li>\r\n<li>Экологически чистый и возможен для вторичной переработки.\r\n<ul>\r\n<li>Устойчив: к низким и высоким температурам от -196 С до +180 С, химическим реагентам, соли и воде, гниению, микробам и плесени.</li>\r\n</ul>\r\n</li>\r\n</ul>', 1, '0000-00-00 00:00:00', 0, 1, '{\"category_layout\":\"\",\"image\":\"images\\/aks_covers\\/HighPerformance\\/HighPerformance.png\",\"image_alt\":\"\"}', 0, '{\"author\":\"\",\"robots\":\"\"}', 359, '', '2018-05-18 08:20:24', 359, '2018-05-22 10:05:51', '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 29, 344, '{}', '{}', 0, 1, 0, '', '', 22, '', 5),
(125, 'com_content.category', 'Truck', 'truck', '<ul>\r\n<li>Обеспечивает мгновенное сцепление с дорогой и курсовую устойчивость, позволяет контролировать торможение и уменьшает тормозной путь.</li>\r\n<li>Максимальная безопасность для водителя и автомобиля, работает со всеми электронными системами безопасности (ABS,ESP и т.д.).</li>\r\n<li>Не вызывает шума и вибрации при вождении.</li>\r\n<li>Быстрая и удобная установка.</li>\r\n<li>Совместим с любыми типами шин, в том числе и шипованными.</li>\r\n<li>Легкий, складной, компактный и удобный при хранении в машине круглый год.</li>\r\n<li>Годен для стирки в стиральной машинке и многократного использования.</li>\r\n<li>Сертифицирован и являются официально разрешенной альтернативой цепям противоскольжения.</li>\r\n<li>Работает на всех транспортных средствах в том числе с низким просветом между шиной и колесной аркой.</li>\r\n<li>Не наносит вред любым колесным дискам.</li>\r\n<li>Не вызывает износ дорожного полотна.</li>\r\n<li>Экологически чистый и возможен для вторичной переработки.\r\n<ul>\r\n<li>Устойчив: к низким и высоким температурам от -196 С до +180 С, химическим реагентам, соли и воде, гниению, микробам и плесени.</li>\r\n</ul>\r\n</li>\r\n</ul>', 1, '0000-00-00 00:00:00', 0, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', 0, '{\"author\":\"\",\"robots\":\"\"}', 359, '', '2018-05-18 08:20:55', 359, '2018-05-18 12:59:50', '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 30, 346, '{}', '{}', 0, 1, 0, '', '', 22, '', 5),
(126, 'com_content.category', 'Forklifts', 'forklifts', '<ul>\r\n<li>Обеспечивает мгновенное сцепление с дорогой и курсовую устойчивость, позволяет контролировать торможение и уменьшает тормозной путь.</li>\r\n<li>Максимальная безопасность для водителя и автомобиля, работает со всеми электронными системами безопасности (ABS,ESP и т.д.).</li>\r\n<li>Не вызывает шума и вибрации при вождении.</li>\r\n<li>Быстрая и удобная установка.</li>\r\n<li>Совместим с любыми типами шин, в том числе и шипованными.</li>\r\n<li>Легкий, складной, компактный и удобный при хранении в машине круглый год.</li>\r\n<li>Годен для стирки в стиральной машинке и многократного использования.</li>\r\n<li>Сертифицирован и являются официально разрешенной альтернативой цепям противоскольжения.</li>\r\n<li>Работает на всех транспортных средствах в том числе с низким просветом между шиной и колесной аркой.</li>\r\n<li>Не наносит вред любым колесным дискам. Не вызывает износ дорожного полотна.</li>\r\n<li>Экологически чистый и возможен для вторичной переработки.\r\n<ul>\r\n<li>Устойчив: к низким и высоким температурам от -196 С до +180 С, химическим реагентам, соли и воде, гниению, микробам и плесени.</li>\r\n</ul>\r\n</li>\r\n</ul>', 1, '0000-00-00 00:00:00', 0, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', 0, '{\"author\":\"\",\"robots\":\"\"}', 359, '', '2018-05-18 08:21:17', 359, '2018-05-18 13:00:59', '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 31, 348, '{}', '{}', 0, 1, 0, '', '', 22, '', 5),
(127, 'com_content.article', '540', '540', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:40:36', 359, '2018-05-22 14:36:09', '*', '2018-05-18 08:40:36', '0000-00-00 00:00:00', 113, 350, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/540\\/F_Car_540.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 134, 14, 7, '', '', 29, '', 1),
(128, 'com_content.article', '600', '600', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:40:36', 359, '2018-05-22 14:36:39', '*', '2018-05-18 08:40:36', '0000-00-00 00:00:00', 114, 352, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/600\\/F_Car_600.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 1, 4, 6, '', '', 29, '', 1),
(129, 'com_content.article', '645', '645', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:40:36', 359, '2018-05-22 14:39:33', '*', '2018-05-18 08:40:36', '0000-00-00 00:00:00', 115, 354, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/645\\/F_Car_645.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 1, 4, 5, '', '', 29, '', 1),
(130, 'com_content.article', '685', '685', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:40:36', 359, '2018-05-22 14:40:00', '*', '2018-05-18 08:40:36', '0000-00-00 00:00:00', 116, 356, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/685\\/F_Car_685.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 2, 4, 4, '', '', 29, '', 1);
INSERT INTO `mart_ucm_content` (`core_content_id`, `core_type_alias`, `core_title`, `core_alias`, `core_body`, `core_state`, `core_checked_out_time`, `core_checked_out_user_id`, `core_access`, `core_params`, `core_featured`, `core_metadata`, `core_created_user_id`, `core_created_by_alias`, `core_created_time`, `core_modified_user_id`, `core_modified_time`, `core_language`, `core_publish_up`, `core_publish_down`, `core_content_item_id`, `asset_id`, `core_images`, `core_urls`, `core_hits`, `core_version`, `core_ordering`, `core_metakey`, `core_metadesc`, `core_catid`, `core_xreference`, `core_type_id`) VALUES
(131, 'com_content.article', '695', '695', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:40:36', 359, '2018-05-22 14:37:16', '*', '2018-05-18 08:40:36', '0000-00-00 00:00:00', 117, 358, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/695\\/F_Car_695.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 4, 3, '', '', 29, '', 1),
(132, 'com_content.article', '697', '697', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:40:36', 359, '2018-05-22 14:37:45', '*', '2018-05-18 08:40:36', '0000-00-00 00:00:00', 118, 360, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/697\\/F_Car_697.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 4, 2, '', '', 29, '', 1),
(133, 'com_content.article', '698', '698', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:40:36', 359, '2018-05-22 14:38:09', '*', '2018-05-18 08:40:36', '0000-00-00 00:00:00', 119, 362, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/698\\/F_Car_698.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 4, 1, '', '', 29, '', 1),
(134, 'com_content.article', '699', '699', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 08:40:36', 359, '2018-05-22 14:38:42', '*', '2018-05-18 08:40:36', '0000-00-00 00:00:00', 120, 364, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/699\\/F_Car_699.png\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 4, 0, '', '', 29, '', 1),
(135, 'com_content.article', 'AL59', 'al59', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 13:05:45', 359, '2018-05-18 13:05:45', '*', '2018-05-18 13:05:45', '0000-00-00 00:00:00', 121, 366, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/HighPerformance.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 1, 0, '', '', 30, '', 1),
(136, 'com_content.article', 'AL64', 'al64', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 13:05:45', 359, '2018-05-18 13:06:07', '*', '2018-05-18 13:05:45', '0000-00-00 00:00:00', 122, 368, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/HighPerformance.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 30, '', 1),
(137, 'com_content.article', 'AL69', 'al69', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 13:05:45', 359, '2018-05-18 13:06:39', '*', '2018-05-18 13:05:45', '0000-00-00 00:00:00', 123, 370, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/HighPerformance.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 30, '', 1),
(138, 'com_content.article', 'AL71', 'al71', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 13:05:45', 359, '2018-05-18 13:07:03', '*', '2018-05-18 13:05:45', '0000-00-00 00:00:00', 124, 372, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/HighPerformance.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 30, '', 1),
(139, 'com_content.article', 'AL74', 'al74', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 13:05:45', 359, '2018-05-18 13:07:19', '*', '2018-05-18 13:05:45', '0000-00-00 00:00:00', 125, 374, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/HighPerformance.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 1, 0, '', '', 30, '', 1),
(140, 'com_content.article', 'AL79', 'al79', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 13:05:45', 359, '2018-05-18 13:07:34', '*', '2018-05-18 13:05:45', '0000-00-00 00:00:00', 126, 376, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/HighPerformance.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 1, 0, '', '', 30, '', 1),
(141, 'com_content.article', 'AL84', 'al84', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 13:05:45', 359, '2018-05-18 13:07:49', '*', '2018-05-18 13:05:45', '0000-00-00 00:00:00', 127, 378, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/HighPerformance.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 1, 0, '', '', 30, '', 1),
(142, 'com_content.article', 'AL89', 'al89', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 13:05:45', 359, '2018-05-18 13:09:51', '*', '2018-05-18 13:05:45', '0000-00-00 00:00:00', 128, 380, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/HighPerformance.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 1, '', '', 30, '', 1),
(143, 'com_content.article', 'AL111', 'al111', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 13:05:45', 359, '2018-05-18 13:10:13', '*', '2018-05-18 13:05:45', '0000-00-00 00:00:00', 129, 382, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/aks_covers\\/HighPerformance\\/HighPerformance.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 3, 0, '', '', 30, '', 1),
(144, 'com_content.article', 'AF12', 'af12', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 13:11:00', 359, '2018-05-18 13:11:00', '*', '2018-05-18 13:11:00', '0000-00-00 00:00:00', 130, 384, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 1, 0, '', '', 31, '', 1),
(145, 'com_content.article', 'AF16', 'af16', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 13:11:00', 359, '2018-05-18 13:11:31', '*', '2018-05-18 13:11:00', '0000-00-00 00:00:00', 131, 386, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 31, '', 1),
(146, 'com_content.article', 'AF20', 'af20', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 13:11:00', 359, '2018-05-18 13:11:53', '*', '2018-05-18 13:11:00', '0000-00-00 00:00:00', 132, 388, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 1, 0, '', '', 31, '', 1),
(147, 'com_content.article', 'AF24', 'af24', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 13:11:00', 359, '2018-05-18 13:12:10', '*', '2018-05-18 13:11:00', '0000-00-00 00:00:00', 133, 390, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 1, 0, '', '', 31, '', 1),
(148, 'com_content.article', 'AF28', 'af28', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 13:11:00', 359, '2018-05-18 13:12:24', '*', '2018-05-18 13:11:00', '0000-00-00 00:00:00', 134, 392, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 1, 0, '', '', 31, '', 1),
(149, 'com_content.article', 'AF32', 'af32', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 359, '', '2018-05-18 13:11:00', 359, '2018-05-18 13:12:47', '*', '2018-05-18 13:11:00', '0000-00-00 00:00:00', 135, 394, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 2, 0, '', '', 31, '', 1),
(150, 'com_content.category', 'test', 'test', '', 1, '0000-00-00 00:00:00', 0, 1, '{\"category_layout\":\"\",\"image\":\"images\\/akk_moto\\/UPLUS_HPG_Series\\/HPG7-3(1).png\",\"image_alt\":\"\"}', 0, '{\"author\":\"\",\"robots\":\"\"}', 359, '', '2018-05-23 07:44:19', 359, '2018-05-23 07:47:12', '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 33, 412, '{}', '{}', 0, 1, 0, '', '', 13, '', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `mart_ucm_history`
--

CREATE TABLE `mart_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_ucm_history`
--

INSERT INTO `mart_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 8, 5, '', '2018-04-12 11:09:57', 0, 560, '7cf72497bc4b47202c7fa183c66637ecc5265579', '{\"id\":8,\"asset_id\":60,\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":12,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Category (en-gb)\",\"alias\":\"category-en-gb\",\"note\":null,\"description\":\"\",\"published\":1,\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"target\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"page_title\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":359,\"created_time\":\"2018-04-12 11:09:57\",\"modified_user_id\":null,\"modified_time\":\"2018-04-12 11:09:57\",\"hits\":null,\"language\":\"en-GB\",\"version\":null}', 0),
(2, 1, 1, '', '2018-04-12 11:09:57', 0, 1178, 'd3d809a55792bf8b819247c95dd459c80d4e8cc4', '{\"id\":1,\"asset_id\":61,\"title\":\"Article (en-gb)\",\"alias\":\"article-en-gb\",\"introtext\":\"<p>Lorem ipsum ad his scripta blandit partiendo, eum fastidii accumsan euripidis in, eum liber hendrerit an. Qui ut wisi vocibus suscipiantur, quo dicit ridens inciderint id. Quo mundi lobortis reformidans eu, legimus senseritdefiniebas an eos. Eu sit tincidunt incorrupte definitionem, vis mutat affert percipit cu, eirmod consectetuer signiferumque eu per. In usu latineequidem dolores. Quo no falli viris intellegam, ut fugit veritus placeratper. Ius id vidit volumus mandamus, vide veritus democritum te nec, ei eosdebet libris consulatu.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":8,\"created\":\"2018-04-12 11:09:57\",\"created_by\":359,\"created_by_alias\":\"Joomla\",\"modified\":\"2018-04-12 11:09:57\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-04-12 11:09:57\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"[]\",\"urls\":\"[]\",\"attribs\":\"{}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\",\\\"tags\\\":null}\",\"featured\":1,\"language\":\"en-GB\",\"xreference\":null}', 0),
(3, 9, 5, '', '2018-04-12 11:09:57', 0, 608, 'ea9db6947da326cdb56568225454aba1ae681fae', '{\"id\":9,\"asset_id\":64,\"parent_id\":\"1\",\"lft\":\"13\",\"rgt\":14,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f (ru-ru)\",\"alias\":\"kategoriya-ru-ru\",\"note\":null,\"description\":\"\",\"published\":1,\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"target\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"page_title\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":359,\"created_time\":\"2018-04-12 11:09:57\",\"modified_user_id\":null,\"modified_time\":\"2018-04-12 11:09:57\",\"hits\":null,\"language\":\"ru-RU\",\"version\":null}', 0),
(4, 2, 1, '', '2018-04-12 11:09:57', 0, 1220, '804efb261459e0dd5a4c7580292895aa3ad3263e', '{\"id\":2,\"asset_id\":65,\"title\":\"\\u041c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b (ru-ru)\",\"alias\":\"material-ru-ru\",\"introtext\":\"<p>Lorem ipsum ad his scripta blandit partiendo, eum fastidii accumsan euripidis in, eum liber hendrerit an. Qui ut wisi vocibus suscipiantur, quo dicit ridens inciderint id. Quo mundi lobortis reformidans eu, legimus senseritdefiniebas an eos. Eu sit tincidunt incorrupte definitionem, vis mutat affert percipit cu, eirmod consectetuer signiferumque eu per. In usu latineequidem dolores. Quo no falli viris intellegam, ut fugit veritus placeratper. Ius id vidit volumus mandamus, vide veritus democritum te nec, ei eosdebet libris consulatu.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":9,\"created\":\"2018-04-12 11:09:57\",\"created_by\":359,\"created_by_alias\":\"Joomla\",\"modified\":\"2018-04-12 11:09:57\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-04-12 11:09:57\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"[]\",\"urls\":\"[]\",\"attribs\":\"{}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\",\\\"tags\\\":null}\",\"featured\":1,\"language\":\"ru-RU\",\"xreference\":null}', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `mart_updates`
--

CREATE TABLE `mart_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Дамп данных таблицы `mart_updates`
--

INSERT INTO `mart_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(2, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(3, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.8.3.3', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(4, 2, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(5, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(6, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(7, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(8, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(9, 2, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/eo-XX_details.xml', '', ''),
(10, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(11, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(12, 2, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(13, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(14, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(15, 2, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(16, 2, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.8.4.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(17, 2, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(18, 2, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(19, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(20, 2, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(21, 2, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(22, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.8.6.4', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(23, 2, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(24, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(25, 2, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(26, 2, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(27, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(28, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(29, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.7.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(30, 2, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(31, 2, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(32, 2, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(33, 2, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(34, 2, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(35, 2, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.8.6.2', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(36, 2, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(37, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(38, 2, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(39, 2, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(40, 2, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(41, 2, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(42, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.8.1.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(43, 2, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(44, 2, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(45, 2, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(46, 2, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(47, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(48, 2, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(49, 2, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(50, 2, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(51, 2, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(52, 2, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(53, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(54, 2, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(55, 2, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(56, 2, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(57, 2, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(58, 2, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(59, 2, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `mart_update_sites`
--

CREATE TABLE `mart_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Дамп данных таблицы `mart_update_sites`
--

INSERT INTO `mart_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 0, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1523531762, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1523615438, ''),
(4, 'RocketTheme Update Directory', 'collection', 'http://updates.rockettheme.com/joomla/updates.xml', 1, 0, ''),
(5, 'Regular Labs - Sourcerer', 'extension', 'https://download.regularlabs.com/updates.xml?e=sourcerer&type=.xml', 1, 0, ''),
(6, 'Gantry 5', 'extension', 'http://updates.gantry.org/5.0/joomla/pkg_gantry5.xml', 1, 0, ''),
(7, 'Gantry 5', 'collection', 'http://updates.gantry.org/5.0/joomla/list.xml', 1, 0, ''),
(8, 'Hydrogen Template', 'extension', 'http://updates.gantry.org/5.0/joomla/tpl_g5_hydrogen.xml', 1, 0, ''),
(9, 'JCE Editor Package', 'collection', 'https://cdn.joomlacontenteditor.net/updates/xml/pkg_jce.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `mart_update_sites_extensions`
--

CREATE TABLE `mart_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `mart_update_sites_extensions`
--

INSERT INTO `mart_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(2, 10002),
(3, 28),
(4, 10004),
(5, 10009),
(6, 10017),
(7, 10017),
(8, 10018),
(9, 10027);

-- --------------------------------------------------------

--
-- Структура таблицы `mart_usergroups`
--

CREATE TABLE `mart_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_usergroups`
--

INSERT INTO `mart_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Структура таблицы `mart_users`
--

CREATE TABLE `mart_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_users`
--

INSERT INTO `mart_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(359, 'Super User', 'civil', 'oleg.orlov@utsrus.com', '$2y$10$ky.LO1Oo0Nq1LXTO0Sx1BeTc7D0prKrJf32opc9pciB5Bmdsbl9Re', 0, 1, '2018-04-12 11:09:21', '2018-05-23 11:43:51', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `mart_user_keys`
--

CREATE TABLE `mart_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_user_notes`
--

CREATE TABLE `mart_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mart_user_profiles`
--

CREATE TABLE `mart_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `mart_user_usergroup_map`
--

CREATE TABLE `mart_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_user_usergroup_map`
--

INSERT INTO `mart_user_usergroup_map` (`user_id`, `group_id`) VALUES
(359, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `mart_utf8_conversion`
--

CREATE TABLE `mart_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_utf8_conversion`
--

INSERT INTO `mart_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Структура таблицы `mart_viewlevels`
--

CREATE TABLE `mart_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mart_viewlevels`
--

INSERT INTO `mart_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(3, 'Special', 3, '[1]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Структура таблицы `mart_wf_profiles`
--

CREATE TABLE `mart_wf_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mart_wf_profiles`
--

INSERT INTO `mart_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '8', '', 0, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,fontcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,print,searchreplace,spacer,table,style,xhtmlxtras;visualaid,visualchars,visualblocks,nonbreaking,anchor,unlink,link,imgmanager,spellchecker,article', 'formatselect,styleselect,cleanup,fontselect,fontsizeselect,fontcolor,clipboard,lists,textcase,charmap,hr,directionality,fullscreen,print,searchreplace,table,style,xhtmlxtras,visualchars,visualblocks,nonbreaking,anchor,link,imgmanager,spellchecker,article,spellchecker,article,browser,contextmenu,inlinepopups,media,preview,source', 1, 1, 0, '0000-00-00 00:00:00', '{\"editor\":{\"allow_javascript\":\"1\",\"allow_css\":\"1\",\"allow_php\":\"1\"}}');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `mart_assets`
--
ALTER TABLE `mart_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Индексы таблицы `mart_associations`
--
ALTER TABLE `mart_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Индексы таблицы `mart_banners`
--
ALTER TABLE `mart_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `mart_banner_clients`
--
ALTER TABLE `mart_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Индексы таблицы `mart_banner_tracks`
--
ALTER TABLE `mart_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Индексы таблицы `mart_categories`
--
ALTER TABLE `mart_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `mart_contact_details`
--
ALTER TABLE `mart_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `mart_content`
--
ALTER TABLE `mart_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Индексы таблицы `mart_contentitem_tag_map`
--
ALTER TABLE `mart_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Индексы таблицы `mart_content_frontpage`
--
ALTER TABLE `mart_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `mart_content_rating`
--
ALTER TABLE `mart_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `mart_content_types`
--
ALTER TABLE `mart_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Индексы таблицы `mart_extensions`
--
ALTER TABLE `mart_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Индексы таблицы `mart_fields`
--
ALTER TABLE `mart_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `mart_fields_categories`
--
ALTER TABLE `mart_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Индексы таблицы `mart_fields_groups`
--
ALTER TABLE `mart_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `mart_fields_values`
--
ALTER TABLE `mart_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Индексы таблицы `mart_finder_filters`
--
ALTER TABLE `mart_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `mart_finder_links`
--
ALTER TABLE `mart_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Индексы таблицы `mart_finder_links_terms0`
--
ALTER TABLE `mart_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `mart_finder_links_terms1`
--
ALTER TABLE `mart_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `mart_finder_links_terms2`
--
ALTER TABLE `mart_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `mart_finder_links_terms3`
--
ALTER TABLE `mart_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `mart_finder_links_terms4`
--
ALTER TABLE `mart_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `mart_finder_links_terms5`
--
ALTER TABLE `mart_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `mart_finder_links_terms6`
--
ALTER TABLE `mart_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `mart_finder_links_terms7`
--
ALTER TABLE `mart_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `mart_finder_links_terms8`
--
ALTER TABLE `mart_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `mart_finder_links_terms9`
--
ALTER TABLE `mart_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `mart_finder_links_termsa`
--
ALTER TABLE `mart_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `mart_finder_links_termsb`
--
ALTER TABLE `mart_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `mart_finder_links_termsc`
--
ALTER TABLE `mart_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `mart_finder_links_termsd`
--
ALTER TABLE `mart_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `mart_finder_links_termse`
--
ALTER TABLE `mart_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `mart_finder_links_termsf`
--
ALTER TABLE `mart_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `mart_finder_taxonomy`
--
ALTER TABLE `mart_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Индексы таблицы `mart_finder_taxonomy_map`
--
ALTER TABLE `mart_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Индексы таблицы `mart_finder_terms`
--
ALTER TABLE `mart_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Индексы таблицы `mart_finder_terms_common`
--
ALTER TABLE `mart_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Индексы таблицы `mart_finder_tokens`
--
ALTER TABLE `mart_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Индексы таблицы `mart_finder_tokens_aggregate`
--
ALTER TABLE `mart_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Индексы таблицы `mart_finder_types`
--
ALTER TABLE `mart_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Индексы таблицы `mart_languages`
--
ALTER TABLE `mart_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Индексы таблицы `mart_menu`
--
ALTER TABLE `mart_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `mart_menu_types`
--
ALTER TABLE `mart_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Индексы таблицы `mart_messages`
--
ALTER TABLE `mart_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Индексы таблицы `mart_messages_cfg`
--
ALTER TABLE `mart_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Индексы таблицы `mart_modules`
--
ALTER TABLE `mart_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `mart_modules_menu`
--
ALTER TABLE `mart_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Индексы таблицы `mart_newsfeeds`
--
ALTER TABLE `mart_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `mart_overrider`
--
ALTER TABLE `mart_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mart_postinstall_messages`
--
ALTER TABLE `mart_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Индексы таблицы `mart_redirect_links`
--
ALTER TABLE `mart_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Индексы таблицы `mart_schemas`
--
ALTER TABLE `mart_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Индексы таблицы `mart_session`
--
ALTER TABLE `mart_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Индексы таблицы `mart_tags`
--
ALTER TABLE `mart_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `mart_template_styles`
--
ALTER TABLE `mart_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Индексы таблицы `mart_ucm_base`
--
ALTER TABLE `mart_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Индексы таблицы `mart_ucm_content`
--
ALTER TABLE `mart_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Индексы таблицы `mart_ucm_history`
--
ALTER TABLE `mart_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Индексы таблицы `mart_updates`
--
ALTER TABLE `mart_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Индексы таблицы `mart_update_sites`
--
ALTER TABLE `mart_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Индексы таблицы `mart_update_sites_extensions`
--
ALTER TABLE `mart_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Индексы таблицы `mart_usergroups`
--
ALTER TABLE `mart_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Индексы таблицы `mart_users`
--
ALTER TABLE `mart_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `mart_user_keys`
--
ALTER TABLE `mart_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `mart_user_notes`
--
ALTER TABLE `mart_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Индексы таблицы `mart_user_profiles`
--
ALTER TABLE `mart_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Индексы таблицы `mart_user_usergroup_map`
--
ALTER TABLE `mart_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Индексы таблицы `mart_viewlevels`
--
ALTER TABLE `mart_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Индексы таблицы `mart_wf_profiles`
--
ALTER TABLE `mart_wf_profiles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `mart_assets`
--
ALTER TABLE `mart_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT для таблицы `mart_banners`
--
ALTER TABLE `mart_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mart_banner_clients`
--
ALTER TABLE `mart_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mart_categories`
--
ALTER TABLE `mart_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `mart_contact_details`
--
ALTER TABLE `mart_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mart_content`
--
ALTER TABLE `mart_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT для таблицы `mart_content_types`
--
ALTER TABLE `mart_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `mart_extensions`
--
ALTER TABLE `mart_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10029;

--
-- AUTO_INCREMENT для таблицы `mart_fields`
--
ALTER TABLE `mart_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `mart_fields_groups`
--
ALTER TABLE `mart_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `mart_finder_filters`
--
ALTER TABLE `mart_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mart_finder_links`
--
ALTER TABLE `mart_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mart_finder_taxonomy`
--
ALTER TABLE `mart_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `mart_finder_terms`
--
ALTER TABLE `mart_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mart_finder_types`
--
ALTER TABLE `mart_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mart_languages`
--
ALTER TABLE `mart_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `mart_menu`
--
ALTER TABLE `mart_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT для таблицы `mart_menu_types`
--
ALTER TABLE `mart_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `mart_messages`
--
ALTER TABLE `mart_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mart_modules`
--
ALTER TABLE `mart_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT для таблицы `mart_newsfeeds`
--
ALTER TABLE `mart_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mart_overrider`
--
ALTER TABLE `mart_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT для таблицы `mart_postinstall_messages`
--
ALTER TABLE `mart_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `mart_redirect_links`
--
ALTER TABLE `mart_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mart_tags`
--
ALTER TABLE `mart_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `mart_template_styles`
--
ALTER TABLE `mart_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `mart_ucm_content`
--
ALTER TABLE `mart_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT для таблицы `mart_ucm_history`
--
ALTER TABLE `mart_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `mart_updates`
--
ALTER TABLE `mart_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT для таблицы `mart_update_sites`
--
ALTER TABLE `mart_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `mart_usergroups`
--
ALTER TABLE `mart_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `mart_users`
--
ALTER TABLE `mart_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT для таблицы `mart_user_keys`
--
ALTER TABLE `mart_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mart_user_notes`
--
ALTER TABLE `mart_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mart_viewlevels`
--
ALTER TABLE `mart_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `mart_wf_profiles`
--
ALTER TABLE `mart_wf_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
