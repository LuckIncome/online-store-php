-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 09 2020 г., 23:20
-- Версия сервера: 5.5.62
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `buy_products`
--

CREATE TABLE `buy_products` (
  `buy_id` int(11) NOT NULL,
  `buy_id_order` int(11) NOT NULL,
  `buy_id_product` int(11) NOT NULL,
  `buy_count_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `buy_products`
--

INSERT INTO `buy_products` (`buy_id`, `buy_id_order`, `buy_id_product`, `buy_count_product`) VALUES
(1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `cart_id_product` int(11) NOT NULL,
  `cart_price` int(11) NOT NULL,
  `cart_count` int(11) NOT NULL DEFAULT '1',
  `cart_datetime` datetime NOT NULL,
  `cart_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cart`
--

INSERT INTO `cart` (`cart_id`, `cart_id_product`, `cart_price`, `cart_count`, `cart_datetime`, `cart_ip`) VALUES
(1, 1, 15000, 3, '2020-07-15 06:15:00', '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `brand` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `type`, `brand`) VALUES
(1, 'mobile', 'Apple'),
(2, 'mobile', 'Explay'),
(3, 'mobile', 'Fly'),
(4, 'mobile', 'HTC'),
(5, 'mobile', 'LG'),
(6, 'mobile', 'Motorola'),
(7, 'mobile', 'Nokia'),
(8, 'mobile', 'Philips'),
(9, 'mobile', 'Samsung'),
(10, 'mobile', 'Sony'),
(12, 'notebook', 'Acer'),
(15, 'notebook', 'HP'),
(16, 'notebook', 'Lenovo'),
(17, 'notebook', 'MSI'),
(18, 'notebook', 'Packard Bell'),
(20, 'notebook', 'Samsung Apple'),
(21, 'notebook', 'Apple'),
(22, 'notepad', 'Samsung'),
(23, 'notepad', 'Apple'),
(24, 'notepad', 'Sony');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `text`, `date`) VALUES
(1, 'Бонус на счет при покупке смартфонов Nokia', 'Купите акционный смартфон Nokia и получите на свой счет до 1000 рублей!', '2013-08-23'),
(2, 'Бонус на счет при покупке планшета с 3G-модулем', 'Получите до 1000 бонусных рублей на счет при покупке планшета в МТС!', '2013-08-23');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_datetime` datetime NOT NULL,
  `order_confirmed` varchar(10) NOT NULL,
  `order_dostavka` varchar(255) NOT NULL,
  `order_pay` varchar(50) NOT NULL,
  `order_type_pay` varchar(100) NOT NULL,
  `order_fio` text NOT NULL,
  `order_address` text NOT NULL,
  `order_phone` varchar(50) NOT NULL,
  `order_note` text NOT NULL,
  `order_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`order_id`, `order_datetime`, `order_confirmed`, `order_dostavka`, `order_pay`, `order_type_pay`, `order_fio`, `order_address`, `order_phone`, `order_note`, `order_email`) VALUES
(1, '2020-07-10 01:11:31', 'yes', 'Самовывоз', 'accepted', '', 'sdfsdfs', 'dfsd', 'dfssd', 'fsdf', 'sds@sd.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `reg_admin`
--

CREATE TABLE `reg_admin` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `fio` text NOT NULL,
  `role` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `view_orders` int(11) NOT NULL DEFAULT '0',
  `accept_orders` int(11) NOT NULL DEFAULT '0',
  `delete_orders` int(11) NOT NULL DEFAULT '0',
  `add_tovar` int(11) NOT NULL DEFAULT '0',
  `edit_tovar` int(11) NOT NULL DEFAULT '0',
  `delete_tovar` int(11) NOT NULL DEFAULT '0',
  `accept_reviews` int(11) NOT NULL DEFAULT '0',
  `delete_reviews` int(11) NOT NULL DEFAULT '0',
  `view_clients` int(11) NOT NULL DEFAULT '0',
  `delete_clients` int(11) NOT NULL DEFAULT '0',
  `add_news` int(11) NOT NULL DEFAULT '0',
  `delete_news` int(11) NOT NULL DEFAULT '0',
  `add_category` int(11) NOT NULL DEFAULT '0',
  `delete_category` int(11) NOT NULL DEFAULT '0',
  `view_admin` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reg_admin`
--

INSERT INTO `reg_admin` (`id`, `login`, `pass`, `fio`, `role`, `email`, `phone`, `view_orders`, `accept_orders`, `delete_orders`, `add_tovar`, `edit_tovar`, `delete_tovar`, `accept_reviews`, `delete_reviews`, `view_clients`, `delete_clients`, `add_news`, `delete_news`, `add_category`, `delete_category`, `view_admin`) VALUES
(2, 'admin', 'mb03foo5139a7d9937942b54253255931b44f7924qj2jjdp9', 'Жур Артур Владимирович', 'Администратор', 'test@mail.ru', '5678453', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(5, 'admin1', '123', 'Жур Артур Владимирович', 'Администратор', 'test@mail.ru', '5678453', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `reg_user`
--

CREATE TABLE `reg_user` (
  `id` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `patronymic` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `datetime` datetime NOT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reg_user`
--

INSERT INTO `reg_user` (`id`, `login`, `pass`, `surname`, `name`, `patronymic`, `email`, `phone`, `address`, `datetime`, `ip`) VALUES
(10, 'admin1', '9nm2rv8qa0d456f724834497f54f69a86eaa85382yo6z', 'Жур', 'Артур', 'Владимирович', 'test@mail.ru', '1232', 'гЛитва', '2020-07-08 20:07:11', '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `table_products`
--

CREATE TABLE `table_products` (
  `products_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `seo_words` text NOT NULL,
  `seo_description` text NOT NULL,
  `mini_description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `mini_features` text NOT NULL,
  `features` text NOT NULL,
  `datetime` datetime NOT NULL,
  `new` int(11) NOT NULL DEFAULT '0',
  `leader` int(11) NOT NULL DEFAULT '0',
  `sale` int(11) NOT NULL DEFAULT '0',
  `visible` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `type_tovara` varchar(255) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `yes_like` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `table_products`
--

INSERT INTO `table_products` (`products_id`, `title`, `price`, `brand`, `seo_words`, `seo_description`, `mini_description`, `image`, `description`, `mini_features`, `features`, `datetime`, `new`, `leader`, `sale`, `visible`, `count`, `type_tovara`, `brand_id`, `yes_like`) VALUES
(1, 'Смартфон Samsung I9192 Galaxy S4 mini DUOS 8Gb (черный)', 16990, 'Samsung', '', '', 'Смартфон Explay Five отличается великолепным исполнением, производительной \"начинкой\" и широкими возможностями доступа к сети Интернет. Кроме того, модель обладает системой навигации, мощной восьмимипиксельной камерой и ярким IPS-экраном. ', 'img1.jpg', '<p>Смартфон <strong>Samsung I9500 Galaxy S4 16Gb</strong> представляет собой современное устройство для связи и общения. Широкий набор дополнительных функций позволяет девайсу заменить пользователю сразу несколько устройств, обеспечив комфортную навигацию, веб-серфинг и качественную съемку.</p>  <p>Широкий выбор средств связи. Для выхода в Интернет смартфон предлагает модуль Wi-Fi и 3G-модем. Способ подключения можно', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '<ul> 	<li>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Тип дисплея: Super AMOLED Фотокамера(Мп): 13</li> 	<li>&nbsp;&nbsp; &nbsp;Встроенная память(Мб): 16000</li> 	<li>&nbsp;&nbsp; &nbsp;Операционная система: Android v4.2</li> 	<li>&nbsp;&nbsp; &nbsp;Тип дисплея: Super AMOLED Фотокамера(Мп): 13</li> 	<li>&nbsp;&nbsp; &nbsp;Встроенная память(Мб): 16000</li> 	<li>&nbsp;&nbsp; &nbsp;Операционная система: Android v4.2</li> </ul>  <p>&nbsp;</p>', '2013-08-18 03:13:16', 0, 1, 0, 1, 9, 'mobile', 9, 1),
(2, 'Смартфон Samsung I9500 Galaxy S4 16Gb (черный)', 24990, 'Samsung', '', '', 'Смартфон Explay Five отличается великолепным исполнением, производительной \"начинкой\" и широкими возможностями доступа к сети Интернет. Кроме того, модель обладает системой навигации, мощной восьмимипиксельной камерой и ярким IPS-экраном. ', 'img2.jpg', '', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-18 06:22:32', 1, 0, 0, 1, 2, 'mobile', 9, 2),
(3, 'Смартфон HTC Desire 600 dual sim (белый)', 15990, 'HTC', '', '', 'Смартфон HTC Desire 600 dual sim – классическая модель с поддержкой двух сим-карт для экономных пользователей. ', 'img3.jpg', '', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-22 09:21:21', 1, 0, 0, 1, 0, 'mobile', 4, 1),
(6, 'Nokia Lumia 625 (черный)', 11990, 'Nokia', '', '', 'Смартфон Nokia Lumia 625 станет оптимальным решением для активного пользователя. Легкий и стильный корпус модели скрывает в себе серьезный набор функций: здесь есть и навигатор, и медиаплеер. ', 'img4.jpg', '', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-23 00:00:00', 1, 0, 0, 1, 1, 'mobile', 7, 1),
(8, 'Смартфон Apple iPhone 5 16Gb (белый)', 27990, 'Apple', '', 'Apple iPhone стал еще быстрее и вместе с тем изящнее. Толщина Apple iPhone 5 – всего 7,6 миллиметра, а вес – около 112 граммов, что на 18% тоньше и на 20% легче по сравнению с iPhone 4S.', '', 'img6.jpg', '', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-24 00:00:00', 0, 1, 0, 1, 1, 'mobile', 1, 1),
(9, 'Смартфон Samsung I8190 Galaxy S III Mini La Fleur 8Gb (белый)', 10990, 'Samsung', '', '', 'Смартфон I8190 Galaxy S III Mini La Fleur выполнен в эргономичном корпусе и отличается стильным дизайном и великолепной функциональностью. Модель оснащена 4-дюймовым мультисенсорным Super AMOLED', 'img7.jpg', '', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-24 07:20:28', 1, 0, 0, 1, 1, 'mobile', 9, 1),
(10, 'Смартфон LG E612 Optimus L5 (черный)', 5990, 'LG', '', '', 'Смартфон LG E612 Optimus L5 может похвастаться широкими возможностями, прекрасной функциональностью, поддержкой современных технологий и стильным корпусом.', 'img8.jpg', '', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-24 05:20:28', 1, 1, 0, 1, 2, 'mobile', 5, 1),
(11, 'Смартфон Sony Xperia miro (черный)', 6990, 'Sony', '', '', 'Смартфон Sony Xperia miro ориентирован на любителей общения в социальных сетях, в частности, в Facebook. Модель позволяет оставаться на связи с друзьями 24 часа в сутки и с удобством комментировать и создавать статусы', 'img9.jpg', '', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-24 07:22:24', 1, 0, 0, 1, 1, 'mobile', 10, 1),
(12, 'Смартфон Samsung S5360 Galaxy Y La Fleur (белый)', 3990, 'Samsung', '', '', 'Смартфон Samsung S5360 Galaxy Y La Fleur – это компактный аппарат по демократичной цене. Здесь есть все для активного и современного пользователя – камера, медиаплеер, разнообразные средства связи. ', 'img10.jpg', '', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-24 05:14:24', 1, 0, 0, 1, 4, 'mobile', 9, 1),
(13, 'Смартфон Explay Five (черный)', 7990, 'Explay', '', '', 'Смартфон Explay Five отличается великолепным исполнением, производительной \"начинкой\" и широкими возможностями доступа к сети Интернет. Кроме того, модель обладает системой навигации, мощной восьмимипиксельной камерой и ярким IPS-экраном. ', 'img11.jpg', '', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-29 08:16:28', 1, 0, 0, 1, 2, 'mobile', 2, 1),
(14, 'Смартфон Philips Xenium W732 (белый)', 7490, 'Philips', '', '', 'Стильный смартфон Philips W732 порадует широкой функциональностью. Модель поддерживает работу двух сим-карт, благодаря чему появляется возможность отделить личные звонки от рабочих', 'img12.jpg', '', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-24 06:24:28', 1, 0, 0, 1, 14, 'mobile', 8, 3),
(16, 'Телефон', 50000, 'LG', 'Телефон', 'Телефон', '<p>Товар Товар Товар Товар&nbsp;ТелефонТелефонТелефонТелефон</p>\r\n', 'mobile-1631.jpg', '<p>Товар Товар Товар Товар&nbsp;ТелефонТелефонТелефон</p>\r\n', '<p>Товар Товар Товар Товар&nbsp;ТелефонТелефонТелефон</p>\r\n', '<p>Товар Товар Товар Товар&nbsp;ТелефонТелефонТелефон</p>\r\n', '0000-00-00 00:00:00', 0, 1, 0, 1, 11, 'mobile', 5, 2),
(17, 'Смартфон Philips Xenium W732 (белый)', 5000, 'LG', 'Philips Xenium, Смартфон Philips, Philips Xenium W732 (белый)', '', '<p>Стильный смартфон Philips W732 порадует широкой функциональностью. Модель поддерживает работу двух сим-карт, благодаря чему появляется возможность отделить личные звонки от рабочих</p>\r\n', 'mobile-1721.jpg', '<p>Смартфон <strong>Samsung I9500 Galaxy S4 16Gb</strong> представляет собой современное устройство для связи и общения. Широкий набор дополнительных функций позволяет девайсу заменить пользователю сразу несколько устройств, обеспечив комфортную навигацию, веб-серфинг и качественную съемку.</p>\r\n\r\n<p>Широкий выбор средств связи. Для выхода в Интернет смартфон предлагает модуль Wi-Fi и 3G-модем. Способ подключения можно выбирать в соответствии с текущими условиями &ndash; это обеспечивает практически повсеместный доступ к связи и экономный расход денежных средств. Также доступно соединение посредством Bluetooth. Для работы с электронной почтой смартфон имеет собственное E-mail-приложение.</p>\r\n\r\n<p>Быстрая ориентация в незнакомом месте. Смартфон Samsung I9500 Galaxy S4 16Gb оснащен GPS-навигатором, который поможет выбрать оптимальный маршрут и быстро найти поблизости нужный объект.</p>\r\n\r\n<p>Мощная камера. Фотокамера с разрешением матрицы 13 Мп позволяет сделать снимки высокого качества. Также поддерживается режим видеосъемки в формате Full HD. Светодиодная вспышка и автофокус всегда позволят получить хороший результат.</p>\r\n', '<ul>\r\n	<li>&nbsp;&nbsp; &nbsp;Тип дисплея: Super AMOLED Фотокамера(Мп): 13</li>\r\n	<li>&nbsp;&nbsp; &nbsp;Встроенная память(Мб): 16000</li>\r\n	<li>&nbsp;&nbsp; &nbsp;Операционная система: Android v4.2</li>\r\n</ul>\r\n', '<ul>\r\n	<li>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Тип дисплея: Super AMOLED Фотокамера(Мп): 13</li>\r\n	<li>&nbsp;&nbsp; &nbsp;Встроенная память(Мб): 16000</li>\r\n	<li>&nbsp;&nbsp; &nbsp;Операционная система: Android v4.2</li>\r\n	<li>&nbsp;&nbsp; &nbsp;Тип дисплея: Super AMOLED Фотокамера(Мп): 13</li>\r\n	<li>&nbsp;&nbsp; &nbsp;Встроенная память(Мб): 16000</li>\r\n	<li>&nbsp;&nbsp; &nbsp;Операционная система: Android v4.2</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', '0000-00-00 00:00:00', 0, 0, 0, 1, 7, 'mobile', 5, 1),
(18, 'Товар 1', 25000, 'Apple', '', '', '<p>Товар Товар Товар Товар</p>\r\n', 'mobile-1886.jpg', '<p>Товар Товар Товар Товар</p>\r\n', '<p>Товар Товар Товар Товар</p>\r\n', '<p>Товар Товар Товар Товар</p>\r\n', '0000-00-00 00:00:00', 1, 1, 1, 1, 3, 'mobile', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `table_reviews`
--

CREATE TABLE `table_reviews` (
  `reviews_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `good_reviews` text NOT NULL,
  `bad_reviews` text NOT NULL,
  `comment` text NOT NULL,
  `date` date NOT NULL,
  `moderat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `table_reviews`
--

INSERT INTO `table_reviews` (`reviews_id`, `products_id`, `name`, `good_reviews`, `bad_reviews`, `comment`, `date`, `moderat`) VALUES
(1, 1, 'Артур', 'Хороший телефон.Камера хорошая.', 'Жду когда появится все цвета телефонов.Скользкий иногда глючит.', 'Телефон использую 2-ой день,больше недостатков не нашел... Все самое интересное впереди :D', '2013-11-07', 1),
(7, 1, 'Жандос', 'фывфыавы', 'авыпавпвап', 'авпвапвапвапва', '2020-07-06', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `uploads_images`
--

CREATE TABLE `uploads_images` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `uploads_images`
--

INSERT INTO `uploads_images` (`id`, `products_id`, `image`) VALUES
(1, 1, 'img1.jpg'),
(2, 1, 'img2.jpg'),
(3, 18, 'mobile-163.jpg'),
(4, 18, 'mobile-492.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `buy_products`
--
ALTER TABLE `buy_products`
  ADD PRIMARY KEY (`buy_id`);

--
-- Индексы таблицы `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `reg_admin`
--
ALTER TABLE `reg_admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reg_user`
--
ALTER TABLE `reg_user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `table_products`
--
ALTER TABLE `table_products`
  ADD PRIMARY KEY (`products_id`);

--
-- Индексы таблицы `table_reviews`
--
ALTER TABLE `table_reviews`
  ADD PRIMARY KEY (`reviews_id`);

--
-- Индексы таблицы `uploads_images`
--
ALTER TABLE `uploads_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `buy_products`
--
ALTER TABLE `buy_products`
  MODIFY `buy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `reg_admin`
--
ALTER TABLE `reg_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `reg_user`
--
ALTER TABLE `reg_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `table_products`
--
ALTER TABLE `table_products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `table_reviews`
--
ALTER TABLE `table_reviews`
  MODIFY `reviews_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `uploads_images`
--
ALTER TABLE `uploads_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
