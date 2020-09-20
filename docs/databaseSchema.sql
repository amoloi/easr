/*
SQLyog Community v11.0 Beta2 (32 bit)
MySQL - 5.6.17 : Database - auction
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`auction` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `auction`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `addressLineOne` varchar(50) DEFAULT NULL,
  `addressLineTwo` varchar(50) DEFAULT NULL,
  `postalAddress` varchar(120) DEFAULT NULL,
  `regionCode` varchar(12) DEFAULT NULL,
  `cityCode` varchar(12) DEFAULT NULL,
  `countryCode` varchar(12) DEFAULT NULL,
  `buyerId` smallint(5) DEFAULT NULL,
  `createdBy` varchar(24) DEFAULT NULL,
  `createdOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(24) DEFAULT NULL,
  `modifiedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `address` */

insert  into `address`(`id`,`addressLineOne`,`addressLineTwo`,`postalAddress`,`regionCode`,`cityCode`,`countryCode`,`buyerId`,`createdBy`,`createdOn`,`modifiedBy`,`modifiedOn`) values (1,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',1,NULL,'2014-07-06 14:57:22',NULL,'2014-07-21 19:06:07'),(2,'Komasdal Gladiola','Erf 17895','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','TZ',8,NULL,'2014-07-06 16:02:04',NULL,'2014-07-06 16:02:04'),(3,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','TZ',NULL,NULL,'2014-07-06 16:15:10',NULL,'2014-07-06 16:15:10'),(4,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','ANG',10,NULL,'2014-07-06 16:48:29',NULL,'2014-07-06 16:53:33'),(5,'Komasdal Gladiola','Erf 17895','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',NULL,NULL,'2014-07-06 17:18:18',NULL,'2014-07-06 17:18:18'),(6,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',NULL,NULL,'2014-07-06 17:19:19',NULL,'2014-07-06 17:19:19'),(7,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','TZ',NULL,NULL,'2014-07-06 17:23:32',NULL,'2014-07-06 17:23:32'),(8,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','TZ',NULL,NULL,'2014-07-06 17:24:04',NULL,'2014-07-06 17:24:04'),(9,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas Reg','Windhoek','TZ',NULL,NULL,'2014-07-06 19:34:51',NULL,'2014-07-06 19:34:51'),(10,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','ANG',5,NULL,'2014-07-06 20:25:39',NULL,'2014-07-06 20:26:32'),(11,'1111','11111','11111','111111','11111','NAM',6,NULL,'2014-07-18 20:29:09',NULL,'2014-07-18 20:29:09'),(12,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',12,NULL,'2014-07-21 18:57:34',NULL,'2014-07-21 18:57:56'),(13,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',13,NULL,'2014-07-21 19:13:16',NULL,'2014-07-21 19:13:16'),(14,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',14,NULL,'2014-07-21 19:14:15',NULL,'2014-07-21 19:14:15'),(15,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',15,NULL,'2014-07-22 00:02:20',NULL,'2014-07-22 00:02:20');

/*Table structure for table `auction` */

DROP TABLE IF EXISTS `auction`;

CREATE TABLE `auction` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(12) DEFAULT NULL,
  `title` varchar(120) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  `time` time DEFAULT NULL,
  `createdBy` varchar(24) DEFAULT NULL,
  `createdOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(24) DEFAULT NULL,
  `modifiedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auctionCode` (`code`),
  KEY `idx_auction_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `auction` */

insert  into `auction`(`id`,`code`,`title`,`description`,`date`,`time`,`createdBy`,`createdOn`,`modifiedBy`,`modifiedOn`) values (2,'GOVT','MOTOR VEHICLES - GOVERNMENT','Auction Description 200','2014-07-04','08:00:00',NULL,'2014-07-04 01:05:14',NULL,'2014-07-21 19:05:24'),(6,'AUTA5','Goverment Properties','Description','2014-07-04','11:00:00',NULL,'2014-07-04 01:09:45',NULL,'2014-07-21 21:46:03'),(7,'INN2014','INNOCENT 2014 AUCTION','Auction Description','2013-12-01','15:00:00',NULL,'2014-07-20 01:14:52',NULL,'2014-07-22 00:00:22'),(12,'GBN5','Goverment Properties','Auction Description','2013-12-01','10:30:00',NULL,'2014-07-21 23:59:44',NULL,'2014-07-21 23:59:44'),(13,'INN8','INNOCENT 2014 AUCTION','SALES OF OLD CLOTHES','2013-12-01','14:30:00',NULL,'2014-07-22 00:00:10',NULL,'2014-07-22 00:00:10'),(14,'SOFT','Senior Software Engineer','Software to be sold','2013-08-02','10:30:00',NULL,'2014-08-02 21:55:25',NULL,'2014-08-02 21:55:25'),(16,'SOFT2','Senior Software Engineer','Software to be sold','2013-08-02','10:30:00',NULL,'2014-08-02 22:32:04',NULL,'2014-08-02 22:32:04');

