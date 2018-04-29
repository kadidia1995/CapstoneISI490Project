-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 22, 2018 at 02:37 AM
-- Server version: 10.1.31-MariaDB-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `corporatea2z_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_npi` int(4) NOT NULL,
  `doctor_name` varchar(55) NOT NULL,
  `phoneNumber` varchar(55) NOT NULL,
  `doctor_address` varchar(255) NOT NULL,
  `city` varchar(55) NOT NULL,
  `uId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_npi`, `doctor_name`, `phoneNumber`, `doctor_address`, `city`, `uId`) VALUES
(123, 'Peter ', '123', '1', 'a', 20),
(1138697537, 'Alla Zilberman', '347-279-8219', '570 grand st', 'new york', 20),
(1450433937, 'Sharon Robles', '212-228-3875', '227 madison st', 'new york', 24),
(1459784545, 'meer john', '212-496-77-43', '317w 16th st', 'new york', NULL),
(1528398062, 'scott weber', '212-496-4600', '530 1st ave', 'new york', NULL),
(1660498255, 'James Goodman', '212-462-4141', '462 1st ave', 'new york', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `medication_NDC` bigint(20) UNSIGNED NOT NULL,
  `medication_name` varchar(255) NOT NULL,
  `strength` int(4) NOT NULL,
  `quantity` int(4) NOT NULL,
  `type` varchar(255) NOT NULL,
  `location` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`medication_NDC`, `medication_name`, `strength`, `quantity`, `type`, `location`) VALUES
(123, 'Cialis', 20, 15, 'ED', '1711'),
(2879759, 'Humalog', 15, 270, 'Diabetic', '4202'),
(3089321, 'Eliquis', 5, 60, 'Blood Thiner', '4205'),
(56778356, 'lisinopril', 5, 30, 'blood presure', '1711'),
(69422030, 'Viagra', 100, 20, 'ED', '1711'),
(88221905, 'Lantus', 15, 90, 'Diabetic', '1711'),
(131247835, 'Vimpact', 100, 30, 'Seizure', '3771'),
(169266015, 'Tresiba', 15, 180, 'Diabetic', '4202'),
(172531260, 'ciprofloxacin', 500, 220, 'Antibiotic', '3771'),
(193226301, 'Amoxicilin', 500, 220, 'Antibiotic', '4205'),
(310075290, 'Crestor', 20, 30, 'Chlosterol', '3771'),
(378180077, 'Levothyroxine', 25, 200, 'Thyroid', '4202'),
(378180577, 'Levothyroxine', 75, 180, 'Thyroid', '4205'),
(378689601, 'Amlodipine/benazepril', 10, 85, 'blood presure', '1711'),
(42806031505, 'Humalog Kwik pen', 15, 270, 'Diabetic', '1711'),
(49702023113, 'Trumeq', 600, 60, 'Antiviral', '1711'),
(50458057930, 'Xarelto', 20, 30, 'Blood Thiner', '4205'),
(59676057101, 'Intelence', 200, 60, 'Antiviral', '3771'),
(60505257809, 'Atorvastatin', 10, 300, 'Chlosterol', '1711'),
(60505298530, 'Amirex', 1, 30, 'Cancer', '4202'),
(61958040101, 'Viread', 300, 30, 'Antiviral', '1711'),
(65162089703, 'Abilify', 5, 60, 'Depression', '1711'),
(65162089808, 'Aripiprazole', 10, 30, 'Depression', '4202'),
(65862061790, 'quinapril', 5, 120, 'blood presure', '1711'),
(67877019960, 'Norvasc', 10, 220, 'blood presure', '1711');

-- --------------------------------------------------------

--
-- Table structure for table `medictaion_history`
--

