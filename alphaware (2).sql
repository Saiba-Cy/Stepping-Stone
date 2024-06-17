-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 17, 2024 at 10:13 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alphaware`
--
CREATE DATABASE IF NOT EXISTS `alphaware` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `alphaware`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `email`, `message`) VALUES
(1, '', ''),
(2, '', ''),
(3, '', ''),
(4, '', ''),
(5, '', ''),
(6, '', ''),
(7, '', ''),
(8, '', ''),
(9, '', ''),
(10, '', ''),
(11, '', ''),
(12, '', ''),
(13, '', ''),
(14, '', ''),
(15, '', ''),
(16, '', ''),
(17, '', ''),
(18, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `mi` varchar(1) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `otp` int(11) NOT NULL,
  `verified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `firstname`, `mi`, `lastname`, `address`, `country`, `zipcode`, `mobile`, `telephone`, `email`, `password`, `otp`, `verified`) VALUES
(1, 'John Cyrrus', 'a', 'Quirino', 'Poblacion Claveria', 'Misor', '9004', '09157451374', '89517452', 'Cyrrus@gmail.com', '54321', 0, 0),
(2, 'John Cyrrus', 'A', 'Quirino', 'Poblacion Claveria', 'Misor', '9004', '09157451373', '', 'johncyrrus77@gmail.com', '4321', 443761, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_size` varchar(50) NOT NULL,
  `product_image` varchar(500) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_size`, `product_image`, `brand`, `category`) VALUES
