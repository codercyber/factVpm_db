-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2024 at 11:58 AM
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
-- Database: `fast_vpn`
--

-- --------------------------------------------------------

--
-- Table structure for table `datausages`
--

CREATE TABLE `datausages` (
  `id` int(11) NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `usage` float DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datausages`
--

INSERT INTO `datausages` (`id`, `userId`, `usage`, `date`, `createdAt`, `updatedAt`) VALUES
(1, 2, 15, '2024-10-19 09:50:50', '2024-10-19 09:50:50', '2024-10-19 09:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', '2024-10-19 11:37:27', '2024-10-19 11:37:27'),
(2, 'user\r\n', '2024-10-19 11:37:27', '2024-10-19 11:37:27');

-- --------------------------------------------------------

--
-- Table structure for table `userhasroles`
--

CREATE TABLE `userhasroles` (
  `id` int(11) NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `roleId` int(10) UNSIGNED NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userhasroles`
--

INSERT INTO `userhasroles` (`id`, `userId`, `roleId`, `createdAt`, `updatedAt`) VALUES
(2, 2, 1, '2024-10-19 09:38:37', '2024-10-19 09:38:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `country`, `email`, `password`, `date`, `createdAt`, `updatedAt`) VALUES
(2, 'Abdul rafay', 'Pakistan', 'admin@email.com', '$2b$10$7zJ/EVTSA4225kKl2Zg/YecartsQNQfC5l/zUwrsEgiUIozdn69fy', '2024-10-19 09:38:37', '2024-10-19 09:38:37', '2024-10-19 09:38:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datausages`
--
ALTER TABLE `datausages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_usages_user_id` (`userId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `name_2` (`name`),
  ADD UNIQUE KEY `name_3` (`name`),
  ADD UNIQUE KEY `name_4` (`name`),
  ADD UNIQUE KEY `name_5` (`name`),
  ADD UNIQUE KEY `name_6` (`name`),
  ADD UNIQUE KEY `name_7` (`name`),
  ADD UNIQUE KEY `name_8` (`name`),
  ADD UNIQUE KEY `name_9` (`name`),
  ADD UNIQUE KEY `name_10` (`name`),
  ADD UNIQUE KEY `name_11` (`name`),
  ADD UNIQUE KEY `name_12` (`name`),
  ADD UNIQUE KEY `name_13` (`name`),
  ADD UNIQUE KEY `name_14` (`name`),
  ADD UNIQUE KEY `name_15` (`name`),
  ADD UNIQUE KEY `name_16` (`name`),
  ADD UNIQUE KEY `name_17` (`name`),
  ADD UNIQUE KEY `name_18` (`name`),
  ADD UNIQUE KEY `name_19` (`name`),
  ADD UNIQUE KEY `name_20` (`name`),
  ADD UNIQUE KEY `name_21` (`name`),
  ADD UNIQUE KEY `name_22` (`name`),
  ADD UNIQUE KEY `name_23` (`name`),
  ADD UNIQUE KEY `name_24` (`name`),
  ADD UNIQUE KEY `name_25` (`name`),
  ADD UNIQUE KEY `name_26` (`name`),
  ADD UNIQUE KEY `name_27` (`name`),
  ADD UNIQUE KEY `name_28` (`name`),
  ADD UNIQUE KEY `name_29` (`name`),
  ADD UNIQUE KEY `name_30` (`name`),
  ADD UNIQUE KEY `name_31` (`name`),
  ADD UNIQUE KEY `name_32` (`name`),
  ADD UNIQUE KEY `name_33` (`name`),
  ADD UNIQUE KEY `name_34` (`name`);

--
-- Indexes for table `userhasroles`
--
ALTER TABLE `userhasroles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `roleId` (`roleId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `email_3` (`email`),
  ADD UNIQUE KEY `email_4` (`email`),
  ADD UNIQUE KEY `email_5` (`email`),
  ADD UNIQUE KEY `email_6` (`email`),
  ADD UNIQUE KEY `email_7` (`email`),
  ADD UNIQUE KEY `email_8` (`email`),
  ADD UNIQUE KEY `email_9` (`email`),
  ADD UNIQUE KEY `email_10` (`email`),
  ADD UNIQUE KEY `email_11` (`email`),
  ADD UNIQUE KEY `email_12` (`email`),
  ADD UNIQUE KEY `email_13` (`email`),
  ADD UNIQUE KEY `email_14` (`email`),
  ADD UNIQUE KEY `email_15` (`email`),
  ADD UNIQUE KEY `email_16` (`email`),
  ADD UNIQUE KEY `email_17` (`email`),
  ADD UNIQUE KEY `email_18` (`email`),
  ADD UNIQUE KEY `email_19` (`email`),
  ADD UNIQUE KEY `email_20` (`email`),
  ADD UNIQUE KEY `email_21` (`email`),
  ADD UNIQUE KEY `email_22` (`email`),
  ADD UNIQUE KEY `email_23` (`email`),
  ADD UNIQUE KEY `email_24` (`email`),
  ADD UNIQUE KEY `email_25` (`email`),
  ADD UNIQUE KEY `email_26` (`email`),
  ADD UNIQUE KEY `email_27` (`email`),
  ADD UNIQUE KEY `email_28` (`email`),
  ADD UNIQUE KEY `email_29` (`email`),
  ADD UNIQUE KEY `email_30` (`email`),
  ADD UNIQUE KEY `email_31` (`email`),
  ADD UNIQUE KEY `email_32` (`email`),
  ADD UNIQUE KEY `email_33` (`email`),
  ADD UNIQUE KEY `email_34` (`email`),
  ADD UNIQUE KEY `email_35` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datausages`
--
ALTER TABLE `datausages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userhasroles`
--
ALTER TABLE `userhasroles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `datausages`
--
ALTER TABLE `datausages`
  ADD CONSTRAINT `datausages_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_10` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_11` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_12` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_13` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_14` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_15` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_16` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_17` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_18` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_19` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_20` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_21` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_22` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_23` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_24` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_25` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_26` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_27` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_28` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_29` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_3` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_30` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_31` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_32` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_33` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_34` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_35` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_4` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_5` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_6` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_7` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_8` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datausages_ibfk_9` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userhasroles`
--
ALTER TABLE `userhasroles`
  ADD CONSTRAINT `userhasroles_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_10` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_11` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_12` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_13` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_14` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_15` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_16` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_17` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_18` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_19` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_20` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_21` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_22` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_23` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_24` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_25` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_26` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_27` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_28` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_29` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_3` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_30` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_31` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_32` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_33` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_34` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_35` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_36` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_37` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_38` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_39` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_4` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_40` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_41` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_42` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_43` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_44` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_45` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_46` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_47` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_48` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_49` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_5` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_50` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_51` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_52` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_53` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_54` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_55` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_56` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_57` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_58` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_59` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_6` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_60` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_61` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_62` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_63` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_64` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_65` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_66` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_67` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_68` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_7` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_8` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userhasroles_ibfk_9` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
