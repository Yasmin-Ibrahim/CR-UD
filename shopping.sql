-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2024 at 11:36 AM
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
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `age` int(11) DEFAULT NULL CHECK (`age` > 15),
  `phone` varchar(100) NOT NULL,
  `country` varchar(50) DEFAULT 'cairo',
  `address` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `gender` enum('female','male') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email`, `password`, `age`, `phone`, `country`, `address`, `image`, `gender`) VALUES
(2, 'Isac', 'Newling', 'inewling1@cbsnews.com', 'eH5<Pyuet<', 30, '+62-734-571-9063', 'Indonesia', '485 Havey Place', 'default.jpg', 'male'),
(3, 'Jessica', 'Ramel', 'jramel2@comcast.net', 'lL3`~*$PB(b)Y', 47, '1234567890', 'Portugal', '6362 Mesta Circle', 'default.jpg', 'female'),
(5, 'yasmin', 'ibrahim', 'mjollye4@unicef.org', 'hG1}mQ5ufNf', 69, '+63-466-778-3789', 'Philippines', '43273 Grasskamp Plaza', 'default.jpg', 'female'),
(8, 'Reynold', 'Kinder', 'rkinder7@oaic.gov.au', 'tL5%fL+B', 82, '+48-376-249-1156', 'Poland', '19 Coleman Avenue', 'default.jpg', 'male'),
(10, 'Smitty', 'Mc Carroll', 'smccarroll9@goo.ne.jp', 'vN8>A`W3(', 26, '+1-562-857-9031', 'United States', '0 Maple Wood Plaza', 'default.jpg', 'male'),
(151, 'Linus', 'Harmon', 'nykube@mailinator.com', 'Pa$$w0rd!', 84, '12345678', 'Debitis magnam volup', 'Eos quae est irure d', 'default.jpg', 'female'),
(152, 'yasmin', 'ibrahim', 'syhiw@mailinator.com', 'Pa$$w0rd!', 83, '1234567890', 'Quod maxime eos sapi', 'Vel elit maiores vi', 'default.jpg', 'female'),
(159, 'Trevor', 'Small', 'sasymyleca@mailinator.com', 'Pa$$w0rd!', 49, '123456789', 'Tenetur voluptatum n', 'Provident unde assu', 'default.jpg', 'female'),
(162, 'Hanae', 'Malone', 'mejopupy@mailinator.com', 'Pa$$w0rd!', 79, '123456789', 'Ullamco at enim aut ', 'Maxime fugiat nihil ', 'default.jpg', 'female'),
(175, 'mohmed', 'Bullock', 'jesysavew@mailinator.com', 'Pa$$w0rd!', 17, '95123456789', 'Atque velit consequ', 'Omnis sapiente et vo', 'default.jpg', 'male'),
(189, 'Liberty', 'Poole', 'devym@mailinator.com', 'Pa$$w0rd!', 62, '7934567890', 'Inventore dolor debi', 'Dolore eos vero aut', 'default.jpg', 'male'),
(190, 'Ella', 'Keith', 'kupacux@mailinator.com', 'Pa$$w0rd!', 20, '11123456789', 'Incidunt pariatur ', 'Rerum in ea eum veli', 'default.jpg', 'female'),
(192, 'Brian', 'Nieves', 'qaqupubujy@mailinator.com', 'Pa$$w0rd!', 84, '1023456789', 'Quia non voluptatem ', 'Ad autem officia et ', 'default.jpg', 'female'),
(193, 'Urielley', 'Owen', 'baqifo@mailinator.com', 'Pa$$w0rd!', 99, '123456789876', 'Mollitia pariatur D', 'Qui veniam in quas ', 'default.jpg', 'male'),
(194, 'Demetrius', 'Talley', 'fivokyd@mailinator.com', 'Pa$$w0rd!', 62, '13123456789', 'Omnis corporis non q', 'Quia maiores alias q', 'default.jpg', 'male'),
(195, 'Gray', 'Dennis', 'nemuki@mailinator.com', 'Pa$$w0rd!', 92, '66234567890', 'Harum', 'Non delectus ullamc', 'default.jpg', 'male'),
(199, 'Emerson', 'Oneal', 'gakobe@mailinator.com', 'Pa$$w0rd!', 89, '3123456789', 'Aliquam beatae eiusm', 'Dolore est perferen', 'default.jpg', 'male'),
(202, 'Petra', 'Gaines', 'havec@mailinator.com', 'Pa$$w0rd!', 41, '87123456789', 'Et dolores aliquip p', 'Eiusmod sunt Nam ne', 'default.jpg', 'male'),
(203, 'Nerea', 'Cantu', 'mihulo@mailinator.com', 'Pa$$w0rd!', 33, '823456789', 'Quidem quia in minus', 'Est quis et animi e', 'default.jpg', 'female'),
(204, 'Neil', 'Perry', 'lafe@mailinator.com', 'Pa$$w0rd!', 75, '959876543', 'Voluptates amet acc', 'Non minus nulla reru', '2716author2.jpg', 'male'),
(205, 'Brenna', 'Roberson', 'voja@mailinator.com', 'Pa$$w0rd!', 81, '644567896789', 'Sunt perspiciatis t', 'Ea dolor ea ut volup', 'default.jpg', 'male'),
(206, 'Rachel', 'Daugherty', 'wiwyropoto@mailinator.com', 'Pa$$w0rd!', 39, '31123456789', 'Cillum perspiciatis', 'Dolor porro fugiat ', '46177author1.jpg', 'female'),
(207, 'Madison', 'Hayden', 'fypob@mailinator.com', 'Pa$$w0rd!', 46, '93234567890', 'Sed eiusmod deserunt', 'Voluptas magnam volu', 'default.jpg', 'male');

