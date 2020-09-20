/*
SQLyog Community v12.02 (64 bit)
MySQL - 5.6.21 : Database - proj_bssp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`proj_bssp` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `proj_bssp`;

/*Table structure for table `funds` */

DROP TABLE IF EXISTS `funds`;

CREATE TABLE `funds` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) DEFAULT NULL,
  `initialAmount` decimal(12,0) DEFAULT NULL,
  `outstandingAmount` decimal(12,0) DEFAULT '0',
  `dateOfApproval` date DEFAULT NULL,
  `remarks` text,
  `budgetId` bigint(20) DEFAULT NULL,
  `createdBy` varchar(24) DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(24) DEFAULT NULL,
  `modifiedOn` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `funds` */

insert  into `funds`(`id`,`name`,`initialAmount`,`outstandingAmount`,`dateOfApproval`,`remarks`,`budgetId`,`createdBy`,`createdOn`,`modifiedBy`,`modifiedOn`) values (1,'Just Funds 2015','78000000','450000','2014-10-21','Somre Remarks Edited',2,'SYSTEM','2014-10-18 20:52:20',NULL,'2014-11-11 22:24:40'),(2,'Just Funds 2000','7800000','450000','2014-10-21','Somre Remarks',NULL,'SYSTEM','2014-10-18 20:52:32',NULL,'2014-10-18 20:52:32'),(4,'Innocent`s Funds','7800000',NULL,'2014-11-12','Sample funds created',NULL,'SYSTEM','2014-11-02 09:21:46',NULL,NULL),(5,'Jade FUnds 2014','7800000',NULL,'2014-11-25','Funds Remarks',2,'SYSTEM','2014-11-11 21:45:36',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
