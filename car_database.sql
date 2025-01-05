-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2025 at 01:31 PM
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
-- Database: `car_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `imageurl` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `price`, `imageurl`, `description`) VALUES
(1, 'Toyota Camry', 20000, '/uploads/car1.jpg', 'Comfortable sedan'),
(2, 'Honda Civic', 18000, '/uploads/car2.jpg', 'Reliable compact car'),
(3, 'BMW X5', 50000, '/uploads/car3.jpg', 'Luxury SUV'),
(4, 'Ford Mustang', 35000, '/uploads/mustang.jpg', 'A powerful and iconic sports car.'),
(5, 'Tesla Model 3', 40000, '/uploads/model3.jpg', 'A modern and eco-friendly EV.'),
(6, 'BMW 3 Series', 45000, '/uploads/bmw3.jpg', 'A luxury sedan with advanced features.'),
(7, 'Jeep Wrangler', 30000, '/uploads/wrangler.jpg', 'A rugged SUV for off-road adventures.'),
(8, 'Chevrolet Malibu', 22000, '/uploads/malibu.jpg', 'A stylish and comfortable midsize car.'),
(9, 'Nissan Altima', 25000, '/uploads/altima.jpg', 'A practical and spacious sedan.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
