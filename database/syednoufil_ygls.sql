-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2020 at 02:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `syednoufil_ygls`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `c_email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `problem` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `c_name`, `c_email`, `contact`, `problem`) VALUES
(1, 'Syed Noufil', 'noufil@gmail.com', '03331234567', 'I thought i should check this section of your database'),
(2, 'Syed Noufil Ali', 'noufil1@gmail.com', '03331234567', 'I thought i should check again if query is submitted or not'),
(3, 'ahsan', 'ahsan@gmail.com', '03311234567', 'this is the problem'),
(4, 'Ahsan', 'a@gmail.com', '92-31111', 'This is the Problem'),
(5, 'Ali', 'ali@gmail.com', '923153795418', 'Didn\'t got my money back'),
(6, 'Ali', 'aaa@gmail.com', '222222222', 'asdasdasdasdas'),
(7, 'Ahsan', 'ahsanali@tech.com', '9231423323', 'My Besfrined');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `order_details` varchar(500) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `order_details`, `customer_id`, `user_id`, `service_id`) VALUES
(1, 'szn zxjkn', 1, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `pack_id` int(11) NOT NULL,
  `pack_name` varchar(255) NOT NULL,
  `validity` varchar(20) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`pack_id`, `pack_name`, `validity`, `price`) VALUES
(1, 'personal package', '2 months', 1999),
(2, 'basic package', '4 months', 2999);

-- --------------------------------------------------------

--
-- Table structure for table `packages_features`
--

CREATE TABLE `packages_features` (
  `packfeat_id` int(11) NOT NULL,
  `pack_id` int(11) NOT NULL,
  `features_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages_features`
--

INSERT INTO `packages_features` (`packfeat_id`, `pack_id`, `features_name`) VALUES
(1, 1, 'Electrician'),
(2, 1, 'plumber');

-- --------------------------------------------------------

--
-- Table structure for table `past_order`
--

CREATE TABLE `past_order` (
  `past_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `service_des` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `past_order`
--