--
-- Triggers `customers`
--
DELIMITER $$
CREATE TRIGGER `save_old_customer` BEFORE DELETE ON `customers` FOR EACH ROW INSERT INTO old_customers VALUES(null, OLD.first_name, OLD.last_name, OLD.phone, OLD.gender, OLD.address, OLD.id)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `customers_not_in_orders`
-- (See below for the actual view)
--
CREATE TABLE `customers_not_in_orders` (
`id` int(10) unsigned
,`first_name` varchar(100)
,`last_name` varchar(100)
,`email` varchar(100)
,`password` varchar(100)
,`age` int(11)
,`phone` varchar(100)
,`country` varchar(50)
,`address` varchar(100)
,`gender` enum('female','male')
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `join_all_data`
-- (See below for the actual view)
--
CREATE TABLE `join_all_data` (
`customer_id` int(10) unsigned
,`first_name` varchar(100)
,`last_name` varchar(100)
,`email` varchar(100)
,`country` varchar(50)
,`address` varchar(100)
,`phone` varchar(100)
,`product_id` int(10) unsigned
,`title` varchar(100)
,`price` float
,`category` varchar(100)
,`order_id` int(10) unsigned
,`amount` int(11)
,`date_received` varchar(200)
,`date_delivered` varchar(200)
);

-- --------------------------------------------------------

--
-- Table structure for table `old_customers`
--

CREATE TABLE `old_customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `gender` enum('female','male') NOT NULL,
  `address` varchar(200) NOT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `old_customers`
--

INSERT INTO `old_customers` (`id`, `first_name`, `last_name`, `phone`, `gender`, `address`, `customer_id`) VALUES
(3, 'Jamal', 'Mullins', '12', 'male', 'Dolor deleniti nostr', 185),
(4, 'Lawrence', 'Acosta', '17', 'female', 'Sint sed adipisci qu', 177),
(5, 'Stephen', 'Solis', '32', 'male', 'Ea aut qui dolor ali', 139),
(6, 'Teagan', 'Velasquez', '28', 'female', 'Sunt dolorum consequ', 198),
(7, 'Malcolm', 'Vega', '68', 'female', 'Dolores quo nesciunt', 197),
(8, 'Octavia', 'Rhodes', '55', 'female', 'Explicabo Et aut qu', 196),
(9, 'Sheila', 'Chang', '43', 'female', 'Temporibus natus vel', 191),
(10, 'Noble', 'Brown', '89', 'female', 'Quis adipisicing off', 173),
(11, 'Autumn', 'Cardenas', '85', 'female', 'Est et excepteur qui', 171),
(12, 'Jasmeen', 'Rutledge', '13', 'female', 'Aliquid dolorum dele', 147),
(13, 'Lila', 'Lawson', '123456789098', 'male', 'Animi veniam aliqu', 150),
(14, 'Basil', 'Bradley', '63', 'female', 'Dicta corporis neces', 168),
(15, 'Hedy', 'Simpson', '58', 'male', 'Laborum nihil ex pos', 141),
(16, 'Vincent', 'Mcmillan', '28', 'male', 'Alias ea eu ut offic', 165),
(17, 'Ayanna', 'Day', '5', 'male', 'Quibusdam rerum pari', 167),
(18, 'Travis', 'Owen', '45', 'male', 'Deserunt corrupti a', 160),
(19, 'Plato', 'Hamilton', '63', 'male', 'Culpa ipsum facere ', 140),
(20, 'Clio', 'Castro', '35', 'female', 'Dolore alias aut per', 200),
(21, 'Caesar', 'Levy', '59', 'female', 'Distinctio Maxime a', 201);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `is_taxable` enum('yes','no') DEFAULT NULL,
  `discount` decimal(5,2) DEFAULT NULL,
  `date_received` varchar(200) DEFAULT current_timestamp(),
  `date_delivered` varchar(200) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `amount`, `is_taxable`, `discount`, `date_received`, `date_delivered`, `notes`, `product_id`, `customer_id`) VALUES
(24, 21, 'yes', 97.00, '2024-10-23 01:44:18', '2024-10-23 01:44:18', 'Molestias ipsa ea i', 160, 8),
(35, 9, 'no', 65.00, '2024-10-23 18:56:49', '2024-10-23 18:56:49', 'Qui praesentium cill', 158, 3),
(42, 820, 'no', 13.00, '2024-10-23 19:40:55', '2024-10-23 19:40:55', 'Debitis proident nu', 15, 3),
(45, 1000, 'yes', 39.00, '2024-10-23 19:46:11', '2024-10-23 19:46:11', 'Sapiente quo laudant', 4, 2),
(46, 3030, 'yes', 99.00, '2024-10-23 19:50:34', '2024-10-23 19:50:34', 'Cupidatat ipsa nece', 17, 10),
(49, 9411, 'no', 26.00, '2024-10-23 20:01:17', '2024-10-23 20:01:17', 'Voluptas officia vol', 10, 2),
(52, 3800, 'no', 35.00, '2024-10-23 20:04:06', '2024-10-23 20:04:06', 'Aut sint illo molest', 10, 2),
(57, 7011, 'yes', 27.00, '2024-10-10', '2024-10-02', 'Quasi et qui magna r', 14, 175),
(60, 7900, 'yes', 35.00, '2024-10-25 16:59:34', '2024-10-25 16:59:34', 'Maxime ad pariatur ', 174, 2),
(61, 28000, 'no', 81.00, '2024-10-25 17:26:21', '2024-10-25 17:26:21', 'Non est in adipisici', 162, 190),
(63, 12000, 'no', 29.00, '2024-10-02', '2024-10-04', 'Dolorem facilis esse', 1, 152),
(64, 10000, 'yes', 87.00, '2024-10-25 20:33:17', '2024-10-25 20:33:17', 'Sed nisi proident d', 9, 199),
(65, 7500, 'no', 47.00, '2024-10-25 20:35:58', '2024-10-25 20:35:58', 'Iure et dicta deleni', 169, 175),
(66, 53000, 'yes', 16.00, '2024-10-25 20:37:11', '2024-10-25 20:37:11', 'Sunt consectetur i', 156, 199),
(68, 5500, 'no', 16.00, '2024-11-02 09:41:51', '2024-11-02 09:41:51', 'Quis cupidatat beata', 161, 162),
(69, 8000, 'no', 94.00, '2024-11-02 09:43:34', '2024-11-02 09:43:34', 'Culpa tempore excep', 4, 162),
(70, 6800, 'yes', 27.00, '2024-11-02 09:43:55', '2024-11-02 09:43:55', 'Enim soluta qui exce', 176, 162);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` in (1,2,3,4,5)),
  `quantity` int(11) DEFAULT 1,
  `date_current` varchar(50) DEFAULT current_timestamp(),
  `brand` varchar(100) DEFAULT NULL,
  `size` enum('large','medium','small') DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `category`, `image`, `rating`, `quantity`, `date_current`, `brand`, `size`, `color`) VALUES
