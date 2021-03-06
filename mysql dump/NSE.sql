-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: NSE
-- ------------------------------------------------------
-- Server version	5.6.19-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AUTO`
--

DROP TABLE IF EXISTS `AUTO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTO` (
  `company_name` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `series` varchar(5) NOT NULL,
  `isin_code` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AlgorithmStrategy`
--

DROP TABLE IF EXISTS `AlgorithmStrategy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AlgorithmStrategy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `strategy_name` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AlgorithmStrategy`
--

LOCK TABLES `AlgorithmStrategy` WRITE;
/*!40000 ALTER TABLE `AlgorithmStrategy` DISABLE KEYS */;
INSERT INTO `AlgorithmStrategy` VALUES (1,'stocks contra'),(2,'5 consecutive days down'),(3,'major correction > 7%');
/*!40000 ALTER TABLE `AlgorithmStrategy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BANK`
--

DROP TABLE IF EXISTS `BANK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BANK` (
  `company_name` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `series` varchar(5) NOT NULL,
  `isin_code` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CNX_100`
--

DROP TABLE IF EXISTS `CNX_100`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CNX_100` (
  `company_name` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `series` varchar(5) NOT NULL,
  `isin_code` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CNX_200`
--

DROP TABLE IF EXISTS `CNX_200`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CNX_200` (
  `company_name` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `series` varchar(5) NOT NULL,
  `isin_code` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CNX_500`
--

DROP TABLE IF EXISTS `CNX_500`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CNX_500` (
  `company_name` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `series` varchar(5) NOT NULL,
  `isin_code` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CNX_MIDCAP`
--

DROP TABLE IF EXISTS `CNX_MIDCAP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CNX_MIDCAP` (
  `company_name` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `series` varchar(5) NOT NULL,
  `isin_code` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CNX_NIFTY`
--

DROP TABLE IF EXISTS `CNX_NIFTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CNX_NIFTY` (
  `company_name` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `series` varchar(5) NOT NULL,
  `isin_code` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CNX_NIFTY_JUNIOR`
--

DROP TABLE IF EXISTS `CNX_NIFTY_JUNIOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CNX_NIFTY_JUNIOR` (
  `company_name` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `series` varchar(5) NOT NULL,
  `isin_code` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CNX_SMALLCAP`
--

DROP TABLE IF EXISTS `CNX_SMALLCAP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CNX_SMALLCAP` (
  `company_name` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `series` varchar(5) NOT NULL,
  `isin_code` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ENERGY`
--

DROP TABLE IF EXISTS `ENERGY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ENERGY` (
  `company_name` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `series` varchar(5) NOT NULL,
  `isin_code` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FINANCE`
--

DROP TABLE IF EXISTS `FINANCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FINANCE` (
  `company_name` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `series` varchar(5) NOT NULL,
  `isin_code` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FMCG`
--

DROP TABLE IF EXISTS `FMCG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FMCG` (
  `company_name` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `series` varchar(5) NOT NULL,
  `isin_code` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IT`
--

DROP TABLE IF EXISTS `IT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IT` (
  `company_name` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `series` varchar(5) NOT NULL,
  `isin_code` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MEDIA`
--

DROP TABLE IF EXISTS `MEDIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MEDIA` (
  `company_name` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `series` varchar(5) NOT NULL,
  `isin_code` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `METAL`
--

DROP TABLE IF EXISTS `METAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `METAL` (
  `company_name` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `series` varchar(5) NOT NULL,
  `isin_code` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MoneyControlSecurityDetails`
--

DROP TABLE IF EXISTS `MoneyControlSecurityDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MoneyControlSecurityDetails` (
  `symbol` varchar(200) NOT NULL DEFAULT '',
  `eps` double DEFAULT NULL,
  `pe` double DEFAULT NULL,
  `industry_pe` double DEFAULT NULL,
  `market_cap` double DEFAULT NULL,
  `face_value` double DEFAULT NULL,
  `book_value` double DEFAULT NULL,
  `dividend` double DEFAULT NULL,
  `pb` double DEFAULT NULL,
  `pc` double DEFAULT NULL,
  `div_yield` double DEFAULT NULL,
  `promoter_holding` double DEFAULT NULL,
  `dii_holding` double DEFAULT NULL,
  `fii_holding` double DEFAULT NULL,
  `other_holding` double DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `high52` double DEFAULT NULL,
  `low52` double DEFAULT NULL,
  `close_price` double DEFAULT '0',
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NIFTY_MIDCAP_50`
--

DROP TABLE IF EXISTS `NIFTY_MIDCAP_50`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NIFTY_MIDCAP_50` (
  `company_name` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `series` varchar(5) NOT NULL,
  `isin_code` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NSEDeliveryData_07052015`
--

DROP TABLE IF EXISTS `NSEDeliveryData_07052015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NSEDeliveryData_07052015` (
  `record_type` int(4) DEFAULT NULL,
  `sr_no` int(4) DEFAULT NULL,
  `symbol` varchar(200) NOT NULL DEFAULT '',
  `security_type` varchar(10) DEFAULT NULL,
  `traded_quantity` int(20) DEFAULT NULL,
  `deliverable_quantity` int(20) DEFAULT NULL,
  `delivery_percentage` double DEFAULT NULL,
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NSEDeliveryData_08052015`
--

DROP TABLE IF EXISTS `NSEDeliveryData_08052015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NSEDeliveryData_08052015` (
  `record_type` int(4) DEFAULT NULL,
  `sr_no` int(4) DEFAULT NULL,
  `symbol` varchar(200) NOT NULL DEFAULT '',
  `security_type` varchar(10) DEFAULT NULL,
  `traded_quantity` int(20) DEFAULT NULL,
  `deliverable_quantity` int(20) DEFAULT NULL,
  `delivery_percentage` double DEFAULT NULL,
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NSEDeliveryData_11052015`
--

DROP TABLE IF EXISTS `NSEDeliveryData_11052015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NSEDeliveryData_11052015` (
  `record_type` int(4) DEFAULT NULL,
  `sr_no` int(4) DEFAULT NULL,
  `symbol` varchar(200) NOT NULL DEFAULT '',
  `security_type` varchar(10) DEFAULT NULL,
  `traded_quantity` int(20) DEFAULT NULL,
  `deliverable_quantity` int(20) DEFAULT NULL,
  `delivery_percentage` double DEFAULT NULL,
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NSEDeliveryData_12052015`
--

DROP TABLE IF EXISTS `NSEDeliveryData_12052015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NSEDeliveryData_12052015` (
  `record_type` int(4) DEFAULT NULL,
  `sr_no` int(4) DEFAULT NULL,
  `symbol` varchar(200) NOT NULL DEFAULT '',
  `security_type` varchar(10) DEFAULT NULL,
  `traded_quantity` int(20) DEFAULT NULL,
  `deliverable_quantity` int(20) DEFAULT NULL,
  `delivery_percentage` double DEFAULT NULL,
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NSEDeliveryData_13052015`
--

DROP TABLE IF EXISTS `NSEDeliveryData_13052015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NSEDeliveryData_13052015` (
  `record_type` int(4) DEFAULT NULL,
  `sr_no` int(4) DEFAULT NULL,
  `symbol` varchar(200) NOT NULL DEFAULT '',
  `security_type` varchar(10) DEFAULT NULL,
  `traded_quantity` int(20) DEFAULT NULL,
  `deliverable_quantity` int(20) DEFAULT NULL,
  `delivery_percentage` double DEFAULT NULL,
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NSESecuritiesFullBhavData`
--

DROP TABLE IF EXISTS `NSESecuritiesFullBhavData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NSESecuritiesFullBhavData` (
  `symbol` varchar(200) NOT NULL DEFAULT '',
  `security_type` varchar(10) DEFAULT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `prev_close` double DEFAULT NULL,
  `open_price` double DEFAULT NULL,
  `high_price` double DEFAULT NULL,
  `low_price` double DEFAULT NULL,
  `last_price` double DEFAULT NULL,
  `close_price` double DEFAULT NULL,
  `avg_price` double DEFAULT NULL,
  `ttl_trd_qnty` int(11) DEFAULT NULL,
  `turnover_lacs` double DEFAULT NULL,
  `no_of_trades` int(11) DEFAULT NULL,
  `deliv_qty` int(11) DEFAULT NULL,
  `deliv_per` double DEFAULT NULL,
  PRIMARY KEY (`symbol`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NseHolding`
--

DROP TABLE IF EXISTS `NseHolding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NseHolding` (
  `symbol` varchar(200) NOT NULL DEFAULT '',
  `quantity` double DEFAULT '0',
  `price_of_each_share` double DEFAULT '0',
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NseSecurityLongSignalData`
--

DROP TABLE IF EXISTS `NseSecurityLongSignalData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NseSecurityLongSignalData` (
  `symbol` varchar(200) NOT NULL DEFAULT '',
  `pe` double DEFAULT NULL,
  `industry_pe` double DEFAULT NULL,
  `correction` double DEFAULT NULL,
  `closeness52weeklow` double DEFAULT NULL,
  `deliv_per` double DEFAULT NULL,
  `sector` varchar(200) NOT NULL DEFAULT '',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `strategy_id` int(11) DEFAULT '1',
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PHARMA`
--

DROP TABLE IF EXISTS `PHARMA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PHARMA` (
  `company_name` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `series` varchar(5) NOT NULL,
  `isin_code` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PSU_BANK`
--

DROP TABLE IF EXISTS `PSU_BANK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PSU_BANK` (
  `company_name` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `series` varchar(5) NOT NULL,
  `isin_code` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `REALTY`
--

DROP TABLE IF EXISTS `REALTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALTY` (
  `company_name` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `series` varchar(5) NOT NULL,
  `isin_code` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TradedCompanyInfo`
--

DROP TABLE IF EXISTS `TradedCompanyInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TradedCompanyInfo` (
  `symbol` varchar(200) NOT NULL DEFAULT '',
  `52_week_low` double DEFAULT NULL,
  `52_week_high` double DEFAULT NULL,
  `52_week_low_date` date DEFAULT NULL,
  `52_week_high_date` date DEFAULT NULL,
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WatchList`
--

DROP TABLE IF EXISTS `WatchList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WatchList` (
  `symbol` varchar(200) NOT NULL DEFAULT '',
  `sector` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NseCorporateAnnouncement`
--

DROP TABLE IF EXISTS `NseCorporateAnnouncement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NseCorporateAnnouncement` (
  `symbol` varchar(200) NOT NULL DEFAULT '',
  `subject` varchar(200) NOT NULL DEFAULT '',
  `company` varchar(200) NOT NULL DEFAULT '',
  `announcement` varchar(200) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-12 14:34:06
