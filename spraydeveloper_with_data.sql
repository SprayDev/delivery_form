-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 03 2021 г., 14:32
-- Версия сервера: 10.3.22-MariaDB-log
-- Версия PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `spraydeveloper`
--

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) NOT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`) VALUES
(2, 'AF', 'Afghanistan'),
(3, 'AX', 'Åland Islands'),
(4, 'AL', 'Albania'),
(5, 'DZ', 'Algeria'),
(6, 'AS', 'American Samoa'),
(7, 'AD', 'Andorra'),
(8, 'AO', 'Angola'),
(9, 'AI', 'Anguilla'),
(10, 'AQ', 'Antarctica'),
(11, 'AG', 'Antigua and Barbuda'),
(12, 'AR', 'Argentina'),
(13, 'AM', 'Armenia'),
(14, 'AW', 'Aruba'),
(15, 'AU', 'Australia'),
(16, 'AT', 'Austria'),
(17, 'AZ', 'Azerbaijan'),
(18, 'BS', 'Bahamas'),
(19, 'BH', 'Bahrain'),
(20, 'BD', 'Bangladesh'),
(21, 'BB', 'Barbados'),
(22, 'BY', 'Belarus'),
(23, 'BE', 'Belgium'),
(24, 'BZ', 'Belize'),
(25, 'BJ', 'Benin'),
(26, 'BM', 'Bermuda'),
(27, 'BT', 'Bhutan'),
(28, 'BO', 'Bolivia (Plurinational State of)'),
(29, 'BQ', 'Bonaire, Sint Eustatius and Saba'),
(30, 'BA', 'Bosnia and Herzegovina'),
(31, 'BW', 'Botswana'),
(32, 'BV', 'Bouvet Island'),
(33, 'BR', 'Brazil'),
(34, 'IO', 'British Indian Ocean Territory'),
(35, 'UM', 'United States Minor Outlying Islands'),
(36, 'VG', 'Virgin Islands (British)'),
(37, 'VI', 'Virgin Islands (U.S.)'),
(38, 'BN', 'Brunei Darussalam'),
(39, 'BG', 'Bulgaria'),
(40, 'BF', 'Burkina Faso'),
(41, 'BI', 'Burundi'),
(42, 'KH', 'Cambodia'),
(43, 'CM', 'Cameroon'),
(44, 'CA', 'Canada'),
(45, 'CV', 'Cabo Verde'),
(46, 'KY', 'Cayman Islands'),
(47, 'CF', 'Central African Republic'),
(48, 'TD', 'Chad'),
(49, 'CL', 'Chile'),
(50, 'CN', 'China'),
(51, 'CX', 'Christmas Island'),
(52, 'CC', 'Cocos (Keeling) Islands'),
(53, 'CO', 'Colombia'),
(54, 'KM', 'Comoros'),
(55, 'CG', 'Congo'),
(56, 'CD', 'Congo (Democratic Republic of the)'),
(57, 'CK', 'Cook Islands'),
(58, 'CR', 'Costa Rica'),
(59, 'HR', 'Croatia'),
(60, 'CU', 'Cuba'),
(61, 'CW', 'Curaçao'),
(62, 'CY', 'Cyprus'),
(63, 'CZ', 'Czech Republic'),
(64, 'DK', 'Denmark'),
(65, 'DJ', 'Djibouti'),
(66, 'DM', 'Dominica'),
(67, 'DO', 'Dominican Republic'),
(68, 'EC', 'Ecuador'),
(69, 'EG', 'Egypt'),
(70, 'SV', 'El Salvador'),
(71, 'GQ', 'Equatorial Guinea'),
(72, 'ER', 'Eritrea'),
(73, 'EE', 'Estonia'),
(74, 'ET', 'Ethiopia'),
(75, 'FK', 'Falkland Islands (Malvinas)'),
(76, 'FO', 'Faroe Islands'),
(77, 'FJ', 'Fiji'),
(78, 'FI', 'Finland'),
(79, 'FR', 'France'),
(80, 'GF', 'French Guiana'),
(81, 'PF', 'French Polynesia'),
(82, 'TF', 'French Southern Territories'),
(83, 'GA', 'Gabon'),
(84, 'GM', 'Gambia'),
(85, 'GE', 'Georgia'),
(86, 'DE', 'Germany'),
(87, 'GH', 'Ghana'),
(88, 'GI', 'Gibraltar'),
(89, 'GR', 'Greece'),
(90, 'GL', 'Greenland'),
(91, 'GD', 'Grenada'),
(92, 'GP', 'Guadeloupe'),
(93, 'GU', 'Guam'),
(94, 'GT', 'Guatemala'),
(95, 'GG', 'Guernsey'),
(96, 'GN', 'Guinea'),
(97, 'GW', 'Guinea-Bissau'),
(98, 'GY', 'Guyana'),
(99, 'HT', 'Haiti'),
(100, 'HM', 'Heard Island and McDonald Islands'),
(101, 'VA', 'Holy See'),
(102, 'HN', 'Honduras'),
(103, 'HK', 'Hong Kong'),
(104, 'HU', 'Hungary'),
(105, 'IS', 'Iceland'),
(106, 'IN', 'India'),
(107, 'ID', 'Indonesia'),
(108, 'IR', 'Iran (Islamic Republic of)'),
(109, 'IQ', 'Iraq'),
(110, 'IE', 'Ireland'),
(111, 'IM', 'Isle of Man'),
(112, 'IL', 'Israel'),
(113, 'IT', 'Italy'),
(114, 'JM', 'Jamaica'),
(115, 'JP', 'Japan'),
(116, 'JE', 'Jersey'),
(117, 'JO', 'Jordan'),
(118, 'KZ', 'Kazakhstan'),
(119, 'KE', 'Kenya'),
(120, 'KI', 'Kiribati'),
(121, 'KW', 'Kuwait'),
(122, 'KG', 'Kyrgyzstan'),
(123, 'LV', 'Latvia'),
(124, 'LB', 'Lebanon'),
(125, 'LS', 'Lesotho'),
(126, 'LR', 'Liberia'),
(127, 'LY', 'Libya'),
(128, 'LI', 'Liechtenstein'),
(129, 'LT', 'Lithuania'),
(130, 'LU', 'Luxembourg'),
(131, 'MO', 'Macao'),
(132, 'MK', 'Macedonia (the former Yugoslav Republic of)'),
(133, 'MG', 'Madagascar'),
(134, 'MW', 'Malawi'),
(135, 'MY', 'Malaysia'),
(136, 'MV', 'Maldives'),
(137, 'ML', 'Mali'),
(138, 'MT', 'Malta'),
(139, 'MH', 'Marshall Islands'),
(140, 'MQ', 'Martinique'),
(141, 'MR', 'Mauritania'),
(142, 'MU', 'Mauritius'),
(143, 'YT', 'Mayotte'),
(144, 'MX', 'Mexico'),
(145, 'FM', 'Micronesia (Federated States of)'),
(146, 'MD', 'Moldova (Republic of)'),
(147, 'MC', 'Monaco'),
(148, 'MN', 'Mongolia'),
(149, 'ME', 'Montenegro'),
(150, 'MS', 'Montserrat'),
(151, 'MA', 'Morocco'),
(152, 'MZ', 'Mozambique'),
(153, 'MM', 'Myanmar'),
(154, 'NA', 'Namibia'),
(155, 'NR', 'Nauru'),
(156, 'NP', 'Nepal'),
(157, 'NL', 'Netherlands'),
(158, 'NC', 'New Caledonia'),
(159, 'NZ', 'New Zealand'),
(160, 'NI', 'Nicaragua'),
(161, 'NE', 'Niger'),
(162, 'NG', 'Nigeria'),
(163, 'NU', 'Niue'),
(164, 'NF', 'Norfolk Island'),
(165, 'MP', 'Northern Mariana Islands'),
(166, 'NO', 'Norway'),
(167, 'OM', 'Oman'),
(168, 'PK', 'Pakistan'),
(169, 'PW', 'Palau'),
(170, 'PS', 'Palestine, State of'),
(171, 'PA', 'Panama'),
(172, 'PG', 'Papua New Guinea'),
(173, 'PY', 'Paraguay'),
(174, 'PE', 'Peru'),
(175, 'PH', 'Philippines'),
(176, 'PN', 'Pitcairn'),
(177, 'PL', 'Poland'),
(178, 'PT', 'Portugal'),
(179, 'PR', 'Puerto Rico'),
(180, 'QA', 'Qatar'),
(181, 'XK', 'Republic of Kosovo'),
(182, 'RE', 'Réunion'),
(183, 'RO', 'Romania'),
(184, 'RU', 'Russian Federation'),
(185, 'RW', 'Rwanda'),
(186, 'BL', 'Saint Barthélemy'),
(187, 'SH', 'Saint Helena, Ascension and Tristan da Cunha'),
(188, 'KN', 'Saint Kitts and Nevis'),
(189, 'LC', 'Saint Lucia'),
(190, 'MF', 'Saint Martin (French part)'),
(191, 'PM', 'Saint Pierre and Miquelon'),
(192, 'VC', 'Saint Vincent and the Grenadines'),
(193, 'WS', 'Samoa'),
(194, 'SM', 'San Marino'),
(195, 'ST', 'Sao Tome and Principe'),
(196, 'SA', 'Saudi Arabia'),
(197, 'SN', 'Senegal'),
(198, 'RS', 'Serbia'),
(199, 'SC', 'Seychelles'),
(200, 'SL', 'Sierra Leone'),
(201, 'SG', 'Singapore'),
(202, 'SX', 'Sint Maarten (Dutch part)'),
(203, 'SK', 'Slovakia'),
(204, 'SI', 'Slovenia'),
(205, 'SB', 'Solomon Islands'),
(206, 'SO', 'Somalia'),
(207, 'ZA', 'South Africa'),
(208, 'GS', 'South Georgia and the South Sandwich Islands'),
(209, 'KR', 'Korea (Republic of)'),
(210, 'SS', 'South Sudan'),
(211, 'ES', 'Spain'),
(212, 'LK', 'Sri Lanka'),
(213, 'SD', 'Sudan'),
(214, 'SR', 'Suriname'),
(215, 'SJ', 'Svalbard and Jan Mayen'),
(216, 'SZ', 'Swaziland'),
(217, 'SE', 'Sweden'),
(218, 'CH', 'Switzerland'),
(219, 'SY', 'Syrian Arab Republic'),
(220, 'TW', 'Taiwan'),
(221, 'TJ', 'Tajikistan'),
(222, 'TZ', 'Tanzania, United Republic of'),
(223, 'TH', 'Thailand'),
(224, 'TL', 'Timor-Leste'),
(225, 'TG', 'Togo'),
(226, 'TK', 'Tokelau'),
(227, 'TO', 'Tonga'),
(228, 'TT', 'Trinidad and Tobago'),
(229, 'TN', 'Tunisia'),
(230, 'TR', 'Turkey'),
(231, 'TM', 'Turkmenistan'),
(232, 'TC', 'Turks and Caicos Islands'),
(233, 'TV', 'Tuvalu'),
(234, 'UG', 'Uganda'),
(235, 'UA', 'Ukraine'),
(236, 'AE', 'United Arab Emirates'),
(237, 'GB', 'United Kingdom of Great Britain and Northern Ireland'),
(238, 'US', 'United States of America'),
(239, 'UY', 'Uruguay'),
(240, 'UZ', 'Uzbekistan'),
(241, 'VU', 'Vanuatu'),
(242, 'VE', 'Venezuela (Bolivarian Republic of)'),
(243, 'VN', 'Viet Nam'),
(244, 'WF', 'Wallis and Futuna'),
(245, 'EH', 'Western Sahara'),
(246, 'YE', 'Yemen'),
(247, 'ZM', 'Zambia'),
(248, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` int(11) NOT NULL,
  `city` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