(1, 'Wine - Puligny Montrachet A.', 76116.6, 'Roofing (Asphalt)', 'download.jpeg', 5, 38, '2023-10-28 00:00:00', 'Allview', '', 'Yellow'),
(2, 'Appetizer - Veg Assortment', 282552, 'RF Shielding', 'download.jpeg', 2, 48, '2024-02-11 00:00:00', 'Samsung', '', 'Fuscia'),
(3, 'Wonton Wrappers', 391993, 'Curb & Gutter', 'download.jpeg', 5, 21, '2024-07-16 00:00:00', 'Allview', '', 'Mauv'),
(4, 'Dip - Tapenade', 450369, 'Masonry & Precast', 'download.jpeg', 4, 14, '2023-12-28 00:00:00', 'Xiaomi', '', 'Yellow'),
(5, 'Cheese - Grie Des Champ', 357846, 'Framing (Steel)', 'download.jpeg', 3, 3, '2023-12-21 00:00:00', 'Nokia', '', 'Goldenrod'),
(6, 'Bread - Pita', 239744, 'EIFS', 'download.jpeg', 4, 3, '2024-06-01 00:00:00', 'Honor', '', 'Green'),
(7, 'Pepsi, 355 Ml', 311771, 'HVAC', 'download.jpeg', 3, 14, '2024-07-19 00:00:00', 'Nokia', '', 'Yellow'),
(8, 'Cheese - Cheddar, Medium', 309435, 'Termite Control', 'download.jpeg', 2, 34, '2024-07-31 00:00:00', 'Gionee', '', 'Khaki'),
(9, 'Basil - Pesto Sauce', 147451, 'Fire Protection', 'download.jpeg', 4, 36, '2024-03-06 00:00:00', 'Samsung', '', 'Blue'),
(10, 'Lettuce - Iceberg', 164485, 'Construction Clean and Final Clean', 'download.jpeg', 4, 41, '2023-12-28 00:00:00', 'NEC', '', 'Indigo'),
(11, 'Halibut - Whole, Fresh', 48316.4, 'Masonry', 'download.jpeg', 4, 25, '2024-06-16 00:00:00', 'LG', '', 'Mauv'),
(12, 'Lamb - Sausage Casings', 490420, 'Electrical and Fire Alarm', 'download.jpeg', 4, 35, '2024-04-10 00:00:00', 'OnePlus', '', 'Green'),
(13, 'Soup - Knorr, Chicken Gumbo', 436609, 'Drywall & Acoustical (MOB)', 'download.jpeg', 2, 20, '2024-04-18 00:00:00', 'Energizer', '', 'Crimson'),
(14, 'Madeira', 361736, 'Overhead Doors', 'download.jpeg', 1, 27, '2023-11-19 00:00:00', 'Sony', '', 'Green'),
(15, 'Wine - Ruffino Chianti Classico', 148407, 'Retaining Wall and Brick Pavers', 'download.jpeg', 4, 27, '2024-01-16 00:00:00', 'LG', '', 'Red'),
(16, 'Blouse / Shirt / Sweater', 189823, 'Doors, Frames & Hardware', 'download.jpeg', 1, 25, '2024-09-06 00:00:00', 'Motorola', '', 'Maroon'),
(17, 'Flour - Whole Wheat', 95367, 'Electrical and Fire Alarm', 'download.jpeg', 2, 42, '2023-11-02 00:00:00', 'vivo', '', 'Maroon'),
(18, 'Triple Sec - Mcguinness', 27362.9, 'Painting & Vinyl Wall Covering', 'download.jpeg', 2, 22, '2024-04-14 00:00:00', 'Asus', '', 'Aquamarine'),
(19, 'Nantucket Apple Juice', 154053, 'Framing (Steel)', 'download.jpeg', 1, 4, '2024-04-09 00:00:00', 'Lava', '', 'Teal'),
(20, 'Cornflakes', 189469, 'Fire Protection', 'download.jpeg', 1, 12, '2024-09-30 00:00:00', 'Archos', '', 'Fuscia'),
(155, 'Consectetur facere ', 484, 'Nostrud occaecat fac', 'download.jpeg', 4, 374, '02-Apr-2023', 'Consequatur Modi et', 'large', '#2ee97a'),
(156, 'tv', 232, 'Dolores sit non in o', 'download.jpeg', 3, 605, '2023-10-28 00:00:00', 'Do ea enim omnis sol', 'medium', '#cc356f'),
(157, 'phone', 88, 'Reiciendis at expedi', 'download.jpeg', 4, 5, '11-Oct-1999', 'Ad voluptate soluta ', 'large', '#1c9a26'),
(158, 'Itaque id est erro', 556, 'Qui non qui ut ut co', 'download.jpeg', 2, 823, '16-Aug-1984', 'Nam delectus dolor ', 'small', '#c94892'),
(159, 'Ut illo veniam omni', 450, 'Sint minus repellend', 'download.jpeg', 3, 316, '15-May-1976', 'Ex commodo ad ullamc', 'large', '#15ba20'),
(160, 'Sit laboriosam bea', 790, 'Debitis et est volup', 'download.jpeg', 2, 893, '2023-10-28 ', 'Laborum quasi nobis ', 'small', '#2b8ca6'),
(161, 'Aut voluptatum repel', 823, 'Odio dolor sequi eiu', 'download.jpeg', 3, 368, '2023-10-28 ', 'Laborum Voluptates ', 'large', '#8748cb'),
(162, 'Saepe dolor minus si', 606, 'Vero libero omnis eu', 'download.jpeg', 5, 325, '2023-10-28 ', 'Ratione voluptates q', 'small', '#053750'),
(163, 'Saepe dolor minus si', 606, 'Vero libero omnis eu', 'download.jpeg', 5, 325, '2023-10-28 ', 'Ratione voluptates q', 'small', '#053750'),
(164, 'Quisquam qui natus i', 234, 'Aliquid ut delectus', 'download.jpeg', 3, 416, '26-Jan-2005', 'Quia et voluptatem s', 'small', '#b82be0'),
(167, 'table', 536, 'Eiusmod esse labori', 'download.jpeg', 4, 469, '20-Sep-2010', 'Nemo culpa est elige', 'small', '#e24488'),
(168, ' volupta', 675, 'Incidunt id nesciun', '20256bg-2.png.webp', 3, 518, '22-Aug-2021', 'Ut velit culpa qui', 'medium', '#f22cfd'),
(169, 'Reprehenderit', 647, 'Necessitatibus sed p', '5653', 3, 335, '22-May-1983', 'Possimus aliqua Du', 'small', '#b66c4a'),
(170, 'Magna consequatur om', 784, 'Voluptatem placeat ', '38221', 2, 101, '12-Apr-1989', 'Assumenda neque faci', 'small', '#186d3d'),
(171, 'Consequatur aute qua', 488, 'Dolores perferendis ', '252159img3.jpeg', 3, 577, '27-Jul-1999', 'Officia exercitation', 'small', '#903a8b'),
(172, 'Mollitia autem qui v', 990, 'Fuga Excepteur ex p', '113126blog3.jpg', 5, 798, '24-Mar-1997', 'Ipsam possimus aute', 'large', '#9ddf06'),
(173, 'Qui', 702, 'Quia labore quaerat ', '72210blog1.jpg.webp', 2, 3, '01-Nov-2011', 'Lorem libero tempore', 'large', '#eae9c2'),
(174, 'Sunt a tempor non a', 573, 'Labore qui debitis o', '4222', 3, 6, '07-Jan-2000', 'Labore obcaecati qui', 'medium', '#69e301'),
(175, 'Aliqua Cillum rerum', 652, 'Ut velit voluptatem', '121231blockqoute-bg.jpg', 3, 9, '29-Apr-1985', 'Quidem veniam omnis', 'small', '#e012e0'),
(176, 'labor', 46, 'Architecto aut tempo', '163142blog2.jpg', 4, 434, '12-Jul-2024', 'Ea reiciendis maxime', 'small', '#0bda86'),
(177, 'Quam ipsum sed perf', 70, 'Aliquam dolor minus ', '166107about2.png.webp', 4, 153, '14-Jan-1995', 'Sunt maxime quia qu', 'large', '#e530b5');

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `id` int(11) NOT NULL,
  `rule_number` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id`, `rule_number`, `description`) VALUES
(1, 1, 'Super Admin'),
(2, 2, 'Can Create and Read'),
(3, 3, 'Read Only');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `created_by` int(11) DEFAULT NULL,
  `rule_id` int(11) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`, `created_by`, `rule_id`) VALUES
