/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: food
-- ------------------------------------------------------
-- Server version	10.11.13-MariaDB-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acc_account_name`
--

DROP TABLE IF EXISTS `acc_account_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_account_name` (
  `account_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) NOT NULL,
  `account_type` int(11) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_account_name`
--

LOCK TABLES `acc_account_name` WRITE;
/*!40000 ALTER TABLE `acc_account_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_account_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_coa`
--

DROP TABLE IF EXISTS `acc_coa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_coa` (
  `HeadCode` varchar(50) NOT NULL,
  `HeadName` varchar(100) NOT NULL,
  `PHeadName` varchar(50) NOT NULL,
  `HeadLevel` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsTransaction` tinyint(1) NOT NULL,
  `IsGL` tinyint(1) NOT NULL,
  `HeadType` char(1) NOT NULL,
  `IsBudget` tinyint(1) NOT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) NOT NULL,
  `UpdateDate` datetime NOT NULL,
  PRIMARY KEY (`HeadName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_coa`
--

LOCK TABLES `acc_coa` WRITE;
/*!40000 ALTER TABLE `acc_coa` DISABLE KEYS */;
INSERT INTO `acc_coa` VALUES
('502020000001','145454-HmIsahaq','Account Payable',2,1,1,0,'L',0,0,0.00,'John Doe','2018-12-17 15:10:19','','0000-00-00 00:00:00'),
('4021403','AC','Repair and Maintenance',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 19:33:55','','0000-00-00 00:00:00'),
('50202','Account Payable','Current Liabilities',2,1,0,1,'L',0,0,0.00,'admin','2015-10-15 19:50:43','','0000-00-00 00:00:00'),
('10203','Account Receivable','Current Asset',2,1,0,0,'A',0,0,0.00,'','0000-00-00 00:00:00','admin','2013-09-18 15:29:35'),
('1020201','Advance','Advance, Deposit And Pre-payments',3,1,0,1,'A',0,0,0.00,'Zoherul','2015-05-31 13:29:12','admin','2015-12-31 16:46:32'),
('102020103','Advance House Rent','Advance',4,1,1,0,'A',0,0,0.00,'admin','2016-10-02 16:55:38','admin','2016-10-02 16:57:32'),
('10202','Advance, Deposit And Pre-payments','Current Asset',2,1,0,0,'A',0,0,0.00,'','0000-00-00 00:00:00','admin','2015-12-31 16:46:24'),
('4020602','Advertisement and Publicity','Promonational Expence',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 18:51:44','','0000-00-00 00:00:00'),
('1010410','Air Cooler','Others Assets',3,1,1,0,'A',0,0,0.00,'admin','2016-05-23 12:13:55','','0000-00-00 00:00:00'),
('4020603','AIT Against Advertisement','Promonational Expence',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 18:52:09','','0000-00-00 00:00:00'),
('1','Assets','COA',0,1,0,0,'A',0,0,0.00,'','0000-00-00 00:00:00','','0000-00-00 00:00:00'),
('1010204','Attendance Machine','Office Equipment',3,1,1,0,'A',0,0,0.00,'admin','2015-10-15 15:49:31','','0000-00-00 00:00:00'),
('40216','Audit Fee','Other Expenses',2,1,1,1,'E',0,0,0.00,'admin','2017-07-18 12:54:30','','0000-00-00 00:00:00'),
('4021002','Bank Charge','Financial Expenses',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 19:21:03','','0000-00-00 00:00:00'),
('30203','Bank Interest','Other Income',2,1,1,1,'I',0,0,0.00,'Obaidul','2015-01-03 14:49:54','admin','2016-09-25 11:04:19'),
('1010104','Book Shelf','Furniture & Fixturers',3,1,1,0,'A',0,0,0.00,'admin','2015-10-15 15:46:11','','0000-00-00 00:00:00'),
('1010407','Books and Journal','Others Assets',3,1,1,0,'A',0,0,0.00,'admin','2016-03-27 10:45:37','','0000-00-00 00:00:00'),
('102010207','Brac Bank','Cash At Bank',4,1,1,0,'A',0,0,0.00,'2','2020-01-18 10:10:31','','0000-00-00 00:00:00'),
('4020604','Business Development Expenses','Promonational Expence',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 18:52:29','','0000-00-00 00:00:00'),
('4020606','Campaign Expenses','Promonational Expence',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 18:52:57','admin','2016-09-19 14:52:48'),
('4020502','Campus Rent','House Rent',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 18:46:53','admin','2017-04-27 17:02:39'),
('40212','Car Running Expenses','Other Expenses',2,1,0,1,'E',0,0,0.00,'admin','2015-10-15 19:28:43','','0000-00-00 00:00:00'),
('10201','Cash & Cash Equivalent','Current Asset',2,1,0,1,'A',0,0,0.00,'','0000-00-00 00:00:00','admin','2015-10-15 15:57:55'),
('1020102','Cash At Bank','Cash & Cash Equivalent',3,1,0,0,'A',0,0,0.00,'2','2018-07-19 13:43:59','admin','2015-10-15 15:32:42'),
('1020101','Cash In Hand','Cash & Cash Equivalent',3,1,1,1,'A',0,0,0.00,'2','2018-07-31 12:56:28','admin','2016-05-23 12:05:43'),
('30101','Cash Sale','Store Income',1,1,1,1,'I',0,0,0.00,'2','2018-07-08 07:51:26','','0000-00-00 00:00:00'),
('1010207','CCTV','Office Equipment',3,1,1,0,'A',0,0,0.00,'admin','2015-10-15 15:51:24','','0000-00-00 00:00:00'),
('102020102','CEO Current A/C','Advance',4,1,1,0,'A',0,0,0.00,'admin','2016-09-25 11:54:54','','0000-00-00 00:00:00'),
('102010206','City Bank','Cash At Bank',4,1,1,0,'A',0,0,0.00,'2','2020-01-18 10:09:32','','0000-00-00 00:00:00'),
('1010101','Class Room Chair','Furniture & Fixturers',3,1,1,0,'A',0,0,0.00,'admin','2015-10-15 15:45:29','','0000-00-00 00:00:00'),
('4021407','Close Circuit Cemera','Repair and Maintenance',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 19:35:35','','0000-00-00 00:00:00'),
('4020601','Commision on Admission','Promonational Expence',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 18:51:21','admin','2016-09-19 14:42:54'),
('1010206','Computer','Office Equipment',3,1,1,0,'A',0,0,0.00,'admin','2015-10-15 15:51:09','','0000-00-00 00:00:00'),
('4021410','Computer (R)','Repair and Maintenance',3,1,1,0,'E',0,0,0.00,'Zoherul','2016-03-24 12:38:52','Zoherul','2016-03-24 12:41:40'),
('1010102','Computer Table','Furniture & Fixturers',3,1,1,0,'A',0,0,0.00,'admin','2015-10-15 15:45:44','','0000-00-00 00:00:00'),
('301020401','Continuing Registration fee - UoL (Income)','Registration Fee (UOL) Income',4,1,1,0,'I',0,0,0.00,'admin','2015-10-15 17:40:40','','0000-00-00 00:00:00'),
('4020904','Contratuall Staff Salary','Salary & Allowances',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 19:12:34','','0000-00-00 00:00:00'),
('403','Cost of Sale','Expence',0,1,1,0,'E',0,0,0.00,'2','2018-07-08 10:37:16','','0000-00-00 00:00:00'),
('30102','Credit Sale','Store Income',1,1,1,1,'I',0,0,0.00,'2','2018-07-08 07:51:34','','0000-00-00 00:00:00'),
('4020709','Cultural Expense','Miscellaneous Expenses',3,1,1,0,'E',0,0,0.00,'nasmud','2017-04-29 12:45:10','','0000-00-00 00:00:00'),
('102','Current Asset','Assets',1,1,0,0,'A',0,0,0.00,'2','2018-12-06 13:54:42','admin','2018-07-07 11:23:00'),
('502','Current Liabilities','Liabilities',1,1,0,0,'L',0,0,0.00,'anwarul','2014-08-30 13:18:20','admin','2015-10-15 19:49:21'),
('102030101','cusL-0001-Walkin','Customer Receivable',4,1,1,0,'A',0,0,0.00,'2','2019-01-08 09:14:48','','2020-11-17 11:41:07'),
('102030108','cusL-0002-Jamil','Customer Receivable',4,1,1,0,'A',0,0,0.00,'2','2021-08-25 14:12:02','','0000-00-00 00:00:00'),
('102030109','cusL-0004-Kabir khan','Customer Receivable',4,1,1,0,'A',0,0,0.00,'36','2021-08-31 14:03:18','','0000-00-00 00:00:00'),
('102030115','cusL-0005-jaman','Customer Receivable',4,1,1,0,'A',0,0,0.00,'53','2023-07-03 15:50:20','','0000-00-00 00:00:00'),
('102030110','cusL-0007-jamil','Customer Receivable',4,1,1,0,'A',0,0,0.00,'39','2021-09-05 19:38:26','','0000-00-00 00:00:00'),
('102030111','cusL-0008-kamal','Customer Receivable',4,1,1,0,'A',0,0,0.00,'40','2021-09-19 11:53:13','','0000-00-00 00:00:00'),
('102030112','cusL-0009-shakil','Customer Receivable',4,1,1,0,'A',0,0,0.00,'41','2021-10-26 10:20:44','','0000-00-00 00:00:00'),
('102030113','cusL-0010-shakil','Customer Receivable',4,1,1,0,'A',0,0,0.00,'42','2021-10-26 10:23:52','','0000-00-00 00:00:00'),
('102030104','cusL-0018-jamildasd','Customer Receivable',4,1,1,0,'A',0,0,0.00,'20','2021-01-05 14:14:11','','0000-00-00 00:00:00'),
('102030114','cusL-0019- ','Customer Receivable',4,1,1,0,'A',0,0,0.00,'0','2021-11-10 14:06:32','','0000-00-00 00:00:00'),
('102030105','cusL-0021-jamil','Customer Receivable',4,1,1,0,'A',0,0,0.00,'25','2021-01-31 14:17:07','','0000-00-00 00:00:00'),
('102030106','cusL-0022-Saiful Hassan','Customer Receivable',4,1,1,0,'A',0,0,0.00,'26','2021-01-31 18:18:33','','0000-00-00 00:00:00'),
('102030107','cusL-0023-jamil','Customer Receivable',4,1,1,0,'A',0,0,0.00,'27','2021-02-03 10:12:50','','0000-00-00 00:00:00'),
('102030116','cusL-1131-lxbfYeaa','Customer Receivable',4,1,1,0,'A',0,0,0.00,'1181','2025-06-01 21:48:27','','0000-00-00 00:00:00'),
('1020301','Customer Receivable','Account Receivable',3,1,0,1,'A',0,0,0.00,'2','2019-01-08 09:15:08','admin','2018-07-07 12:31:42'),
('40100002','cw-Chichawatni','Store Expenses',2,1,1,0,'E',0,0,0.00,'2','2018-08-02 16:30:41','','0000-00-00 00:00:00'),
('1020202','Deposit','Advance, Deposit And Pre-payments',3,1,0,0,'A',0,0,0.00,'admin','2015-10-15 15:40:42','','0000-00-00 00:00:00'),
('4020605','Design & Printing Expense','Promonational Expence',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 18:55:00','','0000-00-00 00:00:00'),
('4020404','Dish Bill','Utility Expenses',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 18:58:21','','0000-00-00 00:00:00'),
('40215','Dividend','Other Expenses',2,1,1,1,'E',0,0,0.00,'admin','2016-09-25 14:07:55','','0000-00-00 00:00:00'),
('4020403','Drinking Water Bill','Utility Expenses',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 18:58:10','','0000-00-00 00:00:00'),
('1010211','DSLR Camera','Office Equipment',3,1,1,0,'A',0,0,0.00,'admin','2015-10-15 15:53:17','admin','2016-01-02 16:23:25'),
('102010205','Dutch-Bangla Bank','Cash At Bank',4,1,1,0,'A',0,0,0.00,'2','2020-01-18 09:49:13','','0000-00-00 00:00:00'),
('502020000007','E3Y1WJMB-John Maria','Account Payable',2,1,1,0,'L',0,0,0.00,'John Doe','2019-01-27 05:55:58','','0000-00-00 00:00:00'),
('502020000010','E4Y91CAX-onlineorder','Account Payable',2,1,1,0,'L',0,0,0.00,'John Doe','2019-02-03 11:20:44','','0000-00-00 00:00:00'),
('502020000004','E97E9SJT-Manik Hassan','Account Payable',2,1,1,0,'L',0,0,0.00,'John Doe','2019-01-09 14:32:22','','0000-00-00 00:00:00'),
('4020908','Earned Leave','Salary & Allowances',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 19:13:38','','0000-00-00 00:00:00'),
('502020000006','EBK2UPRA-John Carlos','Account Payable',2,1,1,0,'L',0,0,0.00,'John Doe','2019-01-27 05:51:09','','0000-00-00 00:00:00'),
('4020607','Education Fair Expenses','Promonational Expence',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 18:53:42','','0000-00-00 00:00:00'),
('502020000011','EK9BYZVY-test sdafdssdfds','Account Payable',2,1,1,0,'L',0,0,0.00,'John Doe','2019-02-24 14:07:53','','0000-00-00 00:00:00'),
('1010602','Electric Equipment','Electrical Equipment',3,1,1,0,'A',0,0,0.00,'admin','2016-03-27 10:44:51','','0000-00-00 00:00:00'),
('1010203','Electric Kettle','Office Equipment',3,1,1,0,'A',0,0,0.00,'admin','2015-10-15 15:49:07','','0000-00-00 00:00:00'),
('10106','Electrical Equipment','Non Current Assets',2,1,0,1,'A',0,0,0.00,'admin','2016-03-27 10:43:44','','0000-00-00 00:00:00'),
('4020407','Electricity Bill','Utility Expenses',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 18:59:31','','0000-00-00 00:00:00'),
('10202010501','employ','Salary',5,1,0,0,'A',0,0,0.00,'admin','2018-07-05 11:47:10','','0000-00-00 00:00:00'),
('405','Entertainment','Expense',1,1,1,0,'E',1,1,1.00,'2','2020-01-18 07:49:00','','0000-00-00 00:00:00'),
('502020000012','ENVBUZKE-kabirkhan','Account Payable',2,1,1,0,'L',0,0,0.00,'John Doe','2020-10-12 10:57:33','','0000-00-00 00:00:00'),
('502020000002','EQLAJFUW-AinalHaque','Account Payable',2,1,1,0,'L',0,0,0.00,'John Doe','2018-12-17 15:08:43','','0000-00-00 00:00:00'),
('2','Equity','COA',0,1,0,0,'L',0,0,0.00,'','0000-00-00 00:00:00','','0000-00-00 00:00:00'),
('502020000009','EU3APTYY-JohnDoe','Account Payable',2,1,1,0,'L',0,0,0.00,'John Doe','2019-01-27 06:02:46','','0000-00-00 00:00:00'),
('502020000005','EW9PM201-test emp','Account Payable',2,1,1,0,'L',0,0,0.00,'John Doe','2019-01-09 14:38:15','','0000-00-00 00:00:00'),
('502020000008','EXL9WSCL-Mitchel Santner','Account Payable',2,1,1,0,'L',0,0,0.00,'John Doe','2019-01-27 05:58:55','','0000-00-00 00:00:00'),
('4','Expense','COA',0,1,0,0,'E',0,0,0.00,'','0000-00-00 00:00:00','','0000-00-00 00:00:00'),
('502020000003','EY2T1OWA-jahangirAhmad','Account Payable',2,1,1,0,'L',0,0,0.00,'John Doe','2018-12-17 15:11:13','','0000-00-00 00:00:00'),
('502020000013','EZR0A9IB-DiMaria','Account Payable',2,1,1,0,'L',0,0,0.00,'John Doe','2021-11-14 10:54:22','','0000-00-00 00:00:00'),
('4020903','Faculty,Staff Salary & Allowances','Salary & Allowances',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 19:12:21','','0000-00-00 00:00:00'),
('4021404','Fax Machine','Repair and Maintenance',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 19:34:15','','0000-00-00 00:00:00'),
('4020905','Festival & Incentive Bonus','Salary & Allowances',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 19:12:48','','0000-00-00 00:00:00'),
('1010103','File Cabinet','Furniture & Fixturers',3,1,1,0,'A',0,0,0.00,'admin','2015-10-15 15:46:02','','0000-00-00 00:00:00'),
('40210','Financial Expenses','Other Expenses',2,1,0,1,'E',0,0,0.00,'anwarul','2013-08-20 12:24:31','admin','2015-10-15 19:20:36'),
('1010403','Fire Extingushier','Others Assets',3,1,1,0,'A',0,0,0.00,'admin','2016-03-27 10:39:32','','0000-00-00 00:00:00'),
('4021408','Furniture','Repair and Maintenance',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 19:35:47','','0000-00-00 00:00:00'),
('10101','Furniture & Fixturers','Non Current Assets',2,1,0,1,'A',0,0,0.00,'anwarul','2013-08-20 16:18:15','anwarul','2013-08-21 13:35:40'),
('4020406','Gas Bill','Utility Expenses',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 18:59:20','','0000-00-00 00:00:00'),
('20201','General Reserve','Reserve & Surplus',2,1,1,0,'L',0,0,0.00,'admin','2016-09-25 14:07:12','admin','2016-10-02 17:48:49'),
('10105','Generator','Non Current Assets',2,1,1,1,'A',0,0,0.00,'Zoherul','2016-02-27 16:02:35','admin','2016-05-23 12:05:18'),
('4021414','Generator Repair','Repair and Maintenance',3,1,1,0,'E',0,0,0.00,'Zoherul','2016-06-16 10:21:05','','0000-00-00 00:00:00'),
('40213','Generator Running Expenses','Other Expenses',2,1,0,1,'E',0,0,0.00,'admin','2015-10-15 19:29:29','','0000-00-00 00:00:00'),
('10103','Groceries and Cutleries','Non Current Assets',2,1,1,1,'A',0,0,0.00,'2','2018-07-12 10:02:55','','0000-00-00 00:00:00'),
('1010408','Gym Equipment','Others Assets',3,1,1,0,'A',0,0,0.00,'admin','2016-03-27 10:46:03','','0000-00-00 00:00:00'),
('4020907','Honorarium','Salary & Allowances',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 19:13:26','','0000-00-00 00:00:00'),
('40205','House Rent','Other Expenses',2,1,0,1,'E',0,0,0.00,'anwarul','2013-08-24 10:26:56','','0000-00-00 00:00:00'),
('40100001','HP-Hasilpur','Academic Expenses',2,1,1,0,'E',0,0,0.00,'2','2018-07-29 03:44:23','','0000-00-00 00:00:00'),
('4020702','HR Recruitment Expenses','Miscellaneous Expenses',3,1,1,0,'E',0,0,0.00,'admin','2016-09-25 12:55:49','','0000-00-00 00:00:00'),
('4020703','Incentive on Admission','Miscellaneous Expenses',3,1,1,0,'E',0,0,0.00,'admin','2016-09-25 12:56:09','','0000-00-00 00:00:00'),
('3','Income','COA',0,1,0,0,'I',0,0,0.00,'','0000-00-00 00:00:00','','0000-00-00 00:00:00'),
('5020302','Income Tax Payable','Liabilities for Expenses',3,1,0,1,'L',0,0,0.00,'admin','2016-09-19 11:18:17','admin','2016-09-28 13:18:35'),
('102020302','Insurance Premium','Prepayment',4,1,1,0,'A',0,0,0.00,'admin','2016-09-19 13:10:57','','0000-00-00 00:00:00'),
('4021001','Interest on Loan','Financial Expenses',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 19:20:53','admin','2016-09-19 14:53:34'),
('4020401','Internet Bill','Utility Expenses',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 18:56:55','admin','2015-10-15 18:57:32'),
('10107','Inventory','Non Current Assets',1,1,0,0,'A',0,0,0.00,'2','2018-07-07 15:21:58','','0000-00-00 00:00:00'),
('102010309','iyzico','Online Payment',2,1,1,0,'A',0,0,0.00,'2','2020-10-18 14:32:35','','0000-00-00 00:00:00'),
('10205010101','Jahangir','Hasan',1,1,0,0,'A',0,0,0.00,'2','2018-07-07 10:40:56','','0000-00-00 00:00:00'),
('1010210','LCD TV','Office Equipment',3,1,1,0,'A',0,0,0.00,'admin','2015-10-15 15:52:27','','0000-00-00 00:00:00'),
('30103','Lease Sale','Store Income',1,1,1,1,'I',0,0,0.00,'2','2018-07-08 07:51:52','','0000-00-00 00:00:00'),
('5','Liabilities','COA',0,1,0,0,'L',0,0,0.00,'admin','2013-07-04 12:32:07','admin','2015-10-15 19:46:54'),
('50203','Liabilities for Expenses','Current Liabilities',2,1,0,0,'L',0,0,0.00,'admin','2015-10-15 19:50:59','','0000-00-00 00:00:00'),
('4020707','Library Expenses','Miscellaneous Expenses',3,1,1,0,'E',0,0,0.00,'admin','2017-01-10 15:34:54','','0000-00-00 00:00:00'),
('4021409','Lift','Repair and Maintenance',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 19:36:12','','0000-00-00 00:00:00'),
('50101','Long Term Borrowing','Non Current Liabilities',2,1,0,1,'L',0,0,0.00,'admin','2013-07-04 12:32:26','admin','2015-10-15 19:47:40'),
('4020608','Marketing & Promotion Exp.','Promonational Expence',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 18:53:59','','0000-00-00 00:00:00'),
('4020901','Medical Allowance','Salary & Allowances',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 19:11:33','','0000-00-00 00:00:00'),
('1010411','Metal Ditector','Others Assets',3,1,1,0,'A',0,0,0.00,'Zoherul','2016-08-22 10:55:22','','0000-00-00 00:00:00'),
('4021413','Micro Oven','Repair and Maintenance',3,1,1,0,'E',0,0,0.00,'Zoherul','2016-05-12 14:53:51','','0000-00-00 00:00:00'),
('30202','Miscellaneous (Income)','Other Income',2,1,1,1,'I',0,0,0.00,'anwarul','2014-02-06 15:26:31','admin','2016-09-25 11:04:35'),
('4020909','Miscellaneous Benifit','Salary & Allowances',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 19:13:53','','0000-00-00 00:00:00'),
('4020701','Miscellaneous Exp','Miscellaneous Expenses',3,1,1,0,'E',0,0,0.00,'admin','2016-09-25 12:54:39','','0000-00-00 00:00:00'),
('40207','Miscellaneous Expenses','Other Expenses',2,1,0,1,'E',0,0,0.00,'anwarul','2014-04-26 16:49:56','admin','2016-09-25 12:54:19'),
('1010401','Mobile Phone','Others Assets',3,1,1,0,'A',0,0,0.00,'admin','2016-01-29 10:43:30','','0000-00-00 00:00:00'),
('102020101','Mr Ashiqur Rahman','Advance',4,1,1,0,'A',0,0,0.00,'admin','2015-12-31 16:47:23','admin','2016-09-25 11:55:13'),
('1010212','Network Accessories','Office Equipment',3,1,1,0,'A',0,0,0.00,'admin','2016-01-02 16:23:32','','0000-00-00 00:00:00'),
('102020106','new head dfhgfh','Advance',3,1,0,0,'A',0,0,0.00,'2','2020-01-16 06:25:10','','0000-00-00 00:00:00'),
('4020408','News Paper Bill','Utility Expenses',3,1,1,0,'E',0,0,0.00,'admin','2016-01-02 15:55:57','','0000-00-00 00:00:00'),
('101','Non Current Assets','Assets',1,1,0,0,'A',0,0,0.00,'','0000-00-00 00:00:00','admin','2015-10-15 15:29:11'),
('501','Non Current Liabilities','Liabilities',1,1,0,0,'L',0,0,0.00,'anwarul','2014-08-30 13:18:20','admin','2015-10-15 19:49:21'),
('406','Office Accessories','Expense',1,1,1,0,'E',1,1,1.00,'2','2020-01-18 07:51:32','','0000-00-00 00:00:00'),
('1010404','Office Decoration','Others Assets',3,1,1,0,'A',0,0,0.00,'admin','2016-03-27 10:40:02','','0000-00-00 00:00:00'),
('10102','Office Equipment','Non Current Assets',2,1,0,1,'A',0,0,0.00,'anwarul','2013-12-06 18:08:00','admin','2015-10-15 15:48:21'),
('4021401','Office Repair & Maintenance','Repair and Maintenance',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 19:33:15','','0000-00-00 00:00:00'),
('30201','Office Stationary (Income)','Other Income',2,1,1,1,'I',0,0,0.00,'anwarul','2013-07-17 15:21:06','admin','2016-09-25 11:04:50'),
('1020103','Online Payment','Cash & Cash Equivalent',2,1,0,1,'A',0,0,0.00,'2','2020-10-18 14:26:41','','0000-00-00 00:00:00'),
('102010308','Orange Money payment','Online Payment',2,1,1,0,'A',0,0,0.00,'2','2020-10-18 14:32:11','','0000-00-00 00:00:00'),
('402','Other Expenses','Expense',1,1,0,0,'E',0,0,0.00,'2','2018-07-07 14:00:16','admin','2015-10-15 18:37:42'),
('302','Other Income','Income',1,1,0,0,'I',0,0,0.00,'2','2018-07-07 13:40:57','admin','2016-09-25 11:04:09'),
('40211','Others (Non Academic Expenses)','Other Expenses',2,1,0,1,'E',0,0,0.00,'Obaidul','2014-12-03 16:05:42','admin','2015-10-15 19:22:09'),
('30205','Others (Non-Academic Income)','Other Income',2,1,0,1,'I',0,0,0.00,'admin','2015-10-15 17:23:49','admin','2015-10-15 17:57:52'),
('10104','Others Assets','Non Current Assets',2,1,0,1,'A',0,0,0.00,'admin','2016-01-29 10:43:16','','0000-00-00 00:00:00'),
('4020910','Outstanding Salary','Salary & Allowances',3,1,1,0,'E',0,0,0.00,'Zoherul','2016-04-24 11:56:50','','0000-00-00 00:00:00'),
('4021405','Oven','Repair and Maintenance',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 19:34:31','','0000-00-00 00:00:00'),
('4021412','PABX-Repair','Repair and Maintenance',3,1,1,0,'E',0,0,0.00,'Zoherul','2016-04-24 14:40:18','','0000-00-00 00:00:00'),
('4020902','Part-time Staff Salary','Salary & Allowances',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 19:12:06','','0000-00-00 00:00:00'),
('102010301','Paypal','Online Payment',2,1,1,0,'A',0,0,0.00,'2','2020-10-18 14:27:41','','0000-00-00 00:00:00'),
('102010306','Paystack Payments','Online Payment',2,1,1,0,'A',0,0,0.00,'2','2020-10-18 14:30:55','','0000-00-00 00:00:00'),
('102010307','Paytm Payments','Online Payment',2,1,1,0,'A',0,0,0.00,'2','2020-10-18 14:31:23','','0000-00-00 00:00:00'),
('1010202','Photocopy & Fax Machine','Office Equipment',3,1,1,0,'A',0,0,0.00,'admin','2015-10-15 15:47:27','admin','2016-05-23 12:14:40'),
('4021411','Photocopy Machine Repair','Repair and Maintenance',3,1,1,0,'E',0,0,0.00,'Zoherul','2016-04-24 12:40:02','admin','2017-04-27 17:03:17'),
('3020503','Practical Fee','Others (Non-Academic Income)',3,1,1,1,'I',0,0,0.00,'admin','2017-07-22 18:00:37','','0000-00-00 00:00:00'),
('1020203','Prepayment','Advance, Deposit And Pre-payments',3,1,0,1,'A',0,0,0.00,'admin','2015-10-15 15:40:51','admin','2015-12-31 16:49:58'),
('1010201','Printer','Office Equipment',3,1,1,0,'A',0,0,0.00,'admin','2015-10-15 15:47:15','','0000-00-00 00:00:00'),
('407','Product Purchase','Expense',0,1,0,0,'E',0,0,0.00,'2','2020-01-23 07:09:10','','0000-00-00 00:00:00'),
('3020502','Professional Training Course(Oracal-1)','Others (Non-Academic Income)',3,1,1,0,'I',0,0,0.00,'nasim','2017-06-22 13:28:05','','0000-00-00 00:00:00'),
('30207','Professional Training Course(Oracal)','Other Income',2,1,0,1,'I',0,0,0.00,'nasim','2017-06-22 13:24:16','nasim','2017-06-22 13:25:56'),
('1010208','Projector','Office Equipment',3,1,1,0,'A',0,0,0.00,'admin','2015-10-15 15:51:44','','0000-00-00 00:00:00'),
('40206','Promonational Expense','Other Expenses',2,1,0,1,'E',0,0,0.00,'anwarul','2013-07-11 13:48:57','anwarul','2013-07-17 14:23:03'),
('40214','Repair and Maintenance','Other Expenses',2,1,0,1,'E',0,0,0.00,'admin','2015-10-15 19:32:46','','0000-00-00 00:00:00'),
('202','Reserve & Surplus','Equity',1,1,0,1,'L',0,0,0.00,'admin','2016-09-25 14:06:34','admin','2016-10-02 17:48:57'),
('20102','Retained Earnings','Share Holders Equity',2,1,1,1,'L',0,0,0.00,'admin','2016-05-23 11:20:40','admin','2016-09-25 14:05:06'),
('4020708','River Cruse','Miscellaneous Expenses',3,1,1,0,'E',0,0,0.00,'admin','2017-04-24 15:35:25','','0000-00-00 00:00:00'),
('102010311','RMA PAYMENT GATEWAY','Online Payment',2,1,1,0,'A',0,0,0.00,'2','2020-10-18 14:33:12','','0000-00-00 00:00:00'),
('102020105','Salary','Advance',4,1,0,0,'A',0,0,0.00,'admin','2018-07-05 11:46:44','','0000-00-00 00:00:00'),
('40209','Salary & Allowances','Other Expenses',2,1,0,1,'E',0,0,0.00,'anwarul','2013-12-12 11:22:58','','0000-00-00 00:00:00'),
('404','Sale Discount','Expense',1,1,1,0,'E',0,0,0.00,'2','2018-07-19 10:15:11','','0000-00-00 00:00:00'),
('303','Sale Income','Income',0,1,1,1,'I',0,0,0.00,'2','2020-01-23 06:58:20','','0000-00-00 00:00:00'),
('1010406','Security Equipment','Others Assets',3,1,1,0,'A',0,0,0.00,'admin','2016-03-27 10:41:30','','0000-00-00 00:00:00'),
('30104','Service Charge Income','Store Income',1,1,1,0,'I',0,0,0.00,'2','2020-12-30 11:23:32','','0000-00-00 00:00:00'),
('20101','Share Capital','Share Holders Equity',2,1,0,1,'L',0,0,0.00,'anwarul','2013-12-08 19:37:32','admin','2015-10-15 19:45:35'),
('201','Share Holders Equity','Equity',1,1,0,0,'L',0,0,0.00,'','0000-00-00 00:00:00','admin','2015-10-15 19:43:51'),
('50201','Short Term Borrowing','Current Liabilities',2,1,0,1,'L',0,0,0.00,'admin','2015-10-15 19:50:30','','0000-00-00 00:00:00'),
('102010310','SIPS Office','Online Payment',2,1,1,0,'A',0,0,0.00,'2','2020-10-18 14:32:54','','0000-00-00 00:00:00'),
('4020906','Special Allowances','Salary & Allowances',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 19:13:13','','0000-00-00 00:00:00'),
('50102','Sponsors Loan','Non Current Liabilities',2,1,0,1,'L',0,0,0.00,'admin','2015-10-15 19:48:02','','0000-00-00 00:00:00'),
('4020706','Sports Expense','Miscellaneous Expenses',3,1,1,0,'E',0,0,0.00,'nasmud','2016-11-09 13:16:53','','0000-00-00 00:00:00'),
('102010304','Square Payments','Online Payment',2,1,1,0,'A',0,0,0.00,'2','2020-10-18 14:29:32','','0000-00-00 00:00:00'),
('102010302','SSLCommerz','Online Payment',2,1,1,0,'A',0,0,0.00,'2','2020-10-18 14:28:06','','0000-00-00 00:00:00'),
('401','Store Expenses','Expense',1,1,0,0,'E',0,0,0.00,'2','2018-07-07 13:38:59','admin','2015-10-15 17:58:46'),
('301','Store Income','Income',1,1,0,0,'I',0,0,0.00,'2','2018-07-07 13:40:37','admin','2015-09-17 17:00:02'),
('102010305','Stripe Payment','Online Payment',2,1,1,0,'A',0,0,0.00,'2','2020-10-18 14:29:59','','0000-00-00 00:00:00'),
('3020501','Students Info. Correction Fee','Others (Non-Academic Income)',3,1,1,0,'I',0,0,0.00,'admin','2015-10-15 17:24:45','','0000-00-00 00:00:00'),
('1010601','Sub Station','Electrical Equipment',3,1,1,0,'A',0,0,0.00,'admin','2016-03-27 10:44:11','','0000-00-00 00:00:00'),
('502020501','sup_002-Kamal Hossain','Suppliers',4,1,1,0,'L',0,0,0.00,'2','2020-01-18 10:49:49','','0000-00-00 00:00:00'),
('502020504','sup_002-Supplier_1','Suppliers',4,1,1,0,'L',0,0,0.00,'2','2020-09-08 14:26:40','','0000-00-00 00:00:00'),
('502020502','sup_003-Maruf','Suppliers',4,1,1,0,'L',0,0,0.00,'2','2020-01-18 10:56:31','','0000-00-00 00:00:00'),
('502020503','sup_004-Saiful','Suppliers',4,1,1,0,'L',0,0,0.00,'2','2020-01-18 10:57:04','2','2020-01-21 13:10:59'),
('5020205','Suppliers','Account Payable',3,1,0,1,'L',0,0,0.00,'2','2018-12-15 06:50:12','','0000-00-00 00:00:00'),
('4020704','TB Care Expenses','Miscellaneous Expenses',3,1,1,0,'E',0,0,0.00,'admin','2016-10-08 13:03:04','','0000-00-00 00:00:00'),
('4020501','TDS on House Rent','House Rent',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 18:44:07','admin','2016-09-19 14:40:16'),
('502030201','TDS Payable House Rent','Income Tax Payable',4,1,1,0,'L',0,0,0.00,'admin','2016-09-19 11:19:42','admin','2016-09-28 13:19:37'),
('502030203','TDS Payable on Advertisement Bill','Income Tax Payable',4,1,1,0,'L',0,0,0.00,'admin','2016-09-28 13:20:51','','0000-00-00 00:00:00'),
('502030202','TDS Payable on Salary','Income Tax Payable',4,1,1,0,'L',0,0,0.00,'admin','2016-09-28 13:20:17','','0000-00-00 00:00:00'),
('4021402','Tea Kettle','Repair and Maintenance',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 19:33:45','','0000-00-00 00:00:00'),
('4020402','Telephone Bill','Utility Expenses',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 18:57:59','','0000-00-00 00:00:00'),
('1010209','Telephone Set & PABX','Office Equipment',3,1,1,0,'A',0,0,0.00,'admin','2015-10-15 15:51:57','admin','2016-10-02 17:10:40'),
('102020104','Test','Advance',4,1,1,0,'A',0,0,0.00,'admin','2018-07-05 11:42:48','','0000-00-00 00:00:00'),
('40203','Travelling & Conveyance','Other Expenses',2,1,1,1,'E',0,0,0.00,'admin','2013-07-08 16:22:06','admin','2015-10-15 18:45:13'),
('4021406','TV','Repair and Maintenance',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 19:35:07','','0000-00-00 00:00:00'),
('102010303','Two Checkout','Online Payment',2,1,1,0,'A',0,0,0.00,'2','2020-10-18 14:28:29','','0000-00-00 00:00:00'),
('1010205','UPS','Office Equipment',3,1,1,0,'A',0,0,0.00,'admin','2015-10-15 15:50:38','','0000-00-00 00:00:00'),
('40204','Utility Expenses','Other Expenses',2,1,0,1,'E',0,0,0.00,'anwarul','2013-07-11 16:20:24','admin','2016-01-02 15:55:22'),
('4020503','VAT on House Rent Exp','House Rent',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 18:49:22','admin','2016-09-25 14:00:52'),
('5020301','VAT Payable','Liabilities for Expenses',3,1,0,1,'L',0,0,0.00,'admin','2015-10-15 19:51:11','admin','2016-09-28 13:23:53'),
('502030101','VAT- TAX','VAT Payable',3,1,1,0,'L',0,0,0.00,'2','2020-12-30 10:58:49','','0000-00-00 00:00:00'),
('1010409','Vehicle A/C','Others Assets',3,1,1,0,'A',0,0,0.00,'Zoherul','2016-05-12 12:13:21','','0000-00-00 00:00:00'),
('1010405','Voltage Stablizer','Others Assets',3,1,1,0,'A',0,0,0.00,'admin','2016-03-27 10:40:59','','0000-00-00 00:00:00'),
('1010105','Waiting Sofa - Steel','Furniture & Fixturers',3,1,1,0,'A',0,0,0.00,'admin','2015-10-15 15:46:29','','0000-00-00 00:00:00'),
('4020405','WASA Bill','Utility Expenses',3,1,1,0,'E',0,0,0.00,'admin','2015-10-15 18:58:51','','0000-00-00 00:00:00'),
('1010402','Water Purifier','Others Assets',3,1,1,0,'A',0,0,0.00,'admin','2016-01-29 11:14:11','','0000-00-00 00:00:00'),
('4020705','Website Development Expenses','Miscellaneous Expenses',3,1,1,0,'E',0,0,0.00,'admin','2016-10-15 12:42:47','','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `acc_coa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_customer_income`
--

DROP TABLE IF EXISTS `acc_customer_income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_customer_income` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_Id` varchar(50) NOT NULL,
  `VNo` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_customer_income`
--

LOCK TABLES `acc_customer_income` WRITE;
/*!40000 ALTER TABLE `acc_customer_income` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_customer_income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_glsummarybalance`
--

DROP TABLE IF EXISTS `acc_glsummarybalance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_glsummarybalance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COAID` varchar(50) DEFAULT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `FYear` int(11) DEFAULT NULL,
  `CreateBy` varchar(50) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_glsummarybalance`
--

LOCK TABLES `acc_glsummarybalance` WRITE;
/*!40000 ALTER TABLE `acc_glsummarybalance` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_glsummarybalance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_income_expence`
--

DROP TABLE IF EXISTS `acc_income_expence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_income_expence` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VNo` varchar(50) NOT NULL,
  `Student_Id` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Paymode` varchar(50) NOT NULL,
  `Perpose` varchar(50) NOT NULL,
  `Narration` text NOT NULL,
  `StoreID` int(11) NOT NULL,
  `COAID` varchar(50) NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `IsApprove` tinyint(4) NOT NULL,
  `CreateBy` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_income_expence`
--

LOCK TABLES `acc_income_expence` WRITE;
/*!40000 ALTER TABLE `acc_income_expence` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_income_expence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_temp`
--

DROP TABLE IF EXISTS `acc_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_temp` (
  `COAID` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Debit` decimal(18,2) NOT NULL,
  `Credit` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_temp`
--

LOCK TABLES `acc_temp` WRITE;
/*!40000 ALTER TABLE `acc_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_transaction`
--

DROP TABLE IF EXISTS `acc_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_transaction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VNo` varchar(50) DEFAULT NULL,
  `Vtype` varchar(50) DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) NOT NULL,
  `Narration` text DEFAULT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `StoreID` int(11) NOT NULL,
  `IsPosted` char(10) DEFAULT NULL,
  `CreateBy` varchar(50) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_transaction`
--

LOCK TABLES `acc_transaction` WRITE;
/*!40000 ALTER TABLE `acc_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accesslog`
--

DROP TABLE IF EXISTS `accesslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `accesslog` (
  `sl_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `action_page` varchar(50) DEFAULT NULL,
  `action_done` text DEFAULT NULL,
  `remarks` text NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesslog`
--

LOCK TABLES `accesslog` WRITE;
/*!40000 ALTER TABLE `accesslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acn_account_transaction`
--

DROP TABLE IF EXISTS `acn_account_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `acn_account_transaction` (
  `account_tran_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `transaction_description` varchar(255) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `tran_date` date NOT NULL,
  `payment_id` int(11) NOT NULL,
  `create_by_id` varchar(25) NOT NULL,
  PRIMARY KEY (`account_tran_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acn_account_transaction`
--

LOCK TABLES `acn_account_transaction` WRITE;
/*!40000 ALTER TABLE `acn_account_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `acn_account_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `add_ons`
--

DROP TABLE IF EXISTS `add_ons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_ons` (
  `add_on_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_on_name` varchar(200) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`add_on_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_ons`
--

LOCK TABLES `add_ons` WRITE;
/*!40000 ALTER TABLE `add_ons` DISABLE KEYS */;
/*!40000 ALTER TABLE `add_ons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `award`
--

DROP TABLE IF EXISTS `award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `award` (
  `award_id` int(11) NOT NULL AUTO_INCREMENT,
  `award_name` varchar(50) NOT NULL,
  `aw_description` varchar(200) NOT NULL,
  `awr_gift_item` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  `awarded_by` varchar(30) NOT NULL,
  PRIMARY KEY (`award_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award`
--

LOCK TABLES `award` WRITE;
/*!40000 ALTER TABLE `award` DISABLE KEYS */;
/*!40000 ALTER TABLE `award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_summary`
--

DROP TABLE IF EXISTS `bank_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_summary` (
  `bank_id` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deposite_id` varchar(250) DEFAULT NULL,
  `date` varchar(250) DEFAULT NULL,
  `ac_type` varchar(50) DEFAULT NULL,
  `dr` float DEFAULT NULL,
  `cr` float DEFAULT NULL,
  `ammount` float DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_summary`
--

LOCK TABLES `bank_summary` WRITE;
/*!40000 ALTER TABLE `bank_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `bill_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `total_amount` float NOT NULL,
  `discount` float NOT NULL,
  `service_charge` float NOT NULL,
  `shipping_type` int(11) DEFAULT NULL COMMENT '1=home,2=pickup,3=none',
  `delivarydate` datetime DEFAULT NULL,
  `VAT` float NOT NULL,
  `bill_amount` float NOT NULL,
  `bill_date` date NOT NULL,
  `bill_time` time NOT NULL,
  `create_at` datetime DEFAULT '1970-01-01 01:01:01',
  `bill_status` tinyint(1) NOT NULL COMMENT '0=unpaid, 1=paid',
  `payment_method_id` tinyint(4) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_date` date NOT NULL,
  PRIMARY KEY (`bill_id`),
  KEY `order_id` (`order_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_card_payment`
--

DROP TABLE IF EXISTS `bill_card_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_card_payment` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bill_id` bigint(20) NOT NULL,
  `multipay_id` int(11) DEFAULT NULL,
  `card_no` varchar(200) DEFAULT NULL,
  `terminal_name` int(11) NOT NULL,
  `bank_name` int(11) DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_card_payment`
--

LOCK TABLES `bill_card_payment` WRITE;
/*!40000 ALTER TABLE `bill_card_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill_card_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_basic_info`
--

DROP TABLE IF EXISTS `candidate_basic_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_basic_info` (
  `can_id` varchar(20) NOT NULL,
  `first_name` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alter_phone` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `present_address` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `parmanent_address` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `picture` text DEFAULT NULL,
  `ssn` varchar(50) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip` int(11) NOT NULL,
  PRIMARY KEY (`can_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_basic_info`
--

LOCK TABLES `candidate_basic_info` WRITE;
/*!40000 ALTER TABLE `candidate_basic_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_basic_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_education_info`
--

DROP TABLE IF EXISTS `candidate_education_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_education_info` (
  `can_edu_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) NOT NULL,
  `degree_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `university_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cgp` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `comments` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `sequencee` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`can_edu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_education_info`
--

LOCK TABLES `candidate_education_info` WRITE;
/*!40000 ALTER TABLE `candidate_education_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_education_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_interview`
--

DROP TABLE IF EXISTS `candidate_interview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_interview` (
  `can_int_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `job_adv_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `interview_date` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `interviewer_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `interview_marks` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `written_total_marks` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mcq_total_marks` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `total_marks` varchar(30) NOT NULL,
  `recommandation` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `selection` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `details` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`can_int_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_interview`
--

LOCK TABLES `candidate_interview` WRITE;
/*!40000 ALTER TABLE `candidate_interview` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_interview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_selection`
--

DROP TABLE IF EXISTS `candidate_selection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_selection` (
  `can_sel_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pos_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `selection_terms` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`can_sel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_selection`
--

LOCK TABLES `candidate_selection` WRITE;
/*!40000 ALTER TABLE `candidate_selection` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_selection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_shortlist`
--

DROP TABLE IF EXISTS `candidate_shortlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_shortlist` (
  `can_short_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `job_adv_id` int(11) NOT NULL,
  `date_of_shortlist` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `interview_date` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`can_short_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_shortlist`
--

LOCK TABLES `candidate_shortlist` WRITE;
/*!40000 ALTER TABLE `candidate_shortlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_shortlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_workexperience`
--

DROP TABLE IF EXISTS `candidate_workexperience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_workexperience` (
  `can_workexp_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `company_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `duties` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `supervisor` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sequencee` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`can_workexp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_workexperience`
--

LOCK TABLES `candidate_workexperience` WRITE;
/*!40000 ALTER TABLE `candidate_workexperience` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_workexperience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `check_addones`
--

DROP TABLE IF EXISTS `check_addones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `check_addones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_menuid` int(11) NOT NULL,
  `sub_order_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1=insert, 0=notinserted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check_addones`
--

LOCK TABLES `check_addones` WRITE;
/*!40000 ALTER TABLE `check_addones` DISABLE KEYS */;
/*!40000 ALTER TABLE `check_addones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_setting`
--

DROP TABLE IF EXISTS `common_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `common_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `phone_optional` varchar(30) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `logo_footer` varchar(255) DEFAULT NULL,
  `ismembership` int(11) NOT NULL DEFAULT 0 COMMENT '1=enable,0=disable',
  `powerbytxt` text DEFAULT NULL,
  `web_onoff` int(11) DEFAULT 1 COMMENT '1=enable,0=disable',
  `backgroundcolorweb` varchar(30) DEFAULT NULL,
  `webheaderfontcolor` varchar(20) DEFAULT NULL,
  `backgroundcolorqr` varchar(30) DEFAULT NULL,
  `qrheaderfontcolor` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_setting`
--

LOCK TABLES `common_setting` WRITE;
/*!40000 ALTER TABLE `common_setting` DISABLE KEYS */;
INSERT INTO `common_setting` VALUES
(1,'<p><span xss=removed>260 Seneca Hill Drive Toronto ON Canada</span></p>','info@rednivar.ca','+16475947037','+16475947037','assets/img/2025-05-30/b2.png','assets/img/2025-05-30/b3.png',1,'© 2025 All Right Reserved. Developed by Saffron Lites.\r\n',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `common_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency` (
  `currencyid` int(11) NOT NULL AUTO_INCREMENT,
  `currencyname` varchar(50) NOT NULL,
  `curr_icon` varchar(50) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 1 COMMENT '1=left.2=right',
  `curr_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`currencyid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES
(1,'BDT','BDT',2,83.00),
(2,'USD','$',1,1.00),
(3,'INR','R',1,0.50);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_table`
--

DROP TABLE IF EXISTS `custom_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_table` (
  `custom_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field` varchar(100) NOT NULL,
  `custom_data_type` int(11) NOT NULL,
  `custom_data` text NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  PRIMARY KEY (`custom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_table`
--

LOCK TABLES `custom_table` WRITE;
/*!40000 ALTER TABLE `custom_table` DISABLE KEYS */;
INSERT INTO `custom_table` VALUES
(52,'Chinese Cuisine',1,'coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides ','EU3APTYY'),
(54,'French Suicine',1,'coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides ','EXL9WSCL'),
(55,'Chinese Cuisine',1,'coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides ','E3Y1WJMB'),
(56,'Kitchen Lead',1,'coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides ','EBK2UPRA');
/*!40000 ALTER TABLE `custom_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_info`
--

DROP TABLE IF EXISTS `customer_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_info` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `cuntomer_no` varchar(120) NOT NULL,
  `membership_type` int(11) DEFAULT NULL COMMENT '1=bronze,2=silver,3=gold,4=platinum,5vip',
  `customer_name` varchar(150) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `customer_token` text DEFAULT NULL,
  `customer_address` varchar(250) DEFAULT NULL,
  `customer_phone` varchar(200) NOT NULL,
  `customer_picture` varchar(255) DEFAULT NULL,
  `favorite_delivery_address` varchar(200) DEFAULT NULL,
  `crdate` date DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1808 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_info`
--

LOCK TABLES `customer_info` WRITE;
/*!40000 ALTER TABLE `customer_info` DISABLE KEYS */;
INSERT INTO `customer_info` VALUES
(1,'cusL-0001',2,'Walkin','test@gmail.com',NULL,'cO_Sa2fwscE:APA91bEFDD0sbV52pZPwJEl8MEUCcHBg2wIGjKfelfbiytAj4nJlPsKf8sSupfElBq-nm36DCkjYDEoUcA7qvtzKu4vDqjutF23f6Y_0uw4L_PlJIrtl61y4s-t5OKFAmdaU9OUQTtYS','dhaka','8801717426371',NULL,'ddd',NULL,1),
(36,'cusL-0004',1,'Kabir khan','kabir@gmail.com','827ccb0eea8a706c4c34a16891f84e7b',NULL,'DDD sgfsrgrg','1732432434','assets/img/icons/2021-11-10/m.png',NULL,'2021-08-31',1),
(54,'cusL-0005',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(55,'cusL-0006',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(56,'cusL-0007',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(57,'cusL-0008',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(58,'cusL-0009',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(59,'cusL-0010',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(60,'cusL-0011',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(61,'cusL-0012',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(62,'cusL-0013',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(63,'cusL-0014',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(64,'cusL-0015',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(65,'cusL-0016',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(66,'cusL-0017',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(67,'cusL-0018',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(68,'cusL-0019',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(69,'cusL-0020',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(70,'cusL-0021',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(71,'cusL-0022',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(72,'cusL-0023',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(73,'cusL-0024',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(74,'cusL-0025',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(75,'cusL-0026',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(76,'cusL-0027',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(77,'cusL-0028',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(78,'cusL-0029',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(79,'cusL-0030',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(80,'cusL-0031',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(81,'cusL-0032',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(82,'cusL-0033',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(83,'cusL-0034',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(84,'cusL-0035',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(85,'cusL-0036',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(86,'cusL-0037',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(87,'cusL-0038',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(88,'cusL-0039',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(89,'cusL-0040',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(90,'cusL-0041',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(91,'cusL-0042',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(92,'cusL-0043',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(93,'cusL-0044',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(94,'cusL-0045',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(95,'cusL-0046',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(96,'cusL-0047',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(97,'cusL-0048',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(98,'cusL-0049',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(99,'cusL-0050',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(100,'cusL-0051',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(101,'cusL-0052',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(102,'cusL-0053',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(103,'cusL-0054',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(104,'cusL-0055',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(105,'cusL-0056',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(106,'cusL-0057',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(107,'cusL-0058',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(108,'cusL-0059',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(109,'cusL-0060',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(110,'cusL-0061',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(111,'cusL-0062',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(112,'cusL-0063',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(113,'cusL-0064',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(114,'cusL-0065',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(115,'cusL-0066',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(116,'cusL-0067',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(117,'cusL-0068',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(118,'cusL-0069',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(119,'cusL-0070',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(120,'cusL-0071',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(121,'cusL-0072',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(122,'cusL-0073',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(123,'cusL-0074',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(124,'cusL-0075',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(125,'cusL-0076',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(126,'cusL-0077',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(127,'cusL-0078',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(128,'cusL-0079',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(129,'cusL-0080',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(130,'cusL-0081',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(131,'cusL-0082',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(132,'cusL-0083',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(133,'cusL-0084',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(134,'cusL-0085',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(135,'cusL-0086',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(136,'cusL-0087',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(137,'cusL-0088',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(138,'cusL-0089',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(139,'cusL-0090',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(140,'cusL-0091',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(141,'cusL-0092',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(142,'cusL-0093',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(143,'cusL-0094',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(144,'cusL-0095',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(145,'cusL-0096',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(146,'cusL-0097',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(147,'cusL-0098',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(148,'cusL-0099',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(149,'cusL-0100',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(150,'cusL-0101',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(151,'cusL-0102',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(152,'cusL-0103',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(153,'cusL-0104',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(154,'cusL-0105',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(155,'cusL-0106',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(156,'cusL-0107',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(157,'cusL-0108',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(158,'cusL-0109',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(159,'cusL-0110',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(160,'cusL-0111',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(161,'cusL-0112',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(162,'cusL-0113',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(163,'cusL-0114',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(164,'cusL-0115',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(165,'cusL-0116',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(166,'cusL-0117',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(167,'cusL-0118',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(168,'cusL-0119',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(169,'cusL-0120',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(170,'cusL-0121',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(171,'cusL-0122',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(172,'cusL-0123',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(173,'cusL-0124',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(174,'cusL-0125',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(175,'cusL-0126',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(176,'cusL-0127',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(177,'cusL-0128',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(178,'cusL-0129',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(179,'cusL-0130',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(180,'cusL-0131',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(181,'cusL-0132',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(182,'cusL-0133',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(183,'cusL-0134',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(184,'cusL-0135',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(185,'cusL-0136',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(186,'cusL-0137',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(187,'cusL-0138',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(188,'cusL-0139',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(189,'cusL-0140',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(190,'cusL-0141',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(191,'cusL-0142',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(192,'cusL-0143',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(193,'cusL-0144',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(194,'cusL-0145',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(195,'cusL-0146',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(196,'cusL-0147',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(197,'cusL-0148',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(198,'cusL-0149',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(199,'cusL-0150',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(200,'cusL-0151',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(201,'cusL-0152',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(202,'cusL-0153',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(203,'cusL-0154',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(204,'cusL-0155',0,'-1 OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(205,'cusL-0156',0,'-1 OR 5*5=25','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(206,'cusL-0157',0,'-1\' OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(207,'cusL-0158',0,'-1\" OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(208,'cusL-0159',0,'-1\' OR 5*5=25 or \'mzm1w3q0\'=\'','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(209,'cusL-0160',0,'-1\" OR 5*5=25 or \"c3UjOLyu\"=\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(210,'cusL-0161',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(211,'cusL-0162',0,'-1 OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(212,'cusL-0163',0,'-1 OR 5*5=25','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(213,'cusL-0164',0,'-1\' OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(214,'cusL-0165',0,'-1\" OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(215,'cusL-0166',0,'-1\' OR 5*5=25 or \'Gv9ibr5j\'=\'','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(216,'cusL-0167',0,'-1\" OR 5*5=25 or \"P1hIuFYp\"=\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(217,'cusL-0168',0,'if(now()=sysdate(),sleep(15),0)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(218,'cusL-0169',0,'if(now()=sysdate(),sleep(15),0)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(219,'cusL-0170',0,'lxbfYeaa0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(220,'cusL-0171',0,'lxbfYeaa0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(221,'cusL-0172',0,'lxbfYeaa0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(222,'cusL-0173',0,'lxbfYeaa0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(223,'cusL-0174',0,'(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(224,'cusL-0175',0,'(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(225,'cusL-0176',0,'lxbfYeaa-1 waitfor delay \'0:0:15\' -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(226,'cusL-0177',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(227,'cusL-0178',0,'lxbfYeaa-1 waitfor delay \'0:0:15\' -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(228,'cusL-0179',0,'lxbfYeaa6K4TvBuW\'; waitfor delay \'0:0:15\' -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(229,'cusL-0180',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(230,'cusL-0181',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(231,'cusL-0182',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(232,'cusL-0183',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(233,'cusL-0184',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(234,'cusL-0185',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(235,'cusL-0186',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(236,'cusL-0187',0,'lxbfYeaaJjbfc7hy\'; waitfor delay \'0:0:15\' -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(237,'cusL-0188',0,'lxbfYeaaS3xqTRAZ\' OR 467=(SELECT 467 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(238,'cusL-0189',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(239,'cusL-0190',0,'lxbfYeaakPETNQnP\' OR 235=(SELECT 235 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(240,'cusL-0191',0,'lxbfYeaas5N16Vkm\') OR 841=(SELECT 841 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(241,'cusL-0192',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(242,'cusL-0193',0,'lxbfYeaaLoMI92Vw\') OR 273=(SELECT 273 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(243,'cusL-0194',0,'lxbfYeaa9mY8XMGz\')) OR 480=(SELECT 480 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(244,'cusL-0195',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(245,'cusL-0196',0,'lxbfYeaaKprXRDRT\')) OR 748=(SELECT 748 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(246,'cusL-0197',0,'lxbfYeaa\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(247,'cusL-0198',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(248,'cusL-0199',0,'lxbfYeaa\'\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(249,'cusL-0200',0,'lxbfYeaa\'\"\\\'\\\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(250,'cusL-0201',0,'@@jwl9N','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(251,'cusL-0202',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(252,'cusL-0203',0,'(select 198766*667891)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(253,'cusL-0204',0,'(select 198766*667891 from DUAL)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(254,'cusL-0205',0,'lxbfYeaa\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(255,'cusL-0206',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(256,'cusL-0207',0,'lxbfYeaa\'\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(257,'cusL-0208',0,'lxbfYeaa\'\"\\\'\\\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(258,'cusL-0209',0,'@@nX1ok','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(259,'cusL-0210',0,'(select 198766*667891)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(260,'cusL-0211',0,'(select 198766*667891 from DUAL)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(261,'cusL-0212',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(262,'cusL-0213',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(263,'cusL-0214',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(264,'cusL-0215',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(265,'cusL-0216',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(266,'cusL-0217',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(267,'cusL-0218',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(268,'cusL-0219',0,'lxbfYeaa','-1 OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(269,'cusL-0220',0,'lxbfYeaa','-1 OR 5*5=25',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(270,'cusL-0221',0,'lxbfYeaa','-1\' OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(271,'cusL-0222',0,'lxbfYeaa','-1\" OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(272,'cusL-0223',0,'lxbfYeaa','-1\' OR 5*5=25 or \'vvWNSk3z\'=\'',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(273,'cusL-0224',0,'lxbfYeaa','-1\" OR 5*5=25 or \"QzFeHwsz\"=\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(274,'cusL-0225',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(275,'cusL-0226',0,'lxbfYeaa','-1 OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(276,'cusL-0227',0,'lxbfYeaa','-1 OR 5*5=25',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(277,'cusL-0228',0,'lxbfYeaa','-1\' OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(278,'cusL-0229',0,'lxbfYeaa','-1\" OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(279,'cusL-0230',0,'lxbfYeaa','-1\' OR 5*5=25 or \'EGGafc4p\'=\'',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(280,'cusL-0231',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(281,'cusL-0232',0,'lxbfYeaa','-1\" OR 5*5=25 or \"5GTGhrQ1\"=\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(282,'cusL-0233',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(283,'cusL-0234',0,'lxbfYeaa','if(now()=sysdate(),sleep(15),0)','261af63ce5a019e151d7267903a719f2',NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(284,'cusL-0235',0,'lxbfYeaa','if(now()=sysdate(),sleep(15),0)',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(285,'cusL-0236',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(286,'cusL-0237',0,'lxbfYeaa','testing@example.com0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(287,'cusL-0238',0,'lxbfYeaa','testing@example.com0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(288,'cusL-0239',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(289,'cusL-0240',0,'lxbfYeaa','testing@example.com0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(290,'cusL-0241',0,'lxbfYeaa','testing@example.com0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(291,'cusL-0242',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(292,'cusL-0243',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(293,'cusL-0244',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(294,'cusL-0245',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(295,'cusL-0246',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(296,'cusL-0247',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(297,'cusL-0248',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(298,'cusL-0249',0,'lxbfYeaa','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(299,'cusL-0250',0,'lxbfYeaa','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(300,'cusL-0251',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(301,'cusL-0252',0,'lxbfYeaa','testing@example.com-1 waitfor delay \'0:0:15\' -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(302,'cusL-0253',0,'lxbfYeaa','testing@example.com-1 waitfor delay \'0:0:15\' -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(303,'cusL-0254',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(304,'cusL-0255',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(305,'cusL-0256',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(306,'cusL-0257',0,'lxbfYeaa','testing@example.comWN0PleXP\'; waitfor delay \'0:0:15\' -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(307,'cusL-0258',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(308,'cusL-0259',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(309,'cusL-0260',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(310,'cusL-0261',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(311,'cusL-0262',0,'lxbfYeaa','testing@example.comhwB8Sl3l\'; waitfor delay \'0:0:15\' -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(312,'cusL-0263',0,'lxbfYeaa','testing@example.comvILFrN0w\' OR 372=(SELECT 372 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(313,'cusL-0264',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(314,'cusL-0265',0,'lxbfYeaa','testing@example.comuhvFUo2H\' OR 578=(SELECT 578 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(315,'cusL-0266',0,'lxbfYeaa','testing@example.comMaAl011p\') OR 500=(SELECT 500 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(316,'cusL-0267',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(317,'cusL-0268',0,'lxbfYeaa','testing@example.comFTP1C2zB\') OR 519=(SELECT 519 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(318,'cusL-0269',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(319,'cusL-0270',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(320,'cusL-0271',0,'lxbfYeaa','testing@example.comgp3ON5sC\')) OR 274=(SELECT 274 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(321,'cusL-0272',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(322,'cusL-0273',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(323,'cusL-0274',0,'lxbfYeaa','testing@example.comtLe2AF8F\')) OR 261=(SELECT 261 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(324,'cusL-0275',0,'lxbfYeaa','testing@example.com\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(325,'cusL-0276',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(326,'cusL-0277',0,'lxbfYeaa','testing@example.com\'\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(327,'cusL-0278',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(328,'cusL-0279',0,'lxbfYeaa','testing@example.com\'\"\\\'\\\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(329,'cusL-0280',0,'lxbfYeaa','@@8ou6p',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(330,'cusL-0281',0,'lxbfYeaa','(select 198766*667891)','303e2f708bd6669a8f5b1f6bd04f002e',NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(331,'cusL-0282',0,'lxbfYeaa','(select 198766*667891 from DUAL)','7fe08d8ce1124ac95239e3fa066e7648',NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(332,'cusL-0283',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(333,'cusL-0284',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(334,'cusL-0285',0,'lxbfYeaa','testing@example.com\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(335,'cusL-0286',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(336,'cusL-0287',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(337,'cusL-0288',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(338,'cusL-0289',0,'lxbfYeaa','testing@example.com\'\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(339,'cusL-0290',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(340,'cusL-0291',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(341,'cusL-0292',0,'lxbfYeaa','testing@example.com\'\"\\\'\\\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(342,'cusL-0293',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(343,'cusL-0294',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(344,'cusL-0295',0,'lxbfYeaa','@@Xv27C',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(345,'cusL-0296',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(346,'cusL-0297',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(347,'cusL-0298',0,'lxbfYeaa','(select 198766*667891)',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(348,'cusL-0299',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(349,'cusL-0300',0,'lxbfYeaa','(select 198766*667891 from DUAL)',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(350,'cusL-0301',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(351,'cusL-0302',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(352,'cusL-0303',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(353,'cusL-0304',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(354,'cusL-0305',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(355,'cusL-0306',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(356,'cusL-0307',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(357,'cusL-0308',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(358,'cusL-0309',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(359,'cusL-0310',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(360,'cusL-0311',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(361,'cusL-0312',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(362,'cusL-0313',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(363,'cusL-0314',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(364,'cusL-0315',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(365,'cusL-0316',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(366,'cusL-0317',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(367,'cusL-0318',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(368,'cusL-0319',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(369,'cusL-0320',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(370,'cusL-0321',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(371,'cusL-0322',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(372,'cusL-0323',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(373,'cusL-0324',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(374,'cusL-0325',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(375,'cusL-0326',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(376,'cusL-0327',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(377,'cusL-0328',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(378,'cusL-0329',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(379,'cusL-0330',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(380,'cusL-0331',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(381,'cusL-0332',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(382,'cusL-0333',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(383,'cusL-0334',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(384,'cusL-0335',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(385,'cusL-0336',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(386,'cusL-0337',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(387,'cusL-0338',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(388,'cusL-0339',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(389,'cusL-0340',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(390,'cusL-0341',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(391,'cusL-0342',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(392,'cusL-0343',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(393,'cusL-0344',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(394,'cusL-0345',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(395,'cusL-0346',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(396,'cusL-0347',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(397,'cusL-0348',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(398,'cusL-0349',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(399,'cusL-0350',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(400,'cusL-0351',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(401,'cusL-0352',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(402,'cusL-0353',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(403,'cusL-0354',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(404,'cusL-0355',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(405,'cusL-0356',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(406,'cusL-0357',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(407,'cusL-0358',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(408,'cusL-0359',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(409,'cusL-0360',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(410,'cusL-0361',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(411,'cusL-0362',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(412,'cusL-0363',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(413,'cusL-0364',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(414,'cusL-0365',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(415,'cusL-0366',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(416,'cusL-0367',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(417,'cusL-0368',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(418,'cusL-0369',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(419,'cusL-0370',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(420,'cusL-0371',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(421,'cusL-0372',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(422,'cusL-0373',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(423,'cusL-0374',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(424,'cusL-0375',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(425,'cusL-0376',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(426,'cusL-0377',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(427,'cusL-0378',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(428,'cusL-0379',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(429,'cusL-0380',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(430,'cusL-0381',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(431,'cusL-0382',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(432,'cusL-0383',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(433,'cusL-0384',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(434,'cusL-0385',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(435,'cusL-0386',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(436,'cusL-0387',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(437,'cusL-0388',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(438,'cusL-0389',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(439,'cusL-0390',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(440,'cusL-0391',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(441,'cusL-0392',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(442,'cusL-0393',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(443,'cusL-0394',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(444,'cusL-0395',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(445,'cusL-0396',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(446,'cusL-0397',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(447,'cusL-0398',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(448,'cusL-0399',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(449,'cusL-0400',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(450,'cusL-0401',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(451,'cusL-0402',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(452,'cusL-0403',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(453,'cusL-0404',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(454,'cusL-0405',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(455,'cusL-0406',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(456,'cusL-0407',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(457,'cusL-0408',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(458,'cusL-0409',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(459,'cusL-0410',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(460,'cusL-0411',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(461,'cusL-0412',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(462,'cusL-0413',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(463,'cusL-0414',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(464,'cusL-0415',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(465,'cusL-0416',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(466,'cusL-0417',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(467,'cusL-0418',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(468,'cusL-0419',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(469,'cusL-0420',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(470,'cusL-0421',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(471,'cusL-0422',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(472,'cusL-0423',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(473,'cusL-0424',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(474,'cusL-0425',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(475,'cusL-0426',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(476,'cusL-0427',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(477,'cusL-0428',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(478,'cusL-0429',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(479,'cusL-0430',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(480,'cusL-0431',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(481,'cusL-0432',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(482,'cusL-0433',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(483,'cusL-0434',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(484,'cusL-0435',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(485,'cusL-0436',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(486,'cusL-0437',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(487,'cusL-0438',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(488,'cusL-0439',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(489,'cusL-0440',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(490,'cusL-0441',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(491,'cusL-0442',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(492,'cusL-0443',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(493,'cusL-0444',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(494,'cusL-0445',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(495,'cusL-0446',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(496,'cusL-0447',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(497,'cusL-0448',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(498,'cusL-0449',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(499,'cusL-0450',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(500,'cusL-0451',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(501,'cusL-0452',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(502,'cusL-0453',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(503,'cusL-0454',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(504,'cusL-0455',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(505,'cusL-0456',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(506,'cusL-0457',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(507,'cusL-0458',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(508,'cusL-0459',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(509,'cusL-0460',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(510,'cusL-0461',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(511,'cusL-0462',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(512,'cusL-0463',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(513,'cusL-0464',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(514,'cusL-0465',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(515,'cusL-0466',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(516,'cusL-0467',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(517,'cusL-0468',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(518,'cusL-0469',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(519,'cusL-0470',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(520,'cusL-0471',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(521,'cusL-0472',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(522,'cusL-0473',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(523,'cusL-0474',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(524,'cusL-0475',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(525,'cusL-0476',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(526,'cusL-0477',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(527,'cusL-0478',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(528,'cusL-0479',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(529,'cusL-0480',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(530,'cusL-0481',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(531,'cusL-0482',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(532,'cusL-0483',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(533,'cusL-0484',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(534,'cusL-0485',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(535,'cusL-0486',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(536,'cusL-0487',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(537,'cusL-0488',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(538,'cusL-0489',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(539,'cusL-0490',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(540,'cusL-0491',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(541,'cusL-0492',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(542,'cusL-0493',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(543,'cusL-0494',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(544,'cusL-0495',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(545,'cusL-0496',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(546,'cusL-0497',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(547,'cusL-0498',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(548,'cusL-0499',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(549,'cusL-0500',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(550,'cusL-0501',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(551,'cusL-0502',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(552,'cusL-0503',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(553,'cusL-0504',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(554,'cusL-0505',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(555,'cusL-0506',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(556,'cusL-0507',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(557,'cusL-0508',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(558,'cusL-0509',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(559,'cusL-0510',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(560,'cusL-0511',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(561,'cusL-0512',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(562,'cusL-0513',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(563,'cusL-0514',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(564,'cusL-0515',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(565,'cusL-0516',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(566,'cusL-0517',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(567,'cusL-0518',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(568,'cusL-0519',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(569,'cusL-0520',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(570,'cusL-0521',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(571,'cusL-0522',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(572,'cusL-0523',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(573,'cusL-0524',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(574,'cusL-0525',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(575,'cusL-0526',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(576,'cusL-0527',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(577,'cusL-0528',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(578,'cusL-0529',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(579,'cusL-0530',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(580,'cusL-0531',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(581,'cusL-0532',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(582,'cusL-0533',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(583,'cusL-0534',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(584,'cusL-0535',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(585,'cusL-0536',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(586,'cusL-0537',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(587,'cusL-0538',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(588,'cusL-0539',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(589,'cusL-0540',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(590,'cusL-0541',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(591,'cusL-0542',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(592,'cusL-0543',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(593,'cusL-0544',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(594,'cusL-0545',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(595,'cusL-0546',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(596,'cusL-0547',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(597,'cusL-0548',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(598,'cusL-0549',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(599,'cusL-0550',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(600,'cusL-0551',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(601,'cusL-0552',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(602,'cusL-0553',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(603,'cusL-0554',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(604,'cusL-0555',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(605,'cusL-0556',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(606,'cusL-0557',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(607,'cusL-0558',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(608,'cusL-0559',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(609,'cusL-0560',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(610,'cusL-0561',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(611,'cusL-0562',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(612,'cusL-0563',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(613,'cusL-0564',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(614,'cusL-0565',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(615,'cusL-0566',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(616,'cusL-0567',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(617,'cusL-0568',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1 OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(618,'cusL-0569',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1 OR 5*5=25',NULL,'t','2025-06-01',1),
(619,'cusL-0570',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(620,'cusL-0571',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\' OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(621,'cusL-0572',0,'-1 OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(622,'cusL-0573',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(623,'cusL-0574',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\" OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(624,'cusL-0575',0,'-1 OR 5*5=25','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(625,'cusL-0576',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\' OR 5*5=25 or \'mYTo1ENn\'=\'',NULL,'t','2025-06-01',1),
(626,'cusL-0577',0,'-1\' OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(627,'cusL-0578',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\" OR 5*5=25 or \"NrGTw3nc\"=\"',NULL,'t','2025-06-01',1),
(628,'cusL-0579',0,'-1\" OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(629,'cusL-0580',0,'-1\' OR 5*5=25 or \'g6wueZKu\'=\'','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(630,'cusL-0581',0,'-1\" OR 5*5=25 or \"CWu2bPBy\"=\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(631,'cusL-0582',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(632,'cusL-0583',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(633,'cusL-0584',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1 OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(634,'cusL-0585',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(635,'cusL-0586',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1 OR 5*5=25',NULL,'t','2025-06-01',1),
(636,'cusL-0587',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\' OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(637,'cusL-0588',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(638,'cusL-0589',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\" OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(639,'cusL-0590',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\' OR 5*5=25 or \'Hetaz2nb\'=\'',NULL,'t','2025-06-01',1),
(640,'cusL-0591',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\" OR 5*5=25 or \"XiaNEgZc\"=\"',NULL,'t','2025-06-01',1),
(641,'cusL-0592',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','if(now()=sysdate(),sleep(15),0)',NULL,'t','2025-06-01',1),
(642,'cusL-0593',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(643,'cusL-0594',0,'if(now()=sysdate(),sleep(15),0)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(644,'cusL-0595',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(645,'cusL-0596',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(646,'cusL-0597',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(647,'cusL-0598',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(648,'cusL-0599',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(649,'cusL-0600',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(650,'cusL-0601',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(651,'cusL-0602',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(652,'cusL-0603',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(653,'cusL-0604',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(654,'cusL-0605',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(655,'cusL-0606',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(656,'cusL-0607',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(657,'cusL-0608',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(658,'cusL-0609',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(659,'cusL-0610',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(660,'cusL-0611',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(661,'cusL-0612',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(662,'cusL-0613',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(663,'cusL-0614',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(664,'cusL-0615',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(665,'cusL-0616',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(666,'cusL-0617',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(667,'cusL-0618',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(668,'cusL-0619',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(669,'cusL-0620',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(670,'cusL-0621',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(671,'cusL-0622',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(672,'cusL-0623',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(673,'cusL-0624',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(674,'cusL-0625',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(675,'cusL-0626',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(676,'cusL-0627',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(677,'cusL-0628',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(678,'cusL-0629',0,'-1 OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(679,'cusL-0630',0,'-1 OR 5*5=25','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(680,'cusL-0631',0,'-1\' OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(681,'cusL-0632',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(682,'cusL-0633',0,'-1\" OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(683,'cusL-0634',0,'-1 OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(684,'cusL-0635',0,'-1\' OR 5*5=25 or \'YowmrXVC\'=\'','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(685,'cusL-0636',0,'-1 OR 5*5=25','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(686,'cusL-0637',0,'-1\" OR 5*5=25 or \"n0FCWKcW\"=\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(687,'cusL-0638',0,'-1\' OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(688,'cusL-0639',0,'-1\" OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(689,'cusL-0640',0,'-1\' OR 5*5=25 or \'MQzQm9bg\'=\'','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(690,'cusL-0641',0,'-1\" OR 5*5=25 or \"nyMtUJdg\"=\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(691,'cusL-0642',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(692,'cusL-0643',0,'-1 OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(693,'cusL-0644',0,'-1 OR 5*5=25','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(694,'cusL-0645',0,'-1\' OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(695,'cusL-0646',0,'-1\" OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(696,'cusL-0647',0,'-1\' OR 5*5=25 or \'TORRZVdx\'=\'','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(697,'cusL-0648',0,'-1\" OR 5*5=25 or \"s7BUmTdx\"=\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(698,'cusL-0649',0,'if(now()=sysdate(),sleep(15),0)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(699,'cusL-0650',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','if(now()=sysdate(),sleep(15),0)',NULL,'t','2025-06-01',1),
(700,'cusL-0650',0,'if(now()=sysdate(),sleep(15),0)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(701,'cusL-0651',0,'if(now()=sysdate(),sleep(15),0)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(702,'cusL-0652',0,'lxbfYeaa0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(703,'cusL-0653',0,'lxbfYeaa0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(704,'cusL-0654',0,'lxbfYeaa0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(705,'cusL-0655',0,'lxbfYeaa0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(706,'cusL-0656',0,'lxbfYeaa0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(707,'cusL-0657',0,'lxbfYeaa0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(708,'cusL-0658',0,'(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(709,'cusL-0659',0,'(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(710,'cusL-0660',0,'(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(711,'cusL-0661',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43290\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z',NULL,'t','2025-06-01',1),
(712,'cusL-0662',0,'lxbfYeaa0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(713,'cusL-0663',0,'lxbfYeaa-1 waitfor delay \'0:0:15\' -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(714,'cusL-0664',0,'lxbfYeaa-1 waitfor delay \'0:0:15\' -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(715,'cusL-0665',0,'lxbfYeaa-1 waitfor delay \'0:0:15\' -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(716,'cusL-0666',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','if(now()=sysdate(),sleep(6),0)',NULL,'t','2025-06-01',1),
(717,'cusL-0667',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43290\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z',NULL,'t','2025-06-01',1),
(718,'cusL-0668',0,'lxbfYeaa0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(719,'cusL-0669',0,'lxbfYeaaZDNcieEV\'; waitfor delay \'0:0:15\' -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(720,'cusL-0670',0,'lxbfYeaaoEfL2fEu\'; waitfor delay \'0:0:15\' -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(721,'cusL-0671',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43290\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z',NULL,'t','2025-06-01',1),
(722,'cusL-0672',0,'lxbfYeaacSfiYD5R\'; waitfor delay \'0:0:15\' -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(723,'cusL-0673',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43290\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z',NULL,'t','2025-06-01',1),
(724,'cusL-0674',0,'lxbfYeaalHcH8Sc1\' OR 585=(SELECT 585 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(725,'cusL-0675',0,'(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(726,'cusL-0676',0,'lxbfYeaafIGgQ7Zq\' OR 979=(SELECT 979 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(727,'cusL-0677',0,'lxbfYeaav9irw4GZ\' OR 88=(SELECT 88 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(728,'cusL-0678',0,'lxbfYeaaIe8auzgI\') OR 387=(SELECT 387 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(729,'cusL-0679',0,'lxbfYeaaGYW3LZ8d\') OR 271=(SELECT 271 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(730,'cusL-0680',0,'lxbfYeaaALs8pIyJ\') OR 868=(SELECT 868 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(731,'cusL-0681',0,'lxbfYeaaHzlSeYBs\')) OR 259=(SELECT 259 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(732,'cusL-0682',0,'lxbfYeaaXabj0IWY\')) OR 212=(SELECT 212 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(733,'cusL-0683',0,'lxbfYeaaoCVKG3KX\')) OR 416=(SELECT 416 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(734,'cusL-0684',0,'lxbfYeaa\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(735,'cusL-0685',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(736,'cusL-0686',0,'lxbfYeaa\'\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(737,'cusL-0687',0,'lxbfYeaa\'\"\\\'\\\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(738,'cusL-0688',0,'@@Ehtf7','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(739,'cusL-0689',0,'(select 198766*667891)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(740,'cusL-0690',0,'lxbfYeaa\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(741,'cusL-0691',0,'(select 198766*667891 from DUAL)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(742,'cusL-0692',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(743,'cusL-0693',0,'lxbfYeaa\'\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(744,'cusL-0694',0,'lxbfYeaa\'\"\\\'\\\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(745,'cusL-0695',0,'@@UL080','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(746,'cusL-0696',0,'(select 198766*667891)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(747,'cusL-0697',0,'(select 198766*667891 from DUAL)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(748,'cusL-0698',0,'lxbfYeaa\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(749,'cusL-0699',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(750,'cusL-0700',0,'lxbfYeaa\'\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(751,'cusL-0701',0,'lxbfYeaa\'\"\\\'\\\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(752,'cusL-0702',0,'@@eBYOX','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(753,'cusL-0703',0,'(select 198766*667891)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(754,'cusL-0704',0,'(select 198766*667891 from DUAL)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(755,'cusL-0705',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(756,'cusL-0706',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(757,'cusL-0707',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43290\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z',NULL,'t','2025-06-01',1),
(758,'cusL-0708',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(759,'cusL-0709',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(760,'cusL-0710',0,'lxbfYeaa','-1 OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(761,'cusL-0711',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/',NULL,'t','2025-06-01',1),
(762,'cusL-0712',0,'lxbfYeaa','-1 OR 5*5=25',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(763,'cusL-0713',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(764,'cusL-0714',0,'lxbfYeaa','-1\' OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(765,'cusL-0715',0,'lxbfYeaa','-1 OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(766,'cusL-0716',0,'lxbfYeaa','-1\" OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(767,'cusL-0717',0,'lxbfYeaa','-1 OR 5*5=25',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(768,'cusL-0718',0,'lxbfYeaa','-1\' OR 5*5=25 or \'OqF1krMR\'=\'',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(769,'cusL-0719',0,'lxbfYeaa','-1\' OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(770,'cusL-0720',0,'lxbfYeaa','-1\" OR 5*5=25 or \"xI0ScWYu\"=\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(771,'cusL-0721',0,'lxbfYeaa','-1\" OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(772,'cusL-0722',0,'lxbfYeaa','-1\' OR 5*5=25 or \'MOcuoIeg\'=\'',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(773,'cusL-0723',0,'lxbfYeaa-1 waitfor delay \'0:0:15\' -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(774,'cusL-0724',0,'lxbfYeaa','-1\" OR 5*5=25 or \"EbJjky1j\"=\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(775,'cusL-0725',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(776,'cusL-0726',0,'lxbfYeaa','-1 OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(777,'cusL-0727',0,'lxbfYeaa','-1 OR 5*5=25',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(778,'cusL-0728',0,'lxbfYeaa','-1\' OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(779,'cusL-0729',0,'lxbfYeaa','-1\" OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(780,'cusL-0730',0,'lxbfYeaa','-1\' OR 5*5=25 or \'WJZwZDk2\'=\'',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(781,'cusL-0731',0,'lxbfYeaa','-1\" OR 5*5=25 or \"SF4Pesoq\"=\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(782,'cusL-0732',0,'lxbfYeaa','if(now()=sysdate(),sleep(15),0)',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(783,'cusL-0733',0,'lxbfYeaa','if(now()=sysdate(),sleep(15),0)',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(784,'cusL-0734',0,'lxbfYeaa','if(now()=sysdate(),sleep(15),0)',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(785,'cusL-0735',0,'lxbfYeaa','testing@example.com0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(786,'cusL-0736',0,'lxbfYeaa','testing@example.com0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(787,'cusL-0737',0,'lxbfYeaa','testing@example.com0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(788,'cusL-0738',0,'lxbfYeaa','testing@example.com0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(789,'cusL-0739',0,'lxbfYeaa','testing@example.com0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(790,'cusL-0740',0,'lxbfYeaa','testing@example.com0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(791,'cusL-0741',0,'lxbfYeaa','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(792,'cusL-0742',0,'lxbfYeaa','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(793,'cusL-0743',0,'lxbfYeaa','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(794,'cusL-0744',0,'lxbfYeaa','testing@example.com-1 waitfor delay \'0:0:15\' -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(795,'cusL-0745',0,'lxbfYeaa','testing@example.com-1 waitfor delay \'0:0:15\' -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(796,'cusL-0746',0,'lxbfYeaa','testing@example.com-1 waitfor delay \'0:0:15\' -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(797,'cusL-0747',0,'lxbfYeaa','testing@example.comjuYd4d9D\'; waitfor delay \'0:0:15\' -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(798,'cusL-0748',0,'lxbfYeaa','testing@example.comkaVZl8C1\'; waitfor delay \'0:0:15\' -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(799,'cusL-0749',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/',NULL,'t','2025-06-01',1),
(800,'cusL-0750',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329-1 waitfor delay \'0:0:15\' -- ',NULL,'t','2025-06-01',1),
(801,'cusL-0751',0,'lxbfYeaa','testing@example.comk10f7yv5\'; waitfor delay \'0:0:15\' -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(802,'cusL-0752',0,'lxbfYeaaUa4hiON5\'; waitfor delay \'0:0:15\' -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(803,'cusL-0753',0,'lxbfYeaa','testing@example.comvp3DWIlC\' OR 708=(SELECT 708 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(804,'cusL-0754',0,'lxbfYeaa','testing@example.comvArd8LAT\' OR 159=(SELECT 159 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(805,'cusL-0755',0,'lxbfYeaa','testing@example.comvAuPGZwR\' OR 668=(SELECT 668 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(806,'cusL-0756',0,'lxbfYeaa','testing@example.com4Nyb26yw\') OR 583=(SELECT 583 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(807,'cusL-0757',0,'lxbfYeaa','testing@example.come7SqJny7\') OR 364=(SELECT 364 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(808,'cusL-0758',0,'lxbfYeaa','testing@example.comV5XkMBbd\') OR 472=(SELECT 472 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(809,'cusL-0759',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329-1 waitfor delay \'0:0:15\' -- ',NULL,'t','2025-06-01',1),
(810,'cusL-0760',0,'lxbfYeaa','testing@example.comlVcPRWKW\')) OR 451=(SELECT 451 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(811,'cusL-0761',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329U6rOamrl\'; waitfor delay \'0:0:15\' -- ',NULL,'t','2025-06-01',1),
(812,'cusL-0762',0,'lxbfYeaa','testing@example.comQ5SvoRhO\')) OR 255=(SELECT 255 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(813,'cusL-0763',0,'lxbfYeaa5eojc8Oq\' OR 213=(SELECT 213 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(814,'cusL-0764',0,'lxbfYeaa','testing@example.comJ7VAm1h4\')) OR 536=(SELECT 536 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(815,'cusL-0765',0,'lxbfYeaa','testing@example.com\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(816,'cusL-0766',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(817,'cusL-0767',0,'lxbfYeaa','testing@example.com\'\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(818,'cusL-0768',0,'lxbfYeaa','testing@example.com\'\"\\\'\\\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(819,'cusL-0769',0,'lxbfYeaa','@@g7oHR',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(820,'cusL-0770',0,'lxbfYeaa','testing@example.com\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(821,'cusL-0771',0,'lxbfYeaa','(select 198766*667891)',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(822,'cusL-0772',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(823,'cusL-0773',0,'lxbfYeaa','(select 198766*667891 from DUAL)',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(824,'cusL-0774',0,'lxbfYeaa','testing@example.com\'\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(825,'cusL-0775',0,'lxbfYeaa','testing@example.com\'\"\\\'\\\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(826,'cusL-0776',0,'lxbfYeaa','@@7zyfj',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(827,'cusL-0777',0,'lxbfYeaa','(select 198766*667891)',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(828,'cusL-0778',0,'lxbfYeaa','(select 198766*667891 from DUAL)',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(829,'cusL-0779',0,'lxbfYeaa','testing@example.com\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(830,'cusL-0780',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(831,'cusL-0781',0,'lxbfYeaa','testing@example.com\'\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(832,'cusL-0782',0,'lxbfYeaa','testing@example.com\'\"\\\'\\\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(833,'cusL-0783',0,'lxbfYeaa','@@Wt5Yw',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(834,'cusL-0784',0,'lxbfYeaa','(select 198766*667891)',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(835,'cusL-0785',0,'lxbfYeaa','(select 198766*667891 from DUAL)',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(836,'cusL-0786',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329s8oDVtEB\'; waitfor delay \'0:0:15\' -- ',NULL,'t','2025-06-01',1),
(837,'cusL-0787',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(838,'cusL-0788',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(839,'cusL-0789',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43298MiVUdZd\' OR 570=(SELECT 570 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(840,'cusL-0790',0,'lxbfYeaaEJWtWeKO\') OR 279=(SELECT 279 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(841,'cusL-0791',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(842,'cusL-0792',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(843,'cusL-0793',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(844,'cusL-0794',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(845,'cusL-0795',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(846,'cusL-0796',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(847,'cusL-0797',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(848,'cusL-0798',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(849,'cusL-0799',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(850,'cusL-0800',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(851,'cusL-0801',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(852,'cusL-0802',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(853,'cusL-0803',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(854,'cusL-0804',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(855,'cusL-0805',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(856,'cusL-0806',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(857,'cusL-0807',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329ie3DmLvS\' OR 695=(SELECT 695 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(858,'cusL-0808',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(859,'cusL-0809',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(860,'cusL-0810',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(861,'cusL-0811',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329cKi5T07F\') OR 957=(SELECT 957 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(862,'cusL-0812',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(863,'cusL-0813',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(864,'cusL-0814',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(865,'cusL-0815',0,'lxbfYeaaWGxb3aQo\')) OR 29=(SELECT 29 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(866,'cusL-0816',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(867,'cusL-0817',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(868,'cusL-0818',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(869,'cusL-0819',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(870,'cusL-0820',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(871,'cusL-0821',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(872,'cusL-0822',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(873,'cusL-0823',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(874,'cusL-0824',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329FNDwe699\') OR 409=(SELECT 409 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(875,'cusL-0825',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329Fvxt7iNH\')) OR 428=(SELECT 428 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(876,'cusL-0826',0,'lxbfYeaa\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(877,'cusL-0827',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(878,'cusL-0828',0,'lxbfYeaa\'\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(879,'cusL-0829',0,'lxbfYeaa\'\"\\\'\\\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(880,'cusL-0830',0,'@@9dLb2','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(881,'cusL-0831',0,'(select 198766*667891)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(882,'cusL-0832',0,'(select 198766*667891 from DUAL)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(883,'cusL-0833',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(884,'cusL-0834',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(885,'cusL-0835',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(886,'cusL-0836',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(887,'cusL-0837',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(888,'cusL-0838',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(889,'cusL-0839',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(890,'cusL-0840',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(891,'cusL-0841',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(892,'cusL-0842',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(893,'cusL-0843',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(894,'cusL-0844',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(895,'cusL-0845',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(896,'cusL-0846',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(897,'cusL-0847',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(898,'cusL-0848',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(899,'cusL-0849',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(900,'cusL-0850',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(901,'cusL-0851',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(902,'cusL-0852',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(903,'cusL-0853',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(904,'cusL-0854',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329HyqCyibp\')) OR 312=(SELECT 312 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(905,'cusL-0855',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',NULL,'t','2025-06-01',1),
(906,'cusL-0856',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(907,'cusL-0857',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'\"',NULL,'t','2025-06-01',1),
(908,'cusL-0858',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'\"\\\'\\\"',NULL,'t','2025-06-01',1),
(909,'cusL-0859',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','@@QbfAE',NULL,'t','2025-06-01',1),
(910,'cusL-0860',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select 198766*667891)',NULL,'t','2025-06-01',1),
(911,'cusL-0861',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select 198766*667891 from DUAL)',NULL,'t','2025-06-01',1),
(912,'cusL-0862',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(913,'cusL-0863',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(914,'cusL-0864',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(915,'cusL-0865',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(916,'cusL-0866',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(917,'cusL-0867',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(918,'cusL-0868',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(919,'cusL-0869',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(920,'cusL-0870',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(921,'cusL-0871',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',NULL,'t','2025-06-01',1),
(922,'cusL-0872',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(923,'cusL-0873',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'\"',NULL,'t','2025-06-01',1),
(924,'cusL-0874',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'\"\\\'\\\"',NULL,'t','2025-06-01',1),
(925,'cusL-0875',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','@@iv7Ti',NULL,'t','2025-06-01',1),
(926,'cusL-0876',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select 198766*667891)',NULL,'t','2025-06-01',1),
(927,'cusL-0877',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select 198766*667891 from DUAL)',NULL,'t','2025-06-01',1),
(928,'cusL-0878',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(929,'cusL-0879',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(930,'cusL-0880',0,'lxbfYeaa','-1 OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(931,'cusL-0881',0,'lxbfYeaa','-1 OR 5*5=25',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(932,'cusL-0882',0,'lxbfYeaa','-1\' OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(933,'cusL-0883',0,'lxbfYeaa','-1\" OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(934,'cusL-0884',0,'lxbfYeaa','-1\' OR 5*5=25 or \'CYWzYKMq\'=\'',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(935,'cusL-0885',0,'lxbfYeaa','-1\" OR 5*5=25 or \"H62zNRCf\"=\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(936,'cusL-0886',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(937,'cusL-0887',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(938,'cusL-0888',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(939,'cusL-0889',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(940,'cusL-0890',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(941,'cusL-0891',0,'lxbfYeaa','if(now()=sysdate(),sleep(15),0)',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(942,'cusL-0892',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(943,'cusL-0893',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(944,'cusL-0894',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(945,'cusL-0895',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(946,'cusL-0896',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(947,'cusL-0897',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(948,'cusL-0898',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(949,'cusL-0899',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(950,'cusL-0900',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(951,'cusL-0901',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(952,'cusL-0902',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(953,'cusL-0903',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(954,'cusL-0904',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(955,'cusL-0905',0,'lxbfYeaa','testing@example.com0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(956,'cusL-0906',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(957,'cusL-0907',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(958,'cusL-0908',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(959,'cusL-0909',0,'lxbfYeaa','testing@example.com0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(960,'cusL-0910',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(961,'cusL-0911',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(962,'cusL-0912',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(963,'cusL-0913',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(964,'cusL-0914',0,'lxbfYeaa','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(965,'cusL-0915',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(966,'cusL-0916',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(967,'cusL-0917',0,'lxbfYeaa','testing@example.com-1 waitfor delay \'0:0:15\' -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(968,'cusL-0918',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(969,'cusL-0919',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(970,'cusL-0920',0,'lxbfYeaa','testing@example.comQjeTxu9k\'; waitfor delay \'0:0:15\' -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(971,'cusL-0921',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(972,'cusL-0922',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(973,'cusL-0923',0,'lxbfYeaa','testing@example.comqyOKUtDa\' OR 512=(SELECT 512 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(974,'cusL-0924',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(975,'cusL-0925',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(976,'cusL-0926',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(977,'cusL-0927',0,'lxbfYeaa','testing@example.comikqnvWln\') OR 288=(SELECT 288 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(978,'cusL-0928',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(979,'cusL-0929',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(980,'cusL-0930',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(981,'cusL-0931',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(982,'cusL-0932',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(983,'cusL-0933',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(984,'cusL-0934',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(985,'cusL-0935',0,'lxbfYeaa','testing@example.comcWfbeY9y\')) OR 704=(SELECT 704 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(986,'cusL-0936',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(987,'cusL-0937',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(988,'cusL-0938',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(989,'cusL-0939',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(990,'cusL-0940',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(991,'cusL-0941',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(992,'cusL-0942',0,'lxbfYeaa','testing@example.com\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(993,'cusL-0943',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(994,'cusL-0944',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(995,'cusL-0945',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(996,'cusL-0946',0,'lxbfYeaa','testing@example.com\'\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(997,'cusL-0947',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(998,'cusL-0948',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(999,'cusL-0949',0,'lxbfYeaa','testing@example.com\'\"\\\'\\\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1000,'cusL-0950',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1001,'cusL-0951',0,'lxbfYeaa','@@KxcIk',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1002,'cusL-0952',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1003,'cusL-0953',0,'lxbfYeaa','(select 198766*667891)',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1004,'cusL-0954',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1005,'cusL-0955',0,'lxbfYeaa','(select 198766*667891 from DUAL)',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1006,'cusL-0956',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1007,'cusL-0957',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1008,'cusL-0958',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1009,'cusL-0959',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1010,'cusL-0960',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1011,'cusL-0961',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1012,'cusL-0962',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1013,'cusL-0963',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1014,'cusL-0964',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1015,'cusL-0965',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1016,'cusL-0966',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1017,'cusL-0967',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1018,'cusL-0968',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1019,'cusL-0969',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1020,'cusL-0970',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1021,'cusL-0971',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1 OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(1022,'cusL-0972',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1 OR 5*5=25',NULL,'t','2025-06-01',1),
(1023,'cusL-0973',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\' OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(1024,'cusL-0974',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\" OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(1025,'cusL-0975',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\' OR 5*5=25 or \'pqqpe81x\'=\'',NULL,'t','2025-06-01',1),
(1026,'cusL-0976',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\" OR 5*5=25 or \"pHgb681G\"=\"',NULL,'t','2025-06-01',1),
(1027,'cusL-0977',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1028,'cusL-0978',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1029,'cusL-0979',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1 OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(1030,'cusL-0980',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1 OR 5*5=25',NULL,'t','2025-06-01',1),
(1031,'cusL-0981',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\' OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(1032,'cusL-0982',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\" OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(1033,'cusL-0983',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\' OR 5*5=25 or \'app1VwiQ\'=\'',NULL,'t','2025-06-01',1),
(1034,'cusL-0984',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\" OR 5*5=25 or \"qUaIcjMU\"=\"',NULL,'t','2025-06-01',1),
(1035,'cusL-0985',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1036,'cusL-0986',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1037,'cusL-0987',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1038,'cusL-0988',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1039,'cusL-0989',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1040,'cusL-0990',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1041,'cusL-0991',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1042,'cusL-0992',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1043,'cusL-0993',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1044,'cusL-0994',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1045,'cusL-0995',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1046,'cusL-0996',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1047,'cusL-0997',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1048,'cusL-0998',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1049,'cusL-0999',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1050,'cusL-1000',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1051,'cusL-1001',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1052,'cusL-1002',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1053,'cusL-1003',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1054,'cusL-1004',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1055,'cusL-1005',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1056,'cusL-1006',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1057,'cusL-1007',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1058,'cusL-1008',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1059,'cusL-1009',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1060,'cusL-1010',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1061,'cusL-1011',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1062,'cusL-1012',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1063,'cusL-1013',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1064,'cusL-1014',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1065,'cusL-1015',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1066,'cusL-1016',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1067,'cusL-1017',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1068,'cusL-1018',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1069,'cusL-1019',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1070,'cusL-1020',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1071,'cusL-1021',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1072,'cusL-1022',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1073,'cusL-1023',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1074,'cusL-1024',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1075,'cusL-1025',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1076,'cusL-1026',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1077,'cusL-1027',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1078,'cusL-1028',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1079,'cusL-1029',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1080,'cusL-1030',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1081,'cusL-1031',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1082,'cusL-1032',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1083,'cusL-1033',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1084,'cusL-1034',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1085,'cusL-1035',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1086,'cusL-1036',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1087,'cusL-1037',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1088,'cusL-1038',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1089,'cusL-1039',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1090,'cusL-1040',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1091,'cusL-1041',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1 OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(1092,'cusL-1042',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1 OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(1093,'cusL-1043',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1 OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(1094,'cusL-1044',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1 OR 5*5=25',NULL,'t','2025-06-01',1),
(1095,'cusL-1045',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','if(now()=sysdate(),sleep(15),0)',NULL,'t','2025-06-01',1),
(1096,'cusL-1046',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\' OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(1097,'cusL-1047',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\" OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(1098,'cusL-1048',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\' OR 5*5=25 or \'kyC2lCjC\'=\'',NULL,'t','2025-06-01',1),
(1099,'cusL-1049',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\" OR 5*5=25 or \"ZrKf6mQQ\"=\"',NULL,'t','2025-06-01',1),
(1100,'cusL-1050',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','if(now()=sysdate(),sleep(15),0)',NULL,'t','2025-06-01',1),
(1101,'cusL-1051',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1102,'cusL-1052',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1103,'cusL-1053',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43290\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z',NULL,'t','2025-06-01',1),
(1104,'cusL-1054',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1105,'cusL-1055',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','if(now()=sysdate(),sleep(15),0)',NULL,'t','2025-06-01',1),
(1106,'cusL-1056',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1107,'cusL-1057',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43290\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z',NULL,'t','2025-06-01',1),
(1108,'cusL-1058',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43290\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z',NULL,'t','2025-06-01',1),
(1109,'cusL-1059',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1110,'cusL-1060',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43290\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z',NULL,'t','2025-06-01',1),
(1111,'cusL-1061',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1112,'cusL-1062',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43290\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z',NULL,'t','2025-06-01',1),
(1113,'cusL-1063',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1114,'cusL-1064',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1115,'cusL-1065',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1116,'cusL-1066',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1117,'cusL-1067',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1118,'cusL-1068',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1119,'cusL-1069',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1120,'cusL-1070',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1121,'cusL-1071',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1122,'cusL-1072',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1123,'cusL-1073',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1124,'cusL-1074',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1125,'cusL-1075',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/',NULL,'t','2025-06-01',1),
(1126,'cusL-1076',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1127,'cusL-1077',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43290\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z',NULL,'t','2025-06-01',1),
(1128,'cusL-1078',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1129,'cusL-1079',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1 OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(1130,'cusL-1080',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1 OR 5*5=25',NULL,'t','2025-06-01',1),
(1131,'cusL-1081',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\' OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(1132,'cusL-1082',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\" OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(1133,'cusL-1083',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/',NULL,'t','2025-06-01',1),
(1134,'cusL-1084',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\' OR 5*5=25 or \'gNx287FW\'=\'',NULL,'t','2025-06-01',1),
(1135,'cusL-1085',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\" OR 5*5=25 or \"tjIuqbei\"=\"',NULL,'t','2025-06-01',1),
(1136,'cusL-1086',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1137,'cusL-1087',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','if(now()=sysdate(),sleep(15),0)',NULL,'t','2025-06-01',1),
(1138,'cusL-1088',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1139,'cusL-1089',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43290\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z',NULL,'t','2025-06-01',1),
(1140,'cusL-1090',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1141,'cusL-1091',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43290\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z',NULL,'t','2025-06-01',1),
(1142,'cusL-1092',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1143,'cusL-1093',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329-1 waitfor delay \'0:0:15\' -- ',NULL,'t','2025-06-01',1),
(1144,'cusL-1094',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/',NULL,'t','2025-06-01',1),
(1145,'cusL-1095',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/',NULL,'t','2025-06-01',1),
(1146,'cusL-1096',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1147,'cusL-1097',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1148,'cusL-1098',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1149,'cusL-1099',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1150,'cusL-1100',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1151,'cusL-1101',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1152,'cusL-1102',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1153,'cusL-1103',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329-1 waitfor delay \'0:0:15\' -- ',NULL,'t','2025-06-01',1),
(1154,'cusL-1104',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329zGnKzHnW\'; waitfor delay \'0:0:15\' -- ',NULL,'t','2025-06-01',1),
(1155,'cusL-1105',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329-1 waitfor delay \'0:0:15\' -- ',NULL,'t','2025-06-01',1),
(1156,'cusL-1106',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43292o5La4mr\' OR 599=(SELECT 599 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(1157,'cusL-1107',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43294doSQsQz\') OR 307=(SELECT 307 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(1158,'cusL-1108',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329HJGThX6J\')) OR 419=(SELECT 419 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(1159,'cusL-1109',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',NULL,'t','2025-06-01',1),
(1160,'cusL-1110',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1161,'cusL-1111',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'\"',NULL,'t','2025-06-01',1),
(1162,'cusL-1112',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'\"\\\'\\\"',NULL,'t','2025-06-01',1),
(1163,'cusL-1113',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','@@3itz8',NULL,'t','2025-06-01',1),
(1164,'cusL-1114',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select 198766*667891)',NULL,'t','2025-06-01',1),
(1165,'cusL-1115',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select 198766*667891 from DUAL)',NULL,'t','2025-06-01',1),
(1166,'cusL-1116',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329yvVUyWvo\'; waitfor delay \'0:0:15\' -- ',NULL,'t','2025-06-01',1),
(1167,'cusL-1117',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329-1 waitfor delay \'0:0:15\' -- ',NULL,'t','2025-06-01',1),
(1168,'cusL-1118',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1169,'cusL-1119',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-432950AynDgn\'; waitfor delay \'0:0:15\' -- ',NULL,'t','2025-06-01',1),
(1170,'cusL-1120',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329o7UNq70R\' OR 341=(SELECT 341 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(1171,'cusL-1121',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1172,'cusL-1122',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329CneGnLB6\'; waitfor delay \'0:0:15\' -- ',NULL,'t','2025-06-01',1),
(1173,'cusL-1123',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1174,'cusL-1124',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1175,'cusL-1125',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1176,'cusL-1126',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1177,'cusL-1127',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1178,'cusL-1128',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1179,'cusL-1129',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1180,'cusL-1130',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329aE0zIpGC\' OR 80=(SELECT 80 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(1181,'cusL-1131',0,'lxbfYeaa','-1 OR 5*5=25 -- ','80da5d337bf9606dd59f3480a125201e',NULL,'3137 Laguna Street','555-666-0606','',NULL,'2025-06-01',1),
(1182,'cusL-1132',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1183,'cusL-1133',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329vmkc3tRa\') OR 956=(SELECT 956 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(1184,'cusL-1134',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329ryyT5t7Z\' OR 723=(SELECT 723 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(1185,'cusL-1135',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329Zmu0kLMf\') OR 742=(SELECT 742 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(1186,'cusL-1136',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329i3ieS67C\')) OR 246=(SELECT 246 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(1187,'cusL-1137',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43292JP4Y50v\') OR 814=(SELECT 814 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(1188,'cusL-1138',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1189,'cusL-1139',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43293jKoR4Y3\')) OR 190=(SELECT 190 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(1190,'cusL-1140',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1191,'cusL-1141',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1192,'cusL-1142',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',NULL,'t','2025-06-01',1),
(1193,'cusL-1143',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43298d3mQKZf\')) OR 245=(SELECT 245 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(1194,'cusL-1144',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1195,'cusL-1145',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'\"',NULL,'t','2025-06-01',1),
(1196,'cusL-1146',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'\"\\\'\\\"',NULL,'t','2025-06-01',1),
(1197,'cusL-1147',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',NULL,'t','2025-06-01',1),
(1198,'cusL-1148',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','@@NfjsT',NULL,'t','2025-06-01',1),
(1199,'cusL-1149',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1200,'cusL-1150',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select 198766*667891)',NULL,'t','2025-06-01',1),
(1201,'cusL-1151',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'\"',NULL,'t','2025-06-01',1),
(1202,'cusL-1152',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select 198766*667891 from DUAL)',NULL,'t','2025-06-01',1),
(1203,'cusL-1153',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'\"\\\'\\\"',NULL,'t','2025-06-01',1),
(1204,'cusL-1154',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','@@NsqG7',NULL,'t','2025-06-01',1),
(1205,'cusL-1155',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select 198766*667891)',NULL,'t','2025-06-01',1),
(1206,'cusL-1156',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select 198766*667891 from DUAL)',NULL,'t','2025-06-01',1),
(1207,'cusL-1157',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',NULL,'t','2025-06-01',1),
(1208,'cusL-1158',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1209,'cusL-1159',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'\"',NULL,'t','2025-06-01',1),
(1210,'cusL-1160',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'\"\\\'\\\"',NULL,'t','2025-06-01',1),
(1211,'cusL-1161',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','@@KEZNV',NULL,'t','2025-06-01',1),
(1212,'cusL-1162',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1213,'cusL-1163',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select 198766*667891)',NULL,'t','2025-06-01',1),
(1214,'cusL-1164',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select 198766*667891 from DUAL)',NULL,'t','2025-06-01',1),
(1215,'cusL-1165',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1216,'cusL-1166',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1217,'cusL-1167',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1218,'cusL-1168',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1219,'cusL-1169',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1220,'cusL-1170',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1221,'cusL-1171',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1222,'cusL-1172',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1223,'cusL-1173',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1224,'cusL-1174',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1225,'cusL-1175',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1226,'cusL-1176',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1227,'cusL-1177',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1228,'cusL-1178',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1229,'cusL-1179',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1230,'cusL-1180',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1231,'cusL-1181',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1232,'cusL-1182',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1233,'cusL-1183',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1234,'cusL-1184',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1235,'cusL-1185',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1236,'cusL-1186',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1237,'cusL-1187',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1238,'cusL-1188',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1239,'cusL-1189',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1240,'cusL-1190',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1241,'cusL-1191',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1242,'cusL-1192',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1243,'cusL-1193',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1244,'cusL-1194',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1245,'cusL-1195',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1246,'cusL-1196',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1247,'cusL-1197',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1248,'cusL-1198',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1249,'cusL-1199',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1250,'cusL-1200',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1251,'cusL-1201',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1252,'cusL-1202',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1253,'cusL-1203',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1254,'cusL-1204',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1255,'cusL-1205',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1256,'cusL-1206',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1257,'cusL-1207',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1258,'cusL-1208',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1259,'cusL-1209',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1260,'cusL-1210',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1261,'cusL-1211',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1262,'cusL-1212',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1263,'cusL-1213',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1264,'cusL-1214',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1265,'cusL-1215',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1266,'cusL-1216',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1267,'cusL-1217',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1268,'cusL-1218',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1269,'cusL-1219',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1270,'cusL-1220',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1271,'cusL-1221',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1272,'cusL-1222',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1273,'cusL-1223',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1274,'cusL-1224',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1275,'cusL-1225',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1276,'cusL-1226',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1277,'cusL-1227',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1278,'cusL-1228',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1279,'cusL-1229',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1280,'cusL-1230',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1281,'cusL-1231',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1282,'cusL-1232',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1283,'cusL-1233',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1284,'cusL-1234',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1285,'cusL-1235',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1286,'cusL-1236',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1287,'cusL-1237',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1288,'cusL-1238',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1289,'cusL-1239',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1290,'cusL-1240',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1291,'cusL-1241',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1292,'cusL-1242',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1293,'cusL-1243',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1294,'cusL-1244',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1295,'cusL-1245',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1296,'cusL-1246',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1297,'cusL-1247',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1298,'cusL-1248',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1299,'cusL-1249',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1300,'cusL-1250',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1301,'cusL-1251',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1302,'cusL-1252',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1303,'cusL-1253',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1304,'cusL-1254',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1305,'cusL-1255',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1306,'cusL-1256',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1307,'cusL-1257',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1308,'cusL-1258',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1309,'cusL-1259',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1310,'cusL-1260',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1311,'cusL-1261',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1312,'cusL-1262',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1313,'cusL-1263',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1314,'cusL-1264',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1315,'cusL-1265',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1316,'cusL-1266',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1317,'cusL-1267',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1318,'cusL-1268',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1319,'cusL-1269',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1320,'cusL-1270',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1321,'cusL-1271',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1322,'cusL-1272',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1323,'cusL-1273',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1324,'cusL-1274',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1325,'cusL-1275',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1326,'cusL-1276',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1327,'cusL-1277',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1328,'cusL-1278',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1329,'cusL-1279',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1330,'cusL-1280',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1331,'cusL-1281',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1332,'cusL-1282',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1333,'cusL-1283',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1334,'cusL-1284',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1335,'cusL-1285',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1336,'cusL-1286',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1337,'cusL-1287',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1338,'cusL-1288',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1339,'cusL-1289',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1340,'cusL-1290',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1341,'cusL-1291',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1342,'cusL-1292',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1343,'cusL-1293',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1344,'cusL-1294',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1345,'cusL-1295',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1346,'cusL-1296',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1347,'cusL-1297',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1348,'cusL-1298',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1349,'cusL-1299',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1350,'cusL-1300',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1351,'cusL-1301',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1352,'cusL-1302',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1353,'cusL-1303',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1354,'cusL-1304',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1355,'cusL-1305',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1356,'cusL-1306',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1357,'cusL-1307',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1358,'cusL-1308',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1359,'cusL-1309',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1360,'cusL-1310',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1361,'cusL-1311',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1362,'cusL-1312',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1363,'cusL-1313',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1364,'cusL-1314',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1365,'cusL-1315',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1366,'cusL-1316',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1367,'cusL-1317',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1368,'cusL-1318',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1369,'cusL-1319',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1370,'cusL-1320',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1371,'cusL-1321',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1372,'cusL-1322',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1373,'cusL-1323',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1374,'cusL-1324',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1375,'cusL-1325',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1376,'cusL-1326',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1377,'cusL-1327',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1378,'cusL-1328',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1379,'cusL-1329',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1380,'cusL-1330',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1381,'cusL-1331',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1382,'cusL-1332',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1383,'cusL-1333',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1384,'cusL-1334',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1385,'cusL-1335',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1386,'cusL-1336',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1387,'cusL-1337',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1388,'cusL-1338',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1389,'cusL-1339',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1390,'cusL-1340',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1391,'cusL-1341',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1392,'cusL-1342',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1393,'cusL-1343',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1394,'cusL-1344',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1395,'cusL-1345',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1396,'cusL-1346',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1397,'cusL-1347',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1398,'cusL-1348',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1399,'cusL-1349',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1400,'cusL-1350',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1401,'cusL-1351',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1402,'cusL-1352',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1403,'cusL-1353',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1404,'cusL-1354',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1405,'cusL-1355',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1406,'cusL-1356',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1407,'cusL-1357',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1408,'cusL-1358',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1409,'cusL-1359',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1410,'cusL-1360',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1411,'cusL-1361',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1412,'cusL-1362',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1413,'cusL-1363',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1414,'cusL-1364',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1415,'cusL-1365',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1416,'cusL-1366',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1417,'cusL-1367',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1418,'cusL-1368',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1419,'cusL-1369',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1420,'cusL-1370',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1421,'cusL-1371',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1422,'cusL-1372',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1423,'cusL-1373',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1424,'cusL-1374',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1425,'cusL-1375',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1426,'cusL-1376',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1427,'cusL-1377',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1428,'cusL-1378',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1429,'cusL-1379',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1430,'cusL-1380',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1431,'cusL-1381',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1432,'cusL-1382',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1433,'cusL-1383',0,'-1 OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1434,'cusL-1384',0,'-1 OR 5*5=25','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1435,'cusL-1385',0,'-1\' OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1436,'cusL-1386',0,'-1\" OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1437,'cusL-1387',0,'-1\' OR 5*5=25 or \'HJWxn5Z3\'=\'','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1438,'cusL-1388',0,'-1\" OR 5*5=25 or \"Xlr9pEOg\"=\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1439,'cusL-1389',0,'if(now()=sysdate(),sleep(15),0)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1440,'cusL-1390',0,'lxbfYeaa0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1441,'cusL-1391',0,'lxbfYeaa0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1442,'cusL-1392',0,'(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1443,'cusL-1393',0,'lxbfYeaa-1 waitfor delay \'0:0:15\' -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1444,'cusL-1394',0,'lxbfYeaaKKJnKGdP\'; waitfor delay \'0:0:15\' -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1445,'cusL-1395',0,'lxbfYeaazgARRe7I\' OR 968=(SELECT 968 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1446,'cusL-1396',0,'lxbfYeaamCFez0g0\') OR 257=(SELECT 257 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1447,'cusL-1397',0,'lxbfYeaaSw884Rgz\')) OR 37=(SELECT 37 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1448,'cusL-1398',0,'lxbfYeaa\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1449,'cusL-1399',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1450,'cusL-1400',0,'lxbfYeaa\'\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1451,'cusL-1401',0,'lxbfYeaa\'\"\\\'\\\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1452,'cusL-1402',0,'@@IT9Wc','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1453,'cusL-1403',0,'(select 198766*667891)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1454,'cusL-1404',0,'(select 198766*667891 from DUAL)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1455,'cusL-1405',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1456,'cusL-1406',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1457,'cusL-1407',0,'lxbfYeaa','-1 OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1458,'cusL-1408',0,'lxbfYeaa','-1 OR 5*5=25',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1459,'cusL-1409',0,'lxbfYeaa','-1\' OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1460,'cusL-1410',0,'lxbfYeaa','-1\" OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1461,'cusL-1411',0,'lxbfYeaa','-1\' OR 5*5=25 or \'86gdRLrC\'=\'',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1462,'cusL-1412',0,'lxbfYeaa','-1\" OR 5*5=25 or \"bxXjFDaz\"=\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1463,'cusL-1413',0,'lxbfYeaa','if(now()=sysdate(),sleep(15),0)',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1464,'cusL-1414',0,'lxbfYeaa','testing@example.com0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1465,'cusL-1415',0,'lxbfYeaa','testing@example.com0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1466,'cusL-1416',0,'lxbfYeaa','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1467,'cusL-1417',0,'lxbfYeaa','testing@example.com-1 waitfor delay \'0:0:15\' -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1468,'cusL-1418',0,'lxbfYeaa','testing@example.comEv4PxnA1\'; waitfor delay \'0:0:15\' -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1469,'cusL-1419',0,'lxbfYeaa','testing@example.comVtNis0ng\' OR 355=(SELECT 355 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1470,'cusL-1420',0,'lxbfYeaa','testing@example.comBrr7OMuJ\') OR 453=(SELECT 453 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1471,'cusL-1421',0,'lxbfYeaa','testing@example.comsgGG4X9N\')) OR 23=(SELECT 23 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1472,'cusL-1422',0,'lxbfYeaa','testing@example.com\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1473,'cusL-1423',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1474,'cusL-1424',0,'lxbfYeaa','testing@example.com\'\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1475,'cusL-1425',0,'lxbfYeaa','testing@example.com\'\"\\\'\\\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1476,'cusL-1426',0,'lxbfYeaa','@@WxuQ2',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1477,'cusL-1427',0,'lxbfYeaa','(select 198766*667891)',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1478,'cusL-1428',0,'lxbfYeaa','(select 198766*667891 from DUAL)',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1479,'cusL-1429',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1480,'cusL-1430',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1481,'cusL-1431',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1482,'cusL-1432',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1483,'cusL-1433',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1484,'cusL-1434',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1485,'cusL-1435',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1486,'cusL-1436',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1487,'cusL-1437',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1488,'cusL-1438',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1489,'cusL-1439',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1490,'cusL-1440',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1491,'cusL-1441',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1492,'cusL-1442',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1493,'cusL-1443',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1494,'cusL-1444',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1495,'cusL-1445',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1496,'cusL-1446',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1497,'cusL-1447',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1498,'cusL-1448',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1499,'cusL-1449',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1500,'cusL-1450',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1501,'cusL-1451',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1502,'cusL-1452',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1503,'cusL-1453',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1504,'cusL-1454',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1505,'cusL-1455',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1506,'cusL-1456',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1507,'cusL-1457',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1508,'cusL-1458',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1509,'cusL-1459',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1510,'cusL-1460',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1511,'cusL-1461',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1 OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(1512,'cusL-1462',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1 OR 5*5=25',NULL,'t','2025-06-01',1),
(1513,'cusL-1463',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\' OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(1514,'cusL-1464',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\" OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(1515,'cusL-1465',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\' OR 5*5=25 or \'ApZn0FME\'=\'',NULL,'t','2025-06-01',1),
(1516,'cusL-1466',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\" OR 5*5=25 or \"Ujjinei4\"=\"',NULL,'t','2025-06-01',1),
(1517,'cusL-1467',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','if(now()=sysdate(),sleep(15),0)',NULL,'t','2025-06-01',1),
(1518,'cusL-1468',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43290\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z',NULL,'t','2025-06-01',1),
(1519,'cusL-1469',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43290\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z',NULL,'t','2025-06-01',1),
(1520,'cusL-1470',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/',NULL,'t','2025-06-01',1),
(1521,'cusL-1471',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329-1 waitfor delay \'0:0:15\' -- ',NULL,'t','2025-06-01',1),
(1522,'cusL-1472',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329m39W8Ibk\'; waitfor delay \'0:0:15\' -- ',NULL,'t','2025-06-01',1),
(1523,'cusL-1473',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329cn0Xwv43\' OR 822=(SELECT 822 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(1524,'cusL-1474',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43296CiErkKS\') OR 469=(SELECT 469 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(1525,'cusL-1475',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329JifNFK4T\')) OR 933=(SELECT 933 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(1526,'cusL-1476',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',NULL,'t','2025-06-01',1),
(1527,'cusL-1477',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1528,'cusL-1478',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'\"',NULL,'t','2025-06-01',1),
(1529,'cusL-1479',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'\"\\\'\\\"',NULL,'t','2025-06-01',1),
(1530,'cusL-1480',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','@@Ct4Hq',NULL,'t','2025-06-01',1),
(1531,'cusL-1481',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select 198766*667891)',NULL,'t','2025-06-01',1),
(1532,'cusL-1482',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select 198766*667891 from DUAL)',NULL,'t','2025-06-01',1),
(1533,'cusL-1483',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1534,'cusL-1484',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1535,'cusL-1485',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1536,'cusL-1486',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1537,'cusL-1487',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1538,'cusL-1488',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1539,'cusL-1489',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1540,'cusL-1490',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1541,'cusL-1491',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1542,'cusL-1492',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1543,'cusL-1493',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1544,'cusL-1494',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1545,'cusL-1495',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1546,'cusL-1496',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1547,'cusL-1497',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1548,'cusL-1498',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1549,'cusL-1499',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1550,'cusL-1500',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1551,'cusL-1501',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1552,'cusL-1502',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1553,'cusL-1503',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1554,'cusL-1504',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1555,'cusL-1505',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1556,'cusL-1506',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1557,'cusL-1507',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1558,'cusL-1508',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1559,'cusL-1509',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1560,'cusL-1510',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1561,'cusL-1511',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1562,'cusL-1512',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1563,'cusL-1513',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1564,'cusL-1514',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1565,'cusL-1515',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1566,'cusL-1516',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1567,'cusL-1517',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1568,'cusL-1518',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1569,'cusL-1519',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1570,'cusL-1520',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1571,'cusL-1521',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1572,'cusL-1522',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1573,'cusL-1523',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1574,'cusL-1524',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1575,'cusL-1525',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1576,'cusL-1526',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1577,'cusL-1527',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1578,'cusL-1528',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1579,'cusL-1529',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1580,'cusL-1530',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1581,'cusL-1531',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1582,'cusL-1532',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1583,'cusL-1533',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1584,'cusL-1534',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1585,'cusL-1535',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1586,'cusL-1536',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1587,'cusL-1537',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1588,'cusL-1538',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1589,'cusL-1539',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1590,'cusL-1540',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1591,'cusL-1541',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1592,'cusL-1542',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1593,'cusL-1543',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1594,'cusL-1544',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1595,'cusL-1545',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1596,'cusL-1546',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1597,'cusL-1547',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1598,'cusL-1548',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1599,'cusL-1549',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1600,'cusL-1550',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1601,'cusL-1551',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1602,'cusL-1552',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1603,'cusL-1553',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1604,'cusL-1554',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1605,'cusL-1555',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1606,'cusL-1556',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1607,'cusL-1557',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1608,'cusL-1558',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1609,'cusL-1559',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1610,'cusL-1560',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1611,'cusL-1561',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1612,'cusL-1562',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1613,'cusL-1563',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1614,'cusL-1564',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1615,'cusL-1565',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1616,'cusL-1566',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1617,'cusL-1567',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1618,'cusL-1568',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1619,'cusL-1569',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1620,'cusL-1570',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1621,'cusL-1571',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1622,'cusL-1572',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1623,'cusL-1573',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1624,'cusL-1574',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1625,'cusL-1575',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1626,'cusL-1576',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1627,'cusL-1577',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1628,'cusL-1578',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1629,'cusL-1579',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1630,'cusL-1580',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1631,'cusL-1581',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1632,'cusL-1582',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1633,'cusL-1583',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1634,'cusL-1584',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1635,'cusL-1585',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1636,'cusL-1586',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1637,'cusL-1587',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1638,'cusL-1588',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1639,'cusL-1589',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1640,'cusL-1590',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1641,'cusL-1591',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1642,'cusL-1592',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1643,'cusL-1593',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1644,'cusL-1594',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1645,'cusL-1595',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1646,'cusL-1596',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1647,'cusL-1597',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1648,'cusL-1598',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1649,'cusL-1599',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1650,'cusL-1600',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1651,'cusL-1601',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1652,'cusL-1602',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1653,'cusL-1603',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1654,'cusL-1604',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1655,'cusL-1605',0,'-1 OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1656,'cusL-1606',0,'-1 OR 5*5=25','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1657,'cusL-1607',0,'-1\' OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1658,'cusL-1608',0,'-1\" OR 5*5=25 -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1659,'cusL-1609',0,'-1\' OR 5*5=25 or \'PspyvjT0\'=\'','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1660,'cusL-1610',0,'-1\" OR 5*5=25 or \"LO1oUsd9\"=\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1661,'cusL-1611',0,'if(now()=sysdate(),sleep(15),0)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1662,'cusL-1612',0,'lxbfYeaa0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1663,'cusL-1613',0,'lxbfYeaa0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1664,'cusL-1614',0,'(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1665,'cusL-1615',0,'lxbfYeaa-1 waitfor delay \'0:0:15\' -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1666,'cusL-1616',0,'lxbfYeaazDxV6PGR\'; waitfor delay \'0:0:15\' -- ','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1667,'cusL-1617',0,'lxbfYeaa1W4RAkha\' OR 816=(SELECT 816 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1668,'cusL-1618',0,'lxbfYeaaYHmNQ7BL\') OR 684=(SELECT 684 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1669,'cusL-1619',0,'lxbfYeaaxGhYxmZh\')) OR 519=(SELECT 519 FROM PG_SLEEP(15))--','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1670,'cusL-1620',0,'lxbfYeaa\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1671,'cusL-1621',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1672,'cusL-1622',0,'lxbfYeaa\'\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1673,'cusL-1623',0,'lxbfYeaa\'\"\\\'\\\"','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1674,'cusL-1624',0,'@@hifHh','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1675,'cusL-1625',0,'(select 198766*667891)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1676,'cusL-1626',0,'(select 198766*667891 from DUAL)','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1677,'cusL-1627',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1678,'cusL-1628',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1679,'cusL-1629',0,'lxbfYeaa','-1 OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1680,'cusL-1630',0,'lxbfYeaa','-1 OR 5*5=25',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1681,'cusL-1631',0,'lxbfYeaa','-1\' OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1682,'cusL-1632',0,'lxbfYeaa','-1\" OR 5*5=25 -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1683,'cusL-1633',0,'lxbfYeaa','-1\' OR 5*5=25 or \'9RzI8k5r\'=\'',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1684,'cusL-1634',0,'lxbfYeaa','-1\" OR 5*5=25 or \"ctzkDaqA\"=\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1685,'cusL-1635',0,'lxbfYeaa','if(now()=sysdate(),sleep(15),0)',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1686,'cusL-1636',0,'lxbfYeaa','testing@example.com0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1687,'cusL-1637',0,'lxbfYeaa','testing@example.com0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1688,'cusL-1638',0,'lxbfYeaa','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1689,'cusL-1639',0,'lxbfYeaa','testing@example.com-1 waitfor delay \'0:0:15\' -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1690,'cusL-1640',0,'lxbfYeaa','testing@example.com6ApfcjGH\'; waitfor delay \'0:0:15\' -- ',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1691,'cusL-1641',0,'lxbfYeaa','testing@example.comGSksJPoo\' OR 870=(SELECT 870 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1692,'cusL-1642',0,'lxbfYeaa','testing@example.comHERSYj3P\') OR 984=(SELECT 984 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1693,'cusL-1643',0,'lxbfYeaa','testing@example.comQex9mKX1\')) OR 274=(SELECT 274 FROM PG_SLEEP(15))--',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1694,'cusL-1644',0,'lxbfYeaa','testing@example.com\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1695,'cusL-1645',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1696,'cusL-1646',0,'lxbfYeaa','testing@example.com\'\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1697,'cusL-1647',0,'lxbfYeaa','testing@example.com\'\"\\\'\\\"',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1698,'cusL-1648',0,'lxbfYeaa','@@qQRic',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1699,'cusL-1649',0,'lxbfYeaa','(select 198766*667891)',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1700,'cusL-1650',0,'lxbfYeaa','(select 198766*667891 from DUAL)',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1701,'cusL-1651',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1702,'cusL-1652',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1703,'cusL-1653',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1704,'cusL-1654',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1705,'cusL-1655',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1706,'cusL-1656',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1707,'cusL-1657',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1708,'cusL-1658',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1709,'cusL-1659',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1710,'cusL-1660',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1711,'cusL-1661',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1712,'cusL-1662',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1713,'cusL-1663',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1714,'cusL-1664',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1715,'cusL-1665',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1716,'cusL-1666',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1717,'cusL-1667',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1718,'cusL-1668',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1719,'cusL-1669',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1720,'cusL-1670',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1721,'cusL-1671',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1722,'cusL-1672',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1723,'cusL-1673',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1724,'cusL-1674',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1725,'cusL-1675',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1726,'cusL-1676',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1727,'cusL-1677',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1728,'cusL-1678',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1729,'cusL-1679',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1730,'cusL-1680',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1731,'cusL-1681',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1732,'cusL-1682',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1 OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(1733,'cusL-1683',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1 OR 5*5=25',NULL,'t','2025-06-01',1),
(1734,'cusL-1684',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\' OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(1735,'cusL-1685',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\" OR 5*5=25 -- ',NULL,'t','2025-06-01',1),
(1736,'cusL-1686',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\' OR 5*5=25 or \'i6EjE9S5\'=\'',NULL,'t','2025-06-01',1),
(1737,'cusL-1687',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','-1\" OR 5*5=25 or \"IJHMk3j1\"=\"',NULL,'t','2025-06-01',1),
(1738,'cusL-1688',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','if(now()=sysdate(),sleep(15),0)',NULL,'t','2025-06-01',1),
(1739,'cusL-1689',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43290\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z',NULL,'t','2025-06-01',1),
(1740,'cusL-1690',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-43290\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z',NULL,'t','2025-06-01',1),
(1741,'cusL-1691',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/',NULL,'t','2025-06-01',1),
(1742,'cusL-1692',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329-1 waitfor delay \'0:0:15\' -- ',NULL,'t','2025-06-01',1),
(1743,'cusL-1693',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329CwGMpp3w\'; waitfor delay \'0:0:15\' -- ',NULL,'t','2025-06-01',1),
(1744,'cusL-1694',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329LzC1uw9i\' OR 68=(SELECT 68 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(1745,'cusL-1695',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329zzX1uPgP\') OR 572=(SELECT 572 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(1746,'cusL-1696',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329KqMV6jKb\')) OR 278=(SELECT 278 FROM PG_SLEEP(15))--',NULL,'t','2025-06-01',1),
(1747,'cusL-1697',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',NULL,'t','2025-06-01',1),
(1748,'cusL-1698',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1749,'cusL-1699',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'\"',NULL,'t','2025-06-01',1),
(1750,'cusL-1700',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329\'\"\\\'\\\"',NULL,'t','2025-06-01',1),
(1751,'cusL-1701',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','@@dtnRJ',NULL,'t','2025-06-01',1),
(1752,'cusL-1702',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select 198766*667891)',NULL,'t','2025-06-01',1),
(1753,'cusL-1703',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','(select 198766*667891 from DUAL)',NULL,'t','2025-06-01',1),
(1754,'cusL-1704',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1755,'cusL-1705',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1756,'cusL-1706',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1757,'cusL-1707',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1758,'cusL-1708',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1759,'cusL-1709',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1760,'cusL-1710',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1761,'cusL-1711',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1762,'cusL-1712',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1763,'cusL-1713',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1764,'cusL-1714',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1765,'cusL-1715',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1766,'cusL-1716',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1767,'cusL-1717',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1768,'cusL-1718',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1769,'cusL-1719',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1770,'cusL-1720',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1771,'cusL-1721',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1772,'cusL-1722',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1773,'cusL-1723',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1774,'cusL-1724',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1775,'cusL-1725',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1776,'cusL-1726',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1777,'cusL-1727',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1778,'cusL-1728',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1779,'cusL-1729',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1780,'cusL-1730',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1781,'cusL-1731',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1782,'cusL-1732',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1783,'cusL-1733',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1784,'cusL-1734',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1785,'cusL-1735',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1786,'cusL-1736',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1787,'cusL-1737',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1788,'cusL-1738',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1789,'cusL-1739',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1790,'cusL-1740',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1791,'cusL-1741',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1792,'cusL-1742',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1793,'cusL-1743',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1794,'cusL-1744',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1795,'cusL-1745',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1796,'cusL-1746',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1797,'cusL-1747',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1798,'cusL-1748',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1799,'cusL-1749',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1800,'cusL-1750',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1801,'cusL-1751',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1802,'cusL-1752',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1803,'cusL-1753',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1804,'cusL-1754',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1805,'cusL-1755',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1806,'cusL-1756',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1),
(1807,'cusL-1757',0,'lxbfYeaa','testing@example.com',NULL,NULL,'t','987-65-4329',NULL,'t','2025-06-01',1);
/*!40000 ALTER TABLE `customer_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_membership_map`
--

DROP TABLE IF EXISTS `customer_membership_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_membership_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `membership_id` int(11) NOT NULL,
  `active_date` date NOT NULL,
  `active_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_membership_map`
--

LOCK TABLES `customer_membership_map` WRITE;
/*!40000 ALTER TABLE `customer_membership_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_membership_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_order` (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `saleinvoice` varchar(100) NOT NULL,
  `marge_order_id` varchar(30) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `cutomertype` int(11) NOT NULL,
  `isthirdparty` int(11) NOT NULL DEFAULT 0 COMMENT '0=normal,1>all Third Party',
  `thirdpartyinvoiceid` int(11) DEFAULT NULL,
  `waiter_id` int(11) DEFAULT NULL,
  `kitchen` int(11) DEFAULT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL,
  `cookedtime` time NOT NULL DEFAULT '00:15:00',
  `table_no` int(11) DEFAULT NULL,
  `tokenno` varchar(30) DEFAULT NULL,
  `totalamount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `customerpaid` decimal(10,2) DEFAULT 0.00,
  `customer_note` text DEFAULT NULL,
  `anyreason` text DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=Pending, 2=Processing, 3=Ready, 4=Served,5=Cancel',
  `nofification` int(11) NOT NULL DEFAULT 0 COMMENT '0=unseen,1=seen',
  `orderacceptreject` int(11) DEFAULT NULL,
  `splitpay_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=no split,1=split',
  `isupdate` int(11) DEFAULT NULL,
  `shipping_date` datetime DEFAULT '1790-01-01 01:01:01',
  `tokenprint` int(11) NOT NULL DEFAULT 0 COMMENT '1=print done,0=not done',
  `invoiceprint` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `cutomertype` (`cutomertype`),
  KEY `waiter_id` (`waiter_id`),
  KEY `kitchen` (`kitchen`),
  KEY `thirdpartyinvoiceid` (`thirdpartyinvoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_order`
--

LOCK TABLES `customer_order` WRITE;
/*!40000 ALTER TABLE `customer_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_type`
--

DROP TABLE IF EXISTS `customer_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_type` (
  `customer_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_type` varchar(100) NOT NULL,
  `ordering` int(11) DEFAULT 0,
  PRIMARY KEY (`customer_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_type`
--

LOCK TABLES `customer_type` WRITE;
/*!40000 ALTER TABLE `customer_type` DISABLE KEYS */;
INSERT INTO `customer_type` VALUES
(1,'Walk In Customer',0),
(2,'Online Customer',0),
(3,'Third Party',0),
(4,'Take Way',0),
(99,'QR Customer',0);
/*!40000 ALTER TABLE `customer_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES
(8,'ACCOUNTING',0),
(9,'Human Resource',0),
(10,'Delivery department',0),
(11,'Garage and Parking',0),
(12,'Manager',0),
(13,'Restaurant',0),
(14,'Waiter',13),
(15,'Senior Accountant',8),
(16,'Kitchen Manager',12),
(17,'Chef',13),
(18,'Sales Manager',12);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duty_type`
--

DROP TABLE IF EXISTS `duty_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `duty_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duty_type`
--

LOCK TABLES `duty_type` WRITE;
/*!40000 ALTER TABLE `duty_type` DISABLE KEYS */;
INSERT INTO `duty_type` VALUES
(1,'Full Time'),
(2,'Part Time'),
(3,'Contructual'),
(4,'Other');
/*!40000 ALTER TABLE `duty_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_config`
--

DROP TABLE IF EXISTS `email_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_config` (
  `email_config_id` int(11) NOT NULL AUTO_INCREMENT,
  `smtp_host` varchar(200) DEFAULT NULL,
  `smtp_port` varchar(200) DEFAULT NULL,
  `smtp_password` varchar(200) DEFAULT NULL,
  `protocol` text NOT NULL,
  `mailpath` text NOT NULL,
  `mailtype` text NOT NULL,
  `sender` text NOT NULL,
  `api_key` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`email_config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_config`
--

LOCK TABLES `email_config` WRITE;
/*!40000 ALTER TABLE `email_config` DISABLE KEYS */;
INSERT INTO `email_config` VALUES
(1,'ssl://smtp.googlemail.com','465','123456','SMTP','/usr/sbin/sendmail','html','ainalcse@gmail.com','22c4c92a-e5a8-4293-b64c-befc9248521e',1);
/*!40000 ALTER TABLE `email_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_attendance`
--

DROP TABLE IF EXISTS `emp_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_attendance` (
  `att_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sign_in` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `sign_out` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `staytime` time DEFAULT NULL,
  PRIMARY KEY (`att_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_attendance`
--

LOCK TABLES `emp_attendance` WRITE;
/*!40000 ALTER TABLE `emp_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_benifit`
--

DROP TABLE IF EXISTS `employee_benifit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_benifit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bnf_cl_code` varchar(100) NOT NULL,
  `bnf_cl_code_des` varchar(250) NOT NULL,
  `bnff_acural_date` date NOT NULL,
  `bnf_status` tinyint(4) NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_benifit`
--

LOCK TABLES `employee_benifit` WRITE;
/*!40000 ALTER TABLE `employee_benifit` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_benifit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_history`
--

DROP TABLE IF EXISTS `employee_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_history` (
  `emp_his_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) NOT NULL,
  `pos_id` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `alter_phone` varchar(30) DEFAULT NULL,
  `present_address` varchar(100) DEFAULT NULL,
  `parmanent_address` varchar(100) DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `degree_name` varchar(30) DEFAULT NULL,
  `university_name` varchar(50) DEFAULT NULL,
  `cgp` varchar(30) DEFAULT NULL,
  `passing_year` varchar(30) DEFAULT NULL,
  `company_name` varchar(30) DEFAULT NULL,
  `working_period` varchar(30) DEFAULT NULL,
  `duties` varchar(30) DEFAULT NULL,
  `supervisor` varchar(30) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `is_admin` int(11) NOT NULL DEFAULT 0,
  `dept_id` int(11) DEFAULT NULL,
  `division_id` int(11) NOT NULL,
  `maiden_name` varchar(50) DEFAULT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip` int(11) NOT NULL,
  `citizenship` int(11) NOT NULL,
  `duty_type` int(11) NOT NULL,
  `hire_date` date NOT NULL,
  `original_hire_date` date NOT NULL,
  `termination_date` date NOT NULL,
  `termination_reason` text NOT NULL,
  `voluntary_termination` int(11) NOT NULL,
  `rehire_date` date NOT NULL,
  `rate_type` int(11) NOT NULL,
  `rate` float NOT NULL,
  `pay_frequency` int(11) NOT NULL,
  `pay_frequency_txt` varchar(50) NOT NULL,
  `hourly_rate2` float NOT NULL,
  `hourly_rate3` float NOT NULL,
  `home_department` varchar(100) NOT NULL,
  `department_text` varchar(100) NOT NULL,
  `class_code` varchar(50) DEFAULT NULL,
  `class_code_desc` varchar(100) DEFAULT NULL,
  `class_acc_date` date DEFAULT NULL,
  `class_status` tinyint(4) DEFAULT NULL,
  `is_super_visor` int(11) DEFAULT NULL,
  `super_visor_id` varchar(30) NOT NULL,
  `supervisor_report` text NOT NULL,
  `dob` date NOT NULL,
  `gender` int(11) NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `marital_status` int(11) NOT NULL,
  `ethnic_group` varchar(100) NOT NULL,
  `eeo_class_gp` varchar(100) NOT NULL,
  `ssn` varchar(50) DEFAULT NULL,
  `work_in_state` int(11) NOT NULL,
  `live_in_state` int(11) NOT NULL,
  `home_email` varchar(50) NOT NULL,
  `business_email` varchar(50) NOT NULL,
  `home_phone` varchar(30) NOT NULL,
  `business_phone` varchar(30) NOT NULL,
  `cell_phone` varchar(30) NOT NULL,
  `emerg_contct` varchar(30) NOT NULL,
  `emrg_h_phone` varchar(30) NOT NULL,
  `emrg_w_phone` varchar(30) NOT NULL,
  `emgr_contct_relation` varchar(50) NOT NULL,
  `alt_em_contct` varchar(30) NOT NULL,
  `alt_emg_h_phone` varchar(30) NOT NULL,
  `alt_emg_w_phone` varchar(30) NOT NULL,
  PRIMARY KEY (`emp_his_id`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_history`
--

LOCK TABLES `employee_history` WRITE;
/*!40000 ALTER TABLE `employee_history` DISABLE KEYS */;
INSERT INTO `employee_history` VALUES
(162,'EY2T1OWA','4','jahangir',NULL,'Ahmad','jahangir@gmail.com','0195511016',NULL,NULL,NULL,'./application/modules/employee/assets/images/2018-09-20/pra.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,15,3,NULL,'New York','New',234234,0,1,'2018-09-19','2018-09-19','2018-09-19','sdfasdf',2,'2018-09-26',1,323,2,'234',324234,2523,'234','234532','','','1970-01-01',1,NULL,'0','dfasdfsdf','2018-09-19',1,'Bangladesh',2,'sunni','234324','23423',1,1,'u@gmail.com','b@gmail.com','dsfsdf','dsfdsf','sdfsdf','42342323','234234','234234','2343','234','324234','324324'),
(165,'145454','6','Hm',NULL,'Isahaq','hmisahaq@gmail.com','2344098234',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,14,6,NULL,'Alabama','deom',3243,0,1,'2018-09-20','2018-09-20','2018-09-29','fsdf',1,'2018-09-29',1,234,3,'234',0,0,'','','','','1970-01-01',1,NULL,'0','324','2018-09-29',1,'Bangladesh',1,'sdfsdf','','23423',1,1,'234','sd','82309423','','234','324234','34242','546456','','','',''),
(166,'EQLAJFUW','6','Ainal','','Haque','ainal@gmail.com','01715234991',NULL,NULL,NULL,'./application/modules/hrm/assets/images/2019-01-22/u.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,14,0,NULL,'Alabama','',0,1,1,'2018-11-12','2018-11-12','2018-11-12','',1,'2018-11-12',1,100,1,'',0,0,'','','','','2018-11-12',1,NULL,'0','','2018-11-12',1,'Bangladesh',1,'','','3425',1,1,'','','017123657332','','017123657332','017123657332','017123657332','017123657332','','','',''),
(168,'E97E9SJT','6','Manik ','','Hassan','manik@gmail.com','01913251229',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,14,0,NULL,'Alabama','Dhaka',143325,1,1,'2019-01-01','2019-01-01','2021-01-31','sdfs',1,'2022-01-09',1,100,1,'',0,0,'','','','','2019-01-09',1,NULL,'0','','1970-01-01',1,'Bangladesh',1,'','','e4dfg',1,1,'','','34353636','','3636','345345','3453','3453','','','',''),
(177,'EZR0A9IB','1','Di',NULL,'Maria','dimaria@gmail.com','25423456272',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,17,0,NULL,'Oklahoma','',0,1,1,'2021-07-01','2021-07-01','2022-02-28','',1,'2022-02-28',1,200,1,'',0,0,'','',NULL,NULL,NULL,NULL,NULL,'1','','2000-09-01',1,'United State',1,'','','',1,1,'','','457568234','','2323223','366879','889995454','234245654','','','','');
/*!40000 ALTER TABLE `employee_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_performance`
--

DROP TABLE IF EXISTS `employee_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_performance` (
  `emp_per_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `note` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `note_by` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `number_of_star` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `updated_by` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`emp_per_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_performance`
--

LOCK TABLES `employee_performance` WRITE;
/*!40000 ALTER TABLE `employee_performance` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_sal_pay_type`
--

DROP TABLE IF EXISTS `employee_sal_pay_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_sal_pay_type` (
  `emp_sal_pay_type_id` int(10) unsigned NOT NULL,
  `payment_period` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_sal_pay_type`
--

LOCK TABLES `employee_sal_pay_type` WRITE;
/*!40000 ALTER TABLE `employee_sal_pay_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_sal_pay_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_salary_payment`
--

DROP TABLE IF EXISTS `employee_salary_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_salary_payment` (
  `emp_sal_pay_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `total_salary` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `total_working_minutes` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payment_due` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `paid_by` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`emp_sal_pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_salary_payment`
--

LOCK TABLES `employee_salary_payment` WRITE;
/*!40000 ALTER TABLE `employee_salary_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_salary_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_salary_setup`
--

DROP TABLE IF EXISTS `employee_salary_setup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_salary_setup` (
  `e_s_s_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sal_type` varchar(30) NOT NULL,
  `salary_type_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `amount` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `update_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gross_salary` float NOT NULL,
  PRIMARY KEY (`e_s_s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_salary_setup`
--

LOCK TABLES `employee_salary_setup` WRITE;
/*!40000 ALTER TABLE `employee_salary_setup` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_salary_setup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `type` varchar(100) NOT NULL,
  `voucher_no` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense`
--

LOCK TABLES `expense` WRITE;
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_item`
--

DROP TABLE IF EXISTS `expense_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_item_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_item`
--

LOCK TABLES `expense_item` WRITE;
/*!40000 ALTER TABLE `expense_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foodvariable`
--

DROP TABLE IF EXISTS `foodvariable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `foodvariable` (
  `availableID` int(11) NOT NULL AUTO_INCREMENT,
  `foodid` int(11) NOT NULL,
  `availtime` varchar(50) NOT NULL,
  `availday` varchar(30) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`availableID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foodvariable`
--

LOCK TABLES `foodvariable` WRITE;
/*!40000 ALTER TABLE `foodvariable` DISABLE KEYS */;
/*!40000 ALTER TABLE `foodvariable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES
(1,'Male'),
(2,'Female'),
(3,'Other');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grand_loan`
--

DROP TABLE IF EXISTS `grand_loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `grand_loan` (
  `loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `permission_by` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `loan_details` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `amount` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `interest_rate` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `installment` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `installment_period` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `repayment_amount` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date_of_approve` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `repayment_start_date` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_by` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `updated_by` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `loan_status` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grand_loan`
--

LOCK TABLES `grand_loan` WRITE;
/*!40000 ALTER TABLE `grand_loan` DISABLE KEYS */;
/*!40000 ALTER TABLE `grand_loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ingredient_name` varchar(250) NOT NULL,
  `uom_id` int(11) NOT NULL,
  `stock_qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `min_stock` decimal(10,2) NOT NULL DEFAULT 1.00,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0=kitchenitems,1=otheritems',
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_category`
--

DROP TABLE IF EXISTS `item_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_category` (
  `CategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `CategoryImage` varchar(255) DEFAULT NULL,
  `Position` int(11) DEFAULT NULL,
  `CategoryIsActive` int(11) DEFAULT NULL,
  `offerstartdate` date DEFAULT '0000-00-00',
  `offerendate` date NOT NULL DEFAULT '0000-00-00',
  `isoffer` int(11) DEFAULT 0,
  `parentid` int(11) DEFAULT 0,
  `UserIDInserted` int(11) NOT NULL DEFAULT 0,
  `UserIDUpdated` int(11) NOT NULL DEFAULT 0,
  `UserIDLocked` int(11) NOT NULL DEFAULT 0,
  `DateInserted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateLocked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`CategoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_category`
--

LOCK TABLES `item_category` WRITE;
/*!40000 ALTER TABLE `item_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_foods`
--

DROP TABLE IF EXISTS `item_foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_foods` (
  `ProductsID` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryID` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ProductImage` varchar(200) DEFAULT NULL,
  `bigthumb` varchar(255) NOT NULL,
  `medium_thumb` varchar(255) NOT NULL,
  `small_thumb` varchar(255) NOT NULL,
  `component` text DEFAULT NULL,
  `descrip` text DEFAULT NULL,
  `itemnotes` varchar(255) DEFAULT NULL,
  `menutype` varchar(25) DEFAULT NULL,
  `productvat` decimal(10,3) DEFAULT 0.000,
  `special` int(11) NOT NULL DEFAULT 0,
  `OffersRate` int(11) NOT NULL DEFAULT 0 COMMENT '1=offer rate',
  `offerIsavailable` int(11) NOT NULL DEFAULT 0 COMMENT '1=offer available,0=No Offer',
  `offerstartdate` date DEFAULT '0000-00-00',
  `offerendate` date DEFAULT '0000-00-00',
  `Position` int(11) DEFAULT NULL,
  `kitchenid` int(11) NOT NULL,
  `isgroup` int(11) DEFAULT NULL,
  `is_customqty` int(11) DEFAULT 0,
  `cookedtime` time NOT NULL DEFAULT '00:00:00',
  `ProductsIsActive` int(11) DEFAULT NULL,
  `UserIDInserted` int(11) NOT NULL DEFAULT 0,
  `UserIDUpdated` int(11) NOT NULL DEFAULT 0,
  `UserIDLocked` int(11) NOT NULL DEFAULT 0,
  `DateInserted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateLocked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tax0` text DEFAULT NULL,
  `tax1` text DEFAULT NULL,
  PRIMARY KEY (`ProductsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_foods`
--

LOCK TABLES `item_foods` WRITE;
/*!40000 ALTER TABLE `item_foods` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_advertisement`
--

DROP TABLE IF EXISTS `job_advertisement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_advertisement` (
  `job_adv_id` int(10) unsigned NOT NULL,
  `pos_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `adv_circular_date` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `circular_dadeline` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `adv_file` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `adv_details` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_advertisement`
--

LOCK TABLES `job_advertisement` WRITE;
/*!40000 ALTER TABLE `job_advertisement` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_advertisement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(100) NOT NULL,
  `english` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phrase` (`phrase`)
) ENGINE=InnoDB AUTO_INCREMENT=2340 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES
(2,'login','Login'),
(3,'email','Email Address'),
(4,'password','Password'),
(5,'reset','Reset'),
(6,'dashboard','Dashboard'),
(7,'home','Home'),
(8,'profile','Profile'),
(9,'profile_setting','Profile Setting'),
(10,'firstname','First Name'),
(11,'lastname','Last Name'),
(12,'about','About'),
(13,'preview','Preview'),
(14,'image','Image'),
(15,'save','Save'),
(16,'upload_successfully','Upload Successfully!'),
(17,'user_added_successfully','User Added Successfully!'),
(18,'please_try_again','Please Try Again...'),
(19,'inbox_message','Inbox Messages'),
(20,'sent_message','Sent Message'),
(21,'message_details','Message Details'),
(22,'new_message','New Message'),
(23,'receiver_name','Receiver Name'),
(24,'sender_name','Sender Name'),
(25,'subject','Subject'),
(26,'message','Message'),
(27,'message_sent','Message Sent!'),
(28,'ip_address','IP Address'),
(29,'last_login','Last Login'),
(30,'last_logout','Last Logout'),
(31,'status','Status'),
(33,'send','Send'),
(34,'date','Date'),
(35,'action','Action'),
(36,'sl_no','SL No.'),
(37,'are_you_sure','Are You Sure ? '),
(38,'application_setting','Application Setting'),
(39,'application_title','Application Title'),
(41,'phone','Phone'),
(42,'favicon','Favicon'),
(43,'logo','Logo'),
(44,'language','Language'),
(45,'left_to_right','Left To Right'),
(46,'right_to_left','Right To Left'),
(47,'footer_text','Footer Text'),
(48,'site_align','Application Alignment'),
(49,'welcome_back','Welcome Back!'),
(50,'please_contact_with_admin','Please Contact With Admin'),
(51,'incorrect_email_or_password','Incorrect Email/Password'),
(52,'select_option','Select Option'),
(53,'ftp_setting','Data Synchronize [FTP Setting]'),
(54,'hostname','Host Name'),
(55,'username','User Name'),
(56,'ftp_port','FTP Port'),
(57,'ftp_debug','FTP Debug'),
(58,'project_root','Project Root'),
(59,'update_successfully','Update Successfully'),
(60,'save_successfully','Save Successfully!'),
(61,'delete_successfully','Delete Successfully!'),
(62,'internet_connection','Internet Connection'),
(63,'ok','Okay'),
(64,'not_available','Not Available'),
(65,'available','Available'),
(66,'outgoing_file','Outgoing File'),
(67,'incoming_file','Incoming File'),
(68,'data_synchronize','Data Synchronize'),
(69,'unable_to_upload_file_please_check_configuration','Unable to upload file! please check configuration'),
(70,'please_configure_synchronizer_settings','Please configure synchronizer settings'),
(71,'download_successfully','Download Successfully'),
(72,'unable_to_download_file_please_check_configuration','Unable to download file! please check configuration'),
(73,'data_import_first','Data Import First'),
(74,'data_import_successfully','Data Import Successfully!'),
(75,'unable_to_import_data_please_check_config_or_sql_file','Unable to Import Data! Please Check Configuration / SQL File.'),
(76,'download_data_from_server','Download Data from Server'),
(77,'data_import_to_database','Data Import To Database'),
(79,'data_upload_to_server','Data Upload to Server'),
(81,'ooops_something_went_wrong',' Ops Something Went Wrong...'),
(82,'module_permission_list','Module Permission List'),
(83,'user_permission','User Permission'),
(84,'add_module_permission','Add Module Permission'),
(85,'module_permission_added_successfully','Module Permission Added Successfully!'),
(86,'update_module_permission','Update Module Permission'),
(87,'download','Download'),
(88,'module_name','Module Name'),
(89,'create','Create'),
(90,'read','Read'),
(91,'update','Update'),
(92,'delete','Delete'),
(93,'module_list','Module List'),
(94,'add_module','Add Module'),
(95,'directory','Module Directory'),
(96,'description','Description'),
(97,'image_upload_successfully','Image Upload Successfully!'),
(98,'module_added_successfully','Module Added Successfully'),
(99,'inactive','Inactive'),
(100,'active','Active'),
(101,'user_list','User List'),
(102,'see_all_message','See All Messages'),
(103,'setting','Setting'),
(104,'logout','Logout'),
(105,'admin','Admin'),
(106,'add_user','Add User'),
(107,'user','User'),
(108,'module','Module'),
(109,'new','New'),
(110,'inbox','Inbox'),
(111,'sent','Sent'),
(112,'synchronize','Synchronize'),
(113,'data_synchronizer','Data Synchronizer'),
(114,'module_permission','Module Permission'),
(115,'backup_now','Backup Now!'),
(116,'restore_now','Restore Now!'),
(117,'backup_and_restore','Backup and Restore'),
(118,'captcha','Captcha Word'),
(119,'database_backup','Database Backup'),
(120,'restore_successfully','Restore Successfully'),
(121,'backup_successfully','Backup Successfully'),
(122,'filename','File Name'),
(123,'file_information','File Information'),
(125,'backup_date','Backup Date'),
(126,'overwrite','Overwrite'),
(127,'invalid_file','Invalid File!'),
(128,'invalid_module','Invalid Module'),
(129,'remove_successfully','Remove Successfully!'),
(130,'install','Install'),
(131,'uninstall','Uninstall'),
(132,'tables_are_not_available_in_database','Tables are not available in database.sql'),
(133,'no_tables_are_registered_in_config','No tables are registered in config.php'),
(134,'enquiry','Enquiry'),
(135,'read_unread','Read/Unread'),
(136,'enquiry_information','Enquiry Information'),
(137,'user_agent','User Agent'),
(138,'checked_by','Checked By'),
(139,'new_enquiry','New Enquiry'),
(140,'crud','Crud'),
(141,'view','View'),
(144,'ph','Phone'),
(145,'cid','SL No'),
(146,'view_atn','Attendance View'),
(147,'mang','Employee Management'),
(148,'designation','Designation'),
(149,'test','Test'),
(150,'sl','SL'),
(151,'bdtask','BDTASK'),
(152,'practice','Practice'),
(153,'branch_name','Branch Name'),
(154,'chairman_name','Chairman'),
(155,'b_photo','Photo'),
(156,'b_address','Address'),
(157,'position','Designation'),
(158,'advertisement','Advertisement'),
(159,'position_name','Position'),
(160,'position_details','Details'),
(161,'circularprocess','Recruitment'),
(162,'pos_id','Position'),
(163,'adv_circular_date','Publish Date'),
(164,'circular_dadeline','Deadline'),
(165,'adv_file','Documents'),
(166,'adv_details','Details'),
(167,'attendance','Attendance'),
(168,'employee','Employee'),
(169,'emp_id','Employee Name'),
(170,'sign_in','Sign In'),
(171,'sign_out','Sign Out'),
(172,'staytime','Stay Time'),
(173,'abc','abc'),
(174,'first_name','First Name'),
(175,'last_name','Last Name'),
(176,'alter_phone','Alternative Phone'),
(177,'present_address','Present Address'),
(178,'parmanent_address','Permanent Address'),
(179,'candidateinfo','Candidate Info'),
(180,'add_advertisement','Add Advertisement'),
(181,'advertisement_list','Manage Advertisement '),
(182,'candidate_basic_info','Candidate Information'),
(183,'can_basicinfo_list','Manage Candidate'),
(184,'add_canbasic_info','Add New Candidate'),
(185,'candidate_education_info','Candidate Educational Info'),
(186,'can_educationinfo_list','Candidate Edu Info List'),
(187,'add_edu_info','Add Educational Info'),
(188,'can_id','Candidate Id'),
(189,'degree_name','Obtained Degree'),
(190,'university_name','University'),
(191,'cgp','CGPA'),
(192,'comments','Comments'),
(193,'signature','Signature'),
(194,'candidate_workexperience','Candidate Work Experience'),
(195,'can_workexperience_list','Work Experience List'),
(196,'add_can_experience','Add Work Experience'),
(197,'company_name','Company Name'),
(198,'working_period','Working Period'),
(199,'duties','Duties'),
(200,'supervisor','Supervisor'),
(201,'candidate_workexpe','Candidate Work Experience'),
(202,'candidate_shortlist','Candidate Shortlist'),
(203,'shortlist_view','Manage Shortlist'),
(204,'add_shortlist','Add Shortlist'),
(205,'date_of_shortlist','Shortlist Date'),
(206,'interview_date','Interview Date'),
(207,'submit','Submit'),
(208,'candidate_id','Your ID'),
(209,'job_adv_id','Job Position'),
(210,'sequence','Sequence'),
(211,'candidate_interview','Interview'),
(212,'interview_list','Interview list'),
(213,'add_interview','Add interview'),
(214,'interviewer_id','Interviewer'),
(215,'interview_marks','Viva Marks'),
(216,'written_total_marks','Written Total Marks'),
(217,'mcq_total_marks','MCQ Total Marks'),
(218,'recommandation','Recommendation'),
(219,'selection','Selection'),
(220,'details','Details'),
(221,'candidate_selection','Candidate Selection'),
(222,'selection_list','Selection List'),
(223,'add_selection','Add Selection'),
(224,'employee_id','Employee Id'),
(225,'position_id','1'),
(226,'selection_terms','Selection Terms'),
(227,'total_marks','Total Marks'),
(228,'photo','Picture'),
(229,'your_id','Your ID'),
(230,'change_image','Change Photo'),
(231,'picture','Photograph'),
(232,'ad','Add'),
(233,'write_y_p_info','Write Your Personal Information'),
(234,'emp_position','Employee Position'),
(235,'add_pos','Add Position'),
(236,'list_pos','List of Position'),
(237,'emp_salary_stup','Employee Salary Setup'),
(238,'add_salary_stup','Add Salary Setup'),
(239,'list_salarystup','List of Salary Setup'),
(240,'emp_sal_name','Salary Name'),
(241,'emp_sal_type','Salary Type'),
(242,'emp_performance','Employee Performance'),
(243,'add_performance','Add Performance'),
(244,'list_performance','List of Performance'),
(245,'note','Note'),
(246,'note_by','Note By'),
(247,'number_of_star','Number of Star'),
(248,'updated_by','Updated By'),
(249,'emp_sal_payment','Manage Employee Salary'),
(250,'add_payment','Add Payment'),
(251,'list_payment','List of payment'),
(252,'total_salary','Total Salary'),
(253,'total_working_minutes','Working Hour'),
(254,'payment_due','Payment Type'),
(255,'payment_date','Date'),
(256,'paid_by','Paid By'),
(257,'view_employee_payment','Employee Payment List'),
(258,'sal_payment_type','Salary Payment Type'),
(259,'add_payment_type','Add Payment Type'),
(260,'list_payment_type','List of Payment Type'),
(261,'payment_period','Payment Period'),
(262,'payment_type','Payment Type'),
(263,'time','Punch Time'),
(264,'shift','Shift'),
(265,'location','Location'),
(266,'logtype','Log Type'),
(267,'branch','Location'),
(268,'student','Students'),
(269,'csv','CSV'),
(270,'save_successfull','Your Data Save Successfully'),
(271,'successfully_updated','Your Data Successfully Updated'),
(272,'atn_form','Attendance Form'),
(273,'atn_report','Attendance Report'),
(274,'end_date','To'),
(275,'start_date','From'),
(276,'done','Done'),
(277,'employee_id_se','Write Employee Id or name here '),
(278,'attendance_repor','Attendance Report'),
(279,'e_time','End Time'),
(280,'s_time','Start Time'),
(281,'atn_datewiserer','Date Wise Report'),
(282,'atn_report_id','Date And Id base Report'),
(283,'atn_report_time','Date And Time report'),
(284,'payroll','Payroll'),
(285,'loan','Loan'),
(286,'loan_grand','Grant Loan'),
(287,'add_loan','Add Loan'),
(288,'loan_list','List of Loan'),
(289,'loan_details','Loan Details'),
(290,'amount','Amount'),
(291,'interest_rate','Interest Percentage'),
(292,'installment_period','Installment Period'),
(293,'repayment_amount','Repayment Total'),
(294,'date_of_approve','Approved Date'),
(295,'repayment_start_date','Repayment From'),
(296,'permission_by','Permitted By'),
(297,'grand','Grand'),
(298,'installment','Installment'),
(299,'loan_status','Status'),
(300,'installment_period_m','Installment Period in Month'),
(301,'successfully_inserted','Your loan Successfully Granted'),
(302,'loan_installment','Loan Installment'),
(303,'add_installment','Add Installment'),
(304,'installment_list','List of Installment'),
(305,'loan_id','Loan No'),
(306,'installment_amount','Installment Amount'),
(307,'payment','Payment'),
(308,'received_by','Receiver'),
(309,'installment_no','Install No'),
(310,'notes','Notes'),
(311,'paid','Paid'),
(312,'loan_report','Loan Report'),
(313,'e_r_id','Enter Your Employee ID'),
(314,'leave','Leave'),
(315,'add_leave','Add Leave'),
(316,'list_leave','List of Leave'),
(317,'dayname','Weekly Leave Day'),
(318,'holiday','Holiday'),
(319,'list_holiday','List of Holidays'),
(320,'no_of_days','Number of Days'),
(321,'holiday_name','Holiday Name'),
(322,'set','Set'),
(323,'tax','Tax'),
(324,'tax_setup','Tax Setup'),
(325,'add_tax_setup','Add Tax Setup'),
(326,'list_tax_setup','List of Tax setup'),
(327,'tax_collection','Tax collection'),
(328,'start_amount','Start Amount'),
(329,'end_amount','End Amount'),
(330,'rate','Tax Rate'),
(331,'date_start','Date Start'),
(332,'amount_tax','Tax Amount'),
(333,'collection_by','Collection By'),
(334,'date_end','Date End'),
(335,'income_net_period','Income  Net period'),
(336,'default_amount','Default Amount'),
(337,'add_sal_type','Add Salary Type'),
(338,'list_sal_type','Salary Type List'),
(339,'salary_type_setup','Salary Type Setup'),
(340,'salary_setup','Salary Setup'),
(341,'add_sal_setup','Add Salary Setup'),
(342,'list_sal_setup','Salary Setup List'),
(343,'salary_type_id','Salary Type'),
(344,'salary_generate','Salary Generate'),
(345,'add_sal_generate','Generate Now'),
(346,'list_sal_generate','Generated Salary List'),
(347,'gdate','Generate Date'),
(348,'start_dates','Start Date'),
(349,'generate','Generate '),
(350,'successfully_saved_saletup',' Set up Successful'),
(351,'s_date','Start Date'),
(352,'e_date','End Date'),
(353,'salary_payable','Payable Salary'),
(354,'tax_manager','Tax'),
(355,'generate_by','Generated By'),
(356,'successfully_paid','Successfully Paid'),
(357,'direct_empl',' Employee'),
(358,'add_emp_info','Add New Employee'),
(359,'new_empl_pos','Add New Employee Position'),
(360,'manage','Manage Designation'),
(361,'ad_advertisement','ADD POSITION'),
(362,'moduless','Modules'),
(363,'next','Next'),
(364,'finish','Finish'),
(365,'request','Request'),
(366,'successfully_saved','Your Data Successfully Saved'),
(367,'sal_type','Salary Type'),
(368,'sal_name','Salary Name'),
(369,'leave_application','Leave Application'),
(370,'apply_strt_date','Application Start Date'),
(371,'apply_end_date','Application End date'),
(372,'leave_aprv_strt_date','Approved Start Date'),
(373,'leave_aprv_end_date','Approved End Date'),
(374,'num_aprv_day','Approved Day'),
(375,'reason','Reason'),
(376,'approve_date','Approved Date'),
(377,'leave_type','Leave Type'),
(378,'apply_hard_copy','Application Hard Copy'),
(379,'approved_by','Approved By'),
(380,'notice','Notice Board'),
(381,'noticeboard','Notice Board'),
(382,'notice_descriptiion','Description'),
(383,'notice_date','Notice Date'),
(384,'notice_type','Notice Type'),
(385,'notice_by','Notice By'),
(386,'notice_attachment','Attachment'),
(387,'account_name','Account Name'),
(388,'account_type','Account Type'),
(389,'account_id','Account Name'),
(390,'transaction_description','Description'),
(391,'payment_id','Payment'),
(392,'create_by_id','Created By'),
(393,'account','Account'),
(394,'account_add','Add Account'),
(395,'account_transaction','Transaction'),
(396,'award','Award'),
(397,'new_award','New Award'),
(398,'award_name','Award Name'),
(399,'aw_description','Award Description'),
(400,'awr_gift_item','Gift Item'),
(401,'awarded_by','Award By'),
(402,'employee_name','Employee Name'),
(403,'employee_list','Atn List'),
(404,'department','Department'),
(405,'department_name','Department Name '),
(406,'clockout','Clock Out'),
(407,'se_account_id','Select Account Name'),
(408,'division','Division'),
(409,'add_division','Add Division'),
(410,'update_division','Update Division'),
(411,'division_name','Division Name'),
(412,'division_list','Manage Division '),
(413,'designation_list','Designation List'),
(414,'manage_designation','Manage Designation'),
(415,'add_designation','Add Designation'),
(416,'select_division','Select Division'),
(417,'select_designation','Select Designation'),
(418,'asset','Asset'),
(419,'asset_type','Asset Type'),
(420,'add_type','Add Type'),
(421,'type_list','Type List'),
(422,'type_name','Type Name'),
(423,'select_type','Select Type'),
(424,'equipment_name','Equipment Name'),
(425,'model','Model'),
(426,'serial_no','Serial No'),
(427,'equipment','Equipment'),
(428,'add_equipment','Add Equipment'),
(429,'equipment_list','Equipment List'),
(430,'type','Type'),
(431,'equipment_maping','Equipment Mapping'),
(432,'add_maping','Add Mapping'),
(433,'maping_list','Mapping List'),
(434,'update_equipment','Update Equipment'),
(435,'select_employee','Select Employee'),
(436,'select_equipment','Select Equipment'),
(437,'basic_info','Basic Information'),
(438,'middle_name','Middle Name'),
(441,'zip_code','Zip Code'),
(442,'maiden_name','Maiden Name'),
(443,'add_employee','Add Employee'),
(444,'manage_employee','Manage Employee'),
(445,'employee_update_form','Employee Update Form'),
(446,'what_you_search','What You Search'),
(448,'duty_type','Duty Type'),
(449,'hire_date','Hire Date'),
(450,'original_h_date','Original Hire Date'),
(451,'voluntary_termination','Voluntary Termination'),
(452,'termination_reason','Termination Reason'),
(453,'termination_date','Termination Date'),
(454,'re_hire_date','Re Hire Date'),
(455,'rate_type','Rate Type'),
(456,'pay_frequency','Pay Frequency'),
(457,'pay_frequency_txt','Pay Frequency Text'),
(458,'hourly_rate2','Hourly Rate2'),
(459,'hourly_rate3','Hourly Rate3'),
(460,'home_department','Home Department'),
(461,'department_text','Department Text'),
(462,'benifit_class_code','Benefit Class code'),
(463,'benifit_desc','Benefit Description'),
(464,'benifit_acc_date','Benefit Accrual Date'),
(465,'benifit_sta','Benefit Status'),
(466,'super_visor_name','Supervisor Name'),
(467,'is_super_visor','Is Supervisor'),
(468,'supervisor_report','Supervisor Report'),
(469,'dob','Date of Birth'),
(470,'gender','Gender'),
(471,'marital_stats','Marital Status'),
(472,'ethnic_group','Ethnic Group'),
(473,'eeo_class_gp','EEO Class'),
(474,'ssn','SSN'),
(475,'work_in_state','Work in State'),
(476,'live_in_state','Live in State'),
(477,'home_email','Home Email'),
(478,'business_email','Business Email'),
(479,'home_phone','Home Phone'),
(480,'business_phone','Business Phone'),
(481,'cell_phone','Cell Phone'),
(482,'emerg_contct','Emergency Contact'),
(483,'emerg_home_phone','Emergency Home Phone'),
(484,'emrg_w_phone','Emergency Work Phone'),
(485,'emer_con_rela','Emergency Contact Relation'),
(486,'alt_em_contct','Alter Emergency Contact'),
(487,'alt_emg_h_phone','Alt Emergency Home Phone'),
(488,'alt_emg_w_phone','Alt Emergency  Work Phone'),
(489,'reports','Reports'),
(490,'employee_reports','Employee Reports'),
(491,'demographic_report','Demographic Report'),
(492,'posting_report','Positional Report'),
(493,'custom_report','Custom Report'),
(494,'benifit_report','Benefit Report'),
(495,'demographic_info','Demographical Information'),
(496,'positional_info','Positional Info'),
(497,'assets_info','Assets Information'),
(498,'custom_field','Custom Field'),
(499,'custom_value','Custom Data'),
(500,'adhoc_report','Adhoc Report'),
(501,'asset_assignment','Asset Assignment'),
(502,'assign_asset','Assign Assets'),
(503,'assign_list','Assign List'),
(504,'update_assign','Update Assign'),
(505,'citizenship','Citizenship'),
(506,'class_sta','Class status'),
(507,'class_acc_date','Class Accrual date'),
(508,'class_descript','Class Description'),
(509,'class_code','Class Code'),
(510,'return_asset','Return Assets'),
(511,'dept_id','Department ID'),
(512,'parent_id','Parent ID'),
(513,'equipment_id','Equipment ID'),
(514,'issue_date','Issue Date'),
(515,'damarage_desc','Damarage Description'),
(516,'return_date','Return Date'),
(517,'is_assign','Is Assign'),
(518,'emp_his_id','Employee History ID'),
(519,'damarage_descript','Damage Description'),
(520,'return','Return'),
(521,'return_successfull','Return Successful'),
(522,'return_list','Return List'),
(523,'custom_data','Custom Data'),
(524,'passing_year','Passing Year'),
(525,'is_admin','Is Admin'),
(526,'zip','Zip Code'),
(527,'original_hire_date','Original Hire Date'),
(528,'rehire_date','Rehire Date'),
(529,'class_code_desc','Class Code Description'),
(530,'class_status','Class Status'),
(531,'super_visor_id','Supervisor ID'),
(532,'marital_status','Marital Status'),
(533,'emrg_h_phone','Emergency Home Phone'),
(534,'emgr_contct_relation','Emergency Contact Relation'),
(535,'id','ID'),
(536,'type_id','Equipment Type'),
(537,'custom_id','Custom ID'),
(538,'custom_data_type','Custom Data Type'),
(539,'role_permission','Role Permission'),
(540,'permission_setup','Permission Setup'),
(541,'add_role','Add Role'),
(542,'role_list','Role List'),
(543,'user_access_role','User Access Role'),
(544,'menu_item_list','Menu Item List'),
(545,'ins_menu_for_application','Ins Menu  For Application'),
(547,'page_url','Page URL'),
(549,'role','Role'),
(550,'role_name','Role Name'),
(551,'single_checkin','Single Check In'),
(552,'bulk_checkin','Bulk Check In'),
(553,'manage_attendance','Manage Attendance'),
(554,'attendance_list','Attendance List'),
(557,'stay','Stay'),
(558,'attendance_report','Attendance Report'),
(559,'work_hour','Work Hour'),
(560,'cancel','Cancel'),
(561,'confirm_clock','Confirm Checkout'),
(562,'add_attendance','Add Attendance'),
(563,'upload_csv','Upload CSV'),
(564,'import_attendance','Import Attendance'),
(565,'manage_account','Manage Account'),
(566,'add_account','Add Account'),
(567,'add_new_account','Add New Account'),
(568,'account_details','Account Details'),
(569,'manage_transaction','Manage Transaction'),
(570,'add_expence','Add Experience'),
(571,'add_income','Add Income'),
(572,'return_now','Return Now !!'),
(573,'manage_award','Manage Award'),
(574,'add_new_award','Add New Award'),
(575,'personal_information','Personal Information'),
(576,'educational_information','Educational Information'),
(577,'past_experience','Past Experience'),
(578,'basic_information','Basic Information'),
(579,'result','Result'),
(580,'institute_name','Institute Name'),
(581,'education','Education'),
(582,'manage_shortlist','Manage Short List'),
(583,'manage_interview','Manage Interview'),
(584,'manage_selection','Manage Selection'),
(585,'add_new_dept','Add New Department'),
(586,'manage_dept','Manage Department'),
(587,'successfully_checkout','Checkout Successful !'),
(588,'grant_loan','Grant Loan'),
(589,'successfully_installed','Successfully Installed'),
(590,'total_loan','Total Loan'),
(591,'total_amount','Total Amount'),
(592,'filter','Filter'),
(593,'weekly_holiday','Weekly Holiday'),
(594,'manage_application','Manage Application'),
(595,'add_application','Add Application'),
(596,'manage_holiday','Manage Holiday'),
(597,'add_more_holiday','Add More Holiday'),
(598,'manage_weekly_holiday','Manage Weekly Holiday'),
(599,'add_weekly_holiday','Add Weekly Holiday'),
(600,'manage_granted_loan','Manage Granted Loan'),
(601,'manage_installment','Manage Installment'),
(602,'add_new_notice','Add New Notice'),
(603,'manage_notice','Manage Notice'),
(604,'salary_type','Salary Type'),
(605,'manage_salary_generate','Manage Salary Generate'),
(606,'generate_now','Generate Now'),
(607,'add_salary_setup','Add Salary Setup'),
(608,'manage_salary_setup','Manage Salary Setup'),
(609,'add_salary_type','Add Salary Type'),
(610,'manage_salary_type','Manage Salary Type'),
(611,'manage_tax_setup','Manage Tax Setup'),
(612,'setup_tax','Setup Tax'),
(613,'add_more','Add More'),
(614,'tax_rate','Tax Rate'),
(615,'no','No'),
(616,'setup','Setup'),
(617,'biographicalinfo','Bio-Graphical Information'),
(618,'positional_information','Positional Information'),
(620,'benifits','Benefits'),
(621,'others_leave_application','Others Leave'),
(622,'add_leave_type','Add Leave Type'),
(623,'others_leave','Apply Leave'),
(624,'number_of_leave_days','Number of Leave Days'),
(627,'add_category','Add Category'),
(630,'add_food','Add Food'),
(634,'category_subtitle','Category Subtitle'),
(635,'update_category','Update Category'),
(636,'update_fooditem','Update Food Item'),
(713,'food_list','Food List'),
(717,'category_name','Category Name'),
(718,'category_list','Category List'),
(719,'itemmanage','Food Management'),
(720,'manage_category','Manage Category'),
(721,'manage_food','Manage Food'),
(722,'offerdate','Offer Start Date'),
(723,'manage_addons','Manage Add-ons'),
(724,'add_adons','Add Add-ons'),
(725,'menu_addons','Add-ons Menu'),
(726,'addons_list','Add-ons List'),
(727,'assign_adons','Add-ons Assign'),
(728,'assign_adons_list','Add-ons Assign List'),
(729,'update_adons','Update Add-ons'),
(730,'item_name','Food Name'),
(731,'price','Price'),
(732,'offerenddate','Offer End Date'),
(733,'units','Unit and Ingredients'),
(734,'manage_unitmeasurement','Unit Measurement'),
(735,'unit_list','Unit Measurement List'),
(736,'unit_add','Add Unit'),
(737,'unit_update','Unit Update'),
(738,'unit_name','Unit Name'),
(739,'manage_ingradient','Manage Ingredients'),
(740,'ingradient_list','Ingredient List'),
(741,'add_ingredient','Add Ingredient'),
(742,'ingredient_name','Ingredient Name'),
(743,'unit_short_name','Short Name'),
(744,'update_ingredient','Update Ingredient'),
(745,'component','Components'),
(746,'vat_tax','Vat'),
(748,'food_varient','Food Variant'),
(749,'food_availablity','Food Availability'),
(750,'add_varient','Add Variant'),
(751,'varient_name','Variant Name'),
(752,'variant_list','Variant List'),
(753,'variant_edit','Update Variant'),
(754,'food_availablelist','Food Available List'),
(755,'add_availablity','Add Available Day & Time'),
(756,'edit_availablity','Update Available Day & Time'),
(757,'available_day','Available Day'),
(758,'available_time','Available Time'),
(759,'membership_management','Membership Management'),
(760,'membership_list','Membership List'),
(761,'membership_name','Membership Name'),
(762,'discount','Discount'),
(763,'other_facilities','Other Facilities'),
(764,'membership_add','Add Membership'),
(765,'membership_edit','Update Membership'),
(766,'payment_setting','Payment Method Setting'),
(767,'paymentmethod_list','Payment Method List'),
(768,'payment_add','Add Payment Method'),
(769,'payment_edit','Update Payment Method'),
(770,'payment_name','Payment Method Name'),
(771,'shipping_setting','Shipping Method Setting'),
(772,'shipping_list','Shipping Method List'),
(773,'shipping_name','Shipping Method Name'),
(774,'shipping_add','Add Shipping Method'),
(775,'shipping_edit','Update Shipping Method'),
(776,'shippingrate','Shipping Rate'),
(777,'supplier_manage','Supplier Manage'),
(778,'supplier_name','Supplier Name'),
(779,'supplier_list','Supplier List'),
(780,'mobile','Mobile'),
(781,'address','Address'),
(782,'supplier_add','Add Supplier'),
(783,'supplier_edit','Update Supplier'),
(784,'purchase_item','Purchase Item'),
(785,'purchase','Purchase Manage'),
(786,'purchase_list','Purchase List'),
(787,'purchase_add','Add Purchase'),
(788,'purchase_edit','Update Purchase'),
(789,'quantity','Quantity'),
(790,'supplier_information','Supplier Information'),
(791,'add_new_order','Add New Order'),
(792,'pending_order','Pending Order'),
(793,'processing_order','Processing Order'),
(794,'cancel_order','Cancel Order'),
(795,'complete_order','Complete Order'),
(796,'pos_invoice','POS Invoice'),
(797,'ordermanage','Manage Order'),
(798,'table_manage','Manage Table'),
(799,'table_edit','Update Table'),
(800,'table_list','Table List'),
(801,'table_name','Table Name'),
(802,'customer_type','Customer Type'),
(803,'customertype_list','Customer Type List'),
(804,'production','Production'),
(805,'add_table','Table Add'),
(806,'table_add','Add Table'),
(807,'add_new_table','Add Table'),
(808,'order_list','Order List'),
(809,'currency','Currency'),
(810,'currency_list','Currency List'),
(811,'currency_name','Currency Name'),
(812,'currency_add','Add Currency'),
(813,'currency_edit','Update Currency'),
(814,'currency_icon','Currency Icon'),
(815,'currency_rate','Conversion Rate'),
(816,'report','Report'),
(817,'purchase_report','Purchase Report'),
(818,'purchase_report_ingredient','Stock Report (Kitchen)'),
(819,'stock_report','Stock Report'),
(820,'sell_report','Sales Report'),
(821,'stock_report_product_wise','Stock Report (Food Items)'),
(822,'accounts','Accounts'),
(823,'c_o_a','Chart of Accounts'),
(824,'debit_voucher','Debit Voucher'),
(825,'credit_voucher','Credit Voucher'),
(826,'contra_voucher','Contra Voucher'),
(827,'journal_voucher','Journal Voucher'),
(828,'voucher_approval','Voucher Approval'),
(829,'account_report','Accounts Report'),
(830,'voucher_report','Voucher Report'),
(831,'cash_book','Cash Book'),
(832,'bank_book','Bank Book'),
(833,'general_ledger','General Ledger'),
(834,'trial_balance','Trial Balance'),
(835,'profit_loss','Profit Loss'),
(836,'cash_flow','Cash Flow'),
(837,'coa_print','COA Print'),
(838,'in_quantity','In Quantity'),
(839,'out_quantity','Out Quantity'),
(840,'stock','Stock'),
(841,'find','Find'),
(842,'from_date','From'),
(843,'to_date','To'),
(844,'approved','Approved'),
(845,'total_ammount','Total Amount'),
(846,'total_purchase','Total Purchase'),
(847,'total_sale','Total Sale'),
(848,'csv_file_informaion','CSV File Information'),
(849,'import_product_csv','Import product (CSV)'),
(851,'production_set_list','Production Set List'),
(852,'production_add','Add Production'),
(853,'production_list','Production List'),
(854,'billing_from','Billing From'),
(855,'invoice','Invoice'),
(856,'invoice_no','Invoice No'),
(857,'billing_date','Billing Date'),
(858,'billing_to','Billing To'),
(859,'reservation','Reservation'),
(860,'take_reservation','Take A Reservation'),
(861,'update_table','Table Update'),
(862,'reserve_time','Reservation Table'),
(863,'reservation_table','Add Booking'),
(864,'table_setting','Table Setting'),
(865,'capacity','Capacity'),
(866,'icon','Icon'),
(867,'purchase_return','Purchase Return'),
(868,'purchase_qty','Purchase Qty'),
(869,'return_qty','Return Qty'),
(870,'total','Total'),
(871,'select','Select'),
(872,'return_invoice','Return Invoice'),
(873,'invoice_view','View Invoice'),
(874,'grand_total','Grand Total'),
(875,'supplier','Supplier'),
(876,'po_no','Invoice No'),
(877,'grant','Grant'),
(878,'hrm','Human Resource'),
(879,'departmentfrm','Add Department'),
(880,'benefits','Benefits'),
(881,'class','Class'),
(882,'biographical_info','Biographical Info'),
(883,'additional_address','Additional Address'),
(884,'custom','Custom'),
(885,'pay_now','Pay Now ??'),
(886,'paymentmethod_setup','Payment Setup'),
(887,'add_paymentsetup','Add New Payment Setup'),
(888,'edit_setup','Update Setup'),
(889,'marchantid','Marchant ID'),
(890,'order_successfully','Your Payment was Completed!!!.'),
(891,'order_fail','Payment Incomplete!!!'),
(892,'voucher_no','Voucher No'),
(893,'remark','Remark'),
(894,'code','Code'),
(895,'debit','Debit'),
(896,'credit','Credit'),
(897,'template_name','Template Name '),
(898,'sms_template','SMS Template'),
(899,'sms_template_warning','Please Use '),
(900,'userid','User ID'),
(901,'from','From'),
(902,'opening_cash_and_equivalent','Opening Cash & Equivalent'),
(903,'amount_in_Dollar','Amount In Dollar'),
(904,'pre_balance','Pre Balance'),
(905,'current_balance','Current Balance'),
(906,'with_details','With Details'),
(907,'credit_account_head','Credit Account Head'),
(908,'gl_head','GL Head'),
(909,'transaction_head','Transaction Head'),
(910,'confirm','Confirm'),
(911,'s_rate','Rate'),
(912,'web_setting','Web Setting'),
(913,'banner_setting','Banner Setting'),
(914,'menu_setting','Menu Setting'),
(915,'widget_setting','Widget Setting'),
(916,'add_banner','Add Banner'),
(917,'bannertype','Add Banner Type'),
(918,'banner_list','Banner List'),
(919,'title','Title'),
(920,'subtitle','Sub Title'),
(921,'banner_type','Banner Type'),
(922,'link_url','Link URL'),
(923,'banner_edit','Banner Update'),
(924,'menu_name','Menu Name'),
(925,'menu_url','Menu Slug'),
(926,'sub_menu','Sub Menu'),
(927,'add_menu','Add Menu'),
(928,'parent_menu','Parent Menu'),
(929,'widget_name','Widget Name'),
(930,'widget_title','Widget Title'),
(931,'widget_desc','Description'),
(932,'add_widget','Add New'),
(933,'common_setting','Common Setting'),
(934,'bannersize','Banner Size'),
(936,'height','Height'),
(937,'exclusive','Exclusive'),
(938,'best_Offers','Best Offer'),
(939,'invalid_size','Invalid Size'),
(940,'confirm_reservation','Confirm Reservation'),
(941,'food_details','Food Details'),
(942,'email_setting','Email Setting'),
(943,'contact_email_list','Contact List'),
(944,'subscribelist','Subscribe List'),
(945,'contact_send','Your Contact Information Send Successfully.'),
(946,'couponlist','Coupon List'),
(947,'add_coupon','Add Coupon'),
(948,'coupon_Code','Coupon Code'),
(949,'coupon_rate','Coupon Value'),
(950,'coupon_startdate','Start Date'),
(951,'coupon_enddate','End Date'),
(952,'coupon_edit','Update Coupon'),
(953,'rating','Rating '),
(954,'add_rating','Add Rating'),
(955,'reviewtxt','Review Text'),
(956,'rating_edit','Rating Update'),
(957,'customer_rating','Customer Rating'),
(958,'country_list','Country List'),
(959,'countryname','Country Name'),
(960,'add_country','Add Country'),
(961,'edit_country','Update Country'),
(962,'add_state','Add State'),
(963,'edit_state','State Update'),
(964,'state','State'),
(965,'city','City'),
(966,'add_city','Add City'),
(967,'edit_city','City Update'),
(968,'country','Country'),
(969,'state_list','State List'),
(970,'city_list','All City'),
(971,'server_setting','App Setting'),
(972,'netip','Your Local Host Full URL'),
(974,'onlinebdname','Online Database Name'),
(975,'dbuser','Database User'),
(976,'dbpassword','Database Password'),
(977,'dbhost','Database Host Name'),
(978,'social_setting','Social Setting'),
(979,'url_link','URL'),
(980,'sicon','Select Icon'),
(981,'ord_failed','Order Failed!!!'),
(982,'failed_msg','Order not placed due to some reason. Please Try Again!!!. Thank You !!!'),
(983,'ord_succ','Order Placed Successfully!!!'),
(984,'succ_smg','Are you Sure to Print This Invoice????'),
(985,'no_order_run','No Order Running'),
(986,'thirdpartycustomer_list','Third-Party Customers'),
(987,'3rd_customer_list','Third-Party Customers List'),
(988,'3rdcompany_name','Company Name'),
(989,'add_3rdparty_comapny','Add New Company'),
(990,'update_3rdparty','Update Company'),
(991,'commision','Commission'),
(992,'list_of_card_terminal','Card Terminal List'),
(993,'add_new_terminal','Add New Terminal'),
(994,'update_terminal','Update Terminal'),
(995,'card_terminal_name','Card Terminal Name'),
(996,'list_of_bank','Bank List'),
(997,'add_bank','Add New Bank'),
(998,'update_bank','Update Bank'),
(999,'bank_name','Bank Name'),
(1000,'sell_report_filter','Sale Report Filtering'),
(1001,'sms_setting','SMS Setting'),
(1002,'sms_configuration','SMS Configuration'),
(1003,'sms_temp','SMS Template'),
(1004,'candidate_name','Candidate Name'),
(1005,'assign1_role','Assign Role'),
(1006,'customer_list','Customer List'),
(1007,'customer_name','Customer Name'),
(1008,'update_ord','Update Order'),
(1009,'final_report','Final Report'),
(1010,'ehrm','HRM'),
(1011,'add_expense_item','Add Expense Item'),
(1012,'manage_expense_item','Manage Expense Item'),
(1013,'add_expense','Add Expense'),
(1014,'manage_expense','Manage Expense'),
(1015,'expense_statement','Expense Statement'),
(1016,'expense_type','Expense Type'),
(1017,'expense_item_name','Expense Item Name'),
(1018,'expense','Expense'),
(1020,'signature_pic','Signature Picture'),
(1021,'branch1','Branch'),
(1022,'ac_no','A/C Number'),
(1023,'ac_name','A/C Name'),
(1024,'bank_transaction','Bank Transaction'),
(1025,'bank','Bank'),
(1027,'bank_ledger','Bank Ledger'),
(1028,'note_name','Note Name'),
(1029,'balance','Balance'),
(1030,'previous_balance','Previous Credit Balance'),
(1031,'manage_supplier_ledger','Manage supplier Ledger'),
(1032,'supplier_ledger','Supplier Ledger'),
(1033,'print','Print'),
(1034,'select_supplier','Select Supplier'),
(1035,'deposite_id','Deposit ID'),
(1036,'print_date','Print Date'),
(1037,'manage_bank','Manage Bank'),
(1038,'add_new_bank','Add New Bank'),
(1039,'bank_list','Bank List'),
(1040,'bank_edit','Bank Edit'),
(1041,'debit_plus','Debit (+)'),
(1042,'credit_minus','Credit (-)'),
(1043,'withdraw_deposite_id','Withdraw / Deposit ID'),
(1044,'cash_adjustment','Cash Adjustment'),
(1045,'adjustment_type','Adjustment Type'),
(1046,'supplier_payment','Supplier Payment'),
(1047,'prepared_by','Prepared By'),
(1048,'authorized_signature','Authorized Signature'),
(1049,'chairman','Chairman'),
(1050,'kitchen_dashboard','Kitchen Dashboard'),
(1051,'counter_dashboard','Counter Dashboard'),
(1052,'nw_order','New Order'),
(1053,'ongoingorder','On Going Order'),
(1054,'tdayorder','Today Order'),
(1055,'onlineord','Online Order '),
(1056,'table','Table'),
(1057,'waiter','Waiter'),
(1058,'del_company','Delivery Company'),
(1059,'cookedtime','Cooking Time'),
(1060,'ord_num','Order Number'),
(1061,'cmplt','Complete'),
(1062,'sl_payment','Select Your Payment Method'),
(1063,'paymd','Payment Method'),
(1064,'crd_terminal','Card Terminal'),
(1065,'sl_bank','Select Bank'),
(1066,'lstdigit','Last 4 Digit'),
(1067,'cuspayment','Customer Payment'),
(1068,'cng_amount','Changes Amount'),
(1069,'pay_print','Pay Now & Print Invoice'),
(1070,'payn','Pay Now'),
(1071,'ordid','Order ID'),
(1072,'can_reason','Cancel Reason'),
(1073,'can_ord','Cancel Order'),
(1074,'close','Close'),
(1075,'add_customer','Add Customer'),
(1076,'fav_addesrr','Favorite Address'),
(1077,'tabltno','Table No'),
(1078,'ordate','Order Date'),
(1079,'payment_status','Payment Status'),
(1080,'ordtcoun','Order Time Countdown Board'),
(1081,'remtime','Remaining Time'),
(1082,'ordtime','Order Time'),
(1083,'ord','Order'),
(1084,'tok','Token'),
(1085,'view_ord','View Order'),
(1086,'fdready','Food Ready'),
(1087,'fdnready','Food Not Ready'),
(1088,'foodrfs','Food is Ready for Served!!'),
(1089,'foodnrfs','Food Not Ready for Served'),
(1090,'ordready','Order Ready'),
(1091,'sele_by_date','Sale By Date'),
(1092,'withdetails','With Details'),
(1093,'topeneqv','Total Opening Cash & Cash Equivalent'),
(1094,'cashopen','Cashflow from Operating Activities'),
(1095,'payact','Payment for Other Operating Activities'),
(1096,'cash_gand_lie','Cash generated from Operating Activities before Changing in Operating Assets & Liabilities'),
(1097,'casfactive','Cashflow from Non Operating Activities'),
(1098,'cashnonlia','Cash generated from Non Operating Activities before Changing in Operating Assets & Liabilities'),
(1099,'incdre','Increase/Decrease in Operating Assets & Liabilities'),
(1100,'Tincdre','Total Increase/Decrease'),
(1101,'netopenactv','Net Cash From Operating/Non Operating Activities'),
(1102,'cfact','Cash Flow from Investing Activities'),
(1103,'ncuia','Net Cash Used Investing Activities'),
(1104,'cfffa','Cash Flow from Financing Activities'),
(1105,'netcufa','Net  Cash Used Financing Activities'),
(1106,'ncio','Net Cash Inflow/Outflow'),
(1107,'pflos','Profit Loss'),
(1108,'clcEq','Closing Cash & Cash Equivalent:'),
(1109,'TcccE','Total Closing Cash & Cash Equivalent'),
(1110,'pp_by','Prepared By'),
(1111,'act','Accounts'),
(1112,'ausig','Authorized Signature'),
(1113,'particls','Particulars'),
(1114,'back','Back'),
(1115,'bk_vouchar','Bank Book Voucher'),
(1116,'errorajdata','Error get data from ajax'),
(1117,'reach_limit','You have reached the limit of adding'),
(1118,'inpt','inputs'),
(1119,'cantdel','There only one row you can\'t delete.'),
(1120,'slsuplier','Select Supplier'),
(1121,'ptype','Payment Type'),
(1122,'casp','Cash Payment'),
(1123,'bnkp','Bank Payment'),
(1124,'slbank','Select Bank'),
(1125,'cscrv','Cash Credit Voucher'),
(1126,'ac_code','Account Code'),
(1127,'ac_head','Account Head'),
(1128,'iword','In word'),
(1129,'ac_office','Accounts Officer'),
(1130,'latestv','Latest version'),
(1131,'after19','Auto Update Feature working On  after 1.9'),
(1132,'crver','Current version'),
(1133,'notesupdate','note: strongly recommended to backup your <b>SOURCE FILE</b> and <b>DATABASE</b> before update.'),
(1134,'noupdates','No Update available'),
(1135,'lic_pur_key','License/Purchase key'),
(1136,'lifeord','Lifetime Orders'),
(1137,'tdaysell','Today Sale'),
(1138,'tcustomer','Total Customer'),
(1139,'tdeliv','Total Delivered'),
(1140,'treserv','Total Reservation'),
(1141,'latestord','Latest Order'),
(1142,'latest_reser','Latest Reservation'),
(1143,'ord_number','Order No.'),
(1144,'latestolorder','Latest Online Order'),
(1145,'monsalamntorder','Monthly Sales Amount and Order'),
(1146,'onlineofline','Online Vs Offline Order & Sales'),
(1147,'pending_ord','Pending Order'),
(1148,'onlinesamnt','Online Sale Amount'),
(1149,'onlineordnum','Online Order Number'),
(1150,'offsalamnt','Offline Sale Amount'),
(1151,'offlordnum','Offline Order Number'),
(1152,'saleamnt','Sale Amount'),
(1153,'ordnumb','Order Number'),
(1154,'store_name','Store Name'),
(1155,'opent','Available On'),
(1156,'closeTime','Closing Time'),
(1157,'sldistype','Select Discount Type'),
(1158,'distype','Discount Type'),
(1159,'percent','Percent'),
(1160,'sl_se_ch_ty','Select Service Charge Type'),
(1161,'vatset','VAT Setting(%)'),
(1162,'mindeltime','Min. Delivery Time'),
(1163,'dateformat','Date Format'),
(1164,'sedateformat','Seletet Date Format'),
(1165,'add_menu_item','Add Menu Item'),
(1166,'menu_title','Menu Title'),
(1167,'can_create','Can Create'),
(1168,'can_read','Can Read'),
(1169,'can_edit','Can Edit'),
(1170,'can_delete','Can Delete'),
(1171,'smsrankgateway','To get <b>50</b> free SMS from smsrank.com click'),
(1172,'ranktext',' and register in registration section click Already Envato user and put your envato purchase key and product id  after registration put your username and password into the password and user name field this form.'),
(1173,'managementsection','This Section is Use Only for Store Management.'),
(1174,'width','Width'),
(1175,'protocal','Protocol'),
(1176,'mailpath','Mail Path'),
(1177,'Mail_type','Mail Type'),
(1178,'smtp_host','SMTP Host'),
(1179,'smtp_post','SMTP Port'),
(1180,'sender_email','Sender Email'),
(1181,'smtp_password','SMTP Password'),
(1183,'powered_by','Powered By Text'),
(1184,'item_information','Item Information'),
(1185,'size','Size'),
(1186,'qty','Quantity'),
(1187,'addons_name','Add-ons Name '),
(1188,'addons_qty','Add-ons Qty'),
(1190,'item','Item'),
(1191,'unit_price','Unit Price'),
(1192,'total_price','Total Price'),
(1193,'order_status','Order Status'),
(1194,'served','Served'),
(1195,'cancel_reason','Cancel Reason'),
(1196,'customer_order','Customer Notes'),
(1197,'customerpicktime','Customer Pick-up Date and time'),
(1199,'service_chrg','Service Charge'),
(1200,'customer_paid_amount','Customer Paid Amount'),
(1201,'change_due','Change Due'),
(1202,'total_due','Total Due'),
(1203,'powerbybdtask','Powered  By: BDTASK, www.bdtask.com'),
(1204,'recept','Receipt  No'),
(1205,'orderno','Order No.'),
(1206,'ref_page','Refresh Page'),
(1207,'orderid','Order ID'),
(1208,'all','All'),
(1209,'vat_tax1','Vat/Tax'),
(1210,'ord_uodate_success','Order Update Successfully!!!'),
(1211,'do_print_token','Do you Want to Print Token No.???'),
(1212,'req_failed','Request Failed, Please check your code and try again!'),
(1213,'ord_places','Order Placed Successfully'),
(1214,'do_print_in','Do you Want to Print Invoice???'),
(1215,'ord_complte','Order Completed'),
(1216,'ord_com_sucs','Order Completed Successfully'),
(1217,'token_no','Token NO'),
(1218,'qr-order','QR Order'),
(1219,'cuschange','Customer Change'),
(1220,'order_successfully_placed','Order Has Been Placed Successfully!'),
(1221,'kitchen_setting','kitchen Setting'),
(1222,'kitchen_name','Kitchen Name'),
(1223,'kitchen_user_assign','Assign Kitchen User'),
(1224,'kitchen_list','Kitchen List'),
(1225,'add_kitchen','Add Kitchen'),
(1226,'kitchen_assign','Kitchen Assign'),
(1227,'kitchen_edit','Kitchen Edit'),
(1228,'please_try_again_userassign','This user is already assign in this kitchen'),
(1229,'select_kitchen','Select Kitchen'),
(1230,'memberid','Member ID'),
(1231,'member_name','Member Name'),
(1232,'add_member','Add New Member'),
(1233,'update_member','Update Member'),
(1234,'member_list','Member List'),
(1236,'meminfo','Member Manage'),
(1237,'blocked','Blocked'),
(1238,'memberid_exist','Member ID Already Exists. Please Try Another.'),
(1239,'add_new_payment_type','Add New Payment Method'),
(1240,'sell_report_items','Items Sales Report'),
(1241,'sell_report_waiters','Waiters Sales Report'),
(1242,'sell_report_delvirytype','Delivery Type Sales Report'),
(1243,'sell_report_casher','Sale Report Cashier'),
(1244,'ready_all_ietm','All Item Ready'),
(1245,'unpaid_sell','Unpaid Sale'),
(1246,'kitchen_sell','Kitchen Sales Report'),
(1247,'order_total','Total Order '),
(1248,'scharge_report','Service Charge Report '),
(1249,'seo_setting','SEO Setting'),
(1250,'seo_title','Title'),
(1251,'seo_keyword','Keyword'),
(1252,'seo_description','Description'),
(1257,'buy_now','Buy Now'),
(1264,'purchase_key','Purchase Key'),
(1271,'kitchen_status','Kitchen Status'),
(1278,'habittrack','Customer Habit List'),
(1279,'review_rating','Review & Rating'),
(1280,'pos_setting','POS Setting'),
(1286,'month','Month'),
(1287,'sl_option','Select Option'),
(1288,'sl_product','Search Product'),
(1289,'quickorder','Quick Order'),
(1290,'placeorder','Place Order'),
(1291,'type_slorder','Type and Select Order'),
(1292,'mergeord','Merge Order'),
(1293,'Processingod','Processing...'),
(1294,'sLengthMenu','Display _MENU_ records per page'),
(1295,'sInfo','Showing _START_ to _END_ of _TOTAL_ entries'),
(1296,'sInfoEmpty','Showing 0 to 0 of 0 entries'),
(1297,'sInfoFiltered','(Filtered from _MAX_ Total Records)'),
(1298,'sLoadingRecords','Loading...'),
(1299,'sZeroRecords','Nothing found - sorry'),
(1300,'sEmptyTable','No Data Available in Table'),
(1301,'sFirst','First'),
(1302,'sLast','Last'),
(1303,'sPrevious','Previous'),
(1304,'sNext','Next'),
(1305,'sSortAscending','Activate to sort column ascending'),
(1306,'sSortDescending','Activate to Sort Column Descending'),
(1307,'_sign','Show %d Rows'),
(1308,'_0sign','No Row Selected'),
(1309,'_1sign','1 Line Selected'),
(1310,'copy','Copy'),
(1312,'excel','Excel'),
(1313,'pdf','Pdf'),
(1314,'colvis','Column Visibility'),
(1316,'no_orderfound','No Order Found!!!'),
(1317,'prepared','Prepared'),
(1318,'accept','Accept'),
(1319,'reject','Reject'),
(1320,'ready','Ready'),
(1321,'processing','Processing'),
(1322,'kitnotacpt','Kitchen Not Accept'),
(1425,'person','Person'),
(1426,'before_time','Running Time'),
(1427,'select_this_table','Select This Table'),
(1428,'seat','Seat'),
(1429,'seat_time','Time'),
(1430,'+','Add'),
(1431,'clear','Clear'),
(1432,'no_customer','No Customer'),
(1433,'table_map','Table Map'),
(1434,'add','Add'),
(1435,'itemsincart','Item(s) in Cart'),
(1436,'view_cart','View Cart'),
(1437,'morderlist','My Order List'),
(1438,'edit','Edit'),
(1439,'foodde','Food Details'),
(1440,'cartlist','Cart List'),
(1441,'subtotal','Subtotal'),
(1442,'ordnote','Order Notes'),
(1443,'upsummery','Update Summery'),
(1444,'upsumlist','Update Summery List'),
(1445,'mkpayment','Make Payment'),
(1446,'foodnote','Food Note'),
(1447,'addnotesi','Add Note'),
(1448,'thirdparty_orderid','Third-party Order ID'),
(1456,'themes','Themes'),
(1457,'menu_type','Menu Type'),
(1458,'add_menu_type','Add Menu Type'),
(1459,'menutype_edit','Menu Type Edit'),
(1460,'menu_type_name','Menu Type'),
(1461,'storetime','Manage Store Time'),
(1462,'day_name','Day'),
(1463,'saturday','Saturday'),
(1464,'sunday','Sunday'),
(1465,'monday','Monday'),
(1466,'tuesday','Tuesday'),
(1467,'wednesday','Wednesday'),
(1468,'thursday','Thursday'),
(1469,'friday','Friday'),
(1470,'footer_logo','Footer Logo'),
(1471,'contact_us','Contact Us'),
(1472,'opening_time','Available On'),
(1473,'ourstore','Our Store'),
(1474,'call_reservation','Call for Reservations'),
(1475,'item_available','Items Available'),
(1479,'membership_card','Bar Code'),
(1480,'barcode_start','From Barcode'),
(1481,'barcode_end','To Barcode'),
(1494,'commission','Commission'),
(1495,'sale_by_table','Sale By Table'),
(1496,'stock_limit','Re-Stock Level'),
(1497,'ingredients','Ingredients'),
(1498,'stock_out_ingredients','Stock Out Ingredients'),
(1499,'office_addres1','Office Address'),
(1500,'call_us','Call Us'),
(1501,'email_us','Email Us'),
(1502,'upload_theme','Upload Theme'),
(1503,'discount_type','Discount Type'),
(1504,'confirm_password','Confirm Password'),
(1559,'wastemangment','Waste Management'),
(1590,'add_group_item','Add Group Item'),
(1591,'update_group_item','Update Group Item'),
(1592,'production_setting','Production Setting'),
(1593,'select_auto','Select auto Production'),
(1594,'split','Split'),
(1595,'tinvat','TIN OR VAT NUM.'),
(1596,'bill','Bill'),
(1597,'checkin','Check In'),
(1598,'checkout','Check Out'),
(1599,'totalpayment','Total payment'),
(1600,'thanssuport','Thank You for Your Support'),
(1601,'thanks_you','Thank you very much'),
(1602,'opening_balance','Opening Balance'),
(1603,'transaction_date','Date'),
(1604,'voucher_type','Voucher Type'),
(1605,'particulars','Head Name'),
(1606,'total_empolyee','Total Employee'),
(1607,'apply_day','Days'),
(1608,'loan_no','Loan No.'),
(1609,'add_floor','Add Floor'),
(1610,'floor_name','Floor Name'),
(1611,'edit_floor','Edit Floor'),
(1612,'floor_list','Floor List'),
(1613,'floor_select','Floor Select'),
(1614,'add_to_cart_more','Add Multiple Variant'),
(1615,'kitchen_printers','Kitchen printer Setting'),
(1616,'printer_list','Printer List'),
(1617,'add_printer','Add Printer'),
(1618,'ip_port','Your Online URL'),
(1625,'counter_list','Counter List'),
(1626,'add_counter','Add Counter'),
(1627,'edit_counter','Edit Counter'),
(1628,'counter_no','Counter Number'),
(1629,'add_opening_balance','Add Opening Balance'),
(1630,'add_closing_balance','Add Closing Balance'),
(1632,'sell_report_cashregister','Cash Register Report'),
(1633,'closing_balance','Closing Balance'),
(1634,'factory_reset','Factory Reset'),
(1635,'fresettext','Note: Strongly recommended to backup your SOURCE file and DATABASE before resetting because all transactional data will be cleared after running the factory reset.'),
(1636,'bill_by','Bill By'),
(1640,'type_table','Type and Select Table'),
(1648,'sound_setting','Sound Setting'),
(1649,'is_sound','Is Sound Enable'),
(1650,'upload_notify','Upload Notification Sound'),
(1651,'upload_order','Upload order Add Sound'),
(1655,'room_list','Room List'),
(1656,'add_room','Add Room'),
(1657,'room_no','Room No'),
(1658,'room_qr','All Room QR'),
(1659,'restaurant_closed','Restaurant is Closed!!'),
(1660,'closed_msg','You order Only when restaurant is open. Our opening and closing Time is:'),
(1661,'privactp','Privacy Policy'),
(1662,'terms_condition','Terms & conditions'),
(1663,'refundp','Refund Policies'),
(1664,'reservation_on_off','Reservation On Off'),
(1665,'unavailable_day','Unavailable Day'),
(1666,'unavaildate','Unavailable Date'),
(1667,'add_unavailablity','Add Unavailability'),
(1668,'edit_unavailablity','Edit Unavailability'),
(1669,'unavailable_time','Unavailable Time'),
(1670,'max_reserveperson','Max Reserve Person'),
(1671,'reservasetting','Reservation Setting'),
(1672,'webon','Website ON'),
(1673,'weboff','Website Off'),
(1674,'webdisable','Web site ON/Off'),
(1675,'placr_setting','Place order Setting'),
(1676,'quick_ord','Quick Order Setting'),
(1677,'shippingtime','Shipping Date & Time'),
(1678,'search_food_item','Search Food Item'),
(1679,'search_category','Search Category'),
(1680,'check_availablity','Check Availability'),
(1681,'subscribe_paragraph','Subscribe to Receive Our Weekly Promotion'),
(1682,'shipping_method','Shipping Method'),
(1683,'please_select_shipping_method','Please Select Shipping Method'),
(1684,'autoupdate','Auto Update'),
(1685,'coa_head','COA Head'),
(1686,'apps_addons','Apps Add-ons'),
(1687,'download_apps_playstore','Please Download Apps on Playstore'),
(1688,'kitchen_app','Kitchen App'),
(1689,'waiter_app','Waiter App'),
(1690,'customer_app','Customer App'),
(1691,'if_you_need_the_above_all_apps','If you need the above all apps, please feel free to contact us.'),
(1692,'do_you_want_proceed','Do You Want to Proceed?'),
(1693,'is_offer','Offer'),
(1694,'is_special','Special'),
(1695,'is_custome_quantity','Custom Quantity'),
(1696,'kitchenitemsell','Kitchen Sell'),
(1697,'due_marge','Due Merge'),
(1698,'book_table','Book Table'),
(1699,'reserve_table','Reserve Table'),
(1700,'see_more','See More'),
(1701,'food_name','Food Name'),
(1702,'category','Category'),
(1703,'search','Search'),
(1704,'read_more','Read more'),
(1705,'item_has_been_successfully_added','Item has been successfully added'),
(1706,'add_to_cart','add to cart'),
(1707,'view_full_menu','View Full Menu'),
(1709,'subscribe_to_newsletter','Subscribe to Newsletter'),
(1710,'subscribe','subscribe'),
(1711,'get_directions','Get Directions'),
(1712,'teams_of_use','Teams of use'),
(1713,'privacy_policy','Privacy Policy'),
(1714,'contact','Contact'),
(1715,'please_enter_your_email','Please Enter Your email !!'),
(1716,'please_enter_valid_email','Please enter a valid Email'),
(1717,'thanks_for_subscription','Thanks for Subscription'),
(1718,'note_added','Note Added'),
(1719,'posting_failed','Posting failed'),
(1720,'our_service_is_closed_on_this_date_and_time','Our service is Closed on this date and time !!!'),
(1721,'reservation_time_closed_try_later','Reservation Time is closed!! Please try later.'),
(1722,'select_date','Please select date'),
(1723,'select_time','Please select Time'),
(1724,'enter_number_of_people','Please enter the number of people'),
(1725,'select_after_hour_current_time','Please select after 1 hour to Current time'),
(1726,'no_free_seat_to_the_reservation','Currently, there is no free seat to the reservation'),
(1727,'search_topics_or_keywords','Search topics or keywords'),
(1728,'no_data_found','No Data Found'),
(1729,'please_wait','Please Wait'),
(1730,'reservation_contact','Contact No.'),
(1731,'reservation_time','Expected Time'),
(1732,'reservation_date','Expected Date'),
(1733,'reservation_person','Total Person'),
(1734,'deal_of_the_day','Deal of the day'),
(1735,'cart','Cart'),
(1736,'unavailable','Unavailable'),
(1737,'write_comments','Write Your Comments'),
(1738,'get_in_touch','Get In Touch'),
(1739,'forgot_password','Forgot Password'),
(1740,'shopping_details_information_msg','If you have shopped with us before, please enter your details in the boxes below.'),
(1741,'remember_me','Remember Me'),
(1742,'or','OR'),
(1743,'register','Register'),
(1744,'enter_your_phone_or_email','Please enter your Phone or Email.'),
(1745,'password_not_empty','Password Not Empty.'),
(1746,'failed_login_msg','Failed Login: Check your Email and password!'),
(1747,'email_not_registered_msg','Failed: Email has not been registered yet.!!!'),
(1748,'have_been_sent_email','Success: We have been sent an email to this'),
(1749,'check_your_new_password','Email Address. Please check your New Password..!!!'),
(1750,'profile_picture','Profile Picture'),
(1751,'my_profile','My Profile'),
(1752,'my_reservation','My Reservation'),
(1753,'profile_update','Profile Update'),
(1754,'name','Name'),
(1755,'returning_customer','Returning customer?'),
(1756,'click_login','Click here to login'),
(1757,'checkout_msg','If you have shopped with us before, please enter your details in the boxes below. If you are a new customer, please proceed to the Billing & Shipping section.'),
(1758,'username_or_email','Username or Email'),
(1759,'billing_address','Billing Address'),
(1760,'select_country','Select Country'),
(1761,'select_state','Select State'),
(1762,'town_city','Town / City'),
(1763,'select_city','Select City'),
(1764,'street_address','Street Address'),
(1765,'postcode_zip','Postcode / ZIP'),
(1766,'create_account','Create an Account?'),
(1767,'create_account_password','Create account password'),
(1768,'shipping_different_address','Ship to a Different Address?'),
(1769,'your_order','Your Order'),
(1770,'product','Product'),
(1771,'total_vat','Total VAT'),
(1772,'coupon_discount','Coupon Discount'),
(1773,'service','Service'),
(1774,'tag','Tag'),
(1775,'review','Review'),
(1776,'average_user_rating','Average User Rating'),
(1777,'rating_breakdown','Rating Breakdown'),
(1778,'complete_success','100% Complete (success)'),
(1779,'80_complete_primary','80% Complete (primary)'),
(1780,'60_complete_info','60% Complete (info)'),
(1781,'40_complete_warning','40% Complete (warning)'),
(1782,'20_complete_danger','20% Complete (danger)'),
(1783,'rate_it','Rate It'),
(1784,'french_chicken_burger_tomato_sauce','French Chicken Burger With Hot tomato Sauce'),
(1785,'review_submit','Review Submit'),
(1786,'related_items','Related Items'),
(1787,'pickup','Pickup'),
(1788,'dine_in','Dine-in'),
(1789,'enter_coupon_code','Enter coupon code'),
(1790,'00_15_min','00:15 MIN'),
(1791,'go_to_checkout','Go to Checkout'),
(1798,'timezone','Time Zome'),
(1799,'discountrate','Discount Rate'),
(1800,'vat','Vat'),
(1801,'loan_issue_id','Loan Issue ID'),
(1802,'repayment','Re-payment'),
(1803,'loan_report_details','Loan Details'),
(1804,'balance_sheet','Balance Sheet'),
(1813,'purdate','Purchase Date'),
(1814,'expdate','Expiry Date'),
(1815,'parent_cat','Parent Category'),
(1816,'set_productioncost','Set Production Cost Per Unit'),
(1817,'set_productionunit','Set Production Unit'),
(1818,'production_set','Production Set'),
(1819,'production_set_for','Production Set For'),
(1820,'serving_unit','Serving Unit'),
(1821,'kit_dashoard_setting','Kitchen Dashboard Setting'),
(1822,'kot_reftime','Kitchen Refresh time In Second'),
(1823,'bulk_upload','Bulk Upload'),
(1824,'upload_food_csv','Upload Food Item csv'),
(2202,'appcartempty','Your Cart is empty!!!.Please add some food.'),
(2203,'apporderempty','You Order List is empty!!! Please Place A Order First!!!'),
(2244,'topselleingitem','Top selling Item'),
(2252,'logininfo','Login Info'),
(2253,'newuser','New User'),
(2254,'orloginwith','or login with'),
(2255,'registerinfo','Registration Info'),
(2256,'register_txt','If you have shopped with us before, please enter your details in the boxes below.'),
(2257,'customerinfo','Customer Info'),
(2258,'delvtype','Delivery Type'),
(2259,'delv_date','Delivery Date'),
(2260,'delvtime','Delivery Time'),
(2261,'yourcart','Your Cart'),
(2262,'items','items'),
(2263,'delivarycrg','Delivery charge'),
(2264,'offercodegift','Offer code / gift card code'),
(2265,'apply','Apply'),
(2266,'proceedtocart','Proceed to Checkout'),
(2267,'delv_address','Delivary address List'),
(2268,'create_address','Create Address'),
(2269,'seeallmenu','See all menu'),
(2270,'sendymsg','Send Your Message'),
(2271,'send_us','Send Us Message'),
(2297,'number_of_tax','Number of tax'),
(2300,'tax_name','Tax Name'),
(2302,'closing_note','Closing Note'),
(2304,'close_resister_and_print_summery','Close Resister and print Summery'),
(2305,'previous','Previous'),
(2306,'unpaid','Unpaid'),
(2307,'check_item','Check Item'),
(2308,'check_item_message','Please check at least one item!!'),
(2309,'yes','Yes'),
(2311,'time_over','Time Over'),
(2312,'add_phrase','Add Phrase'),
(2313,'crd_terminal_message','Please Select Card Terminal!!!'),
(2314,'language_list','Language List'),
(2315,'commission_setting','Commission Setting'),
(2316,'pending','Pending'),
(2317,'current_register','Current Register'),
(2318,'due','Due'),
(2319,'due_invoice','Due Invoice'),
(2320,'payable_amount','Payable Amount'),
(2321,'isinclusivetax','Is Tax Inclusive?'),
(2322,'showhidevattin','Show/Hide(VAT/TIN)'),
(2323,'custfldname','Custom Field Name'),
(2324,'custfldtype','Custom Field Type'),
(2325,'customvalue','Custom Value'),
(2326,'cash_in_hand','Cash In Hand'),
(2327,'booked','Booked'),
(2328,'realease','Release\r\n'),
(2329,'liveortest','Live Or Test'),
(2330,'live','Live Mode'),
(2331,'test_mode','Test Mode');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_apply`
--

DROP TABLE IF EXISTS `leave_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `leave_apply` (
  `leave_appl_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(20) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `apply_strt_date` varchar(20) NOT NULL,
  `apply_end_date` varchar(20) NOT NULL,
  `apply_day` int(11) NOT NULL,
  `leave_aprv_strt_date` varchar(20) NOT NULL,
  `leave_aprv_end_date` varchar(20) NOT NULL,
  `num_aprv_day` varchar(15) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `apply_hard_copy` text DEFAULT NULL,
  `apply_date` varchar(20) NOT NULL,
  `approve_date` varchar(20) NOT NULL,
  `approved_by` varchar(30) NOT NULL,
  `leave_type` varchar(50) NOT NULL,
  PRIMARY KEY (`leave_appl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_apply`
--

LOCK TABLES `leave_apply` WRITE;
/*!40000 ALTER TABLE `leave_apply` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_type`
--

DROP TABLE IF EXISTS `leave_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `leave_type` (
  `leave_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_type` varchar(50) NOT NULL,
  `leave_days` int(11) NOT NULL,
  PRIMARY KEY (`leave_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_type`
--

LOCK TABLES `leave_type` WRITE;
/*!40000 ALTER TABLE `leave_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_installment`
--

DROP TABLE IF EXISTS `loan_installment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan_installment` (
  `loan_inst_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(21) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `loan_id` varchar(21) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `installment_amount` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payment` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `received_by` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `installment_no` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1',
  `notes` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`loan_inst_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_installment`
--

LOCK TABLES `loan_installment` WRITE;
/*!40000 ALTER TABLE `loan_installment` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_installment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marital_info`
--

DROP TABLE IF EXISTS `marital_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `marital_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marital_sta` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marital_info`
--

LOCK TABLES `marital_info` WRITE;
/*!40000 ALTER TABLE `marital_info` DISABLE KEYS */;
INSERT INTO `marital_info` VALUES
(1,'Single'),
(2,'Married'),
(3,'Divorced'),
(4,'Widowed'),
(5,'Other');
/*!40000 ALTER TABLE `marital_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `membership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membership_name` varchar(250) NOT NULL,
  `discount` float NOT NULL,
  `other_facilities` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_date` date NOT NULL,
  `startpoint` int(11) NOT NULL,
  `endpoint` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership`
--

LOCK TABLES `membership` WRITE;
/*!40000 ALTER TABLE `membership` DISABLE KEYS */;
INSERT INTO `membership` VALUES
(1,'Normal User',0,'',2,'2018-11-07',2,'2018-11-07',0,0),
(2,'Premium Member',0,'',1,'2020-11-04',0,'0000-00-00',250,999),
(3,'VIP',0,'',1,'2020-11-04',0,'0000-00-00',1001,5000000);
/*!40000 ALTER TABLE `membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_add_on`
--

DROP TABLE IF EXISTS `menu_add_on`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_add_on` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `add_on_id` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_add_on`
--

LOCK TABLES `menu_add_on` WRITE;
/*!40000 ALTER TABLE `menu_add_on` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_add_on` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_permission`
--

DROP TABLE IF EXISTS `module_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `module_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_module_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_module_id` (`fk_module_id`),
  KEY `fk_user_id` (`fk_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_permission`
--

LOCK TABLES `module_permission` WRITE;
/*!40000 ALTER TABLE `module_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_purchase_key`
--

DROP TABLE IF EXISTS `module_purchase_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `module_purchase_key` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identity` varchar(250) DEFAULT NULL,
  `purchase_key` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_purchase_key`
--

LOCK TABLES `module_purchase_key` WRITE;
/*!40000 ALTER TABLE `module_purchase_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_purchase_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multipay_bill`
--

DROP TABLE IF EXISTS `multipay_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `multipay_bill` (
  `multipay_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `multipayid` varchar(30) DEFAULT NULL,
  `payment_type_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`multipay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multipay_bill`
--

LOCK TABLES `multipay_bill` WRITE;
/*!40000 ALTER TABLE `multipay_bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `multipay_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_menu`
--

DROP TABLE IF EXISTS `order_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_menu` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` decimal(19,3) DEFAULT 0.000,
  `groupmid` int(11) DEFAULT 0,
  `notes` varchar(255) DEFAULT NULL,
  `menuqty` float NOT NULL,
  `add_on_id` varchar(100) NOT NULL,
  `addonsqty` varchar(100) NOT NULL,
  `varientid` int(11) NOT NULL,
  `groupvarient` int(11) DEFAULT NULL,
  `addonsuid` int(11) DEFAULT NULL,
  `qroupqty` int(11) DEFAULT NULL,
  `isgroup` int(11) DEFAULT 0,
  `food_status` int(11) DEFAULT 0,
  `allfoodready` int(11) DEFAULT NULL,
  `isupdate` int(11) DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_menu`
--

LOCK TABLES `order_menu` WRITE;
/*!40000 ALTER TABLE `order_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_frequency`
--

DROP TABLE IF EXISTS `pay_frequency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pay_frequency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frequency_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_frequency`
--

LOCK TABLES `pay_frequency` WRITE;
/*!40000 ALTER TABLE `pay_frequency` DISABLE KEYS */;
INSERT INTO `pay_frequency` VALUES
(1,'Weekly'),
(2,'Biweekly'),
(3,'Annual'),
(4,'Monthly');
/*!40000 ALTER TABLE `pay_frequency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_method` (
  `payment_method_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `modulename` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_estonian_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`payment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES
(1,'Card Payment',1,''),
(2,'Two Checkout',1,''),
(3,'Paypal',1,''),
(4,'Cash Payment',1,''),
(5,'SSLCommerz',1,''),
(6,'SIPS Office',1,''),
(7,'RMA PAYMENT GATEWAY',1,''),
(8,'Square Payments',1,''),
(9,'Stripe Payment',1,''),
(10,'Paystack Payments',1,''),
(11,'Paytm Payments',1,''),
(12,'Orange Money payment',1,''),
(13,'iyzico',1,'');
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentsetup`
--

DROP TABLE IF EXISTS `paymentsetup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentsetup` (
  `setupid` int(11) NOT NULL AUTO_INCREMENT,
  `paymentid` int(11) NOT NULL,
  `marchantid` varchar(255) DEFAULT NULL,
  `password` varchar(120) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `currency` varchar(20) NOT NULL,
  `Islive` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `edit_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`setupid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentsetup`
--

LOCK TABLES `paymentsetup` WRITE;
/*!40000 ALTER TABLE `paymentsetup` DISABLE KEYS */;
INSERT INTO `paymentsetup` VALUES
(1,5,'bdtas5e772deb8ff87','bdtas5e772deb8ff87@ssl','ainalcse@gmail.com','BDT',0,1,NULL),
(2,3,'','','tareq7500personal2@gmail.com','USD',0,1,NULL),
(3,2,'901400787','','ainalcse@gmail.com','USD',0,1,NULL),
(4,6,'002020000000001','002020000000001_KEY1','1','',0,1,NULL),
(5,7,'BE10000072','BE10000072','karmadorji@gmail.com','BTN',0,1,NULL),
(6,8,'sandbox-sq0idb-ShIOgPUIHSXxsjCPG4oh_A','EAAAEE3gxSvOVaHIq-5A5P_yFkUbkAfUM2-JiQju2FTxQ4n7epxmvKpaOhECxHcN','5SNY8GNKAZM00','AUD',0,1,NULL),
(7,9,'sk_test_ol4WUcbGsqxNJItpeOi1ecDT00k5mDyC2G','pk_test_TrVFpmZBkgasCE6WTPkZgMPr00UzVVOqgp','ainalcse@gmail.com','USD',0,1,NULL),
(8,10,'sk_test_71353c2613675acb967ea532f4c4c8105ea175b8','pk_test_328da55755b88b1aaed96c5cda215b2fd887edb9','ainalcse@gmail.com','NGN',0,1,NULL),
(9,11,NULL,'','','',0,0,NULL),
(10,12,'7BUkXCbuHDcx1ZyQqmcKVtsLnFxF0r3f','vmUIfeoHXpZSKc20Wt50d6hqeIY5FcWtFR6prg0Ubak8IvmmZEFDDpQr5ZMEdnoS','','XAF',0,1,NULL),
(12,13,'sandbox-5rd4uUC2yAz7LWDaalyJAOEsH2rxrqVB','sandbox-FsKRCZpk0BpdUss3wVsNLhvs5Ty5PSpi','','BDT',0,1,NULL);
/*!40000 ALTER TABLE `paymentsetup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll_commission_setting`
--

DROP TABLE IF EXISTS `payroll_commission_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `payroll_commission_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll_commission_setting`
--

LOCK TABLES `payroll_commission_setting` WRITE;
/*!40000 ALTER TABLE `payroll_commission_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll_commission_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll_holiday`
--

DROP TABLE IF EXISTS `payroll_holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `payroll_holiday` (
  `payrl_holi_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `holiday_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_of_days` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_by` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `updated_by` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`payrl_holi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll_holiday`
--

LOCK TABLES `payroll_holiday` WRITE;
/*!40000 ALTER TABLE `payroll_holiday` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll_holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll_tax_setup`
--

DROP TABLE IF EXISTS `payroll_tax_setup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `payroll_tax_setup` (
  `tax_setup_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `start_amount` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `end_amount` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `rate` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`tax_setup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll_tax_setup`
--

LOCK TABLES `payroll_tax_setup` WRITE;
/*!40000 ALTER TABLE `payroll_tax_setup` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll_tax_setup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `pos_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `position_details` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES
(1,'chef','Responsible for the pastry shop in a foodservice establishment. Ensures that the products produced in the pastry shop meet the quality standards in conjunction with the executive chef.'),
(2,'HRM','Recruits and hires qualified employees, creates in-house job-training programs, and assists employees with their career needs.'),
(3,'Kitchen manager','Supervises and coordinates activities concerning all back-of-the-house operations and personnel, including food preparation, kitchen and storeroom areas.'),
(4,'Counter server','Responsible for providing quick and efficient service to customers. Greets customers, takes their food and beverage orders, rings orders into register, and prepares and serves hot and cold drinks.'),
(6,'Waiter','Most waiters and waitresses, also called servers, work in full-service restaurants. They greet customers, take food orders, bring food and drinks to the tables and take payment and make change.'),
(7,'Accounts','Play a key role in every restaurant. '),
(8,'Salesman','A salesman is someone who works in sales, with the main function of selling products or services to others either by visiting locations');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production`
--

DROP TABLE IF EXISTS `production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `production` (
  `productionid` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` int(11) NOT NULL,
  `itemvid` int(11) DEFAULT NULL,
  `itemquantity` int(11) NOT NULL,
  `savedby` int(11) NOT NULL,
  `saveddate` date NOT NULL,
  `productionexpiredate` date NOT NULL,
  PRIMARY KEY (`productionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production`
--

LOCK TABLES `production` WRITE;
/*!40000 ALTER TABLE `production` DISABLE KEYS */;
/*!40000 ALTER TABLE `production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production_details`
--

DROP TABLE IF EXISTS `production_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `production_details` (
  `pro_detailsid` int(11) NOT NULL AUTO_INCREMENT,
  `foodid` int(11) NOT NULL,
  `pvarientid` int(11) DEFAULT NULL,
  `ingredientid` int(11) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `unitname` varchar(100) NOT NULL,
  `createdby` int(11) NOT NULL,
  `created_date` date NOT NULL,
  PRIMARY KEY (`pro_detailsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_details`
--

LOCK TABLES `production_details` WRITE;
/*!40000 ALTER TABLE `production_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `production_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_details`
--

DROP TABLE IF EXISTS `purchase_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_details` (
  `detailsid` int(11) NOT NULL AUTO_INCREMENT,
  `purchaseid` int(11) NOT NULL,
  `indredientid` int(11) NOT NULL,
  `quantity` decimal(19,3) NOT NULL DEFAULT 0.000,
  `unitname` varchar(80) NOT NULL,
  `price` decimal(19,3) NOT NULL DEFAULT 0.000,
  `totalprice` decimal(19,3) NOT NULL DEFAULT 0.000,
  `purchaseby` int(11) NOT NULL,
  `purchasedate` date NOT NULL,
  `purchaseexpiredate` date NOT NULL,
  PRIMARY KEY (`detailsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_details`
--

LOCK TABLES `purchase_details` WRITE;
/*!40000 ALTER TABLE `purchase_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_return`
--

DROP TABLE IF EXISTS `purchase_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_return` (
  `preturn_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL,
  `po_no` varchar(120) NOT NULL,
  `return_date` date NOT NULL,
  `totalamount` float NOT NULL,
  `totaldiscount` float NOT NULL,
  `return_reason` varchar(250) NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  `updateby` int(11) NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`preturn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_return`
--

LOCK TABLES `purchase_return` WRITE;
/*!40000 ALTER TABLE `purchase_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_return_details`
--

DROP TABLE IF EXISTS `purchase_return_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_return_details` (
  `preturn_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `product_rate` float NOT NULL,
  `store_id` int(11) NOT NULL,
  `discount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_return_details`
--

LOCK TABLES `purchase_return_details` WRITE;
/*!40000 ALTER TABLE `purchase_return_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_return_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseitem`
--

DROP TABLE IF EXISTS `purchaseitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseitem` (
  `purID` int(11) NOT NULL AUTO_INCREMENT,
  `invoiceid` varchar(50) DEFAULT NULL,
  `suplierID` int(11) NOT NULL,
  `paymenttype` int(11) DEFAULT NULL,
  `bankid` int(11) DEFAULT NULL,
  `total_price` decimal(19,3) NOT NULL DEFAULT 0.000,
  `paid_amount` decimal(19,3) DEFAULT 0.000,
  `details` text DEFAULT NULL,
  `purchasedate` date NOT NULL,
  `purchaseexpiredate` date NOT NULL,
  `savedby` int(11) NOT NULL,
  PRIMARY KEY (`purID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseitem`
--

LOCK TABLES `purchaseitem` WRITE;
/*!40000 ALTER TABLE `purchaseitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchaseitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rate_type`
--

DROP TABLE IF EXISTS `rate_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `rate_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `r_type_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rate_type`
--

LOCK TABLES `rate_type` WRITE;
/*!40000 ALTER TABLE `rate_type` DISABLE KEYS */;
INSERT INTO `rate_type` VALUES
(1,'Hourly'),
(2,'Salary');
/*!40000 ALTER TABLE `rate_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservationofday`
--

DROP TABLE IF EXISTS `reservationofday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservationofday` (
  `offdayid` int(11) NOT NULL AUTO_INCREMENT,
  `offdaydate` date NOT NULL,
  `availtime` varchar(50) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`offdayid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservationofday`
--

LOCK TABLES `reservationofday` WRITE;
/*!40000 ALTER TABLE `reservationofday` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservationofday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rest_table`
--

DROP TABLE IF EXISTS `rest_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `rest_table` (
  `tableid` int(11) NOT NULL AUTO_INCREMENT,
  `tablename` varchar(50) NOT NULL,
  `person_capicity` int(11) NOT NULL,
  `table_icon` varchar(255) NOT NULL,
  `floor` int(11) DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '1=booked,0=free',
  PRIMARY KEY (`tableid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rest_table`
--

LOCK TABLES `rest_table` WRITE;
/*!40000 ALTER TABLE `rest_table` DISABLE KEYS */;
INSERT INTO `rest_table` VALUES
(1,'1',2,'assets/img/icons/resttable/1.png',3,1),
(2,'2',4,'assets/img/icons/resttable/4.png',1,1),
(3,'3',2,'assets/img/icons/resttable/2.png',1,1),
(6,'6',3,'assets/img/icons/resttable/3.png',1,1),
(7,'7',8,'assets/img/icons/resttable/8.png',1,1),
(8,'8',4,'assets/img/icons/resttable/4.png',3,1),
(9,'9',3,'assets/img/icons/resttable/3.png',1,0),
(10,'VIP',8,'assets/img/icons/resttable/7.png',2,1);
/*!40000 ALTER TABLE `rest_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permission`
--

DROP TABLE IF EXISTS `role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_module_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_module_id` (`fk_module_id`),
  KEY `fk_user_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permission`
--

LOCK TABLES `role_permission` WRITE;
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_setup_header`
--

DROP TABLE IF EXISTS `salary_setup_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary_setup_header` (
  `s_s_h_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `salary_payable` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `absent_deduct` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tax_manager` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`s_s_h_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_setup_header`
--

LOCK TABLES `salary_setup_header` WRITE;
/*!40000 ALTER TABLE `salary_setup_header` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary_setup_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_sheet_generate`
--

DROP TABLE IF EXISTS `salary_sheet_generate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary_sheet_generate` (
  `ssg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(20) NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gdate` varchar(20) DEFAULT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `generate_by` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ssg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_sheet_generate`
--

LOCK TABLES `salary_sheet_generate` WRITE;
/*!40000 ALTER TABLE `salary_sheet_generate` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary_sheet_generate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_type`
--

DROP TABLE IF EXISTS `salary_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary_type` (
  `salary_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sal_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `emp_sal_type` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `default_amount` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`salary_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_type`
--

LOCK TABLES `salary_type` WRITE;
/*!40000 ALTER TABLE `salary_type` DISABLE KEYS */;
INSERT INTO `salary_type` VALUES
(1,'House Rent','1','',''),
(2,'Medical','1','','');
/*!40000 ALTER TABLE `salary_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_menu_item`
--

DROP TABLE IF EXISTS `sec_menu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sec_menu_item` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(200) DEFAULT NULL,
  `page_url` varchar(250) DEFAULT NULL,
  `module` varchar(200) DEFAULT NULL,
  `parent_menu` int(11) DEFAULT NULL,
  `is_report` tinyint(1) DEFAULT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1520 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_menu_item`
--

LOCK TABLES `sec_menu_item` WRITE;
/*!40000 ALTER TABLE `sec_menu_item` DISABLE KEYS */;
INSERT INTO `sec_menu_item` VALUES
(1,'manage_category','','itemmanage',0,0,2,'2018-11-05 00:00:00'),
(2,'category_list','item_category','itemmanage',0,0,2,'2018-11-05 00:00:00'),
(3,'add_category','create','itemmanage',2,0,2,'2018-11-05 00:00:00'),
(4,'manage_food','','itemmanage',0,0,2,'2018-11-05 00:00:00'),
(5,'food_list','item_food','itemmanage',0,0,2,'2018-11-05 00:00:00'),
(6,'add_food','index','itemmanage',5,0,2,'2018-11-05 00:00:00'),
(7,'food_varient','foodvarientlist','itemmanage',5,0,2,'2018-11-07 00:00:00'),
(8,'add_varient','addvariant','itemmanage',5,0,2,'2018-11-07 00:00:00'),
(9,'food_availablity','availablelist','itemmanage',5,0,2,'2018-11-07 00:00:00'),
(10,'add_availablity','addavailable','itemmanage',5,0,2,'2018-11-07 00:00:00'),
(11,'manage_addons','','itemmanage',0,0,2,'2018-11-05 00:00:00'),
(12,'addons_list','menu_addons','itemmanage',0,0,2,'2018-11-05 00:00:00'),
(13,'add_adons','create','itemmanage',8,0,2,'2018-11-05 00:00:00'),
(14,'manage_unitmeasurement','','units',0,0,2,'2018-11-05 00:00:00'),
(15,'unit_list','unitmeasurement','units',0,0,2,'2018-11-05 00:00:00'),
(16,'unit_add','create','units',12,0,2,'2018-11-05 00:00:00'),
(17,'manage_ingradient','','units',0,0,2,'2018-11-05 00:00:00'),
(18,'ingradient_list','ingradient','units',0,0,2,'2018-11-05 00:00:00'),
(19,'add_ingredient','create','units',15,0,2,'2018-11-05 00:00:00'),
(20,'assign_adons_list','assignaddons','itemmanage',8,0,2,'2018-11-06 00:00:00'),
(21,'assign_adons','assignaddonscreate','itemmanage',8,0,2,'2018-11-06 00:00:00'),
(28,'membership_management','','setting',0,0,2,'2018-11-12 00:00:00'),
(29,'membership_list','index','setting',28,0,2,'2018-11-12 00:00:00'),
(30,'membership_add','create','setting',29,0,2,'2018-11-12 00:00:00'),
(31,'payment_setting','','setting',0,0,2,'2018-11-12 00:00:00'),
(32,'paymentmethod_list','index','setting',31,0,2,'2018-11-12 00:00:00'),
(33,'payment_add','create','setting',32,0,2,'2018-11-12 00:00:00'),
(34,'shipping_setting','','setting',0,0,2,'2018-11-12 00:00:00'),
(35,'shipping_list','index','setting',34,0,2,'2018-11-12 00:00:00'),
(36,'shipping_add','create','setting',35,0,2,'2018-11-12 00:00:00'),
(37,'supplier_manage','','setting',0,0,2,'2018-11-12 00:00:00'),
(38,'supplier_list','index','setting',37,0,2,'2018-11-12 00:00:00'),
(39,'supplier_add','create','setting',38,0,2,'2018-11-12 00:00:00'),
(40,'purchase_item','index','purchase',0,0,2,'2018-11-12 00:00:00'),
(41,'purchase_add','create','purchase',40,0,2,'2018-11-12 00:00:00'),
(42,'table_manage','','setting',0,0,2,'2018-11-13 00:00:00'),
(43,'add_new_table','create','setting',44,0,2,'2018-11-13 00:00:00'),
(44,'table_list','restauranttable','setting',42,0,2,'2018-11-13 00:00:00'),
(45,'ordermanage','index','ordermanage',0,0,2,'2018-11-22 00:00:00'),
(46,'add_new_order','neworder','ordermanage',45,0,2,'2018-11-22 00:00:00'),
(47,'order_list','orderlist','ordermanage',45,0,2,'2018-11-22 00:00:00'),
(48,'pending_order','pendingorder','ordermanage',45,0,2,'2018-11-22 00:00:00'),
(49,'processing_order','processing','ordermanage',45,0,2,'2018-11-22 00:00:00'),
(50,'complete_order','completelist','ordermanage',45,0,2,'2018-11-22 00:00:00'),
(51,'cancel_order','cancellist','ordermanage',45,0,2,'2018-11-22 00:00:00'),
(52,'pos_invoice','pos_invoice','ordermanage',45,0,2,'2018-11-22 00:00:00'),
(53,'c_o_a','treeview','accounts',0,0,2,'2018-12-17 00:00:00'),
(54,'debit_voucher','debit_voucher','accounts',0,0,2,'2018-12-17 00:00:00'),
(55,'credit_voucher','credit_voucher','accounts',0,0,2,'2018-12-17 00:00:00'),
(56,'contra_voucher','contra_voucher','accounts',0,0,2,'2018-12-17 00:00:00'),
(57,'journal_voucher','journal_voucher','accounts',0,0,2,'2018-12-17 00:00:00'),
(58,'voucher_approval','voucher_approval','accounts',0,0,2,'2018-12-17 00:00:00'),
(59,'account_report','','accounts',0,0,2,'2018-12-17 00:00:00'),
(60,'voucher_report','coa','accounts',59,0,2,'2018-12-17 00:00:00'),
(61,'cash_book','cash_book','accounts',59,0,2,'2018-12-17 00:00:00'),
(62,'bank_book','bank_book','accounts',59,0,2,'2018-12-17 00:00:00'),
(63,'general_ledger','general_ledger','accounts',59,0,2,'2018-12-17 00:00:00'),
(64,'trial_balance','trial_balance','accounts',59,0,2,'2018-12-17 00:00:00'),
(65,'profit_loss','profit_loss_report','accounts',59,0,2,'2018-12-17 00:00:00'),
(66,'cash_flow','cash_flow_report','accounts',59,0,2,'2018-12-17 00:00:00'),
(67,'coa_print','coa_print','accounts',59,0,2,'2018-12-17 00:00:00'),
(68,'hrm','','hrm',0,0,2,'2018-12-18 00:00:00'),
(69,'attendance','Home','hrm',0,0,2,'2018-12-18 00:00:00'),
(70,'atn_form','atnview','hrm',69,0,2,'2018-12-18 00:00:00'),
(71,'atn_report','attendance_list','hrm',69,0,2,'2018-12-18 00:00:00'),
(72,'award','Award_controller','hrm',0,0,2,'2018-12-18 00:00:00'),
(73,'new_award','create_award','hrm',72,0,2,'2018-12-18 00:00:00'),
(74,'circularprocess','Candidate','hrm',0,0,2,'2018-12-18 00:00:00'),
(75,'add_canbasic_info','caninfo_create','hrm',74,0,2,'2018-12-18 00:00:00'),
(76,'can_basicinfo_list','canInfoview','hrm',74,0,2,'2018-12-18 00:00:00'),
(77,'candidate_basic_info','Candidate_select','hrm',0,0,2,'2018-12-18 00:00:00'),
(78,'candidate_shortlist','shortlist_form','hrm',77,0,2,'2018-12-18 00:00:00'),
(79,'candidate_interview','interview_form','hrm',77,0,2,'2018-12-18 00:00:00'),
(80,'candidate_selection','selection_form','hrm',77,0,2,'2018-12-18 00:00:00'),
(81,'department','Department_controller','hrm',0,0,2,'2018-12-18 00:00:00'),
(82,'departmentfrm','create_dept','hrm',81,0,2,'2018-12-18 00:00:00'),
(83,'division','Division_controller','hrm',0,0,2,'2018-12-18 00:00:00'),
(84,'add_division','division_form','hrm',83,0,2,'2018-12-18 00:00:00'),
(85,'ehrm','Employees','hrm',0,0,2,'2018-12-18 00:00:00'),
(86,'division_list','position_form','hrm',87,0,2,'2018-12-18 00:00:00'),
(87,'designation','create_position','hrm',87,0,2,'2018-12-18 00:00:00'),
(88,'add_employee','viewEmhistory','hrm',87,0,2,'2018-12-18 00:00:00'),
(89,'manage_employee','manageemployee','hrm',87,0,2,'2018-12-18 00:00:00'),
(91,'emp_sal_payment','paymentview','hrm',87,0,2,'2018-12-18 00:00:00'),
(92,'leave','leave','hrm',0,0,2,'2018-12-18 00:00:00'),
(93,'weekly_holiday','weeklyform','hrm',92,0,2,'2018-12-18 00:00:00'),
(94,'holiday','holiday_form','hrm',92,0,2,'2018-12-18 00:00:00'),
(95,'others_leave_application','others_leave','hrm',92,0,2,'2018-12-18 00:00:00'),
(96,'add_leave_type','leave_type_form','hrm',92,0,2,'2018-12-18 00:00:00'),
(97,'leave_application','others_leave','hrm',92,0,2,'2018-12-18 00:00:00'),
(98,'loan','loan','hrm',0,0,2,'2018-12-18 00:00:00'),
(99,'loan_grand','create_grandloan','hrm',98,0,2,'2018-12-18 00:00:00'),
(100,'loan_installment','create_installment','hrm',98,0,2,'2018-12-19 00:00:00'),
(101,'manage_installment','installmentView','hrm',98,0,2,'2018-12-19 00:00:00'),
(102,'manage_granted_loan','loan_view','hrm',98,0,2,'2018-12-19 00:00:00'),
(103,'loan_report','loan_report','hrm',98,0,2,'2018-12-19 00:00:00'),
(104,'payroll','Payroll','hrm',0,0,2,'2018-12-19 00:00:00'),
(105,'salary_type_setup','create_salary_setup','hrm',104,0,2,'2018-12-19 00:00:00'),
(106,'manage_salary_setup','emp_salary_setup_view','hrm',104,0,2,'2018-12-19 00:00:00'),
(107,'salary_setup','create_s_setup','hrm',104,0,2,'2018-12-19 00:00:00'),
(108,'manage_salary_type','salary_setup_view','hrm',104,0,2,'2018-12-19 00:00:00'),
(109,'salary_generate','create_salary_generate','hrm',104,0,2,'2018-12-19 00:00:00'),
(110,'manage_salary_generate','salary_generate_view','hrm',104,0,2,'2018-12-19 00:00:00'),
(111,'purchase_return','return_form','purchase',40,0,2,'2018-12-19 00:00:00'),
(112,'return_invoice','return_invoice','purchase',40,0,2,'2018-12-19 00:00:00'),
(113,'report','reports','report',0,0,2,'2018-12-19 00:00:00'),
(114,'purchase_report','index','report',113,0,2,'2018-12-19 00:00:00'),
(115,'stock_report_product_wise','productwise','report',113,0,2,'2018-12-19 00:00:00'),
(116,'purchase_report_ingredient','ingredientwise','report',113,0,2,'2018-12-19 00:00:00'),
(117,'sell_report','sellrpt','report',113,0,2,'2018-12-19 00:00:00'),
(118,'table_setting','tablesetting','setting',44,0,2,'2018-12-19 00:00:00'),
(119,'customer_type','','setting',0,0,2,'2018-12-19 00:00:00'),
(120,'customertype_list','customertype','setting',0,0,2,'2018-12-19 00:00:00'),
(121,'add_type','create','setting',120,0,2,'2018-12-19 00:00:00'),
(122,'currency','','setting',0,0,2,'2018-12-19 00:00:00'),
(123,'currency_list','currency','setting',0,0,2,'2018-12-19 00:00:00'),
(124,'currency_add','create','setting',123,0,2,'2018-12-19 00:00:00'),
(125,'production','','production',0,0,2,'2018-12-19 00:00:00'),
(126,'production_set_list','production','production',0,0,2,'2018-12-19 00:00:00'),
(127,'set_productionunit','productionunit','production',126,0,2,'2018-12-19 00:00:00'),
(128,'production_add','create','production',126,0,2,'2018-12-19 00:00:00'),
(129,'production_list','addproduction','production',126,0,2,'2018-12-19 00:00:00'),
(130,'reservation','','reservation',0,0,2,'2018-12-19 00:00:00'),
(131,'reservation_table','tablebooking','reservation',130,0,2,'2018-12-19 00:00:00'),
(132,'update_ord','updateorder','ordermanage',45,0,2,'2019-12-11 00:00:00'),
(133,'kitchen_dashboard','kitchen','ordermanage',45,0,2,'2020-02-13 00:00:00'),
(134,'counter_dashboard','counterboard','ordermanage',45,0,2,'2020-02-16 00:00:00'),
(191,'counter_list','counterlist','ordermanage',45,0,2,'2021-03-28 00:00:00'),
(192,'pos_setting','possetting','ordermanage',45,0,2,'2021-03-28 00:00:00'),
(193,'sound_setting','soundsetting','ordermanage',45,0,2,'2021-03-28 00:00:00'),
(194,'supplier_ledger','supplier_ledger_report','purchase',38,0,2,'2021-03-28 00:00:00'),
(195,'stock_out_ingredients','stock_out_ingredients','purchase',40,0,2,'2021-03-28 00:00:00'),
(196,'sell_report_items','sellrptItems','report',117,0,2,'2021-01-21 00:00:00'),
(197,'scharge_report','servicerpt','report',113,0,2,'2021-01-21 00:00:00'),
(198,'sell_report_waiters','sellrptwaiter','report',113,0,2,'2021-01-21 00:00:00'),
(199,'kitchen_sell','kichansrpt','report',113,0,2,'2021-01-21 00:00:00'),
(200,'sell_report_delvirytype','sellrptdelvirytype','report',113,0,2,'2021-01-21 00:00:00'),
(201,'sell_report_casher','sellrptCasher','report',113,0,2,'2021-01-21 00:00:00'),
(202,'unpaid_sell','unpaid_sell','report',113,0,2,'2021-01-21 00:00:00'),
(203,'sell_report_filter','sellrpt2','report',113,0,2,'2021-01-21 00:00:00'),
(204,'sele_by_date','sellrptbydate','report',113,0,2,'2021-01-21 00:00:00'),
(205,'production_setting','possetting','production',125,0,2,'2021-03-28 00:00:00'),
(206,'kitchen_setting','kitchensetting','setting',0,0,2,'2021-03-28 00:00:00'),
(207,'kitchen_assign','assignkitchen','setting',206,0,2,'2021-03-28 00:00:00'),
(208,'sms_setting','smsetting','setting',0,0,2,'2021-03-28 00:00:00'),
(209,'sms_configuration','sms_configuration','setting',208,0,2,'2021-03-28 00:00:00'),
(210,'sms_temp','sms_template','setting',208,0,2,'2021-03-28 00:00:00'),
(211,'bank','bank_list','setting',0,0,2,'2021-03-28 00:00:00'),
(212,'list_of_bank','index','setting',211,0,2,'2021-03-28 00:00:00'),
(213,'language','language','setting',0,0,2,'2021-03-28 00:00:00'),
(214,'application_setting','setting','setting',0,0,2,'2021-03-28 00:00:00'),
(215,'server_setting','serversetting','setting',0,0,2,'2021-03-28 00:00:00'),
(216,'factory_reset','factoryreset','setting',214,0,2,'2021-03-28 00:00:00'),
(217,'country','country_city_list','setting',0,0,2,'2021-03-28 00:00:00'),
(218,'state','statelist','setting',217,0,2,'2021-03-28 00:00:00'),
(219,'city','citylist','setting',217,0,2,'2021-03-28 00:00:00'),
(220,'commission','Commissionsetting/payroll_commission','setting',0,0,2,'2021-03-28 00:00:00'),
(221,'supplier_payment','supplier_payments','accounts',59,0,2,'2021-03-28 00:00:00'),
(222,'cash_adjustment','cash_adjustment','accounts',59,0,2,'2021-03-28 00:00:00'),
(223,'balance_sheet','balance_sheet','accounts',59,0,2,'2021-03-28 00:00:00'),
(224,'expense','Cexpense','hrm',0,0,2,'2021-03-28 00:00:00'),
(225,'unavailable_day','unavailablelist','reservation',130,0,2,'2021-03-28 00:00:00'),
(226,'reservasetting','setting','reservation',130,0,2,'2021-03-28 00:00:00'),
(1388,'dashboard','home','dashboard',0,0,2,'2021-09-02 00:00:00');
/*!40000 ALTER TABLE `sec_menu_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_role_permission`
--

DROP TABLE IF EXISTS `sec_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sec_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `can_access` tinyint(1) NOT NULL,
  `can_create` tinyint(1) NOT NULL,
  `can_edit` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=696 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_role_permission`
--

LOCK TABLES `sec_role_permission` WRITE;
/*!40000 ALTER TABLE `sec_role_permission` DISABLE KEYS */;
INSERT INTO `sec_role_permission` VALUES
(520,3,53,0,0,0,0,2,'2021-09-02 05:42:45'),
(521,3,54,0,0,0,0,2,'2021-09-02 05:42:45'),
(522,3,55,0,0,0,0,2,'2021-09-02 05:42:45'),
(523,3,56,0,0,0,0,2,'2021-09-02 05:42:45'),
(524,3,57,0,0,0,0,2,'2021-09-02 05:42:45'),
(525,3,58,0,0,0,0,2,'2021-09-02 05:42:45'),
(526,3,59,0,0,0,0,2,'2021-09-02 05:42:45'),
(527,3,60,0,0,0,0,2,'2021-09-02 05:42:45'),
(528,3,61,0,0,0,0,2,'2021-09-02 05:42:45'),
(529,3,62,0,0,0,0,2,'2021-09-02 05:42:45'),
(530,3,63,0,0,0,0,2,'2021-09-02 05:42:45'),
(531,3,64,0,0,0,0,2,'2021-09-02 05:42:45'),
(532,3,65,0,0,0,0,2,'2021-09-02 05:42:45'),
(533,3,66,0,0,0,0,2,'2021-09-02 05:42:45'),
(534,3,67,0,0,0,0,2,'2021-09-02 05:42:45'),
(535,3,221,0,0,0,0,2,'2021-09-02 05:42:45'),
(536,3,222,0,0,0,0,2,'2021-09-02 05:42:45'),
(537,3,223,0,0,0,0,2,'2021-09-02 05:42:45'),
(538,3,1388,1,1,1,1,2,'2021-09-02 05:42:45'),
(539,3,68,0,0,0,0,2,'2021-09-02 05:42:45'),
(540,3,69,0,0,0,0,2,'2021-09-02 05:42:45'),
(541,3,70,0,0,0,0,2,'2021-09-02 05:42:45'),
(542,3,71,0,0,0,0,2,'2021-09-02 05:42:45'),
(543,3,72,0,0,0,0,2,'2021-09-02 05:42:45'),
(544,3,73,0,0,0,0,2,'2021-09-02 05:42:45'),
(545,3,74,0,0,0,0,2,'2021-09-02 05:42:45'),
(546,3,75,0,0,0,0,2,'2021-09-02 05:42:45'),
(547,3,76,0,0,0,0,2,'2021-09-02 05:42:45'),
(548,3,77,0,0,0,0,2,'2021-09-02 05:42:45'),
(549,3,78,0,0,0,0,2,'2021-09-02 05:42:45'),
(550,3,79,0,0,0,0,2,'2021-09-02 05:42:45'),
(551,3,80,0,0,0,0,2,'2021-09-02 05:42:45'),
(552,3,81,0,0,0,0,2,'2021-09-02 05:42:45'),
(553,3,82,0,0,0,0,2,'2021-09-02 05:42:45'),
(554,3,83,0,0,0,0,2,'2021-09-02 05:42:45'),
(555,3,84,0,0,0,0,2,'2021-09-02 05:42:45'),
(556,3,85,0,0,0,0,2,'2021-09-02 05:42:45'),
(557,3,86,0,0,0,0,2,'2021-09-02 05:42:45'),
(558,3,87,0,0,0,0,2,'2021-09-02 05:42:45'),
(559,3,88,0,0,0,0,2,'2021-09-02 05:42:45'),
(560,3,89,0,0,0,0,2,'2021-09-02 05:42:45'),
(561,3,90,0,0,0,0,2,'2021-09-02 05:42:45'),
(562,3,91,0,0,0,0,2,'2021-09-02 05:42:45'),
(563,3,92,0,0,0,0,2,'2021-09-02 05:42:45'),
(564,3,93,0,0,0,0,2,'2021-09-02 05:42:45'),
(565,3,94,0,0,0,0,2,'2021-09-02 05:42:45'),
(566,3,95,0,0,0,0,2,'2021-09-02 05:42:45'),
(567,3,96,0,0,0,0,2,'2021-09-02 05:42:45'),
(568,3,97,0,0,0,0,2,'2021-09-02 05:42:45'),
(569,3,98,0,0,0,0,2,'2021-09-02 05:42:45'),
(570,3,99,0,0,0,0,2,'2021-09-02 05:42:45'),
(571,3,100,0,0,0,0,2,'2021-09-02 05:42:45'),
(572,3,101,0,0,0,0,2,'2021-09-02 05:42:45'),
(573,3,102,0,0,0,0,2,'2021-09-02 05:42:45'),
(574,3,103,0,0,0,0,2,'2021-09-02 05:42:45'),
(575,3,104,0,0,0,0,2,'2021-09-02 05:42:45'),
(576,3,105,0,0,0,0,2,'2021-09-02 05:42:45'),
(577,3,106,0,0,0,0,2,'2021-09-02 05:42:45'),
(578,3,107,0,0,0,0,2,'2021-09-02 05:42:45'),
(579,3,108,0,0,0,0,2,'2021-09-02 05:42:45'),
(580,3,109,0,0,0,0,2,'2021-09-02 05:42:45'),
(581,3,110,0,0,0,0,2,'2021-09-02 05:42:45'),
(582,3,224,0,0,0,0,2,'2021-09-02 05:42:45'),
(583,3,1,1,1,1,1,2,'2021-09-02 05:42:45'),
(584,3,2,1,1,1,1,2,'2021-09-02 05:42:45'),
(585,3,3,1,1,1,1,2,'2021-09-02 05:42:45'),
(586,3,4,1,1,1,1,2,'2021-09-02 05:42:45'),
(587,3,5,0,0,0,0,2,'2021-09-02 05:42:45'),
(588,3,6,1,1,0,0,2,'2021-09-02 05:42:45'),
(589,3,7,1,1,0,0,2,'2021-09-02 05:42:45'),
(590,3,8,1,1,0,0,2,'2021-09-02 05:42:45'),
(591,3,9,1,1,0,0,2,'2021-09-02 05:42:45'),
(592,3,10,1,1,0,0,2,'2021-09-02 05:42:45'),
(593,3,11,1,1,0,0,2,'2021-09-02 05:42:45'),
(594,3,12,1,1,0,0,2,'2021-09-02 05:42:45'),
(595,3,13,1,1,0,0,2,'2021-09-02 05:42:45'),
(596,3,20,1,1,0,0,2,'2021-09-02 05:42:45'),
(597,3,21,1,1,0,0,2,'2021-09-02 05:42:45'),
(598,3,1382,0,0,0,0,2,'2021-09-02 05:42:45'),
(599,3,1383,0,0,0,0,2,'2021-09-02 05:42:45'),
(600,3,1384,0,0,0,0,2,'2021-09-02 05:42:45'),
(601,3,1385,0,0,0,0,2,'2021-09-02 05:42:45'),
(602,3,1386,0,0,0,0,2,'2021-09-02 05:42:45'),
(603,3,1387,0,0,0,0,2,'2021-09-02 05:42:45'),
(604,3,45,1,1,1,0,2,'2021-09-02 05:42:45'),
(605,3,46,1,1,1,0,2,'2021-09-02 05:42:45'),
(606,3,47,1,1,1,0,2,'2021-09-02 05:42:45'),
(607,3,48,1,1,1,0,2,'2021-09-02 05:42:45'),
(608,3,49,1,1,1,0,2,'2021-09-02 05:42:45'),
(609,3,50,1,1,1,0,2,'2021-09-02 05:42:45'),
(610,3,51,1,1,1,0,2,'2021-09-02 05:42:45'),
(611,3,52,1,1,1,0,2,'2021-09-02 05:42:45'),
(612,3,132,1,1,1,0,2,'2021-09-02 05:42:45'),
(613,3,133,1,1,1,0,2,'2021-09-02 05:42:45'),
(614,3,134,1,1,1,0,2,'2021-09-02 05:42:45'),
(615,3,191,1,1,1,0,2,'2021-09-02 05:42:45'),
(616,3,192,1,1,1,0,2,'2021-09-02 05:42:45'),
(617,3,193,1,1,1,0,2,'2021-09-02 05:42:45'),
(618,3,125,0,0,0,0,2,'2021-09-02 05:42:45'),
(619,3,126,0,0,0,0,2,'2021-09-02 05:42:45'),
(620,3,127,0,0,0,0,2,'2021-09-02 05:42:45'),
(621,3,128,0,0,0,0,2,'2021-09-02 05:42:45'),
(622,3,129,0,0,0,0,2,'2021-09-02 05:42:45'),
(623,3,205,0,0,0,0,2,'2021-09-02 05:42:45'),
(624,3,40,1,1,0,0,2,'2021-09-02 05:42:45'),
(625,3,41,1,1,0,0,2,'2021-09-02 05:42:45'),
(626,3,111,1,1,0,0,2,'2021-09-02 05:42:45'),
(627,3,112,1,1,0,0,2,'2021-09-02 05:42:45'),
(628,3,194,1,1,0,0,2,'2021-09-02 05:42:45'),
(629,3,195,1,1,0,0,2,'2021-09-02 05:42:45'),
(630,3,227,0,0,0,0,2,'2021-09-02 05:42:45'),
(631,3,228,0,0,0,0,2,'2021-09-02 05:42:45'),
(632,3,229,0,0,0,0,2,'2021-09-02 05:42:45'),
(633,3,113,0,0,0,0,2,'2021-09-02 05:42:45'),
(634,3,114,0,0,0,0,2,'2021-09-02 05:42:45'),
(635,3,115,0,0,0,0,2,'2021-09-02 05:42:45'),
(636,3,116,0,0,0,0,2,'2021-09-02 05:42:45'),
(637,3,117,0,0,0,0,2,'2021-09-02 05:42:45'),
(638,3,196,0,0,0,0,2,'2021-09-02 05:42:45'),
(639,3,197,0,0,0,0,2,'2021-09-02 05:42:45'),
(640,3,198,0,0,0,0,2,'2021-09-02 05:42:45'),
(641,3,199,0,0,0,0,2,'2021-09-02 05:42:45'),
(642,3,200,0,0,0,0,2,'2021-09-02 05:42:45'),
(643,3,201,0,0,0,0,2,'2021-09-02 05:42:45'),
(644,3,202,0,0,0,0,2,'2021-09-02 05:42:45'),
(645,3,203,0,0,0,0,2,'2021-09-02 05:42:45'),
(646,3,204,0,0,0,0,2,'2021-09-02 05:42:45'),
(647,3,130,0,0,0,0,2,'2021-09-02 05:42:45'),
(648,3,131,0,0,0,0,2,'2021-09-02 05:42:45'),
(649,3,225,0,0,0,0,2,'2021-09-02 05:42:45'),
(650,3,226,0,0,0,0,2,'2021-09-02 05:42:45'),
(651,3,28,0,0,0,0,2,'2021-09-02 05:42:45'),
(652,3,29,0,0,0,0,2,'2021-09-02 05:42:45'),
(653,3,30,0,0,0,0,2,'2021-09-02 05:42:45'),
(654,3,31,0,0,0,0,2,'2021-09-02 05:42:45'),
(655,3,32,0,0,0,0,2,'2021-09-02 05:42:45'),
(656,3,33,0,0,0,0,2,'2021-09-02 05:42:45'),
(657,3,34,0,0,0,0,2,'2021-09-02 05:42:45'),
(658,3,35,0,0,0,0,2,'2021-09-02 05:42:45'),
(659,3,36,0,0,0,0,2,'2021-09-02 05:42:45'),
(660,3,37,0,0,0,0,2,'2021-09-02 05:42:45'),
(661,3,38,0,0,0,0,2,'2021-09-02 05:42:45'),
(662,3,39,0,0,0,0,2,'2021-09-02 05:42:45'),
(663,3,42,0,0,0,0,2,'2021-09-02 05:42:45'),
(664,3,43,0,0,0,0,2,'2021-09-02 05:42:45'),
(665,3,44,0,0,0,0,2,'2021-09-02 05:42:45'),
(666,3,118,0,0,0,0,2,'2021-09-02 05:42:45'),
(667,3,119,0,0,0,0,2,'2021-09-02 05:42:45'),
(668,3,120,0,0,0,0,2,'2021-09-02 05:42:45'),
(669,3,121,0,0,0,0,2,'2021-09-02 05:42:45'),
(670,3,122,0,0,0,0,2,'2021-09-02 05:42:45'),
(671,3,123,0,0,0,0,2,'2021-09-02 05:42:45'),
(672,3,124,0,0,0,0,2,'2021-09-02 05:42:45'),
(673,3,206,0,0,0,0,2,'2021-09-02 05:42:45'),
(674,3,207,0,0,0,0,2,'2021-09-02 05:42:45'),
(675,3,208,0,0,0,0,2,'2021-09-02 05:42:45'),
(676,3,209,0,0,0,0,2,'2021-09-02 05:42:45'),
(677,3,210,0,0,0,0,2,'2021-09-02 05:42:45'),
(678,3,211,0,0,0,0,2,'2021-09-02 05:42:45'),
(679,3,212,0,0,0,0,2,'2021-09-02 05:42:45'),
(680,3,213,0,0,0,0,2,'2021-09-02 05:42:45'),
(681,3,214,0,0,0,0,2,'2021-09-02 05:42:45'),
(682,3,215,0,0,0,0,2,'2021-09-02 05:42:45'),
(683,3,216,0,0,0,0,2,'2021-09-02 05:42:45'),
(684,3,217,0,0,0,0,2,'2021-09-02 05:42:45'),
(685,3,218,0,0,0,0,2,'2021-09-02 05:42:45'),
(686,3,219,0,0,0,0,2,'2021-09-02 05:42:45'),
(687,3,220,0,0,0,0,2,'2021-09-02 05:42:45'),
(688,3,14,0,0,0,0,2,'2021-09-02 05:42:45'),
(689,3,15,0,0,0,0,2,'2021-09-02 05:42:45'),
(690,3,16,0,0,0,0,2,'2021-09-02 05:42:45'),
(691,3,17,0,0,0,0,2,'2021-09-02 05:42:45'),
(692,3,18,0,0,0,0,2,'2021-09-02 05:42:45'),
(693,3,19,0,0,0,0,2,'2021-09-02 05:42:45'),
(694,3,230,0,0,0,0,2,'2021-09-02 05:42:45'),
(695,3,231,0,0,0,0,2,'2021-09-02 05:42:45');
/*!40000 ALTER TABLE `sec_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_role_tbl`
--

DROP TABLE IF EXISTS `sec_role_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sec_role_tbl` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` text NOT NULL,
  `role_description` text NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `role_status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_role_tbl`
--

LOCK TABLES `sec_role_tbl` WRITE;
/*!40000 ALTER TABLE `sec_role_tbl` DISABLE KEYS */;
INSERT INTO `sec_role_tbl` VALUES
(1,'kitchen','manage kitchen',2,'2020-10-12 10:27:03',1),
(2,'Counter','Display Order timing',2,'2020-10-12 10:27:45',1),
(3,'Waiter','Order Taken and served food',2,'2020-10-12 10:29:13',1);
/*!40000 ALTER TABLE `sec_role_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user_access_tbl`
--

DROP TABLE IF EXISTS `sec_user_access_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sec_user_access_tbl` (
  `role_acc_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_role_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  PRIMARY KEY (`role_acc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user_access_tbl`
--

LOCK TABLES `sec_user_access_tbl` WRITE;
/*!40000 ALTER TABLE `sec_user_access_tbl` DISABLE KEYS */;
INSERT INTO `sec_user_access_tbl` VALUES
(1,3,172);
/*!40000 ALTER TABLE `sec_user_access_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `storename` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `logoweb` varchar(255) DEFAULT NULL,
  `favicon` varchar(100) DEFAULT NULL,
  `opentime` varchar(255) DEFAULT NULL,
  `closetime` varchar(255) DEFAULT NULL,
  `vat` decimal(10,2) NOT NULL DEFAULT 0.00,
  `isvatnumshow` int(11) DEFAULT 0,
  `vattinno` varchar(30) DEFAULT NULL,
  `isvatinclusive` int(11) NOT NULL DEFAULT 0,
  `discount_type` int(11) NOT NULL DEFAULT 0 COMMENT '0=amount,1=percent',
  `discountrate` decimal(19,3) DEFAULT 0.000,
  `servicecharge` decimal(10,0) NOT NULL DEFAULT 0,
  `service_chargeType` int(11) NOT NULL DEFAULT 0 COMMENT '0=amount,1=percent',
  `currency` int(11) DEFAULT 0,
  `min_prepare_time` varchar(50) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `timezone` varchar(150) NOT NULL,
  `dateformat` text NOT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `kitchenrefreshtime` int(11) DEFAULT 5,
  `powerbytxt` text DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `reservation_open` varchar(30) DEFAULT NULL,
  `reservation_close` varchar(30) DEFAULT NULL,
  `maxreserveperson` int(11) DEFAULT NULL,
  `printtype` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES
(2,'Saffron Lites Restaurant','Saffron Lites Restaurant','260 Seneca Hill Drive Toronto ON Canada','info@rednivar.ca','+16475947037','assets/img/icons/2025-05-30/b1.png',NULL,'assets/img/icons/2025-05-30/m1.png','9:00AM','10:00PM',7.50,NULL,'23457586',1,1,5.000,20,1,2,'1:00 Hour','english','Asia/Dhaka','d/m/Y','LTR',15,'Powered By: BDTASK, www.bdtask.com\r\n','2020','09:00:00','22:00:00',20,2);
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_method`
--

DROP TABLE IF EXISTS `shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_method` (
  `ship_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method` varchar(150) NOT NULL,
  `shippingrate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(255) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `shiptype` int(11) DEFAULT NULL COMMENT '1=dinein,2=pickup,3=home',
  PRIMARY KEY (`ship_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_method`
--

LOCK TABLES `shipping_method` WRITE;
/*!40000 ALTER TABLE `shipping_method` DISABLE KEYS */;
INSERT INTO `shipping_method` VALUES
(1,'Home Delivary',60.00,'9, 8, 5, 4, 3, 1',1,3),
(2,'Pickup',0.00,'4, 3, 1',1,2),
(3,'Dine-in',0.00,'9, 8, 5, 4, 3',1,1);
/*!40000 ALTER TABLE `shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_configuration`
--

DROP TABLE IF EXISTS `sms_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` text NOT NULL,
  `gateway` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sms_from` varchar(200) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_configuration`
--

LOCK TABLES `sms_configuration` WRITE;
/*!40000 ALTER TABLE `sms_configuration` DISABLE KEYS */;
INSERT INTO `sms_configuration` VALUES
(1,'http://smsrank.com/','SMS Rank','rabbani','123456','smsrank','',1),
(2,'https://www.nexmo.com/','nexmo','50489b88','z1cBmtrDeQrOaqhg','restaurant','',0),
(3,'https://www.budgetsms.net/','budgetsms','user1','1e753da74','budgetsms','21547',0);
/*!40000 ALTER TABLE `sms_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_template`
--

DROP TABLE IF EXISTS `sms_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `default_status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_template`
--

LOCK TABLES `sms_template` WRITE;
/*!40000 ALTER TABLE `sms_template` DISABLE KEYS */;
INSERT INTO `sms_template` VALUES
(1,'one','your Order {id} is cancel for some reason.','Cancel',0,0,'2018-12-30 17:08:07','0000-00-00 00:00:00'),
(2,'two','your order {id} is completed','CompleteOrder',0,1,'2018-12-30 18:58:19','0000-00-00 00:00:00'),
(3,'three','your order {id} is processing','Processing',0,1,'2018-11-06 17:00:46','0000-00-00 00:00:00'),
(8,'four','Your Order Has been Placed Successfully.','Neworder',1,0,'2018-12-30 18:59:32','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sms_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_order`
--

DROP TABLE IF EXISTS `sub_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_order` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `vat` float DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT 0.00,
  `s_charge` float DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0=unpaid,1=paid',
  `order_menu_id` text DEFAULT NULL,
  `adons_id` varchar(20) DEFAULT NULL,
  `adons_qty` varchar(20) DEFAULT NULL,
  `invoiceprint` int(11) DEFAULT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_order`
--

LOCK TABLES `sub_order` WRITE;
/*!40000 ALTER TABLE `sub_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribe_emaillist`
--

DROP TABLE IF EXISTS `subscribe_emaillist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribe_emaillist` (
  `emailid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `dateinsert` datetime NOT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribe_emaillist`
--

LOCK TABLES `subscribe_emaillist` WRITE;
/*!40000 ALTER TABLE `subscribe_emaillist` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribe_emaillist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supid` int(11) NOT NULL AUTO_INCREMENT,
  `suplier_code` varchar(255) NOT NULL,
  `supName` varchar(100) NOT NULL,
  `supEmail` varchar(100) NOT NULL,
  `supMobile` varchar(50) NOT NULL,
  `supAddress` text NOT NULL,
  PRIMARY KEY (`supid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_ledger`
--

DROP TABLE IF EXISTS `supplier_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_ledger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(100) NOT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `chalan_no` varchar(100) DEFAULT NULL,
  `deposit_no` varchar(50) DEFAULT NULL,
  `amount` decimal(19,3) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `d_c` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_ledger`
--

LOCK TABLES `supplier_ledger` WRITE;
/*!40000 ALTER TABLE `supplier_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `synchronizer_setting`
--

DROP TABLE IF EXISTS `synchronizer_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `synchronizer_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synchronizer_setting`
--

LOCK TABLES `synchronizer_setting` WRITE;
/*!40000 ALTER TABLE `synchronizer_setting` DISABLE KEYS */;
INSERT INTO `synchronizer_setting` VALUES
(8,'70.35.198.244','softest3bdtask','Ux5O~MBJ#odK','21','true','./public_html/');
/*!40000 ALTER TABLE `synchronizer_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_details`
--

DROP TABLE IF EXISTS `table_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `time_enter` time NOT NULL,
  `total_people` int(11) NOT NULL,
  `delete_at` int(11) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_details`
--

LOCK TABLES `table_details` WRITE;
/*!40000 ALTER TABLE `table_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_setting`
--

DROP TABLE IF EXISTS `table_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_setting` (
  `settingid` int(11) NOT NULL AUTO_INCREMENT,
  `tableid` int(11) NOT NULL,
  `iconpos` text NOT NULL,
  PRIMARY KEY (`settingid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_setting`
--

LOCK TABLES `table_setting` WRITE;
/*!40000 ALTER TABLE `table_setting` DISABLE KEYS */;
INSERT INTO `table_setting` VALUES
(1,2,'position: relative; left: 186px; top: 231px;'),
(2,4,'position: relative; left: 87px; top: 17px;'),
(3,3,'position: relative; left: -126px; top: 129px;'),
(4,1,'position: relative; left: 15px; top: 28px;'),
(5,8,'position: relative; left: -336px; top: 224px;'),
(6,6,'position: relative; left: -184px; top: 113px;'),
(7,5,'position: relative; left: -153px; top: 85px;'),
(8,7,'position: relative; left: -372px; top: 223px;'),
(9,9,'position: relative; left: -744px; top: 14px;'),
(10,10,'position: relative; left: -448px; top: 226px;');
/*!40000 ALTER TABLE `table_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_assign_kitchen`
--

DROP TABLE IF EXISTS `tbl_assign_kitchen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_assign_kitchen` (
  `assignid` int(11) NOT NULL AUTO_INCREMENT,
  `kitchen_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`assignid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_assign_kitchen`
--

LOCK TABLES `tbl_assign_kitchen` WRITE;
/*!40000 ALTER TABLE `tbl_assign_kitchen` DISABLE KEYS */;
INSERT INTO `tbl_assign_kitchen` VALUES
(2,1,177);
/*!40000 ALTER TABLE `tbl_assign_kitchen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bank`
--

DROP TABLE IF EXISTS `tbl_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bank` (
  `bankid` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(200) DEFAULT NULL,
  `ac_number` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `signature_pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bankid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bank`
--

LOCK TABLES `tbl_bank` WRITE;
/*!40000 ALTER TABLE `tbl_bank` DISABLE KEYS */;
INSERT INTO `tbl_bank` VALUES
(1,'Dutch-Bangla Bank','Ainal Haque','110535764655','Mirpur 10','./application/modules/hrm/assets/images/2020-01-18/c.jpg'),
(2,'City Bank','Kamal Hassan','3869583','Uttara','./application/modules/hrm/assets/images/2020-01-18/e.jpg'),
(3,'Brac Bank','Robiul Islam','9356346','Motijeel','./application/modules/hrm/assets/images/2020-01-18/f.jpg');
/*!40000 ALTER TABLE `tbl_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_billingaddress`
--

DROP TABLE IF EXISTS `tbl_billingaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_billingaddress` (
  `billaddressid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `companyname` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `city` varchar(70) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `DateInserted` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  PRIMARY KEY (`billaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_billingaddress`
--

LOCK TABLES `tbl_billingaddress` WRITE;
/*!40000 ALTER TABLE `tbl_billingaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_billingaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cancelitem`
--

DROP TABLE IF EXISTS `tbl_cancelitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cancelitem` (
  `cancelid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `foodid` int(11) NOT NULL,
  `varientid` int(11) NOT NULL,
  `quantity` decimal(19,3) NOT NULL DEFAULT 0.000,
  PRIMARY KEY (`cancelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cancelitem`
--

LOCK TABLES `tbl_cancelitem` WRITE;
/*!40000 ALTER TABLE `tbl_cancelitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cancelitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_card_terminal`
--

DROP TABLE IF EXISTS `tbl_card_terminal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_card_terminal` (
  `card_terminalid` int(11) NOT NULL AUTO_INCREMENT,
  `terminal_name` varchar(255) NOT NULL,
  PRIMARY KEY (`card_terminalid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_card_terminal`
--

LOCK TABLES `tbl_card_terminal` WRITE;
/*!40000 ALTER TABLE `tbl_card_terminal` DISABLE KEYS */;
INSERT INTO `tbl_card_terminal` VALUES
(1,'Nexus Terminal'),
(2,'Brac Bank Terminal'),
(3,'Visa-Master Terminal');
/*!40000 ALTER TABLE `tbl_card_terminal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cashcounter`
--

DROP TABLE IF EXISTS `tbl_cashcounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cashcounter` (
  `ccid` int(11) NOT NULL AUTO_INCREMENT,
  `counterno` int(11) NOT NULL,
  PRIMARY KEY (`ccid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cashcounter`
--

LOCK TABLES `tbl_cashcounter` WRITE;
/*!40000 ALTER TABLE `tbl_cashcounter` DISABLE KEYS */;
INSERT INTO `tbl_cashcounter` VALUES
(1,1),
(2,2);
/*!40000 ALTER TABLE `tbl_cashcounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cashregister`
--

DROP TABLE IF EXISTS `tbl_cashregister`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cashregister` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `counter_no` int(11) NOT NULL,
  `opening_balance` decimal(19,3) NOT NULL DEFAULT 0.000,
  `closing_balance` decimal(19,3) NOT NULL DEFAULT 0.000,
  `openclosedate` date NOT NULL,
  `opendate` datetime DEFAULT '1970-01-01 01:01:01',
  `closedate` datetime DEFAULT '1970-01-01 01:01:01',
  `status` int(11) NOT NULL DEFAULT 0,
  `openingnote` text DEFAULT NULL,
  `closing_note` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cashregister`
--

LOCK TABLES `tbl_cashregister` WRITE;
/*!40000 ALTER TABLE `tbl_cashregister` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cashregister` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_city`
--

DROP TABLE IF EXISTS `tbl_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_city` (
  `cityid` int(11) NOT NULL AUTO_INCREMENT,
  `countryid` int(11) NOT NULL,
  `stateid` int(11) NOT NULL,
  `cityname` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`cityid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_city`
--

LOCK TABLES `tbl_city` WRITE;
/*!40000 ALTER TABLE `tbl_city` DISABLE KEYS */;
INSERT INTO `tbl_city` VALUES
(3,1,12,'Savar',1),
(4,1,12,'Gajipur',1),
(5,1,12,'Mirpur',1);
/*!40000 ALTER TABLE `tbl_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_country`
--

DROP TABLE IF EXISTS `tbl_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_country` (
  `countryid` int(11) NOT NULL AUTO_INCREMENT,
  `countryname` varchar(70) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`countryid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_country`
--

LOCK TABLES `tbl_country` WRITE;
/*!40000 ALTER TABLE `tbl_country` DISABLE KEYS */;
INSERT INTO `tbl_country` VALUES
(1,'Bangladesh',1),
(2,'United State',1),
(3,'United Kingdom',1),
(4,'India',1),
(5,'Vietnam',1);
/*!40000 ALTER TABLE `tbl_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_delivaritime`
--

DROP TABLE IF EXISTS `tbl_delivaritime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_delivaritime` (
  `dtimeid` int(11) NOT NULL AUTO_INCREMENT,
  `deltime` varchar(255) NOT NULL,
  PRIMARY KEY (`dtimeid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_delivaritime`
--

LOCK TABLES `tbl_delivaritime` WRITE;
/*!40000 ALTER TABLE `tbl_delivaritime` DISABLE KEYS */;
INSERT INTO `tbl_delivaritime` VALUES
(1,'10:00-10:30'),
(2,'10:30-11:00'),
(3,'11:00-11:30'),
(4,'11:30-12:00'),
(5,'12:00-12:30'),
(6,'12:30-13:00'),
(7,'13:00-13:30'),
(8,'13:30-14:00'),
(9,'14:00-14:30'),
(10,'14:30-15:00'),
(11,'15:00-15:30'),
(12,'15:30-16:00'),
(13,'16:00-16:30'),
(14,'16:30-17:00'),
(15,'17:00-17:30'),
(16,'17:30-18:00'),
(17,'18:00-18:30'),
(18,'18:30-19:00'),
(19,'19:00-19:30'),
(20,'19:30-20:00'),
(21,'20:00-20:30'),
(22,'20:30-21:00');
/*!40000 ALTER TABLE `tbl_delivaritime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_delivaryaddress`
--

DROP TABLE IF EXISTS `tbl_delivaryaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_delivaryaddress` (
  `delivaryid` int(11) NOT NULL AUTO_INCREMENT,
  `deladdress` text NOT NULL,
  PRIMARY KEY (`delivaryid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_delivaryaddress`
--

LOCK TABLES `tbl_delivaryaddress` WRITE;
/*!40000 ALTER TABLE `tbl_delivaryaddress` DISABLE KEYS */;
INSERT INTO `tbl_delivaryaddress` VALUES
(1,'Uttara,Road#7,Dhaka-Bangladesh.'),
(2,'Uttara,Road#5,Dhaka'),
(3,'Uttara,Road#2,Dhaka'),
(4,'Uttara,Road#4,Dhaka'),
(5,'Gulsion Circle,Dhaka-Bangladesh'),
(6,'Banani, Dhaka-Bangladesh'),
(7,'Dhanmondi,Road#15 Dhaka-Bangladesh'),
(8,'Dhanmondi,Road#27 Dhaka-Bangladesh'),
(9,'Elephantroad, Dhaka-Bangladesh'),
(10,'Badda,Road#15 Dhaka-Bangladesh'),
(11,'Rampura,Road#15 Dhaka-Bangladesh'),
(12,'Khilkhet,Road#15 Dhaka-Bangladesh'),
(13,'Mohammadpur,Road#15 Dhaka-Bangladesh'),
(14,'Motijeel,Road#15 Dhaka-Bangladesh'),
(15,'komlapur,Road#15 Dhaka-Bangladesh'),
(16,'Newmarket,Road#15 Rajshahi-Bangladesh'),
(17,'Road#15, Khulna-Bangladesh'),
(18,'Road#15, Chittagong-Bangladesh'),
(19,'Agrabad, Chittagong-Bangladesh'),
(20,'Potengha, Chittagong-Bangladesh'),
(21,'Kadirgonj,Rail Gate,Nogor Bhabon, Rajshahi.');
/*!40000 ALTER TABLE `tbl_delivaryaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_generatedreport`
--

DROP TABLE IF EXISTS `tbl_generatedreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_generatedreport` (
  `generateid` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `saleinvoice` varchar(100) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `cutomertype` int(11) NOT NULL,
  `isthirdparty` int(11) NOT NULL DEFAULT 0,
  `waiter_id` int(11) DEFAULT NULL,
  `kitchen` int(11) DEFAULT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL,
  `table_no` int(11) DEFAULT NULL,
  `tokenno` varchar(30) DEFAULT NULL,
  `totalamount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `customerpaid` decimal(10,2) DEFAULT 0.00,
  `customer_note` text DEFAULT NULL,
  `anyreason` text DEFAULT NULL,
  `order_status` tinyint(4) NOT NULL,
  `nofification` int(11) NOT NULL,
  `orderacceptreject` int(11) DEFAULT NULL,
  `reportDate` date NOT NULL,
  PRIMARY KEY (`generateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_generatedreport`
--

LOCK TABLES `tbl_generatedreport` WRITE;
/*!40000 ALTER TABLE `tbl_generatedreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_generatedreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_groupitems`
--

DROP TABLE IF EXISTS `tbl_groupitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_groupitems` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `gitemid` int(11) NOT NULL,
  `items` int(11) NOT NULL,
  `item_qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `varientid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_groupitems`
--

LOCK TABLES `tbl_groupitems` WRITE;
/*!40000 ALTER TABLE `tbl_groupitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_groupitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_itemaccepted`
--

DROP TABLE IF EXISTS `tbl_itemaccepted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_itemaccepted` (
  `acid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `varient` int(11) NOT NULL,
  `accepttime` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  PRIMARY KEY (`acid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_itemaccepted`
--

LOCK TABLES `tbl_itemaccepted` WRITE;
/*!40000 ALTER TABLE `tbl_itemaccepted` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_itemaccepted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kitchen`
--

DROP TABLE IF EXISTS `tbl_kitchen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_kitchen` (
  `kitchenid` int(11) NOT NULL AUTO_INCREMENT,
  `kitchen_name` varchar(100) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`kitchenid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kitchen`
--

LOCK TABLES `tbl_kitchen` WRITE;
/*!40000 ALTER TABLE `tbl_kitchen` DISABLE KEYS */;
INSERT INTO `tbl_kitchen` VALUES
(1,'Common Kitchen','192.168.1.87','9100',1);
/*!40000 ALTER TABLE `tbl_kitchen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kitchen_order`
--

DROP TABLE IF EXISTS `tbl_kitchen_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_kitchen_order` (
  `ktid` int(11) NOT NULL AUTO_INCREMENT,
  `kitchenid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `varient` int(11) DEFAULT NULL,
  `addonsuid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ktid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kitchen_order`
--

LOCK TABLES `tbl_kitchen_order` WRITE;
/*!40000 ALTER TABLE `tbl_kitchen_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_kitchen_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menutype`
--

DROP TABLE IF EXISTS `tbl_menutype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_menutype` (
  `menutypeid` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(120) NOT NULL,
  `menu_icon` varchar(150) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`menutypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menutype`
--

LOCK TABLES `tbl_menutype` WRITE;
/*!40000 ALTER TABLE `tbl_menutype` DISABLE KEYS */;
INSERT INTO `tbl_menutype` VALUES
(1,'Breakfast','./application/modules/itemmanage/assets/images/2020-11-21/b.png',1),
(2,'Launch','./application/modules/itemmanage/assets/images/2020-11-21/l1.png',1),
(3,'Dinner','./application/modules/itemmanage/assets/images/2020-11-21/d.png',1),
(4,'Coffee','./application/modules/itemmanage/assets/images/2020-11-21/c.png',1),
(5,'Party','./application/modules/itemmanage/assets/images/2020-11-21/p.png',1);
/*!40000 ALTER TABLE `tbl_menutype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_module_purchasekey`
--

DROP TABLE IF EXISTS `tbl_module_purchasekey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_module_purchasekey` (
  `mpid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(25) DEFAULT NULL,
  `purchasekey` varchar(55) DEFAULT NULL,
  `downloaddate` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `updatedate` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  PRIMARY KEY (`mpid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_module_purchasekey`
--

LOCK TABLES `tbl_module_purchasekey` WRITE;
/*!40000 ALTER TABLE `tbl_module_purchasekey` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_module_purchasekey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_notificationsetting`
--

DROP TABLE IF EXISTS `tbl_notificationsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_notificationsetting` (
  `notifid` int(11) NOT NULL AUTO_INCREMENT,
  `firebasewaiterkitchen` text DEFAULT NULL,
  `onesignalcustomer` text NOT NULL,
  `onesignal_ioswaiter` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`notifid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_notificationsetting`
--

LOCK TABLES `tbl_notificationsetting` WRITE;
/*!40000 ALTER TABLE `tbl_notificationsetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_notificationsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_openclose`
--

DROP TABLE IF EXISTS `tbl_openclose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_openclose` (
  `stid` int(11) NOT NULL AUTO_INCREMENT,
  `dayname` varchar(20) NOT NULL,
  `opentime` varchar(15) NOT NULL,
  `closetime` varchar(15) NOT NULL,
  PRIMARY KEY (`stid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_openclose`
--

LOCK TABLES `tbl_openclose` WRITE;
/*!40000 ALTER TABLE `tbl_openclose` DISABLE KEYS */;
INSERT INTO `tbl_openclose` VALUES
(1,'Saturday','08:00','21:00'),
(2,'Sunday','08:00','20:00'),
(3,'Monday','08:00','20:00'),
(4,'Tuesday','08:00','20:00'),
(5,'Wednesday','08:00','20:00'),
(6,'Thursday','08:00','20:00'),
(7,'Friday','Closed','Closed');
/*!40000 ALTER TABLE `tbl_openclose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_orderprepare`
--

DROP TABLE IF EXISTS `tbl_orderprepare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_orderprepare` (
  `opid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `varient` int(11) NOT NULL,
  `preparetime` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  PRIMARY KEY (`opid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_orderprepare`
--

LOCK TABLES `tbl_orderprepare` WRITE;
/*!40000 ALTER TABLE `tbl_orderprepare` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_orderprepare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_posetting`
--

DROP TABLE IF EXISTS `tbl_posetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_posetting` (
  `possettingid` int(11) NOT NULL AUTO_INCREMENT,
  `waiter` int(11) NOT NULL DEFAULT 0 COMMENT '1=show,0=hide',
  `tableid` int(11) NOT NULL DEFAULT 0 COMMENT '1=show,0=hide',
  `cooktime` int(11) NOT NULL DEFAULT 0 COMMENT '1=enable,0=disable',
  `productionsetting` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=manual,1=auto',
  `tablemaping` int(11) NOT NULL DEFAULT 0 COMMENT '1=enable,0=disable',
  `soundenable` int(11) DEFAULT NULL COMMENT '1=enable,0=disable',
  PRIMARY KEY (`possettingid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_posetting`
--

LOCK TABLES `tbl_posetting` WRITE;
/*!40000 ALTER TABLE `tbl_posetting` DISABLE KEYS */;
INSERT INTO `tbl_posetting` VALUES
(1,1,1,1,0,1,0);
/*!40000 ALTER TABLE `tbl_posetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_quickordersetting`
--

DROP TABLE IF EXISTS `tbl_quickordersetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_quickordersetting` (
  `quickordid` int(11) NOT NULL AUTO_INCREMENT,
  `waiter` int(11) NOT NULL DEFAULT 1 COMMENT '1=show,0=hide',
  `tableid` int(11) NOT NULL DEFAULT 1 COMMENT '1=show,0=hide',
  `cooktime` int(11) NOT NULL DEFAULT 1 COMMENT '1=show,0=hide',
  `soundenable` int(11) NOT NULL DEFAULT 1 COMMENT '1=enable,0=disable	',
  `tablemaping` int(11) NOT NULL DEFAULT 1 COMMENT '1=enable,0=disable',
  PRIMARY KEY (`quickordid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_quickordersetting`
--

LOCK TABLES `tbl_quickordersetting` WRITE;
/*!40000 ALTER TABLE `tbl_quickordersetting` DISABLE KEYS */;
INSERT INTO `tbl_quickordersetting` VALUES
(1,1,1,1,0,1);
/*!40000 ALTER TABLE `tbl_quickordersetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_rating`
--

DROP TABLE IF EXISTS `tbl_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_rating` (
  `ratingid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `reviewtxt` text DEFAULT NULL,
  `proid` int(11) NOT NULL,
  `rating` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 0,
  `email` varchar(255) NOT NULL,
  `ratetime` datetime NOT NULL,
  PRIMARY KEY (`ratingid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_rating`
--

LOCK TABLES `tbl_rating` WRITE;
/*!40000 ALTER TABLE `tbl_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_room`
--

DROP TABLE IF EXISTS `tbl_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomno` varchar(100) NOT NULL,
  `floorno` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=active,0=inactive',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_room`
--

LOCK TABLES `tbl_room` WRITE;
/*!40000 ALTER TABLE `tbl_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_seoption`
--

DROP TABLE IF EXISTS `tbl_seoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_seoption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `title_slug` varchar(255) NOT NULL,
  `keywords` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_seoption`
--

LOCK TABLES `tbl_seoption` WRITE;
/*!40000 ALTER TABLE `tbl_seoption` DISABLE KEYS */;
INSERT INTO `tbl_seoption` VALUES
(1,'Saffron Lites Home page','home','restaurant,food,reservation','Best Restautant Management Software'),
(3,'Menu','menu','Desert,Meet,fish,meet,bevarage','Menu Page'),
(4,'Food Details','food_details','Meet,solt','Details foodÂ  information'),
(5,'Reservation','reservation','Table,booking,reservation','Table Reservation'),
(6,'Cart Page','cart_page','food,menu','Cart Page'),
(7,'Checkout','checkout','Checkout','Checkout'),
(8,'Login','login','Login','Login'),
(9,'Registration','registration','Registration','Registration'),
(10,'Payment information','payment_information','Online Payment information','Payment information'),
(11,'Stripe Payment information','stripe_payment_information','Stripe Payment','Stripe Payment information'),
(12,'About us','about_us','About restaurant','About us'),
(13,'Contact Us','contact_us','Contact Us','Contact Us'),
(14,'Privacy Policy','privacy_policy','privacy','Privacy Policy'),
(15,'Our Terms','our_terms','Our Terms','Our Terms'),
(16,'My Profile','my_profile','My Profile','My Profile'),
(17,'My Order List','my_order_list','My Order List','My Order List'),
(18,'View Order','view_order','View Order','View Order'),
(19,'My Reservation','my_reservation','My Reservation','My Reservation');
/*!40000 ALTER TABLE `tbl_seoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_shippingaddress`
--

DROP TABLE IF EXISTS `tbl_shippingaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_shippingaddress` (
  `shipaddressid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `companyname` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `city` varchar(70) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `DateInserted` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  PRIMARY KEY (`shipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_shippingaddress`
--

LOCK TABLES `tbl_shippingaddress` WRITE;
/*!40000 ALTER TABLE `tbl_shippingaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_shippingaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_slider`
--

DROP TABLE IF EXISTS `tbl_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_slider` (
  `slid` int(11) NOT NULL AUTO_INCREMENT,
  `Sltypeid` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `slink` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `delation_status` int(11) NOT NULL DEFAULT 0,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`slid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_slider`
--

LOCK TABLES `tbl_slider` WRITE;
/*!40000 ALTER TABLE `tbl_slider` DISABLE KEYS */;
INSERT INTO `tbl_slider` VALUES
(1,1,'Welcome To','Book <span>Your</span> Table','','#',1,0,1920,902),
(2,1,'Find Your','Best <span>Cafe</span> Deals','','#',1,0,1920,902),
(3,1,'Exclusive','Coffee <span>Shop</span>','','#',1,0,1920,902),
(4,2,'Discover','OUR STORY','','#',1,0,263,332),
(5,2,'Discover','OUR STORY','','#',1,0,263,332),
(6,3,'Discover','OUR MENU','','#',1,0,263,332),
(7,3,'Discover','OUR MENU','','#',1,0,263,177),
(8,3,'Discover','OUR MENU','','#',1,0,263,177),
(9,4,'right','ads','','#',1,0,252,621),
(10,5,'OUR AWESOME STREET','FOOD HISTORY','','#',1,0,541,516),
(11,6,'Reservation','BOOK YOUR TABLE','dummyimage/463x540.jpg','#',1,0,470,548),
(12,7,'Our Gallery','CHEF SELECTION','','#',1,0,340,277),
(13,7,'Our Gallery','CHEF SELECTION','','#',1,0,340,277),
(14,7,'Our Gallery','CHEF SELECTION','','#',1,0,340,277),
(15,7,'Our Gallery','CHEF SELECTION','','#',1,0,340,277),
(16,7,'Our Gallery','CHEF SELECTION','','#',1,0,340,277),
(17,7,'Our Gallery','CHEF SELECTION','','#',1,0,340,277),
(18,8,'Offer','item offer','','#',1,0,250,533),
(19,9,'Offer','food offer','','#',1,0,250,553),
(20,10,'contact us','contact','','#',1,0,475,633);
/*!40000 ALTER TABLE `tbl_slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_slider_type`
--

DROP TABLE IF EXISTS `tbl_slider_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_slider_type` (
  `stype_id` int(11) NOT NULL AUTO_INCREMENT,
  `STypeName` varchar(255) DEFAULT NULL,
  `delation_status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`stype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_slider_type`
--

LOCK TABLES `tbl_slider_type` WRITE;
/*!40000 ALTER TABLE `tbl_slider_type` DISABLE KEYS */;
INSERT INTO `tbl_slider_type` VALUES
(1,'Home Top Slider',0),
(2,'Home our story',0),
(3,'Home our menu',0),
(4,'Menu Page right Banner',0),
(5,'Classic theme Home story',0),
(6,'Classic theme Home reservation',0),
(7,'Classic theme Home gallery',0),
(8,'Menu Page Offer Banner Right',0),
(9,'Cart Page Offer Banner Right',0),
(10,'Contact Us',0);
/*!40000 ALTER TABLE `tbl_slider_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sociallink`
--

DROP TABLE IF EXISTS `tbl_sociallink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sociallink` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `socialurl` text DEFAULT NULL,
  `icon` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sociallink`
--

LOCK TABLES `tbl_sociallink` WRITE;
/*!40000 ALTER TABLE `tbl_sociallink` DISABLE KEYS */;
INSERT INTO `tbl_sociallink` VALUES
(1,'Facebook','https://www.facebook.com','fab fa-facebook',1),
(2,'Twitter','https://www.twitter.com','fab fa-twitter',1),
(3,'Google Plus','https://plus.google.com','fab fa-google-plus',1),
(4,'Pinterest','https://www.pinterest.com/','fab fa-pinterest',1),
(6,'Linkedin','https://linkedin.com','fab fa-linkedin',1);
/*!40000 ALTER TABLE `tbl_sociallink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_soundsetting`
--

DROP TABLE IF EXISTS `tbl_soundsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_soundsetting` (
  `soundid` int(11) NOT NULL AUTO_INCREMENT,
  `nofitysound` text DEFAULT NULL,
  `addtocartsound` text DEFAULT NULL,
  PRIMARY KEY (`soundid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_soundsetting`
--

LOCK TABLES `tbl_soundsetting` WRITE;
/*!40000 ALTER TABLE `tbl_soundsetting` DISABLE KEYS */;
INSERT INTO `tbl_soundsetting` VALUES
(1,'assets/2021-03-21/b1.mp3','h');
/*!40000 ALTER TABLE `tbl_soundsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_state`
--

DROP TABLE IF EXISTS `tbl_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_state` (
  `stateid` int(11) NOT NULL AUTO_INCREMENT,
  `countryid` int(11) NOT NULL,
  `statename` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`stateid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_state`
--

LOCK TABLES `tbl_state` WRITE;
/*!40000 ALTER TABLE `tbl_state` DISABLE KEYS */;
INSERT INTO `tbl_state` VALUES
(1,2,'Alabama',1),
(2,2,'Alaska',1),
(3,2,'Arizona',1),
(4,2,'Arkansas',1),
(5,2,'California',1),
(6,2,'Florida',1),
(7,2,'New Mexico',1),
(8,2,'New York',1),
(9,2,'Oklahoma',1),
(10,2,'Texas',1),
(11,2,'Virginia',1),
(12,1,'Dhaka',1),
(13,1,'Chittagong',1),
(14,1,'Rajshahi',1),
(15,1,'Khulna',1),
(16,1,'Sylhet',1),
(17,1,'Barishal',1),
(18,1,'Rangpur',1),
(19,1,'Mymensingh',1),
(20,4,'West Bengal',1),
(21,4,'Uttar Pradesh',1),
(22,4,'Tripura',1),
(23,4,'Telangana',1),
(24,4,'Tamil Nadu',1),
(25,4,'Sikkim',1),
(26,4,'Rajasthan',1),
(27,4,'Punjab',1),
(28,4,'Odisha',1),
(29,4,'Nagaland',1),
(30,4,'Kerala',1),
(31,4,'Haryana',1);
/*!40000 ALTER TABLE `tbl_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tablefloor`
--

DROP TABLE IF EXISTS `tbl_tablefloor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tablefloor` (
  `tbfloorid` int(11) NOT NULL AUTO_INCREMENT,
  `floorName` varchar(100) NOT NULL,
  PRIMARY KEY (`tbfloorid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tablefloor`
--

LOCK TABLES `tbl_tablefloor` WRITE;
/*!40000 ALTER TABLE `tbl_tablefloor` DISABLE KEYS */;
INSERT INTO `tbl_tablefloor` VALUES
(1,'First Floor'),
(2,'VIP Floor'),
(3,'Second Floor');
/*!40000 ALTER TABLE `tbl_tablefloor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_thirdparty_customer`
--

DROP TABLE IF EXISTS `tbl_thirdparty_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_thirdparty_customer` (
  `companyId` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(150) NOT NULL,
  `address` text DEFAULT NULL,
  `commision` decimal(10,2) DEFAULT 0.00,
  PRIMARY KEY (`companyId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_thirdparty_customer`
--

LOCK TABLES `tbl_thirdparty_customer` WRITE;
/*!40000 ALTER TABLE `tbl_thirdparty_customer` DISABLE KEYS */;
INSERT INTO `tbl_thirdparty_customer` VALUES
(1,'Food Panda','Dhaka',5.00),
(2,'pathao','Dhaka',8.00),
(3,'Hungrynaki','Dhaka',5.00),
(4,'Foodmart','Dhaka',5.00);
/*!40000 ALTER TABLE `tbl_thirdparty_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_token`
--

DROP TABLE IF EXISTS `tbl_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_token` (
  `tokenid` int(11) NOT NULL AUTO_INCREMENT,
  `tokencode` varchar(50) NOT NULL,
  `tokenrate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tokenstartdate` date NOT NULL,
  `tokenendate` date NOT NULL,
  `tokenstatus` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tokenid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_token`
--

LOCK TABLES `tbl_token` WRITE;
/*!40000 ALTER TABLE `tbl_token` DISABLE KEYS */;
INSERT INTO `tbl_token` VALUES
(1,'ABCD',10.00,'2021-08-28','2021-12-30',1);
/*!40000 ALTER TABLE `tbl_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_updateitems`
--

DROP TABLE IF EXISTS `tbl_updateitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_updateitems` (
  `updateid` int(11) NOT NULL AUTO_INCREMENT,
  `ordid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `qty` decimal(10,3) NOT NULL DEFAULT 0.000,
  `adonsqty` varchar(50) DEFAULT NULL,
  `addonsid` varchar(50) DEFAULT NULL,
  `varientid` int(11) NOT NULL,
  `addonsuid` int(11) DEFAULT NULL,
  `isupdate` varchar(5) DEFAULT NULL,
  `insertdate` date DEFAULT '0000-00-00',
  PRIMARY KEY (`updateid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_updateitems`
--

LOCK TABLES `tbl_updateitems` WRITE;
/*!40000 ALTER TABLE `tbl_updateitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_updateitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_version_checker`
--

DROP TABLE IF EXISTS `tbl_version_checker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_version_checker` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(10) DEFAULT NULL,
  `disable` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_version_checker`
--

LOCK TABLES `tbl_version_checker` WRITE;
/*!40000 ALTER TABLE `tbl_version_checker` DISABLE KEYS */;
INSERT INTO `tbl_version_checker` VALUES
(1,'2.8',0);
/*!40000 ALTER TABLE `tbl_version_checker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_waiterappcart`
--

DROP TABLE IF EXISTS `tbl_waiterappcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_waiterappcart` (
  `weaterappid` int(11) NOT NULL AUTO_INCREMENT,
  `waiterid` int(11) NOT NULL,
  `alladdOnsName` varchar(255) DEFAULT NULL,
  `total_addonsprice` decimal(10,2) DEFAULT 0.00,
  `totaladdons` int(11) DEFAULT NULL,
  `addons_name` varchar(255) DEFAULT NULL,
  `addons_id` int(11) DEFAULT NULL,
  `addons_price` double(10,2) DEFAULT 0.00,
  `addonsQty` int(11) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `destcription` text DEFAULT NULL,
  `itemnotes` varchar(255) DEFAULT NULL,
  `offerIsavailable` int(11) DEFAULT 0,
  `offerstartdate` date DEFAULT '0000-00-00',
  `OffersRate` int(11) DEFAULT NULL,
  `offerendate` date DEFAULT '0000-00-00',
  `price` decimal(10,2) DEFAULT 0.00,
  `ProductsID` int(11) NOT NULL,
  `ProductImage` varchar(255) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `productvat` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `variantName` varchar(255) NOT NULL,
  `variantid` int(11) NOT NULL,
  `orderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`weaterappid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_waiterappcart`
--

LOCK TABLES `tbl_waiterappcart` WRITE;
/*!40000 ALTER TABLE `tbl_waiterappcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_waiterappcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_widget`
--

DROP TABLE IF EXISTS `tbl_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_widget` (
  `widgetid` int(11) NOT NULL AUTO_INCREMENT,
  `widget_name` varchar(100) NOT NULL,
  `widget_title` varchar(150) DEFAULT NULL,
  `widget_desc` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`widgetid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_widget`
--

LOCK TABLES `tbl_widget` WRITE;
/*!40000 ALTER TABLE `tbl_widget` DISABLE KEYS */;
INSERT INTO `tbl_widget` VALUES
(1,'Footer left','','<p class=\"text-justify\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard.</p>',1),
(2,'footermiddle','Available On','<p><strong>Monday - Wednesday</strong>Â 10:00 AM - 7:00 PM</p>\r\n<p><strong>Thursday - Friday</strong>Â 10:00 AM - 11:00 PM</p>\r\n<p><strong>Saturday</strong>Â 12:00 PM - 6:00 PM</p>\r\n<p><strong>Sunday</strong>Â Off</p>',1),
(3,'Footer right','Contact Us','<p>India</p>\r\n<p><a href=\"../../hungry\">info@rednivar.ca</a></p>\r\n<p><a href=\"../../hungry\">+16475947037</a></p>',1),
(4,'Our Store','Our Store','<address>260 Seneca Hill Drive Toronto ON Canada</address>\r\n<p><a class=\"d-block\" href=\"../../hungry-v1/\">+16475947037</a><a class=\"d-block\" href=\"http://soft9.bdtask.com/hungry-v1/\">info@rednivar.ca</a></p>\r\n<div id=\"gtx-trans\" xss=removed> </div>',1),
(6,'Reservation','BOOK YOUR TABLE','<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>',1),
(7,'Our Menu text','Our Menu ','<p>Rosa is a restaurant, bar and coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides of the building, overlooking the market and a bustling London inteon.</p>',1),
(8,'Specials','FOOD MENU','<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The</p>',1),
(9,'story text','OUR STORY','<p>Rosa is a restaurant, bar and coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides of the building, overlooking the market and a bustling London inteon.</p>',1),
(10,'Professional','OUR EXPERT CHEFS','',1),
(11,'Need Help Booking?','Need Help Booking?','<p class=\"mb-2\">Just call our customer services at any time, we are waiting 24 hours to recieve your calls.</p>\r\n<p><a href=\"#\">+16475947037</a></p>',1),
(12,'Privacy','Privacy Policy','<h2>What is Lorem Ipsum</h2>\r\n<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<h3>Contacting us :</h3>\r\n<p>If you have any questions about this Privacy Policy, the practices of this site, or your dealings with this site, please contact us.</p>',1),
(13,'termscondition','Terms of Use','<h3>Web browser cookies</h3>\r\n<p>Our Site may use cache and \"cookies\" to enhance User experience. User\'s web browser places cookies on their hard drive for record-keeping purposes and sometimes to track information about them. User may choose to set their web browser to refuse cookies, or to alert you when cookies are being sent. If they do so, note that some parts of the Site may not function properly.</p>\r\n<h3>How we use collected information bdtask may collect and use Users personal information for the following purposes:</h3>\r\n<p>To run and operate our Site We may need your information display content on the Site correctly. To improve customer service Information you provide helps us respond to your customer service requests and support needs more efficiently. To personalize user experience We may use information in the aggregate to understand how our Users as a group use the services and resources provided on our Site. To improve our Site We may use feedback you provide to improve our products and services. To run a promotion, contest, survey or other Site feature To send Users information they agreed to receive about topics we think will be of interest to them. To send periodic emails We may use the email address to send User information and updates pertaining to their order. It may also be used to respond to their inquiries, questions, and/or other requests.</p>',1),
(14,'map','Google Map','<p>&lt;iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14599.578237069936!2d90.3654215!3d23.8223482!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1583411739085!5m2!1sen!2sbd\" width=\"300\" height=\"150\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"&gt;&lt;/iframe&gt;</p>',1),
(15,'carousal1','carousal','<p>show</p>',1),
(16,'TASTY MENU TODAY','CHEF SELECTION','',1),
(17,'FOOD HISTORY','OUR AWESOME STREET','<p class=\"mb-4\">Thing lesser replenish evening called void a sea blessed meat fourth called moveth place behold night own night third in they abundant and don\'t you\'re the upon fruit. Divided open divided appear also saw may fill. whales seed creepeth. Open lessegether he also morning land i saw Man</p>\r\n<p><a class=\"simple_btn\" href=\"#\">Our Story</a></p>',1),
(21,'Our Gallery','Restaurant Photo Gallery','',1),
(22,'subfooter','','',1),
(23,'Get In Touch','contact','<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>',1),
(24,'Refund Policies','Refund Policies','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard.</p>',1);
/*!40000 ALTER TABLE `tbl_widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblreservation`
--

DROP TABLE IF EXISTS `tblreservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblreservation` (
  `reserveid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `tableid` int(11) NOT NULL,
  `person_capicity` int(11) NOT NULL,
  `formtime` time NOT NULL,
  `totime` time NOT NULL,
  `reserveday` date NOT NULL,
  `customer_notes` text DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '1=free,2=booked',
  `notif` int(11) NOT NULL DEFAULT 0 COMMENT '0=unseen,1=seen',
  PRIMARY KEY (`reserveid`)
) ENGINE=InnoDB AUTO_INCREMENT=1754 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblreservation`
--

LOCK TABLES `tblreservation` WRITE;
/*!40000 ALTER TABLE `tblreservation` DISABLE KEYS */;
INSERT INTO `tblreservation` VALUES
(1,54,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(2,55,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(3,56,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(4,57,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(5,58,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(6,59,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(7,60,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(8,61,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(9,62,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(10,63,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(11,64,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(12,65,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(13,66,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(14,67,2,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(15,68,2,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(16,69,2,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(17,70,2,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(18,71,2,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(19,72,2,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(20,73,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(21,74,2,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(22,75,1,1,'07:10:00','07:40:00','2025-06-20','555',1,0),
(23,76,2,1,'07:10:00','07:40:00','2025-06-20','555',1,0),
(24,77,1,1,'07:10:00','07:40:00','2025-06-20','555',1,0),
(25,78,2,1,'07:10:00','07:40:00','2025-06-20','555',1,0),
(26,79,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(27,80,2,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(28,81,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(29,82,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(30,83,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(31,84,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(32,85,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(33,86,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(34,87,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(35,88,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(36,89,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(37,90,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(38,91,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(39,92,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(40,93,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(41,94,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(42,95,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(43,96,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(44,97,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(45,98,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(46,99,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(47,100,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(48,101,2,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(49,102,2,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(50,103,2,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(51,104,2,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(52,105,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(53,106,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(54,107,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(55,108,1,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(56,109,1,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(57,110,1,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(58,111,1,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(59,112,1,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(60,113,1,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(61,114,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(62,115,2,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(63,116,2,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(64,117,2,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(65,118,2,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(66,119,2,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(67,120,2,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(68,121,1,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(69,122,2,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(70,123,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(71,124,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(72,125,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(73,126,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(74,127,1,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(75,128,2,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(76,129,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(77,130,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(78,131,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(79,132,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(80,133,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(81,134,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(82,135,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(83,136,2,1,'07:10:00','07:40:06','2025-06-02','555',1,0),
(84,137,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(85,138,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(86,139,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(87,140,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(88,141,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(89,142,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(90,143,1,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(91,144,1,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(92,145,1,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(93,146,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(94,147,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(95,148,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(96,149,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(97,150,2,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(98,151,2,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(99,152,2,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(100,153,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(101,154,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(102,155,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(103,156,1,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(104,157,1,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(105,158,1,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(106,159,1,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(107,160,1,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(108,161,1,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(109,162,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(110,163,2,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(111,164,2,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(112,165,2,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(113,166,2,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(114,167,2,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(115,168,2,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(116,169,1,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(117,170,2,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(118,171,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(119,172,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(120,173,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(121,174,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(122,175,1,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(123,176,2,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(124,177,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(125,178,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(126,179,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(127,180,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(128,181,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(129,182,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(130,183,1,1,'07:10:09','07:40:00','2025-06-02','555',1,0),
(131,184,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(132,185,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(133,186,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(134,187,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(135,188,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(136,189,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(137,190,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(138,191,1,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(139,192,1,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(140,193,1,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(141,194,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(142,195,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(143,196,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(144,197,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(145,198,2,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(146,199,2,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(147,200,2,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(148,201,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(149,202,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(150,203,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(151,204,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(152,205,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(153,206,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(154,207,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(155,208,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(156,209,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(157,210,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(158,211,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(159,212,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(160,213,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(161,214,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(162,215,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(163,216,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(164,217,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(165,218,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(166,219,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(167,220,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(168,221,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(169,222,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(170,223,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(171,224,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(172,225,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(173,226,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(174,227,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(175,228,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(176,229,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(177,230,10,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(178,231,10,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(179,232,10,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(180,233,10,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(181,234,10,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(182,235,10,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(183,236,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(184,237,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(185,238,10,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(186,239,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(187,240,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(188,241,10,1,'07:10:00','07:40:00','2025-06-20','555',1,0),
(189,242,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(190,243,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(191,244,10,1,'07:10:00','07:40:00','2025-06-20','555',1,0),
(192,245,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(193,246,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(194,247,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(195,248,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(196,249,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(197,250,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(198,251,10,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(199,252,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(200,253,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(201,254,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(202,255,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(203,256,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(204,257,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(205,258,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(206,259,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(207,260,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(208,261,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(209,262,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(210,263,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(211,264,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(212,265,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(213,266,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(214,267,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(215,268,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(216,269,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(217,270,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(218,271,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(219,272,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(220,273,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(221,274,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(222,275,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(223,276,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(224,277,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(225,278,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(226,279,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(227,280,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(228,281,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(229,282,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(230,283,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(231,284,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(232,285,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(233,286,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(234,287,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(235,288,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(236,289,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(237,290,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(238,291,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(239,292,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(240,293,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(241,294,10,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(242,295,10,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(243,296,10,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(244,297,10,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(245,298,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(246,299,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(247,300,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(248,301,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(249,302,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(250,303,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(251,304,10,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(252,305,10,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(253,306,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(254,307,10,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(255,308,10,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(256,309,10,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(257,310,10,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(258,311,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(259,312,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(260,313,10,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(261,314,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(262,315,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(263,316,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(264,317,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(265,318,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(266,319,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(267,320,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(268,321,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(269,322,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(270,323,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(271,324,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(272,325,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(273,326,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(274,327,10,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(275,328,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(276,329,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(277,330,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(278,331,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(279,332,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(280,333,3,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(281,334,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(282,335,3,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(283,336,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(284,337,3,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(285,338,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(286,339,3,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(287,340,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(288,341,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(289,342,3,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(290,343,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(291,344,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(292,345,3,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(293,346,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(294,347,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(295,348,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(296,349,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(297,350,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(298,351,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(299,352,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(300,353,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(301,354,6,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(302,355,6,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(303,356,6,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(304,357,6,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(305,358,6,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(306,359,6,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(307,360,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(308,361,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(309,362,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(310,363,3,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(311,364,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(312,365,6,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(313,366,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(314,367,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(315,368,1,1,'07:10:00','07:40:00','2025-06-02','-1 OR 5*5=25 -- ',1,0),
(316,369,1,1,'07:10:00','07:40:00','2025-06-02','-1 OR 5*5=25',1,0),
(317,370,1,1,'07:10:00','07:40:00','2025-06-02','-1\' OR 5*5=25 -- ',1,0),
(318,371,1,1,'07:10:00','07:40:00','2025-06-02','-1\" OR 5*5=25 -- ',1,0),
(319,372,1,1,'07:10:00','07:40:00','2025-06-02','-1\' OR 5*5=25 or \'ce9VHMLF\'=\'',1,0),
(320,373,1,1,'07:10:00','07:40:00','2025-06-02','-1\" OR 5*5=25 or \"TaAaVtsE\"=\"',1,0),
(321,374,3,1,'07:10:00','07:40:00','2025-06-20','555',1,0),
(322,375,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(323,376,1,1,'07:10:00','07:40:00','2025-06-20','555',1,0),
(324,377,2,1,'07:10:00','07:40:00','2025-06-02','-1 OR 5*5=25 -- ',1,0),
(325,378,2,1,'07:10:00','07:40:00','2025-06-02','-1 OR 5*5=25',1,0),
(326,379,2,1,'07:10:00','07:40:00','2025-06-02','-1\' OR 5*5=25 -- ',1,0),
(327,380,6,1,'07:10:00','07:40:00','2025-06-20','555',1,0),
(328,381,2,1,'07:10:00','07:40:00','2025-06-02','-1\" OR 5*5=25 -- ',1,0),
(329,382,2,1,'07:10:00','07:40:00','2025-06-02','-1\' OR 5*5=25 or \'IIImCinK\'=\'',1,0),
(330,383,2,1,'07:10:00','07:40:00','2025-06-02','-1\" OR 5*5=25 or \"spFSpOHF\"=\"',1,0),
(331,384,10,1,'07:10:00','07:40:07','2025-06-02','555',1,0),
(332,385,3,1,'07:10:00','07:40:00','2025-06-20','555',1,0),
(333,386,1,1,'07:10:00','07:40:00','2025-06-20','555',1,0),
(334,387,6,1,'07:10:00','07:40:00','2025-06-20','555',1,0),
(335,388,1,1,'07:10:00','07:40:00','2025-06-02','555*if(now()=sysdate(),sleep(15),0)',1,0),
(336,389,2,1,'07:10:00','07:40:00','2025-06-02','555*if(now()=sysdate(),sleep(15),0)',1,0),
(337,390,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(338,391,3,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(339,392,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(340,393,1,1,'07:10:00','07:40:00','2025-06-02','5550\'XOR(555*if(now()=sysdate(),sleep(15),0))XOR\'Z',1,0),
(341,394,6,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(342,395,2,1,'07:10:00','07:40:00','2025-06-02','5550\'XOR(555*if(now()=sysdate(),sleep(15),0))XOR\'Z',1,0),
(343,396,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(344,397,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(345,398,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(346,399,1,1,'07:10:00','07:40:00','2025-06-02','5550\"XOR(555*if(now()=sysdate(),sleep(15),0))XOR\"Z',1,0),
(347,400,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(348,401,2,1,'07:10:00','07:40:00','2025-06-02','5550\"XOR(555*if(now()=sysdate(),sleep(15),0))XOR\"Z',1,0),
(349,402,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(350,403,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(351,404,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(352,405,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(353,406,10,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(354,407,10,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(355,408,10,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(356,409,1,1,'07:10:00','07:40:00','2025-06-02','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/',1,0),
(357,410,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(358,411,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(359,412,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(360,413,2,1,'07:10:00','07:40:00','2025-06-02','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/',1,0),
(361,414,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(362,415,1,1,'07:10:00','07:40:00','2025-06-02','555-1; waitfor delay \'0:0:15\' -- ',1,0),
(363,416,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(364,417,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(365,418,6,1,'07:10:00','07:40:00','2025-06-26','555',1,0),
(366,419,2,1,'07:10:00','07:40:00','2025-06-02','555-1; waitfor delay \'0:0:15\' -- ',1,0),
(367,420,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(368,421,10,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(369,422,10,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(370,423,10,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(371,424,1,1,'07:10:00','07:40:00','2025-06-02','555-1); waitfor delay \'0:0:15\' -- ',1,0),
(372,425,10,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(373,426,10,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(374,427,10,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(375,428,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(376,429,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(377,430,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(378,431,2,1,'07:10:00','07:40:00','2025-06-02','555-1); waitfor delay \'0:0:15\' -- ',1,0),
(379,432,1,1,'07:10:00','07:40:00','2025-06-02','555-1 waitfor delay \'0:0:15\' -- ',1,0),
(380,433,10,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(381,434,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(382,435,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(383,436,2,1,'07:10:00','07:40:00','2025-06-02','555-1 waitfor delay \'0:0:15\' -- ',1,0),
(384,437,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(385,438,1,1,'07:10:00','07:40:00','2025-06-02','555OsaCxgZL\'; waitfor delay \'0:0:15\' -- ',1,0),
(386,439,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(387,440,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(388,441,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(389,442,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(390,443,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(391,444,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(392,445,3,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(393,446,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(394,447,3,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(395,448,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(396,449,3,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(397,450,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(398,451,3,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(399,452,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(400,453,1,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(401,454,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(402,455,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(403,456,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(404,457,6,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(405,458,6,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(406,459,2,1,'07:10:00','07:40:00','2025-06-02','555fUTJNCX0\'; waitfor delay \'0:0:15\' -- ',1,0),
(407,460,6,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(408,461,6,1,'07:10:00','07:40:00','0000-00-00','555',1,0),
(409,462,1,1,'07:10:00','07:40:00','2025-06-02','555-1 OR 716=(SELECT 716 FROM PG_SLEEP(15))--',1,0),
(410,463,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(411,464,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(412,465,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(413,466,2,1,'07:10:00','07:40:00','2025-06-02','555-1 OR 220=(SELECT 220 FROM PG_SLEEP(15))--',1,0),
(414,467,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(415,468,1,1,'07:10:00','07:40:00','2025-06-02','555-1) OR 182=(SELECT 182 FROM PG_SLEEP(15))--',1,0),
(416,469,10,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(417,470,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(418,471,3,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(419,472,2,1,'07:10:00','07:40:00','2025-06-02','555-1) OR 879=(SELECT 879 FROM PG_SLEEP(15))--',1,0),
(420,473,3,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(421,474,3,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(422,475,3,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(423,476,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(424,477,3,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(425,478,1,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(426,479,3,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(427,480,1,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(428,481,1,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(429,482,1,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(430,483,1,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(431,484,1,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(432,485,1,1,'07:10:00','07:40:00','2025-06-02','555-1)) OR 679=(SELECT 679 FROM PG_SLEEP(15))--',1,0),
(433,486,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(434,487,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(435,488,6,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(436,489,6,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(437,490,6,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(438,491,6,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(439,492,6,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(440,493,6,1,'07:10:00','-00:00:01','2025-06-02','555',1,0),
(441,494,2,1,'07:10:00','07:40:00','2025-06-02','555-1)) OR 325=(SELECT 325 FROM PG_SLEEP(15))--',1,0),
(442,495,3,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(443,496,1,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(444,497,1,1,'07:10:00','07:40:00','2025-06-02','555geTQ7RIh\' OR 527=(SELECT 527 FROM PG_SLEEP(15))--',1,0),
(445,498,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(446,499,6,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(447,500,2,1,'07:10:00','07:40:00','2025-06-02','5556B31NC8I\' OR 413=(SELECT 413 FROM PG_SLEEP(15))--',1,0),
(448,501,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(449,502,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(450,503,1,1,'07:10:00','07:40:00','2025-06-02','555uK1d1zoG\') OR 712=(SELECT 712 FROM PG_SLEEP(15))--',1,0),
(451,504,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(452,505,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(453,506,2,1,'07:10:00','07:40:00','2025-06-02','555NkASCxfd\') OR 612=(SELECT 612 FROM PG_SLEEP(15))--',1,0),
(454,507,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(455,508,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(456,509,1,1,'07:10:00','07:40:00','2025-06-02','555Qe09Kkso\')) OR 958=(SELECT 958 FROM PG_SLEEP(15))--',1,0),
(457,510,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(458,511,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(459,512,3,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(460,513,1,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(461,514,6,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(462,515,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(463,516,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(464,517,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(465,518,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(466,519,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(467,520,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(468,521,3,1,'07:10:00','07:40:05','2025-06-02','555',1,0),
(469,522,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(470,523,2,1,'07:10:00','07:40:00','2025-06-02','5557qdakqjm\')) OR 798=(SELECT 798 FROM PG_SLEEP(15))--',1,0),
(471,524,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(472,525,1,1,'07:10:00','07:40:00','2025-06-02','555*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)',1,0),
(473,526,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(474,527,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(475,528,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(476,529,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(477,530,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(478,531,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(479,532,2,1,'07:10:00','07:40:00','2025-06-02','555*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)',1,0),
(480,533,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(481,534,1,1,'07:10:00','07:40:00','2025-06-02','555\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',1,0),
(482,535,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(483,536,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(484,537,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(485,538,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(486,539,1,1,'07:10:00','07:40:00','2025-06-02','555\'\"',1,0),
(487,540,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(488,541,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(489,542,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(490,543,1,1,'07:10:00','07:40:00','2025-06-02','555\'\"\\\'\\\"',1,0),
(491,544,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(492,545,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(493,546,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(494,547,1,1,'07:10:00','07:40:00','2025-06-02','@@i6meA',1,0),
(495,548,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(496,549,3,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(497,550,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(498,551,1,1,'07:10:00','07:40:00','2025-06-02','(select 198766*667891)',1,0),
(499,552,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(500,553,10,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(501,554,1,1,'07:10:00','07:40:00','2025-06-02','(select 198766*667891 from DUAL)',1,0),
(502,555,10,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(503,556,3,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(504,557,10,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(505,558,1,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(506,559,3,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(507,560,1,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(508,561,1,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(509,562,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(510,563,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(511,564,2,1,'07:10:00','07:40:00','2025-06-02','555\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',1,0),
(512,565,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(513,566,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(514,567,6,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(515,568,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(516,569,6,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(517,570,2,1,'07:10:00','07:40:00','2025-06-02','555\'\"',1,0),
(518,571,6,1,'07:10:00','00:00:00','2025-06-02','555',1,0),
(519,572,2,1,'07:10:00','07:40:00','2025-06-02','555\'\"\\\'\\\"',1,0),
(520,573,2,1,'07:10:00','07:40:00','2025-06-02','@@MXUu2',1,0),
(521,574,2,1,'07:10:00','07:40:00','2025-06-02','(select 198766*667891)',1,0),
(522,575,2,1,'07:10:00','07:40:00','2025-06-02','(select 198766*667891 from DUAL)',1,0),
(523,576,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(524,577,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(525,578,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(526,579,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(527,580,3,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(528,581,3,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(529,582,3,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(530,583,3,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(531,584,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(532,585,3,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(533,586,1,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(534,587,3,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(535,588,1,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(536,589,1,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(537,590,1,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(538,591,1,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(539,592,1,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(540,593,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(541,594,6,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(542,595,6,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(543,596,6,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(544,597,6,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(545,598,6,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(546,599,6,1,'-00:00:01','07:40:00','2025-06-02','555',1,0),
(547,600,3,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(548,601,1,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(549,602,6,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(550,603,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(551,604,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(552,605,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(553,606,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(554,607,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(555,608,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(556,609,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(557,610,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(558,611,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(559,612,3,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(560,613,1,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(561,614,6,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(562,615,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(563,616,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(564,617,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(565,618,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(566,619,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(567,620,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(568,621,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(569,622,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(570,623,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(571,624,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(572,625,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(573,626,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(574,627,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(575,628,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(576,629,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(577,630,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(578,631,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(579,632,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(580,633,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(581,634,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(582,635,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(583,636,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(584,637,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(585,638,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(586,639,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(587,640,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(588,641,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(589,642,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(590,643,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(591,644,3,1,'07:10:01','07:40:00','2025-06-02','555',1,0),
(592,645,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(593,646,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(594,647,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(595,648,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(596,649,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(597,650,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(598,651,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(599,652,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(600,653,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(601,654,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(602,655,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(603,656,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(604,657,3,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(605,658,3,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(606,659,3,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(607,660,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(608,661,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(609,662,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(610,663,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(611,664,1,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(612,665,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(613,666,1,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(614,667,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(615,668,1,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(616,669,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(617,670,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(618,671,6,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(619,672,6,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(620,673,6,1,'00:00:00','07:40:00','2025-06-02','555',1,0),
(621,674,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(622,675,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(623,676,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(624,677,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(625,678,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(626,679,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(627,680,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(628,681,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(629,682,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(630,683,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(631,684,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(632,685,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(633,686,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(634,687,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(635,688,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(636,689,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(637,690,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(638,691,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(639,692,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(640,693,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(641,694,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(642,695,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(643,696,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(644,697,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(645,698,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(646,699,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(647,700,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(648,701,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(649,702,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(650,703,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(651,704,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(652,705,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(653,706,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(654,707,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(655,708,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(656,709,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(657,710,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(658,711,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(659,712,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(660,713,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(661,714,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(662,715,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(663,716,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(664,717,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(665,718,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(666,719,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(667,720,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(668,721,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(669,722,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(670,723,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(671,724,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(672,725,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(673,726,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(674,727,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(675,728,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(676,729,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(677,730,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(678,731,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(679,732,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(680,733,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(681,734,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(682,735,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(683,736,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(684,737,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(685,738,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(686,739,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(687,740,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(688,741,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(689,742,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(690,743,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(691,744,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(692,745,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(693,746,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(694,747,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(695,748,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(696,749,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(697,750,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(698,751,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(699,752,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(700,753,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(701,754,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(702,755,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(703,756,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(704,757,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(705,758,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(706,759,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(707,760,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(708,761,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(709,762,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(710,763,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(711,764,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(712,765,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(713,766,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(714,767,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(715,768,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(716,769,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(717,770,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(718,771,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(719,772,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(720,773,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(721,774,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(722,775,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(723,776,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(724,777,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(725,778,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(726,779,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(727,780,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(728,781,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(729,782,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(730,783,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(731,784,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(732,785,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(733,786,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(734,787,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(735,788,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(736,789,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(737,790,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(738,791,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(739,792,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(740,793,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(741,794,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(742,795,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(743,796,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(744,797,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(745,798,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(746,799,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(747,800,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(748,801,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(749,802,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(750,803,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(751,804,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(752,805,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(753,806,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(754,807,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(755,808,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(756,809,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(757,810,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(758,811,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(759,812,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(760,813,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(761,814,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(762,815,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(763,816,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(764,817,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(765,818,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(766,819,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(767,820,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(768,821,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(769,822,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(770,823,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(771,824,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(772,825,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(773,826,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(774,827,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(775,828,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(776,829,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(777,830,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(778,831,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(779,832,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(780,833,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(781,834,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(782,835,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(783,836,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(784,837,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(785,838,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(786,839,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(787,840,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(788,841,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(789,842,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(790,843,3,1,'07:10:00','07:40:00','2025-06-02','-1 OR 5*5=25 -- ',1,0),
(791,844,3,1,'07:10:00','07:40:00','2025-06-02','-1 OR 5*5=25',1,0),
(792,845,3,1,'07:10:00','07:40:00','2025-06-02','-1\' OR 5*5=25 -- ',1,0),
(793,846,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(794,847,3,1,'07:10:00','07:40:00','2025-06-02','-1\" OR 5*5=25 -- ',1,0),
(795,848,1,1,'07:10:00','07:40:00','2025-06-02','-1 OR 5*5=25 -- ',1,0),
(796,849,3,1,'07:10:00','07:40:00','2025-06-02','-1\' OR 5*5=25 or \'SGuDyjlN\'=\'',1,0),
(797,850,1,1,'07:10:00','07:40:00','2025-06-02','-1 OR 5*5=25',1,0),
(798,851,3,1,'07:10:00','07:40:00','2025-06-02','-1\" OR 5*5=25 or \"m01Qp9hs\"=\"',1,0),
(799,852,1,1,'07:10:00','07:40:00','2025-06-02','-1\' OR 5*5=25 -- ',1,0),
(800,853,1,1,'07:10:00','07:40:00','2025-06-02','-1\" OR 5*5=25 -- ',1,0),
(801,854,1,1,'07:10:00','07:40:00','2025-06-02','-1\' OR 5*5=25 or \'GOvsZszI\'=\'',1,0),
(802,855,1,1,'07:10:00','07:40:00','2025-06-02','-1\" OR 5*5=25 or \"Osij8BMO\"=\"',1,0),
(803,856,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(804,857,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(805,858,6,1,'07:10:00','07:40:00','2025-06-02','-1 OR 5*5=25 -- ',1,0),
(806,859,6,1,'07:10:00','07:40:00','2025-06-02','-1 OR 5*5=25',1,0),
(807,860,6,1,'07:10:00','07:40:00','2025-06-02','-1\' OR 5*5=25 -- ',1,0),
(808,861,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(809,862,6,1,'07:10:00','07:40:00','2025-06-02','-1\" OR 5*5=25 -- ',1,0),
(810,863,6,1,'07:10:00','07:40:00','2025-06-02','-1\' OR 5*5=25 or \'rnmOPXrv\'=\'',1,0),
(811,864,6,1,'07:10:00','07:40:00','2025-06-02','-1\" OR 5*5=25 or \"4KCny7qN\"=\"',1,0),
(812,865,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(813,866,3,1,'07:10:00','07:40:00','2025-06-02','555*if(now()=sysdate(),sleep(15),0)',1,0),
(814,867,1,1,'07:10:00','07:40:00','2025-06-02','555*if(now()=sysdate(),sleep(15),0)',1,0),
(815,868,6,1,'07:10:00','07:40:00','2025-06-02','555*if(now()=sysdate(),sleep(15),0)',1,0),
(816,869,3,1,'07:10:00','07:40:00','2025-06-02','5550\'XOR(555*if(now()=sysdate(),sleep(15),0))XOR\'Z',1,0),
(817,870,1,1,'07:10:00','07:40:00','2025-06-02','5550\'XOR(555*if(now()=sysdate(),sleep(15),0))XOR\'Z',1,0),
(818,871,6,1,'07:10:00','07:40:00','2025-06-02','5550\'XOR(555*if(now()=sysdate(),sleep(15),0))XOR\'Z',1,0),
(819,872,3,1,'07:10:00','07:40:00','2025-06-02','5550\"XOR(555*if(now()=sysdate(),sleep(15),0))XOR\"Z',1,0),
(820,873,1,1,'07:10:00','07:40:00','2025-06-02','5550\"XOR(555*if(now()=sysdate(),sleep(15),0))XOR\"Z',1,0),
(821,874,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(822,875,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(823,876,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(824,877,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(825,878,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(826,879,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(827,880,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(828,881,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(829,882,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(830,883,6,1,'07:10:00','07:40:00','2025-06-02','5550\"XOR(555*if(now()=sysdate(),sleep(15),0))XOR\"Z',1,0),
(831,884,3,1,'07:10:00','07:40:00','2025-06-02','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/',1,0),
(832,885,1,1,'07:10:00','07:40:00','2025-06-02','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/',1,0),
(833,886,6,1,'07:10:00','07:40:00','2025-06-02','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/',1,0),
(834,887,3,1,'07:10:00','07:40:00','2025-06-02','555-1; waitfor delay \'0:0:15\' -- ',1,0),
(835,888,1,1,'07:10:00','07:40:00','2025-06-02','555-1; waitfor delay \'0:0:15\' -- ',1,0),
(836,889,6,1,'07:10:00','07:40:00','2025-06-02','555-1; waitfor delay \'0:0:15\' -- ',1,0),
(837,890,3,1,'07:10:00','07:40:00','2025-06-02','555-1); waitfor delay \'0:0:15\' -- ',1,0),
(838,891,1,1,'07:10:00','07:40:00','2025-06-02','555-1); waitfor delay \'0:0:15\' -- ',1,0),
(839,892,6,1,'07:10:00','07:40:00','2025-06-02','555-1); waitfor delay \'0:0:15\' -- ',1,0),
(840,893,3,1,'07:10:00','07:40:00','2025-06-02','555-1 waitfor delay \'0:0:15\' -- ',1,0),
(841,894,1,1,'07:10:00','07:40:00','2025-06-02','555-1 waitfor delay \'0:0:15\' -- ',1,0),
(842,895,6,1,'07:10:00','07:40:00','2025-06-02','555-1 waitfor delay \'0:0:15\' -- ',1,0),
(843,896,3,1,'07:10:00','07:40:00','2025-06-02','555EwApOJpN\'; waitfor delay \'0:0:15\' -- ',1,0),
(844,897,1,1,'07:10:00','07:40:00','2025-06-02','555SZubWAXj\'; waitfor delay \'0:0:15\' -- ',1,0),
(845,898,6,1,'07:10:00','07:40:00','2025-06-02','555ask3SWhV\'; waitfor delay \'0:0:15\' -- ',1,0),
(846,899,3,1,'07:10:00','07:40:00','2025-06-02','555-1 OR 509=(SELECT 509 FROM PG_SLEEP(15))--',1,0),
(847,900,1,1,'07:10:00','07:40:00','2025-06-02','555-1 OR 618=(SELECT 618 FROM PG_SLEEP(15))--',1,0),
(848,901,6,1,'07:10:00','07:40:00','2025-06-02','555-1 OR 965=(SELECT 965 FROM PG_SLEEP(15))--',1,0),
(849,902,3,1,'07:10:00','07:40:00','2025-06-02','555-1) OR 901=(SELECT 901 FROM PG_SLEEP(15))--',1,0),
(850,903,1,1,'07:10:00','07:40:00','2025-06-02','555-1) OR 457=(SELECT 457 FROM PG_SLEEP(15))--',1,0),
(851,904,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(852,905,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(853,906,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(854,907,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(855,908,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(856,909,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(857,910,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(858,911,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(859,912,6,1,'07:10:00','07:40:00','2025-06-02','555-1) OR 736=(SELECT 736 FROM PG_SLEEP(15))--',1,0),
(860,913,3,1,'07:10:00','07:40:00','2025-06-02','555-1)) OR 129=(SELECT 129 FROM PG_SLEEP(15))--',1,0),
(861,914,1,1,'07:10:00','07:40:00','2025-06-02','555-1)) OR 159=(SELECT 159 FROM PG_SLEEP(15))--',1,0),
(862,915,6,1,'07:10:00','07:40:00','2025-06-02','555-1)) OR 29=(SELECT 29 FROM PG_SLEEP(15))--',1,0),
(863,916,3,1,'07:10:00','07:40:00','2025-06-02','555zX16UKZv\' OR 729=(SELECT 729 FROM PG_SLEEP(15))--',1,0),
(864,917,1,1,'07:10:00','07:40:00','2025-06-02','555TmZBdGCF\' OR 535=(SELECT 535 FROM PG_SLEEP(15))--',1,0),
(865,918,6,1,'07:10:00','07:40:00','2025-06-02','555aVaqce2D\' OR 984=(SELECT 984 FROM PG_SLEEP(15))--',1,0),
(866,919,3,1,'07:10:00','07:40:00','2025-06-02','555CBE0TBpQ\') OR 389=(SELECT 389 FROM PG_SLEEP(15))--',1,0),
(867,920,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(868,921,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(869,922,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(870,923,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(871,924,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(872,925,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(873,926,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(874,927,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(875,928,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(876,929,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(877,930,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(878,931,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(879,932,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(880,933,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(881,934,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(882,935,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(883,936,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(884,937,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(885,938,-1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(886,939,-1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(887,940,-1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(888,941,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(889,942,1,1,'07:10:00','07:40:00','2025-06-02','555LFwQ4qtd\') OR 213=(SELECT 213 FROM PG_SLEEP(15))--',1,0),
(890,943,-1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(891,944,-1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(892,945,-1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(893,946,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(894,947,2,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(895,948,2,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(896,949,2,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(897,950,2,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(898,951,2,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(899,952,2,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(900,953,6,1,'07:10:00','07:40:00','2025-06-02','555R2TZsmKV\') OR 757=(SELECT 757 FROM PG_SLEEP(15))--',1,0),
(901,954,3,1,'07:10:00','07:40:00','2025-06-02','555zqAadR3f\')) OR 783=(SELECT 783 FROM PG_SLEEP(15))--',1,0),
(902,955,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(903,956,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(904,957,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(905,958,1,1,'07:10:00','07:40:00','2025-06-02','555W4mqRJIP\')) OR 294=(SELECT 294 FROM PG_SLEEP(15))--',1,0),
(906,959,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(907,960,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(908,961,2,10,'07:10:00','07:40:00','2025-06-02','555',1,0),
(909,962,6,1,'07:10:00','07:40:00','2025-06-02','555Fr2dsHtA\')) OR 448=(SELECT 448 FROM PG_SLEEP(15))--',1,0),
(910,963,3,1,'07:10:00','07:40:00','2025-06-02','555*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)',1,0),
(911,964,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(912,965,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(913,966,2,10,'07:10:00','07:40:00','2025-06-02','555',1,0),
(914,967,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(915,968,0,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(916,969,2,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(917,970,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(918,971,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(919,972,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(920,973,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(921,974,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(922,975,1,1,'07:10:00','07:40:00','2025-06-02','555*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)',1,0),
(923,976,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(924,977,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(925,978,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(926,979,6,1,'07:10:00','07:40:00','2025-06-02','555*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)',1,0),
(927,980,3,1,'07:10:00','07:40:00','2025-06-02','555\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',1,0),
(928,981,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(929,982,3,1,'07:10:00','07:40:00','2025-06-02','555\'\"',1,0),
(930,983,3,1,'07:10:00','07:40:00','2025-06-02','555\'\"\\\'\\\"',1,0),
(931,984,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(932,985,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(933,986,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(934,987,2,12,'07:10:00','07:40:00','2025-06-02','555',1,0),
(935,988,3,1,'07:10:00','07:40:00','2025-06-02','@@xPLMl',1,0),
(936,989,3,1,'07:10:00','07:40:00','2025-06-02','(select 198766*667891)',1,0),
(937,990,3,1,'07:10:00','07:40:00','2025-06-02','(select 198766*667891 from DUAL)',1,0),
(938,991,1,1,'07:10:00','07:40:00','2025-06-02','555\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',1,0),
(939,992,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(940,993,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(941,994,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(942,995,1,1,'07:10:00','07:40:00','2025-06-02','555\'\"',1,0),
(943,996,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(944,997,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(945,998,1,1,'07:10:00','07:40:00','2025-06-02','555\'\"\\\'\\\"',1,0),
(946,999,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(947,1000,1,1,'07:10:00','07:40:00','2025-06-02','@@au0DB',1,0),
(948,1001,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(949,1002,1,1,'07:10:00','07:40:00','2025-06-02','(select 198766*667891)',1,0),
(950,1003,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(951,1004,1,1,'07:10:00','07:40:00','2025-06-02','(select 198766*667891 from DUAL)',1,0),
(952,1005,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(953,1006,6,1,'07:10:00','07:40:00','2025-06-02','555\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',1,0),
(954,1007,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(955,1008,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(956,1009,6,1,'07:10:00','07:40:00','2025-06-02','555\'\"',1,0),
(957,1010,6,1,'07:10:00','07:40:00','2025-06-02','555\'\"\\\'\\\"',1,0),
(958,1011,6,1,'07:10:00','07:40:00','2025-06-02','@@RWDw1',1,0),
(959,1012,6,1,'07:10:00','07:40:00','2025-06-02','(select 198766*667891)',1,0),
(960,1013,6,1,'07:10:00','07:40:00','2025-06-02','(select 198766*667891 from DUAL)',1,0),
(961,1014,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(962,1015,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(963,1016,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(964,1017,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(965,1018,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(966,1019,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(967,1020,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(968,1021,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(969,1022,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(970,1023,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(971,1024,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(972,1025,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(973,1026,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(974,1027,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(975,1028,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(976,1029,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(977,1030,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(978,1031,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(979,1032,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(980,1033,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(981,1034,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(982,1035,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(983,1036,10,1,'07:10:00','07:40:00','2025-06-02','-1 OR 5*5=25 -- ',1,0),
(984,1037,10,1,'07:10:00','07:40:00','2025-06-02','-1 OR 5*5=25',1,0),
(985,1038,10,1,'07:10:00','07:40:00','2025-06-02','-1\' OR 5*5=25 -- ',1,0),
(986,1039,10,1,'07:10:00','07:40:00','2025-06-02','-1\" OR 5*5=25 -- ',1,0),
(987,1040,10,1,'07:10:00','07:40:00','2025-06-02','-1\' OR 5*5=25 or \'p2mKedbU\'=\'',1,0),
(988,1041,10,1,'07:10:00','07:40:00','2025-06-02','-1\" OR 5*5=25 or \"XNiW3TE3\"=\"',1,0),
(989,1042,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(990,1043,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(991,1044,10,1,'07:10:00','07:40:00','2025-06-02','555*if(now()=sysdate(),sleep(15),0)',1,0),
(992,1045,2,11,'07:10:00','07:40:00','2025-06-02','555',1,0),
(993,1046,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(994,1047,10,1,'07:10:00','07:40:00','2025-06-02','5550\'XOR(555*if(now()=sysdate(),sleep(15),0))XOR\'Z',1,0),
(995,1048,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(996,1049,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(997,1050,10,1,'07:10:00','07:40:00','2025-06-02','5550\"XOR(555*if(now()=sysdate(),sleep(15),0))XOR\"Z',1,0),
(998,1051,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(999,1052,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1000,1053,10,1,'07:10:00','07:40:00','2025-06-02','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/',1,0),
(1001,1054,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1002,1055,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1003,1056,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1004,1057,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1005,1058,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1006,1059,0,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1007,1060,0,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1008,1061,0,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1009,1062,10,1,'07:10:00','07:40:00','2025-06-02','555-1; waitfor delay \'0:0:15\' -- ',1,0),
(1010,1063,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1011,1064,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1012,1065,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1013,1066,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1014,1067,2,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1015,1068,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1016,1069,2,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1017,1070,2,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1018,1071,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1019,1072,10,1,'07:10:00','07:40:00','2025-06-02','555-1); waitfor delay \'0:0:15\' -- ',1,0),
(1020,1073,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1021,1074,1,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1022,1075,1,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1023,1076,1,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1024,1077,10,1,'07:10:00','07:40:00','2025-06-02','555-1 waitfor delay \'0:0:15\' -- ',1,0),
(1025,1078,1,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1026,1079,1,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1027,1080,1,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1028,1081,10,1,'07:10:00','07:40:00','2025-06-02','555Hq9l197h\'; waitfor delay \'0:0:15\' -- ',1,0),
(1029,1082,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1030,1083,10,1,'07:10:00','07:40:00','2025-06-02','555-1 OR 957=(SELECT 957 FROM PG_SLEEP(15))--',1,0),
(1031,1084,1,10,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1032,1085,10,1,'07:10:00','07:40:00','2025-06-02','555-1) OR 838=(SELECT 838 FROM PG_SLEEP(15))--',1,0),
(1033,1086,1,10,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1034,1087,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1035,1088,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1036,1089,10,1,'07:10:00','07:40:00','2025-06-02','555-1)) OR 211=(SELECT 211 FROM PG_SLEEP(15))--',1,0),
(1037,1090,1,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1038,1091,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1039,1092,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1040,1093,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1041,1094,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1042,1095,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1043,1096,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1044,1097,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1045,1098,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1046,1099,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1047,1100,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1048,1101,10,1,'07:10:00','07:40:00','2025-06-02','555NQFmxebZ\' OR 937=(SELECT 937 FROM PG_SLEEP(15))--',1,0),
(1049,1102,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1050,1103,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1051,1104,10,1,'07:10:00','07:40:00','2025-06-02','555vuZ0LRhw\') OR 371=(SELECT 371 FROM PG_SLEEP(15))--',1,0),
(1052,1105,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1053,1106,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1054,1107,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1055,1108,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1056,1109,10,1,'07:10:00','07:40:00','2025-06-02','555KQJZ5fAd\')) OR 805=(SELECT 805 FROM PG_SLEEP(15))--',1,0),
(1057,1110,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1058,1111,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1059,1112,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1060,1113,10,1,'07:10:00','07:40:00','2025-06-02','555*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)',1,0),
(1061,1114,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1062,1115,10,1,'07:10:00','07:40:00','2025-06-02','555\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',1,0),
(1063,1116,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1064,1117,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1065,1118,10,1,'07:10:00','07:40:00','2025-06-02','555\'\"',1,0),
(1066,1119,10,1,'07:10:00','07:40:00','2025-06-02','555\'\"\\\'\\\"',1,0),
(1067,1120,10,1,'07:10:00','07:40:00','2025-06-02','@@al8Oq',1,0),
(1068,1121,10,1,'07:10:00','07:40:00','2025-06-02','(select 198766*667891)',1,0),
(1069,1122,10,1,'07:10:00','07:40:00','2025-06-02','(select 198766*667891 from DUAL)',1,0),
(1070,1123,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1071,1124,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1072,1125,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1073,1126,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1074,1127,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1075,1128,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1076,1129,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1077,1130,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1078,1131,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1079,1132,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1080,1133,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1081,1134,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1082,1135,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1083,1136,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1084,1137,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1085,1138,1,190,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1086,1139,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1087,1140,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1088,1141,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1089,1142,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1090,1143,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1091,1144,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1092,1145,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1093,1146,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1094,1147,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1095,1148,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1096,1149,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1097,1150,1,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1098,1151,1,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1099,1152,1,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1100,1153,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1101,1154,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1102,1155,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1103,1156,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1104,1157,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1105,1158,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1106,1159,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1107,1160,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1108,1161,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1109,1162,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1110,1163,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1111,1164,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1112,1165,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1113,1166,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1114,1167,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1115,1168,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1116,1169,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1117,1170,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1118,1171,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1119,1172,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1120,1173,10,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1121,1174,10,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1122,1175,10,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1123,1176,10,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1124,1177,10,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1125,1178,10,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1126,1179,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1127,1180,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1128,1182,10,10,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1129,1183,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1130,1184,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1131,1185,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1132,1186,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1133,1187,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1134,1188,10,10,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1135,1189,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1136,1190,10,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1137,1191,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1138,1192,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1139,1193,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1140,1194,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1141,1195,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1142,1196,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1143,1197,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1144,1198,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1145,1199,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1146,1200,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1147,1201,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1148,1202,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1149,1203,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1150,1204,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1151,1205,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1152,1206,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1153,1207,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1154,1208,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1155,1209,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1156,1210,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1157,1211,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1158,1212,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1159,1213,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1160,1214,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1161,1215,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1162,1216,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1163,1217,-1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1164,1218,-1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1165,1219,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1166,1220,-1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1167,1221,-1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1168,1222,-1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1169,1223,-1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1170,1224,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1171,1225,1,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1172,1226,1,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1173,1227,1,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1174,1228,1,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1175,1229,1,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1176,1230,1,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1177,1231,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1178,1232,6,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1179,1233,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1180,1234,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1181,1235,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1182,1236,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1183,1237,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1184,1238,6,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1185,1239,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1186,1240,6,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1187,1241,6,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1188,1242,6,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1189,1243,6,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1190,1244,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1191,1245,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1192,1246,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1193,1247,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1194,1248,1,10,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1195,1249,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1196,1250,30,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1197,1251,6,10,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1198,1252,1,10,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1199,1253,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1200,1254,30,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1201,1255,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1202,1256,6,10,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1203,1257,1,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1204,1258,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1205,1259,0,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1206,1260,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1207,1261,6,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1208,1262,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1209,1263,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1210,1264,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1211,1265,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1212,1266,10,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1213,1267,10,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1214,1268,10,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1215,1269,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1216,1270,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1217,1271,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1218,1272,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1219,1273,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1220,1274,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1221,1275,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1222,1276,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1223,1277,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1224,1278,31,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1225,1279,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1226,1280,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1227,1281,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1228,1282,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1229,1283,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1230,1284,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1231,1285,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1232,1286,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1233,1287,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1234,1288,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1235,1289,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1236,1290,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1237,1291,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1238,1292,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1239,1293,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1240,1294,10,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1241,1295,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1242,1296,2,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1243,1297,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1244,1298,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1245,1299,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1246,1300,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1247,1301,38,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1248,1302,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1249,1303,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1250,1304,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1251,1305,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1252,1306,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1253,1307,1,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1254,1308,1,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1255,1309,1,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1256,1310,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1257,1311,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1258,1312,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1259,1313,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1260,1314,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1261,1315,6,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1262,1316,6,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1263,1317,6,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1264,1318,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1265,1319,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1266,1320,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1267,1321,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1268,1322,0,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1269,1323,0,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1270,1324,0,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1271,1325,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1272,1326,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1273,1327,3,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1274,1328,3,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1275,1329,3,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1276,1330,3,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1277,1331,3,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1278,1332,3,-1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1279,1333,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1280,1334,3,10,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1281,1335,3,10,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1282,1336,3,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1283,1337,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1284,1338,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1285,1339,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1286,1340,3,19,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1287,1341,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1288,1342,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1289,1343,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1290,1344,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1291,1345,3,19,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1292,1346,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1293,1347,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1294,1348,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1295,1349,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1296,1350,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1297,1351,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1298,1352,3,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1299,1353,3,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1300,1354,3,0,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1301,1355,6,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1302,1356,3,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1303,1357,1,1,'07:10:00','07:40:00','2025-06-02','555',1,0),
(1304,1358,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1305,1359,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1306,1360,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1307,1361,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1308,1362,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1309,1363,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1310,1364,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1311,1365,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1312,1366,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1313,1367,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1314,1368,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1315,1369,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1316,1370,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1317,1371,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1318,1372,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1319,1373,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1320,1374,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1321,1375,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1322,1376,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1323,1377,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1324,1378,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1325,1379,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1326,1380,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1327,1381,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1328,1382,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1329,1383,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1330,1384,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1331,1385,1,0,'07:10:00','-00:00:01','0000-00-00','555',1,0),
(1332,1386,1,0,'07:10:00','-00:00:01','0000-00-00','555',1,0),
(1333,1387,1,0,'07:10:00','-00:00:01','0000-00-00','555',1,0),
(1334,1388,1,0,'07:10:00','-00:00:01','0000-00-00','555',1,0),
(1335,1389,1,0,'07:10:00','-00:00:01','0000-00-00','555',1,0),
(1336,1390,1,0,'07:10:00','-00:00:01','0000-00-00','555',1,0),
(1337,1391,1,0,'07:10:00','00:00:00','0000-00-00','555',1,0),
(1338,1392,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1339,1393,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1340,1394,1,0,'07:10:00','00:00:00','0000-00-00','555',1,0),
(1341,1395,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1342,1396,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1343,1397,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1344,1398,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1345,1399,1,0,'07:10:00','06:30:01','0000-00-00','555',1,0),
(1346,1400,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1347,1401,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1348,1402,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1349,1403,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1350,1404,1,0,'07:10:00','00:00:00','0000-00-00','555',1,0),
(1351,1405,1,0,'07:10:00','00:00:00','0000-00-00','555',1,0),
(1352,1406,1,0,'07:10:00','00:00:00','0000-00-00','555',1,0),
(1353,1407,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1354,1408,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1355,1409,1,0,'-00:00:01','06:30:00','0000-00-00','555',1,0),
(1356,1410,1,0,'-00:00:01','06:30:00','0000-00-00','555',1,0),
(1357,1411,1,0,'-00:00:01','06:30:00','0000-00-00','555',1,0),
(1358,1412,1,0,'-00:00:01','06:30:00','0000-00-00','555',1,0),
(1359,1413,1,0,'-00:00:01','06:30:00','0000-00-00','555',1,0),
(1360,1414,1,0,'-00:00:01','06:30:00','0000-00-00','555',1,0),
(1361,1415,1,0,'00:00:00','06:30:00','0000-00-00','555',1,0),
(1362,1416,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1363,1417,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1364,1418,1,0,'00:00:00','06:30:00','0000-00-00','555',1,0),
(1365,1419,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1366,1420,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1367,1421,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1368,1422,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1369,1423,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1370,1424,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1371,1425,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1372,1426,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1373,1427,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1374,1428,1,0,'00:00:00','06:30:00','0000-00-00','555',1,0),
(1375,1429,1,0,'00:00:00','06:30:00','0000-00-00','555',1,0),
(1376,1430,1,0,'00:00:00','06:30:00','0000-00-00','555',1,0),
(1377,1431,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1378,1432,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1379,1433,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1380,1434,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1381,1435,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1382,1436,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1383,1437,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1384,1438,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1385,1439,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1386,1440,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1387,1441,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1388,1442,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1389,1443,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1390,1444,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1391,1445,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1392,1446,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1393,1447,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1394,1448,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1395,1449,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1396,1450,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1397,1451,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1398,1452,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1399,1453,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1400,1454,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1401,1455,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1402,1456,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1403,1457,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1404,1458,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1405,1459,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1406,1460,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1407,1461,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1408,1462,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1409,1463,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1410,1464,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1411,1465,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1412,1466,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1413,1467,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1414,1468,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1415,1469,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1416,1470,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1417,1471,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1418,1472,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1419,1473,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1420,1474,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1421,1475,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1422,1476,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1423,1477,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1424,1478,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1425,1479,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1426,1480,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1427,1481,1,0,'07:10:00','06:30:00','0000-00-00','-1 OR 5*5=25 -- ',1,0),
(1428,1482,1,0,'07:10:00','06:30:00','0000-00-00','-1 OR 5*5=25',1,0),
(1429,1483,1,0,'07:10:00','06:30:00','0000-00-00','-1\' OR 5*5=25 -- ',1,0),
(1430,1484,1,0,'07:10:00','06:30:00','0000-00-00','-1\" OR 5*5=25 -- ',1,0),
(1431,1485,1,0,'07:10:00','06:30:00','0000-00-00','-1\' OR 5*5=25 or \'e7JTlkdf\'=\'',1,0),
(1432,1486,1,0,'07:10:00','06:30:00','0000-00-00','-1\" OR 5*5=25 or \"yT3eWPP6\"=\"',1,0),
(1433,1487,1,0,'07:10:00','06:30:00','0000-00-00','555*if(now()=sysdate(),sleep(15),0)',1,0),
(1434,1488,1,0,'07:10:00','06:30:00','0000-00-00','5550\'XOR(555*if(now()=sysdate(),sleep(15),0))XOR\'Z',1,0),
(1435,1489,1,0,'07:10:00','06:30:00','0000-00-00','5550\"XOR(555*if(now()=sysdate(),sleep(15),0))XOR\"Z',1,0),
(1436,1490,1,0,'07:10:00','06:30:00','0000-00-00','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/',1,0),
(1437,1491,1,0,'07:10:00','06:30:00','0000-00-00','555-1; waitfor delay \'0:0:15\' -- ',1,0),
(1438,1492,1,0,'07:10:00','06:30:00','0000-00-00','555-1); waitfor delay \'0:0:15\' -- ',1,0),
(1439,1493,1,0,'07:10:00','06:30:00','0000-00-00','555-1 waitfor delay \'0:0:15\' -- ',1,0),
(1440,1494,1,0,'07:10:00','06:30:00','0000-00-00','555lQWvrBXl\'; waitfor delay \'0:0:15\' -- ',1,0),
(1441,1495,1,0,'07:10:00','06:30:00','0000-00-00','555-1 OR 551=(SELECT 551 FROM PG_SLEEP(15))--',1,0),
(1442,1496,1,0,'07:10:00','06:30:00','0000-00-00','555-1) OR 885=(SELECT 885 FROM PG_SLEEP(15))--',1,0),
(1443,1497,1,0,'07:10:00','06:30:00','0000-00-00','555-1)) OR 876=(SELECT 876 FROM PG_SLEEP(15))--',1,0),
(1444,1498,1,0,'07:10:00','06:30:00','0000-00-00','555VJO40XeQ\' OR 511=(SELECT 511 FROM PG_SLEEP(15))--',1,0),
(1445,1499,1,0,'07:10:00','06:30:00','0000-00-00','555H76Uyg6d\') OR 27=(SELECT 27 FROM PG_SLEEP(15))--',1,0),
(1446,1500,1,0,'07:10:00','06:30:00','0000-00-00','555yDWOjoeU\')) OR 97=(SELECT 97 FROM PG_SLEEP(15))--',1,0),
(1447,1501,1,0,'07:10:00','06:30:00','0000-00-00','555*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)',1,0),
(1448,1502,1,0,'07:10:00','06:30:00','0000-00-00','555\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',1,0),
(1449,1503,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1450,1504,1,0,'07:10:00','06:30:00','0000-00-00','555\'\"',1,0),
(1451,1505,1,0,'07:10:00','06:30:00','0000-00-00','555\'\"\\\'\\\"',1,0),
(1452,1506,1,0,'07:10:00','06:30:00','0000-00-00','@@JxCTf',1,0),
(1453,1507,1,0,'07:10:00','06:30:00','0000-00-00','(select 198766*667891)',1,0),
(1454,1508,1,0,'07:10:00','06:30:00','0000-00-00','(select 198766*667891 from DUAL)',1,0),
(1455,1509,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1456,1510,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1457,1511,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1458,1512,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1459,1513,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1460,1514,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1461,1515,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1462,1516,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1463,1517,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1464,1518,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1465,1519,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1466,1520,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1467,1521,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1468,1522,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1469,1523,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1470,1524,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1471,1525,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1472,1526,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1473,1527,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1474,1528,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1475,1529,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1476,1530,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1477,1531,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1478,1532,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1479,1533,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1480,1534,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1481,1535,-1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1482,1536,-1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1483,1537,-1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1484,1538,-1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1485,1539,-1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1486,1540,-1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1487,1541,10,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1488,1542,10,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1489,1543,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1490,1544,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1491,1545,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1492,1546,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1493,1547,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1494,1548,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1495,1549,10,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1496,1550,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1497,1551,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1498,1552,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1499,1553,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1500,1554,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1501,1555,0,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1502,1556,0,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1503,1557,0,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1504,1558,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1505,1559,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1506,1560,1,-1,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1507,1561,1,-1,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1508,1562,1,-1,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1509,1563,1,-1,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1510,1564,1,-1,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1511,1565,1,-1,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1512,1566,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1513,1567,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1514,1568,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1515,1569,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1516,1570,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1517,1571,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1518,1572,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1519,1573,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1520,1574,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1521,1575,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1522,1576,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1523,1577,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1524,1578,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1525,1579,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1526,1580,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1527,1581,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1528,1582,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1529,1583,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1530,1584,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1531,1585,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1532,1586,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1533,1587,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1534,1588,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1535,1589,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1536,1590,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1537,1591,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1538,1592,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1539,1593,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1540,1594,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1541,1595,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1542,1596,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1543,1597,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1544,1598,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1545,1599,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1546,1600,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1547,1601,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1548,1602,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1549,1603,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1550,1604,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1551,1605,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1552,1606,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1553,1607,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1554,1608,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1555,1609,1,0,'07:10:00','-00:00:01','0000-00-00','555',1,0),
(1556,1610,1,0,'07:10:00','-00:00:01','0000-00-00','555',1,0),
(1557,1611,1,0,'07:10:00','-00:00:01','0000-00-00','555',1,0),
(1558,1612,1,0,'07:10:00','-00:00:01','0000-00-00','555',1,0),
(1559,1613,1,0,'07:10:00','-00:00:01','0000-00-00','555',1,0),
(1560,1614,1,0,'07:10:00','-00:00:01','0000-00-00','555',1,0),
(1561,1615,1,0,'07:10:00','00:00:00','0000-00-00','555',1,0),
(1562,1616,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1563,1617,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1564,1618,1,0,'07:10:00','00:00:00','0000-00-00','555',1,0),
(1565,1619,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1566,1620,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1567,1621,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1568,1622,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1569,1623,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1570,1624,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1571,1625,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1572,1626,1,0,'07:10:00','00:00:00','0000-00-00','555',1,0),
(1573,1627,1,0,'07:10:00','00:00:00','0000-00-00','555',1,0),
(1574,1628,1,0,'07:10:00','00:00:00','0000-00-00','555',1,0),
(1575,1629,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1576,1630,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1577,1631,1,0,'-00:00:01','06:30:00','0000-00-00','555',1,0),
(1578,1632,1,0,'-00:00:01','06:30:00','0000-00-00','555',1,0),
(1579,1633,1,0,'-00:00:01','06:30:00','0000-00-00','555',1,0),
(1580,1634,1,0,'-00:00:01','06:30:00','0000-00-00','555',1,0),
(1581,1635,1,0,'-00:00:01','06:30:00','0000-00-00','555',1,0),
(1582,1636,1,0,'-00:00:01','06:30:00','0000-00-00','555',1,0),
(1583,1637,1,0,'00:00:00','06:30:00','0000-00-00','555',1,0),
(1584,1638,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1585,1639,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1586,1640,1,0,'00:00:00','06:30:00','0000-00-00','555',1,0),
(1587,1641,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1588,1642,1,0,'07:10:07','06:30:00','0000-00-00','555',1,0),
(1589,1643,1,0,'00:00:00','06:30:00','0000-00-00','555',1,0),
(1590,1644,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1591,1645,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1592,1646,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1593,1647,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1594,1648,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1595,1649,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1596,1650,1,0,'00:00:00','06:30:00','0000-00-00','555',1,0),
(1597,1651,1,0,'00:00:00','06:30:00','0000-00-00','555',1,0),
(1598,1652,1,0,'00:00:00','06:30:00','0000-00-00','555',1,0),
(1599,1653,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1600,1654,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1601,1655,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1602,1656,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1603,1657,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1604,1658,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1605,1659,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1606,1660,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1607,1661,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1608,1662,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1609,1663,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1610,1664,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1611,1665,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1612,1666,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1613,1667,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1614,1668,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1615,1669,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1616,1670,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1617,1671,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1618,1672,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1619,1673,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1620,1674,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1621,1675,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1622,1676,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1623,1677,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1624,1678,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1625,1679,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1626,1680,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1627,1681,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1628,1682,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1629,1683,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1630,1684,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1631,1685,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1632,1686,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1633,1687,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1634,1688,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1635,1689,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1636,1690,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1637,1691,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1638,1692,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1639,1693,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1640,1694,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1641,1695,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1642,1696,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1643,1697,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1644,1698,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1645,1699,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1646,1700,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1647,1701,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1648,1702,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1649,1703,1,0,'07:10:00','06:30:00','0000-00-00','-1 OR 5*5=25 -- ',1,0),
(1650,1704,1,0,'07:10:00','06:30:00','0000-00-00','-1 OR 5*5=25',1,0),
(1651,1705,1,0,'07:10:00','06:30:00','0000-00-00','-1\' OR 5*5=25 -- ',1,0),
(1652,1706,1,0,'07:10:00','06:30:00','0000-00-00','-1\" OR 5*5=25 -- ',1,0),
(1653,1707,1,0,'07:10:00','06:30:00','0000-00-00','-1\' OR 5*5=25 or \'bx5ItEdM\'=\'',1,0),
(1654,1708,1,0,'07:10:00','06:30:00','0000-00-00','-1\" OR 5*5=25 or \"CqzngWxi\"=\"',1,0),
(1655,1709,1,0,'07:10:00','06:30:00','0000-00-00','555*if(now()=sysdate(),sleep(15),0)',1,0),
(1656,1710,1,0,'07:10:00','06:30:00','0000-00-00','5550\"XOR(555*if(now()=sysdate(),sleep(15),0))XOR\"Z',1,0),
(1657,1711,1,0,'07:10:00','06:30:00','0000-00-00','(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/',1,0),
(1658,1712,1,0,'07:10:00','06:30:00','0000-00-00','555-1; waitfor delay \'0:0:15\' -- ',1,0),
(1659,1713,1,0,'07:10:00','06:30:00','0000-00-00','555-1); waitfor delay \'0:0:15\' -- ',1,0),
(1660,1714,1,0,'07:10:00','06:30:00','0000-00-00','555-1 waitfor delay \'0:0:15\' -- ',1,0),
(1661,1715,1,0,'07:10:00','06:30:00','0000-00-00','555Avc25AOz\'; waitfor delay \'0:0:15\' -- ',1,0),
(1662,1716,1,0,'07:10:00','06:30:00','0000-00-00','555-1 OR 234=(SELECT 234 FROM PG_SLEEP(15))--',1,0),
(1663,1717,1,0,'07:10:00','06:30:00','0000-00-00','555-1) OR 268=(SELECT 268 FROM PG_SLEEP(15))--',1,0),
(1664,1718,1,0,'07:10:00','06:30:00','0000-00-00','555-1)) OR 617=(SELECT 617 FROM PG_SLEEP(15))--',1,0),
(1665,1719,1,0,'07:10:00','06:30:00','0000-00-00','555XAKa5qls\' OR 63=(SELECT 63 FROM PG_SLEEP(15))--',1,0),
(1666,1720,1,0,'07:10:00','06:30:00','0000-00-00','555EZzsZdg9\') OR 290=(SELECT 290 FROM PG_SLEEP(15))--',1,0),
(1667,1721,1,0,'07:10:00','06:30:00','0000-00-00','555g4q8e1Vl\')) OR 391=(SELECT 391 FROM PG_SLEEP(15))--',1,0),
(1668,1722,1,0,'07:10:00','06:30:00','0000-00-00','555*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)',1,0),
(1669,1723,1,0,'07:10:00','06:30:00','0000-00-00','555\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'',1,0),
(1670,1724,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1671,1725,1,0,'07:10:00','06:30:00','0000-00-00','555\'\"',1,0),
(1672,1726,1,0,'07:10:00','06:30:00','0000-00-00','555\'\"\\\'\\\"',1,0),
(1673,1727,1,0,'07:10:00','06:30:00','0000-00-00','@@wlvIC',1,0),
(1674,1728,1,0,'07:10:00','06:30:00','0000-00-00','(select 198766*667891)',1,0),
(1675,1729,1,0,'07:10:00','06:30:00','0000-00-00','(select 198766*667891 from DUAL)',1,0),
(1676,1730,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1677,1731,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1678,1732,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1679,1733,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1680,1734,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1681,1735,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1682,1736,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1683,1737,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1684,1738,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1685,1739,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1686,1740,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1687,1741,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1688,1742,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1689,1743,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1690,1744,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1691,1745,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1692,1746,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1693,1747,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1694,1748,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1695,1749,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1696,1750,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1697,1751,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1698,1752,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1699,1753,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1700,1754,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1701,1755,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1702,1756,-1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1703,1757,-1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1704,1758,-1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1705,1759,-1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1706,1760,-1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1707,1761,-1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1708,1762,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1709,1763,10,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1710,1764,10,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1711,1765,0,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1712,1766,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1713,1767,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1714,1768,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1715,1769,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1716,1770,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1717,1771,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1718,1772,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1719,1773,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1720,1774,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1721,1775,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1722,1776,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1723,1777,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1724,1778,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1725,1779,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1726,1780,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1727,1781,0,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1728,1782,0,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1729,1783,0,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1730,1784,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1731,1785,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1732,1786,1,-1,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1733,1787,1,-1,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1734,1788,1,-1,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1735,1789,1,-1,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1736,1790,1,-1,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1737,1791,1,-1,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1738,1792,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1739,1793,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1740,1794,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1741,1795,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1742,1796,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1743,1797,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1744,1798,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1745,1799,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1746,1800,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1747,1801,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1748,1802,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1749,1803,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1750,1804,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1751,1805,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1752,1806,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0),
(1753,1807,1,0,'07:10:00','06:30:00','0000-00-00','555',1,0);
/*!40000 ALTER TABLE `tblreservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblserver`
--

DROP TABLE IF EXISTS `tblserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblserver` (
  `serverid` int(11) NOT NULL AUTO_INCREMENT,
  `localhost_url` varchar(255) NOT NULL,
  `online_url` varchar(255) NOT NULL,
  PRIMARY KEY (`serverid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblserver`
--

LOCK TABLES `tblserver` WRITE;
/*!40000 ALTER TABLE `tblserver` DISABLE KEYS */;
INSERT INTO `tblserver` VALUES
(1,'https://launch.enroles.com/12/restaurant_v2','https://launch.enroles.com/12/restaurant_v2');
/*!40000 ALTER TABLE `tblserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `themes` (
  `themeid` int(11) NOT NULL AUTO_INCREMENT,
  `themename` varchar(100) NOT NULL,
  `theme_thumb` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '0=inactive,1=active',
  `activedate` date DEFAULT NULL,
  PRIMARY KEY (`themeid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themes`
--

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;
INSERT INTO `themes` VALUES
(1,'defaults',NULL,0,'2020-11-19'),
(3,'classic',NULL,1,NULL);
/*!40000 ALTER TABLE `themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_menu`
--

DROP TABLE IF EXISTS `top_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `top_menu` (
  `menuid` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) NOT NULL,
  `menu_slug` varchar(70) NOT NULL,
  `parentid` int(11) NOT NULL,
  `entrydate` date NOT NULL,
  `isactive` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`menuid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_menu`
--

LOCK TABLES `top_menu` WRITE;
/*!40000 ALTER TABLE `top_menu` DISABLE KEYS */;
INSERT INTO `top_menu` VALUES
(1,'Home','home',0,'2021-09-19',1),
(2,'Reservation','reservation',0,'2019-02-20',1),
(3,'Menu','menu',0,'2021-10-18',1),
(4,'About Us','about',0,'2019-11-25',1),
(5,'Contact Us','contact',0,'2019-01-26',1),
(6,'Pages','pages',0,'2019-11-28',1),
(7,'Cart','cart',6,'2019-01-26',1),
(8,'Details','details',7,'2020-01-15',1),
(9,'Logout','hungry/logout',6,'2019-02-03',1),
(10,'My Profile','myprofile',0,'2019-10-16',1);
/*!40000 ALTER TABLE `top_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_of_measurement`
--

DROP TABLE IF EXISTS `unit_of_measurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit_of_measurement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uom_name` varchar(200) NOT NULL,
  `uom_short_code` varchar(10) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_of_measurement`
--

LOCK TABLES `unit_of_measurement` WRITE;
/*!40000 ALTER TABLE `unit_of_measurement` DISABLE KEYS */;
INSERT INTO `unit_of_measurement` VALUES
(1,'Kilogram','kg.',1),
(2,'Liter','ltr.',1),
(3,'Gram','grm.',1),
(4,'tonne','tn.',1),
(5,'milligram','mg.',1),
(6,'carat','carat',1),
(7,'Per Pieces','pcs',1),
(8,'Per Cup','cup',1),
(9,'Pound','pnd.',1),
(10,'tablespoon','tspoon',1),
(11,'Milliliter','ML',1);
/*!40000 ALTER TABLE `unit_of_measurement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usedcoupon`
--

DROP TABLE IF EXISTS `usedcoupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `usedcoupon` (
  `cusedid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `couponcode` varchar(100) NOT NULL,
  `couponrate` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`cusedid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usedcoupon`
--

LOCK TABLES `usedcoupon` WRITE;
/*!40000 ALTER TABLE `usedcoupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `usedcoupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `waiter_kitchenToken` text DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
(2,'John','Doe','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum','','admin@example.com','827ccb0eea8a706c4c34a16891f84e7b','','./assets/img/user/m2.png','2023-07-03 14:37:58','2021-11-07 16:02:03','::1',NULL,1,1),
(165,'Hm','Isahaq',NULL,NULL,'hmisahaq@gmail.com','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,NULL,NULL,NULL,1,0),
(166,'Ainal','Haque',NULL,NULL,'ainal@gmail.com','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'2020-12-17 12:30:42','2020-12-17 12:30:31','::1',NULL,1,0),
(168,'Manik ','Hassan',NULL,NULL,'manik@gmail.com','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,NULL,NULL,NULL,1,0),
(177,'Di','Maria',NULL,NULL,'dimaria@gmail.com','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,NULL,NULL,NULL,1,0),
(179,'admin','user','',NULL,'admin@gmail.com','30e7265624ede55c27c0cdcf54bcdaa1',NULL,'./assets/img/user/profile_1_.jpg','2025-06-01 02:27:00','2025-05-30 17:59:57','64.229.234.75',NULL,1,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variant`
--

DROP TABLE IF EXISTS `variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `variant` (
  `variantid` int(11) NOT NULL AUTO_INCREMENT,
  `menuid` int(11) NOT NULL,
  `variantName` varchar(120) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`variantid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variant`
--

LOCK TABLES `variant` WRITE;
/*!40000 ALTER TABLE `variant` DISABLE KEYS */;
/*!40000 ALTER TABLE `variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekly_holiday`
--

DROP TABLE IF EXISTS `weekly_holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `weekly_holiday` (
  `wk_id` int(11) NOT NULL AUTO_INCREMENT,
  `dayname` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`wk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekly_holiday`
--

LOCK TABLES `weekly_holiday` WRITE;
/*!40000 ALTER TABLE `weekly_holiday` DISABLE KEYS */;
INSERT INTO `weekly_holiday` VALUES
(1,'Friday,Satarday,Sunday');
/*!40000 ALTER TABLE `weekly_holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'food'
--

--
-- Dumping routines for database 'food'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-04  5:09:26
