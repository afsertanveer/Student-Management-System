-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2016 at 04:57 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `student_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
`account_id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `semester_fee` int(11) NOT NULL,
  `late_fine` int(11) NOT NULL,
  `library_fine` int(11) NOT NULL,
  `semester_name` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `student_id`, `semester_fee`, `late_fine`, `library_fine`, `semester_name`) VALUES
(1, '011131119', 49750, 0, 12, 'SPRING2016');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE IF NOT EXISTS `results` (
`result_id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `course_title` varchar(255) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `credit` int(11) NOT NULL,
  `grade` varchar(20) NOT NULL,
  `gpa` float NOT NULL,
  `semester_name` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`result_id`, `student_id`, `course_title`, `course_code`, `credit`, `grade`, `gpa`, `semester_name`) VALUES
(38, '011131119', 'Structure Programming Language', 'CSI121', 3, 'A', 4, 'SPRING16'),
(39, '011131119', 'English I', 'ENG101', 3, 'A', 4, 'SPRING16'),
(40, '011131119', 'Structured Programming Language Labratory', 'CSI122', 1, 'A', 4, 'SPRING16'),
(41, '011131119', 'Elementary Calculus', 'MATH003', 3, 'A', 4, 'SPRING16'),
(42, '011131119', 'Electrical Circuits', 'CSE113', 3, 'D', 1, 'SPRING16');

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE IF NOT EXISTS `semesters` (
  `semester_name` varchar(255) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `total_credit_taken` int(11) NOT NULL,
  `gpa` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sem_name`
--

CREATE TABLE IF NOT EXISTS `sem_name` (
`sem_id` int(11) NOT NULL,
  `cur_semester` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sem_name`
--

INSERT INTO `sem_name` (`sem_id`, `cur_semester`) VALUES
(1, 'SPRING16');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
`s_id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `id` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `age` int(11) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `cgpa` float NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`s_id`, `fname`, `lname`, `id`, `email`, `semester`, `dob`, `age`, `nationality`, `religion`, `cgpa`) VALUES
(3, 'Jannatul', 'Ferdous', '011131119', 'jannatul.uiu@gmail.com', '10', '1993-08-18', 22, 'Bangladeshi', 'Islam', 3.48),
(4, 'Md', 'Afser', '011131123', 'uiu.afser@gmail.com', '10', '1992-09-24', 23, 'Bangladeshi', 'Islam', 3.82),
(8, 'Sadrul', 'Islam', '011131125', 'uiu.sadrul@gmail.com', '10', '1993-04-21', 23, 'bangladeshi', 'Islam', 3.8),
(9, 'Sultana', 'Dulary', '011131126', 'uiu.sultana@gmail.com', '10', '1993-12-29', 22, 'bangladeshi', 'Islam', 3.92),
(10, 'Md', 'Misbah', '011131127', 'uiu.misbah@gmail.com', '9', '1993-02-02', 23, 'bangladeshi', 'Islam', 3.7),
(11, 'Nishat', 'Tamanna', '011131128', 'uiu.nishat@gmail.com', '10', '1993-03-03', 23, 'bangladeshi', 'Islam', 3.6),
(12, 'Saddam', 'Hossain', '011131129', 'uiu.saddam@gmail.com', '10', '1993-09-16', 22, 'bangladeshi', 'Islam', 3.8),
(13, 'Md', 'Imran', '011131130', 'uiu.imran@gmail.com', '10', '1993-03-05', 23, 'bangladeshi', 'Islam', 3.8),
(14, 'Md', 'Shoeib', '011131131', 'uiu.shoeib@gmail.com', '10', '1993-02-14', 23, 'bangladeshi', 'Islam', 3.7),
(15, 'Hridita', 'Saha', '011131132', 'uiu.hridita@gmail.com', '11', '1993-06-04', 22, 'bangladeshi', 'Hindu', 3.8),
(16, 'Samia', 'Islam', '011131133', 'uiu.samia@gmail.com', '11', '1993-07-08', 22, 'bangladeshi', 'Islam', 3.8),
(17, 'Md', 'Milon', '011131134', 'uiu.milon@gmail.com', '9', '1993-05-31', 22, 'bangladeshi', 'Islam', 3.6),
(18, 'Iqbal', 'Khan', '011131135', 'uiu.iqbal@gmail.com', '9', '1993-09-12', 22, 'bangladeshi', 'Islam', 3.6),
(19, 'Ayesha', 'Akher', '011131136', 'uiu.ayesha@gmail.com', '10', '1993-04-26', 23, 'bangladeshi', 'Islam', 3.7),
(20, 'Nusrat', 'Jahan', '011131137', 'uiu.nusrat@gmail.com', '10', '1993-08-06', 22, 'bangladeshi', 'Islam', 3.6);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
`sub_id` int(11) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `course_title` varchar(255) NOT NULL,
  `credit` int(11) NOT NULL,
  `pre_requisite` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`sub_id`, `course_code`, `course_title`, `credit`, `pre_requisite`) VALUES