(63, 'Yasmeen Ibrahim El-Sayed', 'yasminibrahim1522003@gmail.com', '$2y$10$AetT4e.Ki90Gg4c5t2mWHOdqr484f3G5tster/Gtme7gzAZQqIMqa', '58197author3.jpg', NULL, 1),
(65, 'Farah Ibrahim', 'farahibrahim@gmail.com', '$2y$10$M5mN2NwPYHJrFFZy4xuXxOyFhF1OMl7hc.G0caLWVQuTpsC/atf/C', 'default.jpg', 63, 2),
(66, 'Mohamed Hussien', 'mohamedhussien@gmail.com', '$2y$10$0/4rT/YmJZiUr.JzdYubFeAW7OwK82ZANVYHt3T6C9JqMfANqUpAG', 'default.jpg', 63, 3),
(68, 'Yahia Ibrahim', 'yahiaibrahim@gmail.com', '$2y$10$6N3BCsarofTmRDwGPOK/Ee2i2LYDLuD1evV3Qm8sN2R4/o5HOyAaC', 'default.jpg', 65, 2),
(69, 'Youssef ibrahim', 'youssef123@gmail.com', '$2y$10$QLk.8RVZgmCLePdtcydzdekMazT/1DsO10KTGQ56ItArBAa6AEaRO', 'default.jpg', 68, 3);

