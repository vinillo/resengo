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

/*Data for the table `timeslots` */

insert  into `timeslots`(`id`,`lastminute_id`,`company_id`,`start_time`,`end_time`,`description`,`cost`,`insert_date`,`deleted`,`reservation_url`,`orginal_cost`,`bool_verwijderd`) values (470,450643,292493,'2/17/2016 9:30:00 PM','2/17/2016 11:30:00 PM','Sauna 2 uur',115,'2/17/2016 11:13:54 AM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=450643&RN_PartnerID=1&Reference=widget',115,1),(471,450379,292493,'2/17/2016 4:30:00 PM','2/17/2016 6:30:00 PM','Sauna 2 uur',115,'2/17/2016 11:13:10 AM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=450379&RN_PartnerID=1&Reference=widget',115,1),(472,450976,292493,'2/18/2016 9:30:00 PM','2/18/2016 11:30:00 PM','Sauna 2 uur',115,'2/17/2016 8:55:31 AM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=450976&RN_PartnerID=1&Reference=widget',115,0),(473,448459,292493,'2/19/2016 7:00:00 PM','2/19/2016 9:00:00 PM','Sauna 2 uur',115,'2/16/2016 9:50:29 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=448459&RN_PartnerID=1&Reference=widget',115,1),(474,450556,292493,'2/21/2016 9:30:00 AM','2/21/2016 12:30:00 PM','Ontbijt (3u)',185,'2/16/2016 9:11:44 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=450556&RN_PartnerID=1&Reference=widget',185,1),(475,450918,292493,'2/22/2016 9:00:00 PM','2/23/2016','Sauna 3 uur',155,'2/16/2016 7:25:49 PM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=450918&RN_PartnerID=1&Reference=widget',155,0),(476,450917,292493,'2/22/2016 7:00:00 PM','2/22/2016 9:00:00 PM','Sauna 2 uur',115,'2/16/2016 7:24:56 PM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=450917&RN_PartnerID=1&Reference=widget',115,0),(477,450916,292493,'2/22/2016 3:00:00 PM','2/22/2016 6:00:00 PM','Sauna 3 uur',155,'2/16/2016 7:23:41 PM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=450916&RN_PartnerID=1&Reference=widget',155,0),(478,450915,292493,'2/19/2016 12:30:00 PM','2/19/2016 2:30:00 PM','Sauna 2 uur',115,'2/16/2016 7:22:12 PM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=450915&RN_PartnerID=1&Reference=widget',115,0),(479,450914,292493,'2/19/2016 9:30:00 AM','2/19/2016 12:30:00 PM','Ontbijt (3u)',185,'2/16/2016 7:21:44 PM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=450914&RN_PartnerID=1&Reference=widget',185,0),(480,450913,292493,'2/18/2016 9:30:00 AM','2/18/2016 12:30:00 PM','Ontbijt (3u)',185,'2/16/2016 7:20:17 PM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=450913&RN_PartnerID=1&Reference=widget',185,0),(481,450912,292493,'2/18/2016 4:00:00 PM','2/18/2016 6:00:00 PM','Sauna 2 uur',115,'2/16/2016 7:19:12 PM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=450912&RN_PartnerID=1&Reference=widget',115,0),(482,450399,292493,'2/18/2016 1:00:00 PM','2/18/2016 3:00:00 PM','Sauna 2 uur',115,'2/16/2016 5:26:53 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=450399&RN_PartnerID=1&Reference=widget',115,1),(483,450521,292493,'2/20/2016 1:00:00 PM','2/20/2016 3:00:00 PM','Sauna 2 uur',115,'2/16/2016 4:35:33 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=450521&RN_PartnerID=1&Reference=widget',115,1),(484,445240,292493,'2/19/2016 9:30:00 PM','2/19/2016 11:30:00 PM','Sauna 2 uur',115,'2/16/2016 2:49:28 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=445240&RN_PartnerID=1&Reference=widget',115,1),(485,450400,292493,'2/18/2016 6:30:00 PM','2/18/2016 8:30:00 PM','Sauna 2 uur',115,'2/16/2016 1:42:15 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=450400&RN_PartnerID=1&Reference=widget',115,1),(486,443115,292493,'2/20/2016 12:30:00 PM','2/20/2016 2:30:00 PM','Sauna 2 uur',115,'2/16/2016 10:28:37 AM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=443115&RN_PartnerID=1&Reference=widget',115,1),(487,450469,292493,'2/17/2016 9:00:00 PM','2/18/2016','Sauna 3 uur',155,'2/16/2016 9:35:47 AM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=450469&RN_PartnerID=1&Reference=widget',155,1),(488,445225,292493,'2/17/2016 9:30:00 PM','2/17/2016 11:30:00 PM','Sauna 2 uur',115,'2/16/2016 9:35:08 AM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=445225&RN_PartnerID=1&Reference=widget',115,1),(489,450430,292493,'2/21/2016 9:30:00 AM','2/21/2016 12:30:00 PM','Ontbijt (3u)',185,'2/15/2016 8:26:26 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=450430&RN_PartnerID=1&Reference=widget',185,1),(490,450468,292493,'2/17/2016 6:30:00 PM','2/17/2016 8:30:00 PM','Sauna 2 uur',115,'2/15/2016 4:34:23 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=450468&RN_PartnerID=1&Reference=widget',115,1),(491,445224,292493,'2/17/2016 7:00:00 PM','2/17/2016 9:00:00 PM','Sauna 2 uur',115,'2/15/2016 4:06:33 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=445224&RN_PartnerID=1&Reference=widget',115,1),(492,450429,292493,'2/19/2016 3:00:00 PM','2/19/2016 6:00:00 PM','Sauna 3 uur',155,'2/15/2016 3:28:33 PM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=450429&RN_PartnerID=1&Reference=widget',155,0),(493,450401,292493,'2/18/2016 9:00:00 PM','2/19/2016','Sauna 3 uur',155,'2/15/2016 1:58:14 PM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=450401&RN_PartnerID=1&Reference=widget',155,0),(494,445227,292493,'2/18/2016 12:30:00 PM','2/18/2016 2:30:00 PM','Sauna 2 uur',115,'2/15/2016 1:57:06 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=445227&RN_PartnerID=1&Reference=widget',115,1),(495,445230,292493,'2/18/2016 7:00:00 PM','2/18/2016 9:00:00 PM','Sauna 2 uur',115,'2/15/2016 1:29:48 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=445230&RN_PartnerID=1&Reference=widget',115,1),(496,450381,292493,'2/17/2016 12:30:00 PM','2/17/2016 2:30:00 PM','Sauna 2 uur',115,'2/15/2016 12:25:31 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=450381&RN_PartnerID=1&Reference=widget',115,1),(497,445220,292493,'2/17/2016 1:00:00 PM','2/17/2016 3:00:00 PM','Sauna 2 uur',115,'2/15/2016 12:24:17 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=445220&RN_PartnerID=1&Reference=widget',115,1),(498,450108,292493,'2/17/2016 3:30:00 PM','2/17/2016 6:30:00 PM','Sauna 3 uur',155,'2/15/2016 12:24:07 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=450108&RN_PartnerID=1&Reference=widget',155,1),(499,448419,292493,'2/27/2016 9:00:00 AM','2/27/2016 12:00:00 PM','Ontbijt (3u)',185,'2/15/2016 12:06:41 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=448419&RN_PartnerID=1&Reference=widget',185,1),(500,445232,292493,'2/18/2016 9:00:00 PM','2/19/2016','Sauna 3 uur',155,'2/15/2016 10:16:06 AM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=445232&RN_PartnerID=1&Reference=widget',155,1),(501,445238,292493,'2/19/2016 3:30:00 PM','2/19/2016 6:30:00 PM','Sauna 3 uur',155,'2/14/2016 1:59:09 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=445238&RN_PartnerID=1&Reference=widget',155,1),(502,443116,292493,'2/20/2016 9:30:00 AM','2/20/2016 12:30:00 PM','Ontbijt (3u)',185,'2/14/2016 12:55:50 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=443116&RN_PartnerID=1&Reference=widget',185,1),(503,447297,292493,'2/21/2016 7:30:00 PM','2/21/2016 10:30:00 PM','Sauna 3 uur',155,'2/14/2016 11:35:00 AM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=447297&RN_PartnerID=1&Reference=widget',155,1),(504,449743,292493,'3/6/2016 9:30:00 AM','3/6/2016 11:30:00 AM','Ontbijt',145,'2/13/2016 11:08:01 AM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=449743&RN_PartnerID=1&Reference=widget',145,1),(505,445242,292493,'2/21/2016 1:00:00 PM','2/21/2016 4:00:00 PM','Sauna 3 uur',155,'2/12/2016 2:16:05 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=445242&RN_PartnerID=1&Reference=widget',155,1),(506,445241,292493,'2/21/2016 9:00:00 AM','2/21/2016 12:00:00 PM','Ontbijt (3u)',185,'2/12/2016 1:24:28 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=445241&RN_PartnerID=1&Reference=widget',185,1),(507,445245,292493,'2/21/2016 8:00:00 PM','2/21/2016 11:00:00 PM','Sauna 3 uur',155,'2/12/2016 7:49:17 AM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=445245&RN_PartnerID=1&Reference=widget',155,1),(508,443206,292493,'2/20/2016 6:30:00 PM','2/20/2016 8:30:00 PM','Sauna 2 uur',115,'2/11/2016 10:50:21 AM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=443206&RN_PartnerID=1&Reference=widget',115,1),(509,445223,292493,'2/17/2016 3:00:00 PM','2/17/2016 6:00:00 PM','Sauna 3 uur',155,'2/9/2016 6:29:25 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=445223&RN_PartnerID=1&Reference=widget',155,1),(510,448480,292493,'3/8/2016 3:00:00 PM','3/8/2016 5:00:00 PM','Sauna 2 uur',115,'2/9/2016 3:02:10 PM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=448480&RN_PartnerID=1&Reference=widget',115,0),(511,448418,292493,'2/27/2016 1:00:00 PM','2/27/2016 3:00:00 PM','Sauna 2 uur',115,'2/9/2016 12:29:23 PM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=448418&RN_PartnerID=1&Reference=widget',115,0),(512,448417,292493,'2/27/2016 3:30:00 PM','2/27/2016 5:30:00 PM','Sauna 2 uur',115,'2/9/2016 12:28:47 PM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=448417&RN_PartnerID=1&Reference=widget',115,0),(513,448416,292493,'2/27/2016 6:00:00 PM','2/27/2016 8:00:00 PM','Sauna 2 uur',115,'2/9/2016 12:27:46 PM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=448416&RN_PartnerID=1&Reference=widget',115,0),(514,448415,292493,'2/27/2016 8:30:00 PM','2/27/2016 11:30:00 PM','Sauna 3 uur',155,'2/9/2016 12:26:51 PM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=448415&RN_PartnerID=1&Reference=widget',155,0),(515,445239,292493,'2/19/2016 6:30:00 PM','2/19/2016 8:30:00 PM','Sauna 2 uur',115,'2/8/2016 5:50:38 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=445239&RN_PartnerID=1&Reference=widget',115,1),(516,447934,292493,'2/22/2016 12:00:00 PM','2/22/2016 3:00:00 PM','Sauna 3 uur',155,'2/8/2016 2:25:02 PM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=447934&RN_PartnerID=1&Reference=widget',155,0),(517,443117,292493,'2/20/2016 9:00:00 PM','2/21/2016','Sauna 3 uur',155,'2/6/2016 6:15:57 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=443117&RN_PartnerID=1&Reference=widget',155,1),(518,445244,292493,'2/21/2016 4:00:00 PM','2/21/2016 7:00:00 PM','Sauna 3 uur',155,'2/5/2016 8:21:43 AM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=445244&RN_PartnerID=1&Reference=widget',155,1),(519,446589,292493,'2/29/2016 12:30:00 PM','2/29/2016 3:30:00 PM','Sauna 3 uur',155,'2/4/2016 11:04:36 AM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=446589&RN_PartnerID=1&Reference=widget',155,0),(520,443113,292493,'2/20/2016 6:00:00 PM','2/20/2016 8:00:00 PM','Sauna 2 uur',115,'2/3/2016 10:14:50 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=443113&RN_PartnerID=1&Reference=widget',115,1),(521,443114,292493,'2/20/2016 3:30:00 PM','2/20/2016 5:30:00 PM','Sauna 2 uur',115,'2/3/2016 10:14:41 PM','True','https://www.resengo.com/code/reserveernu/?LastMinuteID=443114&RN_PartnerID=1&Reference=widget',115,1),(522,445236,292493,'2/19/2016 1:00:00 PM','2/19/2016 3:00:00 PM','Sauna 2 uur',115,'2/1/2016 11:25:12 AM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=445236&RN_PartnerID=1&Reference=widget',115,0),(523,445233,292493,'2/19/2016 9:00:00 AM','2/19/2016 12:00:00 PM','Ontbijt (3u)',185,'2/1/2016 11:24:53 AM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=445233&RN_PartnerID=1&Reference=widget',185,0),(524,445229,292493,'2/18/2016 3:30:00 PM','2/18/2016 6:30:00 PM','Sauna 3 uur',155,'2/1/2016 11:23:31 AM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=445229&RN_PartnerID=1&Reference=widget',155,0),(525,445226,292493,'2/18/2016 9:00:00 AM','2/18/2016 12:00:00 PM','Ontbijt (3u)',185,'2/1/2016 11:22:37 AM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=445226&RN_PartnerID=1&Reference=widget',185,0),(526,442789,292493,'4/6/2016 5:30:00 PM','4/6/2016 8:30:00 PM','Sauna 3 uur',155,'1/25/2016 4:32:05 PM','False','https://www.resengo.com/code/reserveernu/?LastMinuteID=442789&RN_PartnerID=1&Reference=widget',155,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
