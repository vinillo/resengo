/*
SQLyog Ultimate v11.42 (64 bit)
MySQL - 5.6.20-log 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `timeslots` (
	`id` int (11),
	`lastminute_id` int (11),
	`company_id` int (11),
	`start_time` varchar (192),
	`$endtime` varchar (192),
	`description` varchar (768),
	`cost` int (11),
	`integer` varchar (33),
	`insert_date` varchar (192),
	`deleted` varchar (96),
	`reservation_url` varchar (192)
); 