-- --------------------------------------------------------

--
-- Stand-in structure for view `users_data`
-- (See below for the actual view)
--
CREATE TABLE `users_data` (
`id` int(11)
,`name` varchar(255)
,`email` varchar(255)
,`password` varchar(255)
,`image` varchar(255)
,`created_by` varchar(255)
,`rule_number` int(11)
,`description` varchar(255)
,`created_by_id` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `customers_not_in_orders`
--
DROP TABLE IF EXISTS `customers_not_in_orders`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customers_not_in_orders`  AS SELECT `customers`.`id` AS `id`, `customers`.`first_name` AS `first_name`, `customers`.`last_name` AS `last_name`, `customers`.`email` AS `email`, `customers`.`password` AS `password`, `customers`.`age` AS `age`, `customers`.`phone` AS `phone`, `customers`.`country` AS `country`, `customers`.`address` AS `address`, `customers`.`gender` AS `gender` FROM `customers` WHERE !(`customers`.`id` in (select `orders`.`customer_id` from `orders`)) ;

-- --------------------------------------------------------

--
-- Structure for view `join_all_data`
--
DROP TABLE IF EXISTS `join_all_data`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `join_all_data`  AS SELECT `customers`.`id` AS `customer_id`, `customers`.`first_name` AS `first_name`, `customers`.`last_name` AS `last_name`, `customers`.`email` AS `email`, `customers`.`country` AS `country`, `customers`.`address` AS `address`, `customers`.`phone` AS `phone`, `products`.`id` AS `product_id`, `products`.`title` AS `title`, `products`.`price` AS `price`, `products`.`category` AS `category`, `orders`.`id` AS `order_id`, `orders`.`amount` AS `amount`, `orders`.`date_received` AS `date_received`, `orders`.`date_delivered` AS `date_delivered` FROM ((`orders` join `customers` on(`orders`.`customer_id` = `customers`.`id`)) join `products` on(`orders`.`product_id` = `products`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `users_data`
--
DROP TABLE IF EXISTS `users_data`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `users_data`  AS SELECT `f_users`.`id` AS `id`, `f_users`.`name` AS `name`, `f_users`.`email` AS `email`, `f_users`.`password` AS `password`, `f_users`.`image` AS `image`, `s_users`.`name` AS `created_by`, `rules`.`rule_number` AS `rule_number`, `rules`.`description` AS `description`, `s_users`.`id` AS `created_by_id` FROM ((`users` `f_users` left join `users` `s_users` on(`f_users`.`created_by` = `s_users`.`id`)) join `rules` on(`f_users`.`rule_id` = `rules`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `old_customers`
--
ALTER TABLE `old_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_ibfk_1` (`product_id`),
  ADD KEY `orders_ibfk_22` (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `rule_id` (`rule_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `old_customers`
--
ALTER TABLE `old_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `rules`
--
ALTER TABLE `rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_22` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`rule_id`) REFERENCES `rules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