CREATE TABLE `medictaion_history` (
  `mhId` int(11) NOT NULL,
  `medication_NDC` varchar(255) DEFAULT NULL,
  `medication_name` varchar(255) DEFAULT NULL,
  `prescriptionId` int(11) DEFAULT NULL,
  `Directions` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medictaion_history`
--

INSERT INTO `medictaion_history` (`mhId`, `medication_NDC`, `medication_name`, `prescriptionId`, `Directions`, `qty`) VALUES
(1, 'kl', '123', 123, 'asd', 1),
(2, 'asdf', 'safd', 345, 'sdfg', 1),
(3, 'panadol', '324234', 7786, 'nothing', 1),
(4, 'Q', '2879759', 213, '321', 1),
(5, 'aksdbk', '2879759', 10230, '102u30', 1),
(6, '12', '123', 1321, '123', 1),
(7, 'asd', '123', 2147483647, '123', 1),
(8, '123', '123', 98765432, '123', 1),
(9, 'asdfa', '3242', 2234, 'sfas', 1),
(10, 'amoxicillin', '193226301', 56799025, '1 tablet by mouth twice daily', 1),
(11, '545463', 'asd', 545463, '123', 12),
(12, '56778356', 'lisinopril 5mg', 45677550, '1 tablet by mouth daily', 30),
(13, '56778356', 'lisinopril 5mg', 8879056, '1 tablet by mouth daily', 30),
(14, '56778356', 'lisinopril 5mg', 7765340, '1 tablet by mouth daily', 30),
(15, '169266015', 'tresiba', 55332390, 'inject 25 units subcutaneously twice daily', 15),
(16, '378180077', 'levothyroxine 25 mcg', 45776677, '1 tablet by mouth daily', 30),
(17, '1234', 'nnn', 67854029, '132', 133),
(18, '564', 'asd', 9876230, '12', 1),
(19, '56778356', 'lisinopril 5mg', 4587560, '1 tablet by mouth daily', 30),
(20, '169266015', 'tresiba', 45673324, 'inject 25 units subcutaneously twice daily', 15);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patientID` bigint(20) UNSIGNED NOT NULL,
  `prescriptionID` varchar(55) NOT NULL,
  `patient_name` varchar(55) NOT NULL,
  `phoneNumber` varchar(55) NOT NULL,
  `address` varchar(55) NOT NULL,
  `pick_up_location` varchar(25) NOT NULL,
  `DOB` date DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `uId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patientID`, `prescriptionID`, `patient_name`, `phoneNumber`, `address`, `pick_up_location`, `DOB`, `city`, `uId`) VALUES