(3, 'Nike Air Max Neon', '12000', '7', '1141103372nike15.jpg', 'Nike', 'basketball'),
(4, 'Nike Air Max Green', '12000', '8', '832975975nike5.jpg', 'Nike', 'basketball'),
(6, 'Adidas Gent', '13000', '9', '13634363832010-Adidas-Men-Basketball-Shoes-2.jpg', 'Adidas', 'basketball'),
(7, 'Adidas 599 LRG', '15000', '8', '872686791Adidas Basketball Shoes 599_LRG.jpg', 'Adidas', 'basketball'),
(8, 'Lebron 11 Siver', '18000', '8', '124030907nike13.jpg', 'Nike', 'basketball'),
(9, 'Adidas Adizero Black', '18000', '10', '14237873113-adidas-Rose-Dominate-Adizero-shoes.jpg', 'Adidas', 'basketball'),
(10, 'Adidas Adizero Blue', '18000', '10', '1024158586Adidas_Rose_Shoes_009.jpg', 'Adidas', 'basketball'),
(11, 'Lebron 11 Red', '18000', '9', '567507982nike10.jpg', 'Nike', 'basketball'),
(13, 'Nike Hypervenom', '10000', '12', '1312216564nike-hypervenoms-customize-fg-2015-outlet-neymar-colors-soccer-shoes-professional.jpg', 'Nike', 'football'),
(14, 'Nike C Lou Generation', '12000', '11', '533123642013_Discount_Nike_C_Luo_9_Generation_Online_Blue_Green.jpg', 'Nike', 'football'),
(15, 'Nike Mercurial Vapor 7 Superfly II FG Lightning', '12000', '12', '1157463277Nike-Mercurial-Vapor-7-Superfly-III-FG-Lightning-Soccer-Shoes-Fluorescent-Yellow-Black.jpg', 'Nike', 'football'),
(16, 'Nike Magista Obra', '12000', '9', '335092704Cheap-Nike-Magista-Obra-.jpg', 'Nike', 'football'),
(17, 'Adidas Chaussures', '12000', '8', '697721412chaussures001.jpg', 'Adidas', 'football'),
(19, 'Nike Flyknit Lunar Green Blue', '8000', '9', '745184160Nike_Nike_Flyknit_Lunar_2_Mens_Fluorescent_Green_Blue_Running_Shoes_2015_Outlet.jpg', 'Nike', 'Running'),
(20, 'Nike Flyknit Lunar Sea Blue', '8000', '10', '1239262802Nike_Nike_Flyknit_Lunar_2_Mens_Sky_Blue_Sea_Blue_Running_Shoes_2015_Cheap.jpg', 'Nike', 'Running'),
(21, 'Nike Flyknit Green', '8000', '12', '470680173flyknit.jpg', 'Nike', 'Running'),
(26, 'Nike Hypervenom Phantom', '15000', '8', '15416832542014-Nike-Hypervenom-Phantom-FG-Red-Fluorescent-Yellow.jpg', 'Nike', 'football'),
(28, 'Adidas Adizero Red', '18000', '9', '153564340adidas-all-star-basketball-shoes-adizero-shadow.jpg', 'Adidas', 'basketball'),
(29, 'Adidas Gents', '10000', '9', '14124685402-Adidas-gents-shoes-collection-2015-01.jpg', 'Adidas', 'Running'),
(30, 'Nike Flyknit Gray & Pink', '8000', '11', '948731815nw1.jpg', 'Nike', 'Running'),
(31, 'Reebok Zigtech Shake', '10000', '10', '245113227reebok-zigtech-shake-running-shoes-offer-lemonstore-1405-13-lemonstore@1.jpg', 'Reebok', 'Running'),
(157, 'Reebok Blast', '10000', '9', '547866585reebok-blast-profile.jpg', 'Reebok', 'feature'),
(358159, 'Flyknit 360', '8000', '8', '40329068flyknit.jpg', 'Nike', 'feature'),
(377346, 'Mercurail Vapor', '1300', '8', '58275921384485477nike-mercurial-vapor-ix-ag-cr-exclusive-fireberry-purple-football-boots-laces.jpg', 'Nike', 'football'),
(431860, 'Nike Hypervenom Neymar Jr.', '12000', '9', '852236910hypervenom.png', 'Nike', 'feature'),
(605351, 'Nike Women5', '1300', '6', '53343044637141481nw12.jpg', 'Nike', 'running'),
(624570, 'Dame 8', '1300', '8', '35415611292160298adidas-Dame-8-1.jpeg', 'Nike', 'basketball'),
(906478, 'Hyper Venom', '1300', '8', '720648816643298782014-Nike-Hypervenom-Phantom-FG-Red-Fluorescent-Yellow.jpg', 'Nike', 'feature'),
(961461, 'Adidas Bounce Titan', '9000', '9', '367527167Rabatt_Prezzo_Ridotto_Adidas_Bounce_Titan_Herren_White_Schwarz_Running_Sho_Online.jpg', 'Adidas', 'feature'),
(8888962, 'Tiempo', '1300', '8', '44884578416910337Cheap-football-cleats-for-sale.jpg', 'Nike', 'football');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `product_id`, `qty`) VALUES
(1, 71339, 20),
(2, 82631, 30),
(3, 3, 20),
(4, 4, 20),
(5, 6, 20),
(6, 7, 20),
(7, 8, 18),
(8, 9, 20),
(9, 10, 19),
(10, 11, 23),
(11, 13, 20),
(12, 14, 20),
(13, 15, 20),
(14, 16, 20),
(15, 17, 20),
(16, 19, 20),
(17, 20, 20),
(18, 21, 20),
(19, 26, 9),
(20, 28, 20),
(21, 29, 18),
(22, 30, 20),
(23, 31, 20),
(26, 431860, 38),
(27, 21561, 29),
(28, 358159, 30),
(29, 157, 23),
(30, 51292, 20),
(31, 961461, 5),
(32, 274474, 3),
(33, 96744, 5),
(34, 961462, 0),
(35, 8101, 1),
(36, 25975, 7),
(37, 961462, 1),
(38, 961463, 7),
(39, 51218, 7),
(40, 312, 1),
(41, 6197, 10),
(42, 62797, 5),
(43, 45723, 5),
(44, 2174, 7),
(45, 630162, 5),
(46, 186236, 5),
(47, 5983337, 5),
(48, 5983337, 5),
(49, 58816, 5),
(50, 2473, 5),
(51, 329384, 5),
(52, 7254, 5),
(53, 798, 5),
(54, 305535, 5),
(55, 54525, 5),
(56, 93439, 5),
(57, 2147483647, 5),
(58, 961462, 7),
(59, 5339, 5),
(60, 75275613, 5),
(61, 270, 5),
(62, 4950, 5),
(63, 2586351, 10),
(64, 77013, 5),
(65, 9571, 5),
(66, 624570, 9),
(67, 2586352, 10),
(68, 8336, 5),
(69, 918, 5),
(70, 804015, 10),
(71, 714843, 10),
(80, 605351, 7),
(83, 377346, 5),
(76, 1, 7),
(77, 906478, 10),
(78, 8888962, 7);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `order_stat` varchar(100) NOT NULL,
  `order_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `customerid`, `amount`, `order_stat`, `order_date`) VALUES
(1, 2, 2600, 'Confirmed', 'Jun 11, 2024'),
(2, 2, 9000, 'Confirmed', 'Jun 11, 2024'),
(3, 2, 23300, 'Confirmed', 'Jun 11, 2024'),
(4, 2, 1300, 'Confirmed', 'Jun 11, 2024');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `transacton_detail_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_qty` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaction_detail`
--

INSERT INTO `transaction_detail` (`transacton_detail_id`, `product_id`, `order_qty`, `transaction_id`) VALUES
(1, 21561, 1, 0),
(2, 961461, 1, 2),
(3, 26, 2, 2),
(4, 961461, 1, 6),
(5, 8, 1, 0),
(6, 624570, 2, 1),
(7, 961461, 1, 2),
(8, 431860, 1, 3),
(9, 157, 1, 3),
(10, 377346, 1, 3),
(11, 906478, 1, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`transacton_detail_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `transacton_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