(1, 'CSI121', 'Structure Programming Language', 3, ''),
(2, 'ENG101', 'English I', 3, ''),
(3, 'CSI122', 'Structured Programming Language Labratory', 1, ''),
(4, 'ENG103', 'English II', 3, 'ENG101'),
(5, 'MATH003', 'Elementary Calculus', 3, ''),
(6, 'MATH151', 'Diff & Integral calculus', 3, 'MATH003'),
(7, 'CSI219', 'Discrete Mathematics', 3, ''),
(8, 'CSI125', 'Advanced Programming Labratory', 1, 'CSI122'),
(9, 'CSI217', 'Data Structure', 3, 'CSI124'),
(10, 'CSI218', 'Data Structure Labratory', 1, 'CSI124'),
(11, 'MATH183', 'Linear Algebra,ordinary and partial Differentail Equations', 3, 'MATH151'),
(12, 'CSE113', 'Electrical Circuits', 3, ''),
(13, 'PHY105', 'Physics', 3, ''),
(14, 'PHY106', 'Physics Labratory', 1, ''),
(15, 'CSI227', 'Algorithm', 3, 'CSI217'),
(16, 'CSI228', 'Algorithm Labratory', 1, 'CSI218'),
(17, 'CSE225', 'Digital Logic Design', 3, ''),
(18, 'CSE226', 'Digital Logic Design Labratory', 1, ''),
(19, 'MATH187', 'Fourier and Laplace Transformation', 3, 'MATH183'),
(20, 'MATH201', 'Coordinate Geometry and Vector Analysis', 3, 'MATH151'),
(21, 'CSI211', 'Object-Oriented Programmming Language', 3, ''),
(22, 'CSI212', 'Object-Oriented Programmming Language Labratory', 1, ''),
(23, 'CSE123', 'Electronics', 3, 'CSE113'),
(24, 'CSE124', 'Electronic Labratory', 1, 'CSE113'),
(25, 'CSE313', 'Compute Architecture', 3, 'CSE225'),
(26, 'CSI233', 'Theory of Computing', 3, 'CSI219'),
(27, 'STAT205', 'Probability and Statistics', 3, ''),
(28, 'CSI229', 'Numerical Methods', 3, 'MATH183'),
(29, 'CSE236', 'Assembly Programming Language', 1, 'CSI122'),
(30, 'CSI309', 'Operating System Concepts', 3, 'CSI227'),
(31, 'CSI310', 'Operating System Concepts labratory', 1, 'CSI228'),
(32, 'CSE315', 'Data Communication', 3, 'MATH187'),
(33, 'CSI411', 'Compiler', 3, 'CSI233'),
(34, 'CSI412', 'Compiler Labratory', 1, 'CSI122'),
(35, 'CSI221', 'Database Management System', 3, ''),
(36, 'CSI222', 'Database Management System Labratory', 1, ''),
(37, 'CSE323', 'Computer Networks', 3, 'CSE315'),
(38, 'CSE324', 'Computer Netwroks Labratory', 1, ''),
(39, 'CSE425', 'Microprocessor', 3, 'CSE236'),
(40, 'CSE426', 'Microprocessor Labratory', 1, 'CSE236'),
(41, 'CSI311', 'System Analysis and Design', 3, 'CSI221'),
(42, 'CSI312', 'System Analysis and Design Labratory', 1, 'CSI222'),
(43, 'CSI341', 'Artificial Intelligence ', 3, 'CSI227'),
(44, 'CSI342', 'Artificial Intelligence  Labratory', 1, 'CSI228'),
(45, 'CSI321', 'Software Engineering', 3, 'CSI311'),
(46, 'CSI322', 'Software Engineering Labratory', 1, 'CSI312'),
(47, 'CSE429', 'Digital System Design', 3, 'CSE425'),
(48, 'CSE430', 'Digital System Design Labratory', 1, 'CSE426'),
(49, 'ACT111', 'Financial and Managerial Accounting', 3, ''),
(50, 'ECO213', 'Economics', 3, ''),
(51, 'IPE401', 'Industrial Management', 3, ''),
(52, 'CSI415', 'Pattern Recognition', 3, 'CSI341'),
(53, 'CSI416', 'Pattern Recognition Labratory', 1, 'CSI342'),
(54, 'CSI423', 'Simulation and Modelling', 3, 'STAT205'),
(55, 'CSI424', 'Simulation and Modelling Lab', 1, 'STAT205'),
(56, 'CSI421', 'Computer Graphics', 3, 'CSI342'),
(57, 'CSI422', 'Computer Graphics and Labratory', 1, 'CSI342'),
(58, 'CSE461', 'Wireless Communication', 3, 'CSE324'),
(59, 'CSE465', 'Web Programmming', 3, 'CSI222'),
(60, 'CSE471', 'Advance Object Oriented Programming', 3, 'CSI211'),
(61, 'CSE475', 'Mobile Computing', 3, 'CSE324'),
(62, 'CSE467', 'Advanced Database Management System', 3, 'CSI222'),
(63, 'CSE481', 'Mobile Application Develpoment', 3, 'CSI211'),
(64, 'CSE469', 'Project Management', 3, 'CSI321');

