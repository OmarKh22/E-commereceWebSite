-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2021 at 09:03 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maria`
--

-- --------------------------------------------------------

--
-- Table structure for table `caregories`
--

CREATE TABLE `caregories` (
  `ID` int(11) NOT NULL,
  `Name` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `caregories`
--

INSERT INTO `caregories` (`ID`, `Name`) VALUES
(1, 'Jewelry& Accessories'),
(2, 'Sales'),
(3, 'Home& Living'),
(4, 'Sports,Books&More'),
(5, 'Clothing& Shoes');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Cust_ID` int(11) NOT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Street` varchar(254) DEFAULT NULL,
  `City` varchar(254) DEFAULT NULL,
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Cust_ID`, `phone`, `Gender`, `Street`, `City`, `User_ID`) VALUES
(1, '0123456789', 'Male', 'Manshya', 'Alex', 1),
(2, '012345695200', 'female', 'Mohafza', 'Damanhour', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` int(11) NOT NULL,
  `Cust_ID` int(11) NOT NULL,
  `Date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `Cust_ID`, `Date`) VALUES
(1, 2, '22-10-2020'),
(2, 1, '6-3-2021'),
(3, 2, '10-8-2020'),
(4, 1, '1-5-2021');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `Order_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Quntaity` int(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`Order_ID`, `Product_ID`, `Quntaity`) VALUES
(2, 2, 3),
(2, 35, 9),
(2, 51, 5),
(3, 21, 3),
(3, 47, 6),
(4, 25, 6),
(4, 52, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `ID` int(11) NOT NULL,
  `total_price` varchar(254) DEFAULT NULL,
  `arrival_time` varchar(254) DEFAULT NULL,
  `Order_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`ID`, `total_price`, `arrival_time`, `Order_ID`) VALUES
(1, '200', '22-11-2020', 1),
(2, '600', '8-4-2021', 2),
(3, '450', '22-9-2020', 3),
(4, '1520', '5-6-2021', 4),
(5, '300', '2-12-2020', 1),
(6, '760', '15-4-2021', 2),
(7, '3000', '1-1-2022', 3),
(8, '1460', '3-1-2022', 4);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Product_ID` int(11) NOT NULL,
  `Name` varchar(254) DEFAULT NULL,
  `Rate` varchar(254) DEFAULT NULL,
  `Description` varchar(254) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `img` varchar(245) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Product_ID`, `Name`, `Rate`, `Description`, `ID`, `img`, `Price`) VALUES
(1, 'Belt', 'good', 'Belt \r\nShein\r\n', 1, 'images\\accessories\\Belt.webp', 60),
(2, 'Ear Decor', 'good', 'Ear Decor\r\nShein\r\n', 1, 'images\\accessories\\Ear decor.webp', 30),
(3, 'Frame glasses', 'very good', 'Frame glasses\r\nGucci\r\n', 1, 'images\\accessories\\Frame Glasses.webp', 150),
(4, 'Keychain', 'good', 'Keychain\r\nShein\r\n', 1, 'images\\accessories\\Keychain.webp', 50),
(5, 'Pant chain', 'good', 'Pant chain\r\nChanel\r\n', 1, 'images\\accessories\\Pant chain.webp', 120),
(6, 'Sunglasses', 'very good', 'Sunglasses\r\nGucci\r\n', 1, 'images\\accessories\\Sunglasses.webp', 200),
(7, 'Bag With Purse', 'good', 'Bag With Purse\r\nShein\r\n', 1, 'images\\accessories\\Bag With Purse.webp', 320),
(8, 'Long Wallet', 'very good', 'Long Wallet\r\nOne Size', 1, 'images\\accessories\\Long Wallet.webp', 60),
(9, 'Passport Wallet', 'good', 'Passport Wallet\r\nShein \r\n', 1, 'images\\accessories\\Passport Wallet.webp', 65),
(10, 'Satchel Bag', 'Very good', 'Satchel Bag  \r\nChanel\r\n', 1, 'images\\accessories\\Satchel Bag.webp', 450),
(11, 'Small Purse', 'good', 'Small Purse\r\nShein\r\n', 1, 'images\\accessories\\Small Purse.webp', 35),
(12, 'Square Bag', 'good', 'Square Bag\r\nGucci \r\n', 1, 'images\\accessories\\Square Bag.webp', 250),
(13, 'Charm Necklace', 'good', 'Charm Necklace\r\nShein \r\n', 1, 'images\\accessories\\Charm Necklace.webp', 36),
(14, 'Heart Necklace', 'good', 'Heart Necklace  \r\nShein  \r\n', 1, 'images\\accessories\\Heart Necklace.webp', 50),
(15, 'infinity Necklace', 'good', 'infinity Necklace  \r\nShein \r\n', 1, 'images\\accessories\\infinity Necklace.webp', 60),
(16, 'Layered Necklace', 'good', 'Layered Necklace\r\ngood \r\n', 1, 'images\\accessories\\Layered Necklace.webp', 25),
(17, 'Heart Earing', 'good', 'Heart Earing \r\nShein \r\n', 1, 'images\\accessories\\Heart Earing.webp', 89),
(18, 'Latter Earing', 'good', 'Later Earing \r\nShein \r\n', 1, 'images\\accessories\\Later Earing.webp', 30),
(19, 'Simple Earing', 'very good', 'Simple Earing \r\nShein \r\n', 1, 'images\\accessories\\Simple Earing.webp', 60),
(20, 'Star Earing', 'very good', '', 1, 'images\\accessories\\Star Earing.webp', 100),
(21, 'Zicron Earing', 'good', 'Zicron Earing \r\nShein \r\n', 1, 'images\\accessories\\Zicron Earing.webp', 50),
(22, 'Butterfly Earing', '', 'Butterfly Earing \r\nShein \r\n', 1, 'images\\accessories\\Butterfly Earing.webp', 60),
(23, 'Latter Bracelet', 'good', 'Latter Bracelet \r\nShein \r\n', 1, 'images\\accessories\\Latter Bracelet.webp', 30),
(24, 'Layer Bracelet', 'very good', 'Layer Bracelet \r\nShein\r\n', 1, 'images\\accessories\\Layer Bracelet.webp', 60),
(25, 'Simple Bracelet', 'good', 'Simple Bracelet \r\nShein \r\n', 1, 'images\\accessories\\Simple Bracelet.webp', 150),
(26, 'Stone Bracelet', 'very good', 'Stone Bracelet\r\nShein\r\n', 1, 'images\\accessories\\Stone Bracelet.webp', 65),
(27, 'Heart Anklet', 'good', 'Heart Anklet\r\nGucci\r\n', 1, 'images\\accessories\\Heart Anklet.webp', 30),
(28, 'Layered Ankelt', 'very good', 'Layered Ankelt\r\nChanel\r\n', 1, 'images\\accessories\\Layered Ankelt.webp', 160),
(29, 'Layered Thigh Chain', 'good', 'Layered Thigh Chain\r\nShein\r\n', 1, 'images\\accessories\\Layered Thigh Chain.webp', 200),
(30, 'Waist Chain', 'very good', 'Waist Chain\r\nShein\r\n', 1, 'images\\accessories\\Waist Chain.webp', 50),
(31, 'Steel Steamer\r\n', 'good', 'Steel Steamer\r\none size\r\n', 3, 'images\\Home&Living\\Steel Steamer.webp', 650),
(32, 'Whisk', 'very good', 'Whisk\r\none size\r\n', 3, 'images\\Home&Living\\Whisk.webp', 900),
(33, 'Chopping Board', 'very good', 'Chopping Board\r\nAll Size\r\n', 3, 'images\\Home&Living\\Chopping Board.webp', 320),
(34, 'Clasic Kitchen', 'good', 'Clasic Kitchen\r\n150cm * 100cm\r\n', 3, 'images\\Home&Living\\Clasic Kitchen.jpg', 6000),
(35, 'Kitchen with dining table', 'good', 'Kitchen with dining table\r\n190cm * 165cm\r\n', 3, 'images\\Home&Living\\Kitchen with dining table.jpg', 15659),
(36, 'Rice Scoop', 'very good', 'Rice Scoop\r\none size\r\n', 3, 'images\\Home&Living\\Rice Scoop.webp', 50),
(37, 'Bear Mat', 'very good', 'Bear Mat\r\nOne Size\r\n', 3, 'images\\Home&Living\\Bear Mat.webp', 350),
(38, 'Letter Mat', 'good', 'Letter Mat\r\nOne Size\r\n', 3, 'images\\Home&Living\\Letter Mat.webp', 150),
(39, 'Plush Mat', 'very good', 'Plush Mat\r\nAll Sie\r\n', 3, 'images\\Home&Living\\Plush Mat.webp', 360),
(40, 'Solid Mat', 'good', 'Solid Mat\r\nAll Size\r\n', 3, 'images\\Home&Living\\Solid Mat.webp', 450),
(41, 'Wood floor', 'very good', 'Wood floor\r\nAll Size\r\n', 3, 'images\\Home&Living\\wood floor.jpg', 5600),
(42, 'Ceramic Floor', 'good', 'Ceramic Floor\r\nAll Size\r\n', 3, 'images\\Home&Living\\Ceramic Floor.jpg', 6000),
(43, 'Bath Mat', 'very good', 'Bath Mat\r\n60cm * 50cm\r\n', 3, 'images\\Home&Living\\Bath Mat.webp', 200),
(44, 'Flusher', 'good', 'Flusher\r\nOne Size\r\n', 3, 'images\\Home&Living\\Flusher.webp', 600),
(45, 'French Bathroom', 'good', 'French Bathroom\r\nAll Size\r\n', 3, 'images\\Home&Living\\French Bathroom.jpg', 8000),
(46, 'Modern Bathroom', 'very good', 'Modern Bathroom\r\n120cm * 150cm\r\n', 3, 'images\\Home&Living\\Modern Bathroom.jpg', 3500),
(47, 'Soap Holder', 'very good', 'Soap Holder\r\nOne Size\r\n', 3, 'images\\Home&Living\\Soap Holder.webp', 30),
(48, 'Storage Rack', 'good', 'Storage Rack\r\nOne Size\r\n', 3, 'images\\Home&Living\\Storage Rack.webp', 50),
(49, 'Led Light', 'good', 'Led Light\r\nOne Size\r\n', 3, 'images\\Home&Living\\Led Light.webp', 250),
(50, 'Shape Light', 'very good', 'Shape Light\r\nOne Size\r\n', 3, 'images\\Home&Living\\Shape Light.webp', 300),
(51, 'Sky Light', 'good', 'Sky Light\r\nOne Size\r\n', 3, 'images\\Home&Living\\Sky Light.webp', 150),
(52, 'String Light', '', 'String Light\r\nOne Size\r\n', 3, 'images\\Home&Living\\String Light.webp', 300),
(53, 'Sun Light', 'good', 'Sun Light\r\nOne Size \r\n', 3, 'images\\Home&Living\\Sun Light.webp', 100),
(54, 'Computer Table', 'good', 'Computer Table\r\n90cm * 60cm\r\n', 3, 'images\\Home&Living\\Computer Table.jpg', 650),
(55, 'Modern Office', 'very good', 'Modern Office\r\n150cm * 170cm\r\n', 3, 'images\\Home&Living\\Modern Office.jpg', 1300),
(56, 'Office Chair', 'good', 'Office Chair\r\nOne Size\r\n', 3, 'images\\Home&Living\\Office Chair.png', 590),
(57, 'Office Desk', 'very good', 'Office Desk\r\n65cm * 55cm\r\n', 3, 'images\\Home&Living\\Office Desk.png', 400),
(58, 'Workstation Office', 'very good', 'Workstation Office\r\n200cm * 250cm \r\n', 3, 'images\\Home&Living\\Workstation Office.jpg', 4500),
(59, 'Alloy Ring', 'good', 'Alloy Ring\r\nShein \r\n', 2, 'images\\Sales\\Alloy Ring.webp', 30),
(60, 'Belted Dress', 'very good', 'Belted Dress\r\nZara\r\n', 2, 'images\\Sales\\Belted Dress.webp', 300),
(61, 'Chunky boots', 'very good', 'Chunky boots\r\nGucci\r\n', 2, 'images\\Sales\\Chunky boots.webp', 250),
(62, 'Detail Ring', 'good', 'Detail Ring\r\nShein\r\n', 2, 'images\\Sales\\Detail Ring.webp', 25),
(63, 'Geometric Ring', 'very good', 'Geometric Ring\r\nShein\r\n', 2, 'images\\Sales\\Geometric Ring.webp', 20),
(64, 'Heart Ring', 'good', 'Heart Ring\r\nShein\r\n', 2, 'images\\Sales\\Heart Ring.webp', 30),
(65, 'Heeled Boots', 'very good', 'Heeled Boots\r\nChannel\r\n', 2, 'images\\Sales\\Heeled Boots.webp', 450),
(66, 'High Waist Pants', 'good', 'High Waist Pants\r\nL&M\r\n\r\n', 2, 'images\\Sales\\Hogh Waist Pants.webp', 320),
(67, 'Hooded Puffer', 'very good', 'Hooded Puffer\r\nLC Wikiki\r\n', 2, 'images\\Sales\\Hooded Puffer.webp', 870),
(68, 'Knit Sneakers', 'good', 'Knit Sneakers\r\nZara\r\n', 2, 'images\\Sales\\Knit Sneakers.webp', 250),
(69, 'Office Chair', 'very good', 'Office Chair\r\nOne Size\r\n', 2, 'images\\Sales\\Office Chair.png', 150),
(70, 'Out Heart Ring', 'good', 'Out Heart Ring\r\nShein\r\n', 2, 'images\\Sales\\Out Heart Ring.webp', 40),
(71, 'Oversized Sweater', 'very good', 'Oversized Sweater\r\nShein\r\n', 2, 'images\\Sales\\Oversized Sweater.webp', 130),
(72, 'Plush Mat', 'good', 'Plush Mat\r\nShein\r\n', 2, 'images\\Sales\\Plush Mat.webp', 50),
(73, 'Round Ring', 'good', 'Round Ring\r\nShein\r\n', 2, 'images\\Sales\\Round Ring.webp', 30),
(74, 'Sock Boots', 'very good', 'Sock Boots\r\nZara\r\n', 2, 'images\\Sales\\Sock Boots.webp', 250),
(75, 'Solid Mat', 'good', 'Solid Mat\r\nShein\r\n', 2, 'images\\Sales\\Solid Mat.webp', 60),
(76, 'Square Bag', 'good', 'Square Bag\r\nGucci\r\n', 2, 'images\\Sales\\Square Bag.webp', 150),
(77, 'Thermal Hoodie', 'good', 'Thermal Hoodie\r\nShein\r\n', 2, 'images\\Sales\\Thermal Hoodie.webp', 300),
(78, 'Slevee Blouse', 'good', 'Slevee Blouse\r\nL&M\r\n', 2, 'images\\Sales\\Slevee Blouse.webp', 160),
(79, 'Winter Coat', 'very good', 'Winter Coat\r\nOne Size\r\n', 5, 'images\\Clothing& Shose\\Winter Coat.webp', 980),
(80, 'Bodycon Dress', 'very good', 'Bodycon Dress\r\nOne Size\r\n', 5, 'images\\Clothing& Shose\\Bodycon Dress.webp', 350),
(81, 'Chunky Boots', 'good', 'Chunky Boots\r\nAll Size\r\n', 5, 'images\\Clothing& Shose\\Chunky Boots.webp', 350),
(82, 'Chunky Heels', 'very good', 'Chunky Heels\r\nAll Size\r\n', 5, 'images\\Clothing& Shose\\Chunky Heels.webp', 250),
(83, 'Classic Boots', 'good', 'Classic Boots\r\nAll Size\r\n', 5, 'images\\Clothing& Shose\\Classic Boots.webp', 450),
(84, 'Combat Boots', 'very good', 'Combat Boots\r\nAll Size\r\n', 5, 'images\\Clothing& Shose\\Combat Boots.webp', 560),
(85, 'High Top Boots', 'good', 'High Top Boots\r\nAll Size\r\n', 5, 'images\\Clothing& Shose\\High Top Boots.webp', 320),
(86, 'Oversized Sweater', 'good', 'Oversized Sweater\r\nOverSize\r\n', 5, 'images\\Clothing& Shose\\Oversized Sweater.webp', 250),
(87, 'Puffer Coat', 'very good', 'Puffer Coat\r\nAll Size\r\n', 5, 'images\\Clothing& Shose\\Puffer Coat.webp', 890),
(88, 'Shirt Dress', 'good', 'Shirt Dress\r\nOne Size\r\n', 5, 'images\\Clothing& Shose\\Shirt Dress.webp', 560),
(89, 'Shoulder Sweater', 'good', 'Shoulder Sweater\r\nOverSize\r\n', 5, 'images\\Clothing& Shose\\Shoulder Sweater.webp', 120),
(90, 'Skate Shose', 'very good', 'Skate Shose\r\nAll Size\r\n', 5, 'images\\Clothing& Shose\\Skate Shose.webp', 350),
(91, 'Sleeve Blouse', 'good', 'Sleeve Blouse\r\nOverSize\r\n', 5, 'images\\Clothing& Shose\\Sleeve Blouse.webp', 400),
(92, 'Straight leg jeans', 'very good', 'Straight leg jeans\r\nAll Size\r\n', 5, 'images\\Clothing& Shose\\Straight leg jeans.webp', 450),
(93, 'Straight leg pants', 'good', 'Straight leg pants\r\nAll Size\r\n', 5, 'images\\Clothing& Shose\\Straight leg pants.webp', 600),
(94, 'Bodybulding Expender', 'good', 'Bodybulding Expender\r\nOne Size\r\n', 4, 'images\\Sports & BOOKS& more\\Bodybulding Expender.webp', 1200),
(95, 'Book Charm', 'very good', 'Book Charm\r\nSmall\r\n', 4, 'images\\Sports & BOOKS& more\\Book Charm.webp', 50),
(96, 'Coloring Book', 'good', 'Coloring Book\r\nOne Size\r\n', 4, 'images\\Sports & BOOKS& more\\Coloring Book.webp', 200),
(97, 'Desktop Book Storage', 'very good', 'Desktop Book Storage\r\nSmall\r\n', 4, 'images\\Sports & BOOKS& more\\Desctop Book Storage.webp', 600),
(98, 'Jewelry Organizer', 'good', 'Jewelry Organizer\r\nOne Size\r\n', 4, 'images\\Sports & BOOKS& more\\Jewelry Organizer.webp', 150),
(99, 'Led Book Light', 'very good', 'Led Book Light\r\nOne Size\r\n', 4, 'images\\Sports & BOOKS& more\\Led Book Light.webp', 250),
(100, 'Leg Roller', 'good', 'Leg Roller\r\nOne Size\r\n', 4, 'images\\Sports & BOOKS& more\\Leg Roller.webp', 680),
(101, 'Plan Book', 'very good', 'Plan Book\r\nSmall\r\n', 4, 'images\\Sports & BOOKS& more\\Plan Book.webp', 60),
(102, 'Push_UP Stands', 'good', 'Push_UP Stands\r\nOne Size\r\n', 4, 'images\\Sports & BOOKS& more\\Push_UP Stands.webp', 2695),
(103, 'Resistance Exerciser', 'very good', 'Resistance Exerciser\r\nOne Size\r\n', 4, 'images\\Sports & BOOKS& more\\Resistance Exerciser.webp', 3500),
(104, 'Schedule Book', 'good', 'Schedule Book\r\nSmall\r\n', 4, 'images\\Sports & BOOKS& more\\Schedule Book.webp', 100),
(105, 'Scratch Book', 'very good', 'Scratch Book\r\nSmall\r\n', 4, 'images\\Sports & BOOKS& more\\Scratch Book.webp', 150),
(106, 'Water Dumbbell', 'good', 'Water Dumbbell\r\nOne Size\r\n', 4, 'images\\Sports & BOOKS& more\\Water Dumbbell.webp', 4500),
(107, 'Wheel Roller', 'very good', 'Wheel Roller\r\nOne Size\r\n', 4, 'images\\Sports & BOOKS& more\\Wheel Roller.webp', 5000),
(108, 'Note Book', 'good', 'Note Book\r\nSmall\r\n', 4, 'images\\Sports & BOOKS& more\\Note Book.webp', 80);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_ID` int(11) NOT NULL,
  `User_type` varchar(254) DEFAULT NULL,
  `Name` varchar(254) DEFAULT NULL,
  `E_mail` varchar(254) DEFAULT NULL,
  `Password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_ID`, `User_type`, `Name`, `E_mail`, `Password`) VALUES
(1, 'customer', 'amgad', 'aaaa@gmail.com', 1234567),
(2, 'Admin', 'Sara Hecham', 'sara@gmail.com', 1234),
(3, 'Customer', 'Omar khaled', 'omar@gmail.com', 1234),
(4, 'Customer', 'Marina Magdy', 'marina@gmail.com', 1234),
(5, 'Admin', 'Ahmed Mahmoud', 'ahmed@gmail.com', 1234),
(6, 'Customer ', 'Danial Ashraf', 'dany@gmail.com', 1234),
(7, 'Customer', 'Sally Ahmed', 'sally@gmail.com', 1234),
(8, 'Admin', 'ALi ALi', 'ali@gmail.com', 1234);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caregories`
--
ALTER TABLE `caregories`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Cust_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `Cust_ID` (`Cust_ID`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`Order_ID`,`Product_ID`),
  ADD KEY `Product_ID` (`Product_ID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Order_ID` (`Order_ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Cust_ID`) REFERENCES `customers` (`Cust_ID`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `caregories` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
