-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2023 at 07:36 AM
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
-- Database: `library_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'shobnom', 'fe2af3b70824d636623a23e6d0fd549f');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_name`) VALUES
(1, 'Pradeep K. Sinha'),
(2, 'Archer J Harris'),
(3, 'Avi Silberschatz Henry F. Korth S. Sudarshan'),
(4, ' John Hubbard '),
(5, ' Rajiv Chopra '),
(6, 'Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest and Clifford Stein.'),
(7, 'Robert Lafore'),
(8, 'Andreas F. Molisch'),
(9, 'Savo G. Glisic');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_status` varchar(20) NOT NULL,
  `book_name` varchar(60) NOT NULL,
  `book_category` varchar(30) NOT NULL,
  `book_author` varchar(100) NOT NULL,
  `book_publisher` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_status`, `book_name`, `book_category`, `book_author`, `book_publisher`) VALUES
(1, 'Y', 'COMPUTER FUNDAMENTALS', '1', '1', '1'),
(2, 'Y', 'Database System Concepts (Sixth Edition) ', '2', '3', '2'),
(3, 'Y', 'Schaum\'s Outline of Operating Systems ', '3', '2', '2'),
(4, 'Y', 'Schaum\'s Outline of Programming with C++', '6', '4', '2'),
(5, 'N', 'Database Management Systems (DBMS) - A Practical Approach', '2', '5', '3'),
(6, 'Y', 'Introduction to Algorithms', '4', '6', '4'),
(7, 'Y', 'Data Structures and Algorithms in Java', '4', '7', '5'),
(8, 'N', 'Wireless Communications', '5', '8', '6'),
(9, 'Y', 'Advanced Wireless Communications: 4G Technologies', '5', '9', '6');

-- --------------------------------------------------------

--
-- Table structure for table `book_issue`
--

CREATE TABLE `book_issue` (
  `issue_id` int(11) NOT NULL,
  `issue_status` varchar(30) NOT NULL,
  `issue_name` varchar(40) NOT NULL,
  `issue_book` varchar(50) NOT NULL,
  `issue_date` varchar(15) NOT NULL,
  `return_day` int(11) NOT NULL DEFAULT 7,
  `return_date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_issue`
--

INSERT INTO `book_issue` (`issue_id`, `issue_status`, `issue_name`, `issue_book`, `issue_date`, `return_day`, `return_date`) VALUES
(4, 'N', '12', '5', '2023-11-15', 7, '2023-11-22'),
(5, 'N', '44', '8', '2023-11-15', 7, '2023-11-22');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Fundamentals of Computer '),
(2, 'DBMS'),
(3, 'OS'),
(4, 'Data Structure & Algorithms'),
(5, 'Telecommunication'),
(6, 'Programming Language');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `publisher_name`) VALUES
(1, 'BPB publications'),
(2, 'McGraw Hill'),
(3, 'S.Chand Publishing'),
(4, 'The MIT Press'),
(5, 'SAMS'),
(6, 'WILEY');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `return_days` int(11) NOT NULL,
  `fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `return_days`, `fine`) VALUES
(1, 7, 50);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(30) NOT NULL,
  `student_gender` varchar(7) NOT NULL,
  `student_age` int(11) NOT NULL,
  `student_class` varchar(20) NOT NULL,
  `student_address` int(11) NOT NULL,
  `student_phone` varchar(11) NOT NULL,
  `student_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `student_gender`, `student_age`, `student_class`, `student_address`, `student_phone`, `student_email`) VALUES
(1, 'Abrar Faseeh', 'male', 21, '2020', 1, '01723443225', 'abrar@gmail.com'),
(2, 'Nasrin Akter', 'female', 25, '2016', 0, '01998765433', 'nasrin@gmail.com'),
(5, 'Antu Chowdhury ', 'male', 25, '2017', 0, '01876543229', 'antu@gmail.com'),
(6, 'Sanjida Tamanna', 'female', 24, '2018', 0, '01987677889', 'sanjida@gmail.com'),
(8, 'Nusaiba Jahan', 'female', 21, '2019', 0, '01987677654', 'nusiaba@gmail.com'),
(9, 'Jakaria Noman', 'male', 24, '2018', 0, '01789888997', 'jakaria@gmail.com'),
(10, 'Jahid Hasan', 'male', 26, '2016', 0, '01987654654', 'jahid@gmail.com'),
(12, 'Nuhash Wahed', 'male', 23, '2019', 0, '01987654356', 'nuhash@gmail.com'),
(15, 'Sadia Rahman', 'female', 22, '2020', 0, '01987688767', 'sadia@gmail.com'),
(20, 'Jubayar Alam Rafi', 'male', 26, '2016', 0, '01812456743', 'rafi@gmail.com'),
(21, 'Shobnom Mushtary', 'female', 24, '2017', 0, '01787677677', 'shobnom@gmail.com'),
(22, 'Eakub Islam', 'male', 21, '2019', 0, '01789998766', 'eakub@gmail.com'),
(25, 'Md. Rafiul Islam', 'male', 25, '2017', 0, '01869779595', 'rafi2@gmail.com'),
(28, 'Faria Shamim', 'female', 20, '2021', 0, '01817656653', 'faria@gmail.com'),
(44, 'Sadia Tamanna', 'female', 25, '2017', 0, '01786543213', 'sadia1@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `book_issue`
--
ALTER TABLE `book_issue`
  ADD PRIMARY KEY (`issue_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `book_issue`
--
ALTER TABLE `book_issue`
  MODIFY `issue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