INSERT INTO `past_order` (`past_id`, `order_id`, `user_id`, `customer_id`, `amount`, `service_name`, `service_des`, `date`) VALUES
(1, 1, 7, 1, 300, 'cmx ', 'sjk', '2020-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `urdu_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `type_id`, `cat_id`, `service_name`, `price`, `urdu_title`) VALUES
(1, 1, 2, 'installation', 350, '	\r\nتنصیب'),
(2, 2, 2, 'repair 3', 4500, 'مرمت کرنا');

-- --------------------------------------------------------

--
-- Table structure for table `service_category`
--

CREATE TABLE `service_category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `cat_image` blob NOT NULL,
  `urdu_title` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_category`
--

INSERT INTO `service_category` (`cat_id`, `cat_name`, `cat_image`, `urdu_title`) VALUES
(1, 'carpenter', '', 'بڑھئی'),
(2, 'electrician', '', 'الیکٹریشن'),
(3, 'Testing', '', 'Testing');

-- --------------------------------------------------------

--
-- Table structure for table `service_type`
--

CREATE TABLE `service_type` (
  `type_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `service_type_image` blob NOT NULL,
  `urdu_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_type`
--

INSERT INTO `service_type` (`type_id`, `cat_id`, `type_name`, `service_type_image`, `urdu_title`) VALUES
(1, 1, 'window', '', 'کهڑکی'),
(2, 2, 'fan', '', 'پنکها');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `t_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `payment_status` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `completed_at` varchar(255) DEFAULT NULL,
  `u_lat` double DEFAULT NULL,
  `u_long` double DEFAULT NULL,
  `v_lat` double DEFAULT NULL,
  `v_long` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`t_id`, `cat_id`, `type_id`, `service_id`, `user_id`, `vendor_id`, `payment_status`, `created_at`, `completed_at`, `u_lat`, `u_long`, `v_lat`, `v_long`) VALUES
(1, 1, 2, 1, 7, 6, 'incomplete', '2020-08-19 12:02:20', '', NULL, NULL, NULL, NULL),
(12, 2, 2, 2, 8, 6, 'incomplete', '2020-08-31 12:13:25', NULL, NULL, NULL, 0, 0),
(13, 1, 1, 1, 8, 8, 'incomplete', '2020-08-31 12:16:26', 'Monday, 31-Aug-2020 16:59:52 CEST', NULL, NULL, 24.7507, 67.0867),
(14, 1, 1, 1, 10, NULL, 'complete', '2020-08-31 13:20:10', NULL, NULL, NULL, NULL, NULL),
(15, 1, 1, 1, 10, NULL, 'complete', '2020-09-02 05:24:01', NULL, 23.4422, 24422.22, NULL, NULL),
(16, 1, 1, 1, 10, NULL, 'complete', '2020-09-02 05:31:07', NULL, 23.22, 23.44, NULL, NULL),
(17, 2, 2, 2, 11, NULL, 'complete', '2020-09-02 07:59:08', NULL, 37.4219853, -122.0840034, NULL, NULL),
(18, 2, 2, 2, 11, NULL, 'complete', '2020-09-02 08:02:52', NULL, 37.4219853, -122.0840034, NULL, NULL),
(19, 2, 2, 2, 11, NULL, 'complete', '2020-09-02 09:17:25', NULL, 37.4219853, -122.0840034, NULL, NULL),
(20, 2, 2, 2, 11, NULL, 'complete', '2020-09-03 05:27:46', NULL, 37.4219853, -122.0840034, NULL, NULL),
(21, 2, 2, 2, 11, 12, 'complete', '2020-09-03 08:38:50', NULL, 37.4219853, -122.0840034, NULL, NULL),
(22, 2, 2, 2, 15, NULL, 'accepted', '2020-09-03 18:28:17', NULL, -122.4324, 37.78825, NULL, NULL),
(23, 2, 2, 2, 16, 11, 'complete', '2020-09-04 10:49:23', NULL, -122.4324, 37.78825, NULL, NULL),
(24, 2, 2, 2, 16, 11, 'complete', '2020-09-04 10:49:25', NULL, -122.4324, 37.78825, NULL, NULL),
(32, 2, 2, 2, 25, 24, 'incomplete', '2020-09-21 04:29:19', NULL, 70.922795, -8.715309999999999, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `terms_conditions`
--

CREATE TABLE `terms_conditions` (
  `tid` int(11) NOT NULL,
  `pack_id` int(11) NOT NULL,
  `detail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `terms_conditions`
--

INSERT INTO `terms_conditions` (`tid`, `pack_id`, `detail`) VALUES
(1, 1, 'this package onlu includes service charges'),
(2, 1, 'spare parts will be charged seperately');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `pack_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `docs_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `docs_2` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `docs_3` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `pack_id`, `user_name`, `user_email`, `user_password`, `docs_1`, `docs_2`, `docs_3`) VALUES
(7, 1, 'admin', 'admin@gmail.com', '12345678', '', '', ''),
(8, 2, 'alexa', 'alex@gmail.com', '1bbd886460827015e5d605ed44252251', '', '', ''),
(10, 1, 'demo', 'demo@gmail.com', '1bbd886460827015e5d605ed44252251', '', '', ''),
(11, 2, 'Ahsan', 'ahsan@gmail.com', '698d51a19d8a121ce581499d7b701668', '', '', ''),
(12, 1, 'johndonor', 'johndonor@gmail.com', '25d55ad283aa400af464c76d713c07ad', '', '', ''),
(13, 2, 'Aliraza', 'rjwaseem331@gmail.com', 'e51ab915b779f6432d2e14fef78848d2', '', '', ''),
(14, 1, 'Jafri', 'jafri@gmail.com', '698d51a19d8a121ce581499d7b701668', '', '', ''),
(15, 2, 'Tim', 'tim@gmail.com', '698d51a19d8a121ce581499d7b701668', '', '', ''),
(16, 1, 'live', 'live@gmail.com', '698d51a19d8a121ce581499d7b701668', '', '', ''),
(17, 2, 'ggg', 'ggg@gmail.com', '698d51a19d8a121ce581499d7b701668', '', '', ''),
(18, 1, 'Usama', 'Uuhhbvv', '77b3e6926e7295494dd3be91c6934899', '', '', ''),
(19, 1, 'Usama', 'Unidentified@gmail.com', 'e0f7a4d0ef9b84b83b693bbf3feb8e6e', '', '', ''),
(20, NULL, 'Ghh', 'Gh@gmail.com', 'e0f7a4d0ef9b84b83b693bbf3feb8e6e', '', '', ''),
(21, 1, 'Usama', 'bokib23065@elesb.net', '9bf5a844323e13e291aca2f0351d29af', '', '', ''),
(22, NULL, 'Uuhhshhw', 'jovohe6861@gridmauk.com', '66037d6c574271fcaefbc98f5380037e', '', '', ''),
(23, NULL, 'Gghjejsjbeh', 'wagec89265@eurazx.com', '58edde63081e2ce001cf5800f68df36f', '', '', ''),
(24, 1, 'UmarHayat', 'umar@gmail.com', '39b86f2f31be1ac869019caa396fed71', '', '', ''),
(25, 1, 'umar', 'A@gmail.com', '39b86f2f31be1ac869019caa396fed71', '', '', ''),
(26, 1, 'Seller', 'seller@gmail.com', '39b86f2f31be1ac869019caa396fed71', '', '', ''),
(27, 2, 'Abubakrsiddiq', 'Abubakr@ gmail.com', 'ece8f68bf947e2816e7cc0da19ce80be', '', '', ''),
(28, 2, 'All', 'Abc@gmail.com', '35593b7ce5020eae3ca68fd5b6f3e031', '', '', ''),
(29, 2, 'Tester', 'Test@gmail.com', '35593b7ce5020eae3ca68fd5b6f3e031', '', '', ''),
(30, 1, 'Samad', 'Samad@gmail.com', 'd32b7b3045d1710e3b074954d39ba13a', '', '', ''),
(31, 1, 'Samad', 'Samad1@gmail.com', '11168253fdc8298349fdd4a58a1a880a', '', '', ''),
(32, 1, 'Samad12', 'Samad12@gmail.com', '94ca5ae34169e593f665ce2f98132f4f', '', '', ''),
(50, NULL, 'Ahsan', 'ahsanalijafri96@gmail.com', '698d51a19d8a121ce581499d7b701668', 'https://firebasestorage.googleapis.com/v0/b/ygls-288209.appspot.com/o/AhsanHyderabad_CV.pdf?alt=media', 'https://firebasestorage.googleapis.com/v0/b/ygls-288209.appspot.com/o/AhsanMy_CV.pdf?alt=media', ''),
(51, NULL, 'aaaa', 'aaa', '47bce5c74f589f4867dbd57e9ca9f808', '', '', ''),
(52, NULL, 'AhsanAli', 'ahsanalijafri6@gmail.com', '698d51a19d8a121ce581499d7b701668', 'https://firebasestorage.googleapis.com/v0/b/ygls-288209.appspot.com/o/AhsanHyderabad_CV.pdf?alt=media', 'https://firebasestorage.googleapis.com/v0/b/ygls-288209.appspot.com/o/AhsanMy_CV.pdf?alt=media', 'https://firebasestorage.googleapis.com/v0/b/ygls-288209.appspot.com/o/AhsanAliMy_CV.pdf?alt=media'),
(53, NULL, 'AhsanAli', 'ahsanaaafri6@gmail.com', '698d51a19d8a121ce581499d7b701668', 'https://firebasestorage.googleapis.com/v0/b/ygls-288209.appspot.com/o/AhsanHyderabad_CV.pdf?alt=media', 'https://firebasestorage.googleapis.com/v0/b/ygls-288209.appspot.com/o/AhsanMy_CV.pdf?alt=media', 'https://firebasestorage.googleapis.com/v0/b/ygls-288209.appspot.com/o/AhsanAliMy_CV.pdf?alt=media'),
(54, NULL, 'aaaaaaaaaa', 'aaaaaa', '47bce5c74f589f4867dbd57e9ca9f808', '', '', ''),
(55, NULL, 'ana', 'ana@gmail.com', '698d51a19d8a121ce581499d7b701668', 'https://firebasestorage.googleapis.com/v0/b/ygls-288209.appspot.com/o/anaHyderabad_CV.pdf?alt=media', '', ''),
(56, NULL, 'Ahsan Ali', 'ahsandada80@yahoo.com', '698d51a19d8a121ce581499d7b701668', 'https://firebasestorage.googleapis.com/v0/b/ygls-288209.appspot.com/o/Ahsan AliMy_CV.pdf?alt=media', 'https://firebasestorage.googleapis.com/v0/b/ygls-288209.appspot.com/o/Ahsan AliHyderabad_CV.pdf?alt=media', ''),
(57, NULL, 'Ahsan Ali', 'ahsandada80@yaoo.com', '698d51a19d8a121ce581499d7b701668', 'https://firebasestorage.googleapis.com/v0/b/ygls-288209.appspot.com/o/Ahsan AliHyderabad_CV.pdf?alt=media', 'https://firebasestorage.googleapis.com/v0/b/ygls-288209.appspot.com/o/Ahsan AliMy_CV.pdf?alt=media', ''),
(58, NULL, 'Ahsan Ali', 'ahsandada@yahoo.com', '698d51a19d8a121ce581499d7b701668', 'https://firebasestorage.googleapis.com/v0/b/ygls-288209.appspot.com/o/Ahsan AliMy_CV.pdf?alt=media', 'https://firebasestorage.googleapis.com/v0/b/ygls-288209.appspot.com/o/Ahsan AliHyderabad_CV.pdf?alt=media', ''),
(59, NULL, 'User1', 'user1@gmail.com', '15472cd29f632e34f039403f2e635f66', '', '', ''),
(60, NULL, 'Ahsan', 'ahsanalijafri96@gmail.co', '698d51a19d8a121ce581499d7b701668', '', '', ''),
(61, NULL, 'asdsada', 'dasdad', '698d51a19d8a121ce581499d7b701668', '', '', ''),
(62, NULL, 'Ahsan', 'ahsaafri96@gmail.com', '698d51a19d8a121ce581499d7b701668', 'https://firebasestorage.googleapis.com/v0/b/ygls-288209.appspot.com/o/AhsanHyderabad_CV.pdf?alt=media', '', ''),
(63, NULL, 'Jatesh Kumar', 'jjateshkumarmaheshwari@gmail.com', '25f9e794323b453885f5181f1b624d0b', '', '', ''),
(64, NULL, 'Jk', 'jateshkumarmaheshwari@gmail.com', 'f0b44c1cb33df6a05e6ea4d9da4351f9', '', '', ''),
(65, NULL, 'mohsin', 'ymohsin100@gmail.com', '202cb962ac59075b964b07152d234b70', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 8, 'alex@gmail.com', 0x3132372e302e302e3100000000000000, '2020-07-31 08:44:50', NULL, 1),
(25, 9, 'ali@gmail.com', 0x3132372e302e302e3100000000000000, '2020-08-04 12:36:18', '04-08-2020 06:06:40 PM', 1),
(26, NULL, 'fatima@gmail.com', 0x3132372e302e302e3100000000000000, '2020-08-08 07:05:08', NULL, 0),
(27, 8, 'alex@gmail.com', 0x3132372e302e302e3100000000000000, '2020-08-08 07:05:21', NULL, 1),
(28, 9, 'ali@gmail.com', 0x3132372e302e302e3100000000000000, '2020-08-11 06:43:34', NULL, 1),
(29, NULL, 'demo@ygls.com', 0x3132372e302e302e3100000000000000, '2020-08-19 06:32:10', NULL, 0),
(30, 0, 'waleed.akbarbhatti@gmail.com', 0x3132372e302e302e3100000000000000, '2020-08-19 06:47:51', '19-08-2020 01:44:10 PM', 1),
(31, 7, 'waleed.akbarbhatti@gmail.com', 0x3132372e302e302e3100000000000000, '2020-08-19 08:16:12', NULL, 1),
(32, 7, 'john@gmail.com', 0x3132372e302e302e3100000000000000, '2020-08-20 08:24:34', '20-08-2020 01:55:06 PM', 1),
(33, 8, 'alex@gmail.com', 0x3132372e302e302e3100000000000000, '2020-08-22 10:15:01', '22-08-2020 04:55:41 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `vendor_email` varchar(255) NOT NULL,
  `vendor_password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `cat_id`, `vendor_name`, `vendor_email`, `vendor_password`, `status`) VALUES
(6, 2, 'vendor demo update', 'vendor@ygls.com', 'bae5e3208a3c700e3db642b6631e95b9', 0),
(8, 2, 'apitest', 'vendorapi@ygls.com', '1bbd886460827015e5d605ed44252251', 0),
(9, 1, 'api', 'vendor@gmail.com', '698d51a19d8a121ce581499d7b701668', 0),
(10, 2, 'johnny', 'aaaaa@gmail.com', '698d51a19d8a121ce581499d7b701668', 1),
(11, 2, 'Ahsan', 'ahsan@gmail.com', '698d51a19d8a121ce581499d7b701668', 0),
(12, 2, 'seller1', 'seller1@gmail.com', '25d55ad283aa400af464c76d713c07ad', 0),
(13, 2, 'Abc', 'Abc@123.com', '25d55ad283aa400af464c76d713c07ad', 0),
(14, 2, 'demo', 'demo@gmail.com', '25d55ad283aa400af464c76d713c07ad', 0),
(15, 2, 'Muhammadwaseem', 'rjwaseem331@gmail.com', 'b2b8ff7a66ed25b3c34cdfcba178298c', 0),
(16, 2, 'AhsanJafri', 'ahsanalijafri96@gmail.com', '698d51a19d8a121ce581499d7b701668', 0),
(17, 2, 'Johnson', 'a@gmail.com', '698d51a19d8a121ce581499d7b701668', 0),
(18, 2, 'Hiba', 'Hiba@gmail.com', '25d55ad283aa400af464c76d713c07ad', 0),
(19, 2, 'seller2', 'seller2@gmail.com', 'b4af804009cb036a4ccdc33431ef9ac9', 0),
(20, 2, 'Usama', 'bokib23065@elesb.net', '66037d6c574271fcaefbc98f5380037e', 0),
(21, 2, 'Umar', 'Aa@gmail.com', '39b86f2f31be1ac869019caa396fed71', 0),
(22, 2, 'ServiceApp', 'service@gmail.com', '39b86f2f31be1ac869019caa396fed71', 0),
(23, 2, 'umar', 'hayat', '39b86f2f31be1ac869019caa396fed71', 0),
(24, 2, 'Abubkr', 'abubakrsiddiq901@gmail.com', '601e98364d22250f414a0e76506d28b9', 0),
(25, 2, 'Muhammad Umar Hayat', 'ABC@gmail.com', '6eea9b7ef19179a06954edd0f6c05ceb', 0),
(26, 2, 'umar', 'AAA@gmail.com', '594f803b380a41396ed63dca39503542', 0),
(27, 2, 'umar', 'umar@gmail.com', '594f803b380a41396ed63dca39503542', 0),
(28, 2, 'USAMA568999', 'Hisnsidd6789o8', '827ccb0eea8a706c4c34a16891f84e7b', 0),
(29, 2, 'Usama', 'galok47296@finxmail.net', '25f9e794323b453885f5181f1b624d0b', 0),
(30, 2, 'Alii', 'ram@gmail.com', '698d51a19d8a121ce581499d7b701668', 0),
(31, 2, 'ahmed', 'khan@gmail.com', '698d51a19d8a121ce581499d7b701668', 0),
(32, 2, 'loan', 'loan', 'bcbe3365e6ac95ea2c0343a2395834dd', 0),
(33, 2, 'asdsadassdasdass', 'dasdasd', '698d51a19d8a121ce581499d7b701668', 0),
(34, 2, 'asdassdaaa', 'adasdsdasdas', '698d51a19d8a121ce581499d7b701668', 0),
(35, 2, 'assdasdsadsac', 'sdsadasdsad', '698d51a19d8a121ce581499d7b701668', 0),
(36, 2, 'hassan', 'hassan@gmail.com', '698d51a19d8a121ce581499d7b701668', 0),
(37, 2, 'Ahsan', 'alii@gmail.com', '698d51a19d8a121ce581499d7b701668', 0),
(38, 2, 'aaaaaaaaaaaa', 'aaa', '698d51a19d8a121ce581499d7b701668', 0),
(39, 2, 'Jatesh', 'jateshkumarmaheshwari@gmail.com', '25d55ad283aa400af464c76d713c07ad', 0),
(40, 2, 'Sp', 'Sp1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0),
(41, 2, 'jatesh', 'test@gmail.com', '25d55ad283aa400af464c76d713c07ad', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `w_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`w_id`, `user_id`, `points`, `balance`) VALUES
(1, 7, 40, 90),
(2, 8, 20, 30),
(3, 11, 0, 0),
(4, 8, 0, 0),
(5, 11, 0, 0),
(6, 11, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`pack_id`);

--
-- Indexes for table `packages_features`
--
ALTER TABLE `packages_features`
  ADD PRIMARY KEY (`packfeat_id`),
  ADD KEY `pack_id` (`pack_id`);

--
-- Indexes for table `past_order`
--
ALTER TABLE `past_order`
  ADD PRIMARY KEY (`past_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `cat_id` (`cat_id`,`type_id`),
  ADD KEY `service_ibfk_1` (`type_id`);

--
-- Indexes for table `service_category`
--
ALTER TABLE `service_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `service_type`
--
ALTER TABLE `service_type`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `vendor_id` (`vendor_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `pack_id` (`pack_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `pack_id` (`pack_id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`w_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `pack_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `packages_features`
--
ALTER TABLE `packages_features`
  MODIFY `packfeat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `past_order`
--
ALTER TABLE `past_order`
  MODIFY `past_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_category`
--
ALTER TABLE `service_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_type`
--
ALTER TABLE `service_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `packages_features`
--
ALTER TABLE `packages_features`
  ADD CONSTRAINT `packages_features_ibfk_1` FOREIGN KEY (`pack_id`) REFERENCES `package` (`pack_id`);

--
-- Constraints for table `past_order`
--
ALTER TABLE `past_order`
  ADD CONSTRAINT `past_order_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_details` (`order_id`),
  ADD CONSTRAINT `past_order_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `service_type` (`type_id`),
  ADD CONSTRAINT `services_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `service_category` (`cat_id`);

--
-- Constraints for table `service_type`
--
ALTER TABLE `service_type`
  ADD CONSTRAINT `service_type_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `service_category` (`cat_id`);

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`),
  ADD CONSTRAINT `task_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `task_ibfk_3` FOREIGN KEY (`cat_id`) REFERENCES `service_category` (`cat_id`),
  ADD CONSTRAINT `task_ibfk_4` FOREIGN KEY (`type_id`) REFERENCES `service_type` (`type_id`),
  ADD CONSTRAINT `task_ibfk_5` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`);

--
-- Constraints for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  ADD CONSTRAINT `terms_conditions_ibfk_1` FOREIGN KEY (`pack_id`) REFERENCES `package` (`pack_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`pack_id`) REFERENCES `package` (`pack_id`);

--
-- Constraints for table `vendor`
--
ALTER TABLE `vendor`
  ADD CONSTRAINT `vendor_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `service_category` (`cat_id`);

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
