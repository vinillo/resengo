/*
SQLyog Ultimate v11.42 (64 bit)
MySQL - 5.6.20-log : Database - resengo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `timeslots` */

DROP TABLE IF EXISTS `timeslots`;

CREATE TABLE `timeslots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastminute_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `start_time` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `end_time` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(11) NOT NULL,
  `insert_date` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `reservation_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `orginal_cost` int(11) NOT NULL,
  `bool_verwijderd` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=527 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