-- --------------------------------------------------------

--
-- Table structure for table `takensubject`
--

CREATE TABLE IF NOT EXISTS `takensubject` (
`t_id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_title` varchar(255) NOT NULL,
  `credit` varchar(20) NOT NULL,
  `semester_name` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=124 ;

--
-- Dumping data for table `takensubject`
--

INSERT INTO `takensubject` (`t_id`, `student_id`, `course_code`, `course_title`, `credit`, `semester_name`) VALUES
(116, '011131119', 'CSI121', 'Structure Programming Language', '3', 'SPRING16'),
(117, '011131119', 'ENG101', 'English I', '3', 'SPRING16'),
(118, '011131119', 'CSI122', 'Structured Programming Language Labratory', '1', 'SPRING16'),
(119, '011131119', 'MATH003', 'Elementary Calculus', '3', 'SPRING16'),
(120, '011131119', 'CSE113', 'Electrical Circuits', '3', 'SPRING16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`u_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `password`) VALUES
(1, 'admin', '12345'),
(2, '011131119', '123'),
(3, '011131123', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
 ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
 ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `sem_name`
--
ALTER TABLE `sem_name`
 ADD PRIMARY KEY (`sem_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
 ADD PRIMARY KEY (`s_id`,`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
 ADD PRIMARY KEY (`sub_id`,`course_code`);

--
-- Indexes for table `takensubject`
--
ALTER TABLE `takensubject`
 ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `sem_name`
--
ALTER TABLE `sem_name`
MODIFY `sem_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `takensubject`
--
ALTER TABLE `takensubject`
MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