(5678, '7654', 'kadidia', '675-567-2222', '567 broom st', '1711', NULL, NULL, NULL),
(433572, '889003', 'Miguel Ceron', '646-228-7789', '447 st.Pauls ave', '1711', NULL, NULL, NULL),
(4335276, '889309', 'Karina Rodriguez', '718-308-0991', '60 pitt st', '4202', NULL, NULL, NULL),
(4335778, '889931', 'Alhadji Cisse', '212-768-5104', '264 bromme street', '4202', NULL, NULL, NULL),
(4335879, '889319', 'Natalie Wong', '347-487-7256', '670 water street', '1711', NULL, NULL, NULL),
(43356690, '8894188', 'Andrew Weber', '917-628-9962', '670 water street', '4205', NULL, NULL, NULL),
(43356691, '123', 'kl', 'kl', 'kl', 'kl', '2018-03-17', NULL, NULL),
(43356692, '345', 'asdf', '345345', 'dfgsd', 'dsfgs', '2018-04-16', NULL, NULL),
(43356693, '234', 'asdf', 'asdf', 'asdfasfd', 'asdfa', '2018-04-17', NULL, NULL),
(43356694, '44332', 'noman', '2345243', 'asfd', 'asdff', '2018-04-17', 'asfd', NULL),
(43356695, '7786', 'shahab', '0000000000', 'karachi pakistan', 'dubai', '2018-04-19', 'karachi', 3),
(43356696, '34533', 'john', '234423423', 'england', 'sdfasd', '2018-04-19', 'london', NULL),
(43356697, '2413241', 'shahab', '2343234', 'sadfa', 'sdgs', '2018-04-17', 'sadf', 3),
(43356698, '213', 'shahab', '123', 'ASD', '564', '2017-12-19', 'QASD', 3),
(43356699, '10230', 'shahab', '123', 'asd', '19238', '2018-01-20', 'asd', 3),
(43356700, '123', 'shahab', '123', 'asd', '123', '2018-02-01', 'asd', 11),
(43356701, '123', 'shahab', '123', 'asd', '10399120', '2018-02-20', 'asd', 11),
(43356702, '213', 'shahab', '123', 'qsad', '123`', '2018-03-20', 'asd', 12),
(43356703, '123', 'shahab', '123', 'asd', '123', '2018-04-19', 'asd', 11),
(43356704, '123', 'shahab', '123', '123', '123', '2018-04-19', '123', 13),
(43356705, '123', 'shahab', '12', '123', '123', '2018-03-20', '123', 14),
(43356706, '123', 'shahab', '12', '123', '123', '2018-03-20', '123', 14),
(43356707, '123', 'shahab', '123', '123', '123', '2017-04-20', '123', 13),
(43356708, '123', 'shahab', '123', '123', '123', '2017-04-19', '123', 13),
(43356709, '123', 'shahab', '123', '123', '123', '2017-02-20', '123', 13),
(43356710, '123', 'shahab', '123', '123', '123', '2017-02-20', '123', 13),
(43356711, '123', 'shahab', '123', '123', '123', '2017-02-20', '123', 13),
(43356712, '123', 'shahab', '123', '123', '123', '2017-02-20', '123', 13),
(43356713, '123', 'shahab', '123', '123', '123', '2017-02-20', '123', 13),
(43356714, '123', 'shahab', '123', '123', '123', '2017-04-20', '123', 13),
(43356715, '123', 'shahab', '123', '123', '123', '2017-03-19', '123', 13),
(43356716, '123', 'fff', '123', '123', '123', '2018-03-20', '123', 15),
(43356717, '1321', 'ggg', '2321123', '12213', '12123', '2018-03-20', '12123', 16),
(43356718, '123', 'shahab', '123', '123', '123', '2018-02-20', '123', 3),
(43356719, '123', 'shahab', '123', 'sda', '123', '2017-02-20', 'asd', 3),
(43356720, '123', 'shahab', 'a', 'a', '123', '2017-04-20', 'a', 17),
(43356721, '123', 'w', '12', '123', '123', '2018-03-20', '123', 18),
(43356722, '7589786543', 'shahab', '12', '123', '123', '2018-02-19', '123', 14),
(43356723, '7589786543', 'shahab', '12', '123', '123', '2018-02-19', '123', 14),
(43356724, '98765432', 'shahab', '123', '123', '123', '2017-03-20', '123', 3),
(43356725, '2234', 'jonny', '23432423', 'sfasdf', 'asdf', '2018-04-18', 'sf', 19),
(43356726, '56799025', 'Michelle Rodriguez', '516-440-2270', '330 fulton street', '1711', '2018-01-17', 'brooklyn', 21),
(43356727, '54693', 'shaharyar', '987', '987', '9765', '2018-02-21', '987', 22),
(43356728, '545463', 'hghjklk', '123', '123', '132', '2017-01-21', '123', 23),
(43356729, '45677550', 'miguel ceron', '646-228-7789', '447 st.pauls ave ', '1711', '2018-04-19', 'staten island', 29),
(43356730, '8879056', 'miguel ceron', '646-228-7789', '447 st.pauls ave ', '1711', '2018-03-13', 'staten island', 29),
(43356731, '7765340', 'miguel ceron', '646-228-7789', '447 st.pauls ave ', '1711', '2018-02-12', 'staten island', 29),
(43356732, '55332390', 'miguel ceron', '646-228-7789', '447 st.pauls ave ', '4202', '2018-04-20', 'staten island', 29),
(43356733, '45776677', 'miguel ceron', '646-228-7789', '447 st.pauls ave ', '4205', '2018-04-19', 'staten island', 29),
(43356734, '67854029', 'nnn', '123', '123', '123', '2018-01-21', '123', 30),
(43356735, '9876230', 'shaharyar', '123', 'asd', '456', '2018-01-21', 'asd', 31),
(43356736, '4587560', 'miguel ceron', '646-228-7789', '447 st.pauls ave ', '1711', '2018-04-17', 'staten island', 29),
(43356737, '45673324', 'miguel ceron', '646-228-7789', '447 st.pauls ave ', '4202', '2018-04-11', 'staten island', 29);

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('admin_dbuser', '[{\"db\":\"admin_testdb\",\"table\":\"pma__bookmark\"},{\"db\":\"admin_testdb\",\"table\":\"pma__export_templates\"},{\"db\":\"admin_testdb\",\"table\":\"store\"},{\"db\":\"admin_testdb\",\"table\":\"prescription\"},{\"db\":\"admin_testdb\",\"table\":\"doctor\"},{\"db\":\"admin_testdb\",\"table\":\"medication\"},{\"db\":\"admin_testdb\",\"table\":\"patients\"}]'),
('corporatea2z', '[{\"db\":\"corporatea2z_registration\",\"table\":\"user_registration\"},{\"db\":\"corporatea2z_registration\",\"table\":\"doctor\"},{\"db\":\"corporatea2z_registration\",\"table\":\"prescription\"},{\"db\":\"corporatea2z_registration\",\"table\":\"patients\"},{\"db\":\"corporatea2z_registration\",\"table\":\"medictaion_history\"},{\"db\":\"corporatea2z_registration\",\"table\":\"medication\"},{\"db\":\"corporatea2z_registration\",\"table\":\"store\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('admin_dbuser', 'admin_testdb', 'patients', '{\"sorted_col\":\"`pick_up_location`  ASC\"}', '2018-04-13 23:59:13');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('admin_dbuser', '2018-03-18 23:36:25', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `prescriptionID` bigint(20) UNSIGNED NOT NULL,
  `doctor_npi` varchar(55) NOT NULL,
  `medication_NDC` varchar(55) NOT NULL,
  `patient_Name` varchar(55) NOT NULL,
  `pick_up_location` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prescriptionID`, `doctor_npi`, `medication_NDC`, `patient_Name`, `pick_up_location`) VALUES
(123, '123', '123', 'kl', 123),
(213, '123', '123123', 'shahab', 564),
(345, '123', 'safd', 'asdf', 0),
(1321, '123', '123', 'ggg', 12123),
(2234, '123', '123', 'jonny', 0),
(4567, '789088', '78990-5677-77', 'Miguel Ceron', 1711),
(7786, '123', '123', 'shahab', 0),
(10230, '123', '2879759', 'shahab', 19238),
(54693, '123', '564', 'shaharyar', 9765),
(545463, '123', '545463', 'hghjklk', 132),
(4587560, '1138697537', '56778356', 'miguel ceron', 1711),
(7765340, '123', '56778356', 'miguel ceron', 1711),
(8879056, '123', '56778356', 'miguel ceron', 1711),
(9876230, '1138697537', '564', 'shaharyar', 456),
(45673324, '1450433937', '169266015', 'miguel ceron', 4202),
(45677550, '123', '56778356', 'miguel ceron', 1711),
(45776677, '123', '378180077', 'miguel ceron', 4205),
(55332390, '123', '169266015', 'miguel ceron', 4202),
(56799025, '123', '193226301', 'Michelle Rodriguez', 1711),
(67854029, '123', '1234', 'nnn', 123),
(98765432, '123', '123', 'shahab', 123),
(7589786543, '123', '123', 'shahab', 123);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `storeID` bigint(20) UNSIGNED NOT NULL,
  `prescriptionID` varchar(55) NOT NULL,
  `storePhone` varchar(25) NOT NULL,
  `storeAddress` varchar(100) NOT NULL,
  `city` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`storeID`, `prescriptionID`, `storePhone`, `storeAddress`, `city`) VALUES
(0, '7786', '2984387', 'england', 'London'),
(123, '123', 'qsd', '123', 'sad'),
(132, '545463', '321', '321', 'asdasd'),
(456, '9876230', '132', '132', '132'),
(564, '213', 'ASD', 'ASD', 'SDASD'),
(1711, '342-22-990', '212-529-7115', '408 grand st', 'new york'),
(3771, '543-778-00', '212-715-5929', '229 ave D', 'new york'),
(4202, '556-778', '212-477-2858', '7 madison street', 'new york'),
(4205, '997-008-87', '212-529-0359', '385 1st ave ', 'new york'),
(9765, '54693', '987', '987', '987'),
(12123, '1321', '123', '123', '123'),
(19238, '10230', 'asdind', 'kasd', 'asdono'),
(10399120, '123', 'asd', 'sd', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `uId` int(11) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `phoneNumber` varchar(250) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `City` varchar(250) DEFAULT NULL,
  `username` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`uId`, `Name`, `phoneNumber`, `Address`, `City`, `username`, `password`, `Status`) VALUES
(1, 'Sharon Robles', '212-238-700', '230 madison street', 'new york', 'Sharon', '8860e500b729430dc9354c7c5cfe4464', 'doctor'),
(2, 'v', 'v', 'v', 'v', 'v', '9e3669d19b675bd57058fd4664205d2a', 'doctor'),
(3, 'shahab', '123', 'hello', 'karachi', 'shahab', '202cb962ac59075b964b07152d234b70', 'patient'),
(4, 'sh', '123', 'face', 'a', 'sh', '202cb962ac59075b964b07152d234b70', 'doctor'),
(5, 'tapha dioum', '718-330-99-56', '165 Fulton street', 'Staten Island', 'admin', '202cb962ac59075b964b07152d234b70', 'admin'),
(6, 'asad', '213123', 'hello asad', 'sdfsa', 'asad', '202cb962ac59075b964b07152d234b70', 'doctor'),
(7, 'noman', '2345243', 'asfd', 'asfd', NULL, NULL, 'patient'),
(8, 'shahab', '0000000000', 'karachi pakistan', 'karachi', NULL, NULL, 'patient'),
(9, 'john', '234423423', 'england', 'london', NULL, NULL, 'patient'),
(10, 'shahab', '2343234', 'sadfa', 'sadf', NULL, NULL, 'patient'),
(11, 'shahab', '123', 'asd', 'asd', NULL, NULL, 'patient'),
(12, 'shahab', '123', 'qsad', 'asd', NULL, NULL, 'patient'),
(13, 'shahab', '123', '123', '123', NULL, NULL, 'patient'),
(14, 'shahab', '12', '123', '123', NULL, NULL, 'patient'),
(15, 'fff', '123', '123', '123', NULL, NULL, 'patient'),
(16, 'ggg', '2321123', '12213', '12123', NULL, NULL, 'patient'),
(17, 'shahab', 'a', 'a', 'a', NULL, NULL, 'patient'),
(18, 'w', '12', '123', '123', NULL, NULL, 'patient'),
(19, 'jonny', '23432423', 'sfasdf', 'sf', NULL, NULL, 'patient'),
(20, 'Alla Zilberman', '347-279-8219', '570 grand street', 'new york', 'allazilberman', '171374471298c9c8e2cbf3ff00d95f33', 'doctor'),
(21, 'Michelle Rodriguez', '516-440-2270', '330 fulton street', 'brooklyn', 'michellerodriguez', '04cf3023dd92039d6a5e205dc0c2dd91', 'patient'),
(22, 'shaharyar', '987', '987', '987', NULL, NULL, 'patient'),
(23, 'hghjklk', '123', '123', '123', NULL, NULL, 'patient'),
(24, 'Sharon Robles', '212-228-3875', '227 madison street', 'new york', 'sharonerobles', '1e1bd0bafd1915b7f91b772e08c3e60c', 'doctor'),
(25, 'meer john', '212-496-7743', '317 16th street', 'new york', 'meerjohn', '409d5a60c6da2ccf4568f23f55efe1aa', 'doctor'),
(26, 'scott weber', '', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', 'doctor'),
(27, 'scott weber', '212-496-4600', '530  1st ave', 'new york', 'scottweber', '795e4e887d9fdfdfe2ca6943d9e70a81', 'doctor'),
(28, 'James Goodman', '212-462-4141', '462 1st ave', 'new york', 'jamesgoodman', '07bfeb3d46d09f567135b5373a851393', 'doctor'),
(29, 'miguel ceron', '646-228-7789', '447 st.pauls ave ', 'staten island', 'miguelceron', '7e828b3fec9afdcae8340ab483af9a08', 'patient'),
(30, 'nnn', '123', '123', '123', NULL, NULL, 'patient'),
(31, 'shaharyar', '123', 'asd', 'asd', NULL, NULL, 'patient');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_npi`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`medication_NDC`),
  ADD UNIQUE KEY `medication_NDC` (`medication_NDC`);

--
-- Indexes for table `medictaion_history`
--
ALTER TABLE `medictaion_history`
  ADD PRIMARY KEY (`mhId`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patientID`),
  ADD UNIQUE KEY `patientID` (`patientID`);

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`prescriptionID`),
  ADD UNIQUE KEY `prescriptionID` (`prescriptionID`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`storeID`),
  ADD UNIQUE KEY `storeID` (`storeID`);

--
-- Indexes for table `user_registration`
--
ALTER TABLE `user_registration`
  ADD PRIMARY KEY (`uId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `medication_NDC` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67877019961;

--
-- AUTO_INCREMENT for table `medictaion_history`
--
ALTER TABLE `medictaion_history`
  MODIFY `mhId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `patientID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43356738;

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_registration`
--
ALTER TABLE `user_registration`
  MODIFY `uId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
