-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 18, 2022 at 08:52 AM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react-ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `expires` timestamp NOT NULL,
  `scope` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`access_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('1d8026edd920e492b6fdcd6629e25c41bb9ded05', 'testclient', NULL, '2022-03-16 18:29:03', 'app'),
('29a19319bf40e783c7e7313111d2f1487179c9b6', 'testclient', NULL, '2022-03-15 12:18:21', 'app'),
('2e5250d2294c758caa0809dee9a5af06fb1a7e9b', 'testclient', NULL, '2022-03-15 17:56:16', 'app'),
('32d8d2015da15afc5305e69951ce98e9ec8cff99', 'testclient', NULL, '2022-03-15 15:57:13', 'app'),
('39079ce8d769c9e2b06bec647caf795901a39592', 'testclient', NULL, '2022-03-17 17:49:14', 'app'),
('3f86b990da627ce8ea37791a9231049888afbc5c', 'testclient', NULL, '2022-03-17 20:21:48', 'app'),
('41481149340c8a351a4f714fdf8791b6632e9c9e', 'testclient', NULL, '2022-03-15 16:01:06', 'app'),
('41e99af64dc6c573a1bb4d0fc94be9dd23fc42cc', 'testclient', NULL, '2022-03-12 09:32:03', 'app'),
('4298ab0531571d1e9b6750a6f2af6e5855ab0d85', 'testclient', NULL, '2022-03-15 12:52:54', 'app'),
('45cd3fc67f4bcec13e20d4f07a5e381d9a7c8a6a', 'testclient', NULL, '2022-03-17 17:48:14', 'app'),
('496a9086a529a04b7dd2b6977773f2b34cfb3356', 'testclient', NULL, '2022-03-17 21:28:21', 'app'),
('4c6d0b7887b2c4195a3f914986fbb1df86f2a085', 'testclient', NULL, '2022-03-17 21:25:17', 'app'),
('532be2dda52f4003588063b52591118c07778c22', 'testclient', NULL, '2022-03-17 18:03:24', 'app'),
('732fa35d6fa9608799fe313145fa42fedc0361fd', 'testclient', NULL, '2022-03-17 19:19:51', 'app'),
('7c3900886fdad3eea58ae956392d4b97ed42c987', 'testclient', NULL, '2022-03-16 18:14:25', 'app'),
('7dbecfc01dd8835e201a5e03370920fb8c623e21', 'testclient', NULL, '2022-03-14 10:35:08', 'app'),
('8ba1abf3adee99745dd213caffdc63d727f4410d', 'testclient', NULL, '2022-03-17 21:19:58', 'app'),
('8df3c3512fbe7e9104215ce4e3fd47a5f957fa4a', 'testclient', NULL, '2022-03-17 21:41:54', 'app'),
('9f998cd397bd3918c52453df1acfe8742b9e97c7', 'testclient', NULL, '2022-03-17 17:48:22', 'app'),
('b30412fe156c58f38fef185c5ed7790584bffc3e', 'testclient', NULL, '2022-03-15 09:42:30', 'app'),
('b91902b35ebfa8ad9733e09dca543dba5bc3e1d5', 'testclient', NULL, '2022-03-17 15:34:36', 'app'),
('c4b18c1294e71a9e2b983085f26f69e38adaa14d', 'testclient', NULL, '2022-03-15 19:31:59', 'app'),
('d0f6732d99b8edf073d80cd0abb8d93b0a2f8a53', 'testclient', NULL, '2022-03-15 12:22:33', 'app'),
('de8ce206f2c645f311f5f388a1cfa9aece316448', 'testclient', NULL, '2022-03-17 16:57:07', 'app'),
('e0f0419c36500c607a66846a47f3bbba25f2495d', 'testclient', NULL, '2022-03-18 09:30:58', 'app'),
('ef2b566c4f171fd8f4ecacef19dbbeb0623072e0', 'testclient', NULL, '2022-03-15 12:43:22', 'app'),
('f7f9f3cf4d00e1ee90e7793c6809861738052256', 'testclient', NULL, '2022-03-14 12:32:09', 'app'),
('fcc572d3ff83f2b7ceccdbbcd9458e5b0b180e1b', 'testclient', NULL, '2022-03-17 18:00:49', 'app');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_authorization_codes`
--

CREATE TABLE `oauth_authorization_codes` (
  `authorization_code` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `expires` timestamp NOT NULL,
  `scope` varchar(4000) DEFAULT NULL,
  `id_token` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `grant_types` varchar(80) DEFAULT NULL,
  `scope` varchar(4000) DEFAULT NULL,
  `user_id` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`client_id`, `client_secret`, `redirect_uri`, `grant_types`, `scope`, `user_id`) VALUES