/*Table structure for table `buyer` */

DROP TABLE IF EXISTS `buyer`;

CREATE TABLE `buyer` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `identityNumber` varchar(15) DEFAULT NULL,
  `emailAddress` varchar(50) DEFAULT NULL,
  `telephoneNumber` varchar(20) DEFAULT NULL,
  `mobileNumber` varchar(20) DEFAULT NULL,
  `faxNumber` varchar(20) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `remarks` text,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(24) DEFAULT NULL,
  `modifiedBy` varchar(24) DEFAULT NULL,
  `modifiedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_last_name` (`lastName`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `buyer` */

insert  into `buyer`(`id`,`firstName`,`lastName`,`identityNumber`,`emailAddress`,`telephoneNumber`,`mobileNumber`,`faxNumber`,`isActive`,`remarks`,`createdOn`,`createdBy`,`modifiedBy`,`modifiedOn`) values (1,'Innocent J','Blacius','AB361032','innocent.blacius@gmail.com','+264814774999','+264814774999','+264814774999',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.','2014-07-05 23:42:42',NULL,'SYSTEM','2014-07-21 19:06:07'),(2,'James','Julius','JJ4545','james@gmail.com','+264814774999',NULL,'+264814774999',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.','2014-07-05 23:53:22',NULL,'SYSTEM','2014-07-06 12:38:06'),(3,'Patric','Kasiama',NULL,'kasiama@gmail.com','+264814774999',NULL,'+264814774999',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.','2014-07-05 23:54:54',NULL,NULL,'2014-07-05 23:54:54'),(4,'Jade Juliette','Amolo',NULL,'jadejuliette@gmail.com','+264814774999',NULL,'+264814774999',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.','2014-07-05 23:55:46',NULL,NULL,'2014-07-05 23:55:46'),(13,'Silas','Nyundu','111111111','jadejuliette@gmail.com','+264814774999','+264814774999','+264814774999',1,'Sample','2014-07-21 19:13:16','SYSTEM',NULL,'2014-07-21 19:13:16'),(14,'Angie','Nyaki','123456','jadejuliette@gmail.com','+264814774999','+264814774999','+264814774999',1,'Sample','2014-07-21 19:14:14','SYSTEM',NULL,'2014-07-21 19:14:15'),(15,'Beartha','Shikongo','12456','jadejuliette@gmail.com','+264814774999','+264814774999','+264814774999',1,'Notice','2014-07-22 00:02:20','SYSTEM',NULL,'2014-07-22 00:02:20');

/*Table structure for table `buyer_auction` */

DROP TABLE IF EXISTS `buyer_auction`;

CREATE TABLE `buyer_auction` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `buyerId` bigint(20) NOT NULL,
  `auctionId` bigint(20) NOT NULL,
  `createdBy` varchar(24) DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(24) DEFAULT NULL,
  `modifiedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`buyerId`,`auctionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `buyer_auction` */

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(50) NOT NULL,
  `countryId` smallint(5) unsigned NOT NULL,
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(24) DEFAULT NULL,
  `createdOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(24) DEFAULT NULL,
  `modifiedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_fk_country_id` (`countryId`),
  CONSTRAINT `fk_city_country` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `city` */

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `countryCode` varchar(4) NOT NULL DEFAULT 'NAM',
  `country` varchar(50) NOT NULL,
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(24) DEFAULT NULL,
  `createdOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(24) DEFAULT NULL,
  `modifiedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_country_code` (`countryCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `country` */

/*Table structure for table `deposits` */

DROP TABLE IF EXISTS `deposits`;

CREATE TABLE `deposits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(12) DEFAULT NULL,
  `received` decimal(10,2) DEFAULT NULL,
  `refunded` decimal(10,2) DEFAULT NULL,
  `auctionId` bigint(20) DEFAULT NULL,
  `buyerId` bigint(20) DEFAULT NULL,
  `createdBy` varchar(24) DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(24) DEFAULT NULL,
  `modifiedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `deposits` */

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(12) DEFAULT NULL,
  `sellingPrice` decimal(10,2) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `auctionId` bigint(20) DEFAULT NULL,
  `buyerId` bigint(20) DEFAULT NULL,
  `createdBy` varchar(24) DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(24) DEFAULT NULL,
  `modifiedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `item` */

insert  into `item`(`id`,`code`,`sellingPrice`,`name`,`description`,`auctionId`,`buyerId`,`createdBy`,`createdOn`,`modifiedBy`,`modifiedOn`) values (1,'CAR-01',250000.00,'Another Sample Item','A motor vahicle',8,NULL,'SYSTEM','2014-07-20 15:39:25',NULL,'2014-07-20 16:29:10'),(3,'BGQ-12',580000.00,'Mercides Benz AMG','TO be sold in open auction',7,NULL,'SYSTEM','2014-07-20 16:02:11',NULL,'2014-07-20 16:02:11'),(5,'JADE',120000.00,'Item Name 2014','Item Decription 2014',9,NULL,'SYSTEM','2014-07-20 17:34:48',NULL,'2014-07-20 17:34:48'),(6,'JADA',250000.00,'Another Sample Item','Item description',7,NULL,'SYSTEM','2014-07-21 18:46:24',NULL,'2014-07-21 18:46:24'),(7,'CODE',580000.00,'Another Sample Item','Item description',7,NULL,'SYSTEM','2014-07-21 18:47:18',NULL,'2014-07-21 18:47:18'),(8,'COD',450000.00,'Item Name 2014','Item description',7,NULL,'SYSTEM','2014-07-21 18:49:32',NULL,'2014-07-21 18:49:32'),(9,'COD',450000.00,'Another Sample Item','Item description',9,NULL,'SYSTEM','2014-07-21 18:50:07',NULL,'2014-07-21 18:50:07'),(10,'ITEM2',458000.00,'Item Name 2014','Item Decription 2014',7,NULL,'SYSTEM','2014-07-21 19:28:58',NULL,'2014-07-21 19:31:12');

/*Table structure for table `lot` */

DROP TABLE IF EXISTS `lot`;

CREATE TABLE `lot` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(12) DEFAULT NULL,
  `description` varchar(1000) NOT NULL,
  `itemId` bigint(20) unsigned NOT NULL,
  `buyerId` bigint(20) unsigned NOT NULL,
  `auctionId` bigint(20) unsigned NOT NULL,
  `amount` decimal(10,2) unsigned NOT NULL,
  `createdBy` varchar(24) DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(24) DEFAULT NULL,
  `modifiedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `lot` */

insert  into `lot`(`id`,`code`,`description`,`itemId`,`buyerId`,`auctionId`,`amount`,`createdBy`,`createdOn`,`modifiedBy`,`modifiedOn`) values (2,'458','Lot description',1,2,9,25000.00,'SYSTEM','2014-07-07 00:23:08',NULL,'2014-07-07 00:23:08'),(3,NULL,'Lot description',2,9,7,120000.00,'SYSTEM','2014-07-20 11:12:57',NULL,'2014-07-20 11:12:57'),(4,'500','Lot description',2,9,7,120000.00,'SYSTEM','2014-07-20 11:17:40',NULL,'2014-07-20 11:17:40');

/*Table structure for table `payments` */

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(12) DEFAULT NULL,
  `depositReceivedAmount` decimal(10,2) DEFAULT NULL,
  `depositRefundedAmount` decimal(10,2) DEFAULT NULL,
  `initialItemPrice` decimal(10,2) DEFAULT NULL,
  `closingItemPrice` decimal(10,2) DEFAULT NULL,
  `auctionId` bigint(20) DEFAULT NULL,
  `buyerId` bigint(20) DEFAULT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `createdBy` varchar(24) DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(24) DEFAULT NULL,
  `modifiedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `payments` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