('testclient', 'testsecret', NULL, 'client_credentials', 'app', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_jwt`
--

CREATE TABLE `oauth_jwt` (
  `client_id` varchar(80) NOT NULL,
  `subject` varchar(80) DEFAULT NULL,
  `public_key` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `expires` timestamp NOT NULL,
  `scope` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_scopes`
--

CREATE TABLE `oauth_scopes` (
  `scope` varchar(80) NOT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_users`
--

CREATE TABLE `oauth_users` (
  `username` varchar(80) NOT NULL,
  `password` varchar(80) DEFAULT NULL,
  `first_name` varchar(80) DEFAULT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `email_verified` tinyint(1) DEFAULT NULL,
  `scope` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `oauth_users`
--

INSERT INTO `oauth_users` (`username`, `password`, `first_name`, `last_name`, `email`, `email_verified`, `scope`) VALUES
('william', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'William', 'Wright', 'william@rhodian.net', 1, 'app');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blogs`
--

CREATE TABLE `tbl_blogs` (
  `post_id` int NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_description` text NOT NULL,
  `post_fetured_imagefield` varchar(255) NOT NULL,
  `post_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_updated` datetime DEFAULT NULL,
  `post_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_blogs`
--

INSERT INTO `tbl_blogs` (`post_id`, `post_title`, `post_description`, `post_fetured_imagefield`, `post_created`, `post_updated`, `post_deleted`) VALUES
(1, 'This is a new title', 'and this is a new description', '', '2022-03-10 20:59:23', NULL, NULL),
(2, 'title 2', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iste cupiditate aliquid sed sequi exercitationem nam consequatur qui dolore possimus doloremque fuga beatae debitis dolorum, tenetur quaerat voluptas non neque quae?\r\n', '', '2022-03-10 20:59:23', NULL, NULL),
(3, 'This is a new title edited', 'and this is a new description edited', '', '2022-03-15 10:44:00', NULL, NULL),
(4, 'This is a new title edited', 'and this is a new description edited', '', '2022-03-15 10:45:10', '2022-03-15 06:06:55', NULL),
(5, 'My 3rd blog edited', 'Test the description of my 3rd blog editer', '', '2022-03-15 10:45:33', '2022-03-15 06:12:36', '2022-03-15 06:12:36'),
(6, 'Post with Image', 'description of the image', '', '2022-03-15 12:00:10', '2022-03-15 09:00:10', NULL),
(7, 'Post with Image 2 test', 'description of the image 2test', '2022-02-25_15-46.png', '2022-03-15 12:14:59', '2022-03-15 09:22:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int NOT NULL,
  `user_username` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_surname` varchar(100) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_scope` varchar(20) NOT NULL DEFAULT 'app',
  `user_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_updated` datetime DEFAULT NULL,
  `user_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_username`, `user_name`, `user_surname`, `user_email`, `user_password`, `user_scope`, `user_created`, `user_updated`, `user_deleted`) VALUES
(1, 'william', 'William', 'Wright', 'william@rhodian.net', '$2y$10$O/M.7xLoNQlr2rLi34kAYupNaWIsPQnEGw2WpO3jKjyxX7rByn392', 'app', '2022-03-15 11:16:38', '2022-03-15 08:16:38', NULL),
(2, 'santiago', 'Santiago', 'Galeano', 'santiago.g@faster.com.py', '$2y$10$Ne/dOZnTnY4aTbyZb91LauGCmOcgQlkmE2sO6bS8wffBO1iB/BDeW', 'app', '2022-03-15 11:22:18', '2022-03-15 08:22:18', NULL),
(3, 'william2', 'William', 'Wright', 'william@test.com', '$2y$10$F9/ElG8NNldVLvHCR8vAPOttBoDu.GHzjU4VXamxD.3fHJIzj3eE2', 'app', '2022-03-16 16:35:49', '2022-03-16 13:35:49', NULL),
(4, 'liz', 'Liz', 'Ramirez', 'liz@test.com', '$2y$10$rWEiU8jqKrpKyvJIm2m1webMd9P.hzvwVd4fJj0Uwjtv2jv82Ua6e', 'app', '2022-03-16 17:04:56', '2022-03-16 14:04:56', NULL),
(5, 'miguel', 'Miguel', 'Perez', 'miguel@test.com', '$2y$10$j/iT6j3Oh3Bf7JCIjVrUTucGvScjlh9/W6KRrJbAGb1st6jkaSWeW', 'app', '2022-03-16 17:09:54', '2022-03-16 14:09:54', NULL),
(6, 'francisco', 'Francisco', 'Leon', 'fran@test.com', '$2y$10$C98iGX39pNGa/QMBljXGnOyMEvRMWZ0tcTSqV86sPMeXhoijQYF1W', 'app', '2022-03-17 16:56:46', '2022-03-17 13:56:46', NULL),
(7, 'carlos', 'Carlos', 'Rios', 'carlos@test.com', '$2y$10$bYM496tYvYjHzz7lXnIjDO8LdfN5CroZuLdOw4G9RwCuat/7TA6Oe', 'app', '2022-03-17 17:02:27', '2022-03-17 14:02:27', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`access_token`);

--
-- Indexes for table `oauth_authorization_codes`
--
ALTER TABLE `oauth_authorization_codes`
  ADD PRIMARY KEY (`authorization_code`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`refresh_token`);

--
-- Indexes for table `oauth_scopes`
--
ALTER TABLE `oauth_scopes`
  ADD PRIMARY KEY (`scope`);

--
-- Indexes for table `oauth_users`
--
ALTER TABLE `oauth_users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  MODIFY `post_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
