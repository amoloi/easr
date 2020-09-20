/*
SQLyog Community v12.01 (64 bit)
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
  `legalEntityId` bigint(20) DEFAULT NULL,
  `createdBy` varchar(24) DEFAULT NULL,
  `createdOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(24) DEFAULT NULL,
  `modifiedOn` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

/*Data for the table `address` */

insert  into `address`(`id`,`addressLineOne`,`addressLineTwo`,`postalAddress`,`regionCode`,`cityCode`,`countryCode`,`legalEntityId`,`createdBy`,`createdOn`,`modifiedBy`,`modifiedOn`) values (29,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',11,NULL,'2014-10-15 16:52:20',NULL,'2014-10-21 00:08:32'),(30,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',NULL,NULL,'2014-10-15 19:49:56',NULL,'2014-10-15 19:49:56'),(31,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',1,NULL,'2014-10-15 19:50:37',NULL,'2014-10-15 19:50:37'),(32,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',2,NULL,'2014-10-15 19:52:27',NULL,'2014-10-15 19:52:27'),(33,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',12,NULL,'2014-10-19 16:41:48',NULL,'2014-10-19 16:41:48'),(34,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',13,NULL,'2014-10-19 16:44:10',NULL,'2014-10-19 16:44:10'),(35,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',3,NULL,'2014-10-19 19:15:39',NULL,'2014-10-19 19:15:39'),(36,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',4,NULL,'2014-10-19 19:22:47',NULL,'2014-10-21 00:08:07'),(37,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',5,NULL,'2014-10-19 19:23:02',NULL,'2014-10-21 00:05:38'),(38,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',NULL,NULL,'2014-10-19 19:30:30',NULL,'2014-10-19 19:30:30'),(39,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',NULL,NULL,'2014-10-19 19:32:08',NULL,'2014-10-19 19:32:08'),(40,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',6,NULL,'2014-10-19 19:33:09',NULL,'2014-10-19 19:33:09'),(41,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',7,NULL,'2014-10-19 19:33:38',NULL,'2014-10-19 19:33:38'),(42,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',8,NULL,'2014-10-19 19:33:43',NULL,'2014-10-20 23:52:01'),(43,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',9,NULL,'2014-10-19 19:49:46',NULL,'2014-10-19 19:49:46'),(44,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',10,NULL,'2014-10-19 19:52:29',NULL,'2014-10-19 19:52:29'),(45,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',11,NULL,'2014-10-19 23:45:15',NULL,'2014-10-19 23:45:15'),(46,'Komasdal Gladiola','Erf 1117','P.O.Box 50016 Bachbrecht','Khomas','Windhoek','NAM',12,NULL,'2014-10-20 22:48:52',NULL,'2014-10-20 22:48:52');

/*Table structure for table `applications` */

DROP TABLE IF EXISTS `applications`;

CREATE TABLE `applications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `promoter` varchar(120) DEFAULT NULL,
  `businessName` varchar(120) DEFAULT NULL,
  `businessSector` varchar(120) DEFAULT NULL,
  `businessActivity` varchar(1000) DEFAULT NULL,
  `requestType` varchar(120) DEFAULT NULL,
  `telephoneNumber` varchar(30) DEFAULT NULL,
  `mobileNumber` varchar(30) DEFAULT NULL,
  `faxNumber` varchar(30) DEFAULT NULL,
  `emailAddress` varchar(128) DEFAULT NULL,
  `postalAddress` varchar(128) DEFAULT NULL,
  `residentialAddress` varchar(256) DEFAULT NULL,
  `region` varchar(120) NOT NULL,
  `town` varchar(120) NOT NULL,
  `applicationDate` varchar(120) DEFAULT NULL,
  `acknowledgementDate` varchar(120) DEFAULT NULL,
  `createdBy` varchar(24) DEFAULT NULL,
  `createdOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(24) DEFAULT NULL,
  `modifiedOn` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_auction_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `applications` */

insert  into `applications`(`id`,`promoter`,`businessName`,`businessSector`,`businessActivity`,`requestType`,`telephoneNumber`,`mobileNumber`,`faxNumber`,`emailAddress`,`postalAddress`,`residentialAddress`,`region`,`town`,`applicationDate`,`acknowledgementDate`,`createdBy`,`createdOn`,`modifiedBy`,`modifiedOn`) values (1,'Innocent','Ausklip Inc','Tertiary Sector','Software Development','Request','+264814774999','+264814774999','+264814774999','jadejuliette@gmail.com','P.O.Box 50016 Bachbrecht','Residential Address','KHOMAS','Windhoek','2014-10-15',NULL,NULL,'2014-10-15 10:54:32',NULL,'2014-10-15 12:34:08'),(2,'Innocent','Ausklip Inc','Tertiary Sector','Software Development','Request','+264814774999','+264814774999','+264814774999','jadejuliette@gmail.com','P.O.Box 50016 Bachbrecht','Residential Address','KHOMAS','Windhoek','2014-10-15',NULL,NULL,'2014-10-15 10:56:14',NULL,'2014-10-15 10:56:14'),(3,'Innocent','Ausklip Inc','Tertiary Sector','Software Development','Request','+264814774999','+264814774999','+264814774999','jadejuliette@gmail.com','P.O.Box 50016 Bachbrecht','Residential Address','KHOMAS','Windhoek','2014-10-15',NULL,NULL,'2014-10-15 10:56:18',NULL,'2014-10-15 10:56:18'),(5,'Innocent','Ausklip Inc','Tertiary Sector','Software Development','Request','+264814774999','+264814774999','+264814774999','jadejuliette@gmail.com','P.O.Box 50016 Bachbrecht','Residential Address','KHOMAS','Windhoek','2014-10-15',NULL,NULL,'2014-10-15 10:58:16',NULL,'2014-10-15 10:58:16'),(6,'10','PII INC International','Secondary Sector ','ANY BIZ ACTIVITY','Request','+264814774999','+264814774999','+264814774999','jadejuliette@gmail.com','P.O.Box 50016 Bachbrecht','Residential Address','ERONGO','Swakopmund','2014-10-20',NULL,NULL,'2014-10-16 13:17:07',NULL,'2014-10-20 22:35:36'),(10,'10','Ausklip Inc 2014','Primary Sector','Farming','Request','+264814774999','+264814774999','+264814774999','jadejuliette@gmail.com','P.O.Box 50016 Bachbrecht','Residential Address','KHOMAS','Rehoboth','2014-10-20',NULL,NULL,'2014-10-20 22:27:30',NULL,'2014-10-20 22:29:55');

/*Table structure for table `assignment_extensions` */

DROP TABLE IF EXISTS `assignment_extensions`;

CREATE TABLE `assignment_extensions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discussionDate` date DEFAULT NULL,
  `extendedDate` date DEFAULT NULL,
  `committeeRemarks` varchar(1200) NOT NULL,
  `corespondenceDate` date DEFAULT NULL,
  `committeeId` bigint(20) DEFAULT NULL,
  `createdBy` varchar(24) DEFAULT NULL,
  `createdOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(24) DEFAULT NULL,
  `modifiedOn` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_assignment_extensions_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `assignment_extensions` */

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(50) NOT NULL,
  `countryId` smallint(5) unsigned NOT NULL,
  `lastUpdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(24) DEFAULT NULL,
  `createdOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(24) DEFAULT NULL,
  `modifiedOn` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fk_country_id` (`countryId`),
  CONSTRAINT `fk_city_country` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `city` */

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `code` char(3) NOT NULL DEFAULT '',
  `name` char(52) NOT NULL DEFAULT '',
  `continent` enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') NOT NULL DEFAULT 'Asia',
  `region` char(26) NOT NULL DEFAULT '',
  `surfaceArea` float(10,2) NOT NULL DEFAULT '0.00',
  `indep_year` smallint(6) DEFAULT NULL,
  `population` int(11) NOT NULL DEFAULT '0',
  `local_name` char(45) NOT NULL DEFAULT '',
  `government_form` char(45) NOT NULL DEFAULT '',
  `capital` int(11) DEFAULT NULL,
  `code2` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `country` */

insert  into `country`(`code`,`name`,`continent`,`region`,`surfaceArea`,`indep_year`,`population`,`local_name`,`government_form`,`capital`,`code2`) values ('ABW','Aruba','North America','Caribbean',193.00,NULL,103000,'Aruba','Nonmetropolitan Territory of The Netherlands',129,'AW'),('AFG','Afghanistan','Asia','Southern and Central Asia',652090.00,1919,22720000,'Afganistan/Afqanestan','Islamic Emirate',1,'AF'),('AGO','Angola','Africa','Central Africa',1246700.00,1975,12878000,'Angola','Republic',56,'AO'),('AIA','Anguilla','North America','Caribbean',96.00,NULL,8000,'Anguilla','Dependent Territory of the UK',62,'AI'),('ALB','Albania','Europe','Southern Europe',28748.00,1912,3401200,'ShqipÃ«ria','Republic',34,'AL'),('AND','Andorra','Europe','Southern Europe',468.00,1278,78000,'Andorra','Parliamentary Coprincipality',55,'AD'),('ANT','Netherlands Antilles','North America','Caribbean',800.00,NULL,217000,'Nederlandse Antillen','Nonmetropolitan Territory of The Netherlands',33,'AN'),('ARE','United Arab Emirates','Asia','Middle East',83600.00,1971,2441000,'Al-Imarat al-Â´Arabiya al-Muttahida','Emirate Federation',65,'AE'),('ARG','Argentina','South America','South America',2780400.00,1816,37032000,'Argentina','Federal Republic',69,'AR'),('ARM','Armenia','Asia','Middle East',29800.00,1991,3520000,'Hajastan','Republic',126,'AM'),('ASM','American Samoa','Oceania','Polynesia',199.00,NULL,68000,'Amerika Samoa','US Territory',54,'AS'),('ATA','Antarctica','Antarctica','Antarctica',13120000.00,NULL,0,'Â–','Co-administrated',NULL,'AQ'),('ATF','French Southern territories','Antarctica','Antarctica',7780.00,NULL,0,'Terres australes franÃ§aises','Nonmetropolitan Territory of France',NULL,'TF'),('ATG','Antigua and Barbuda','North America','Caribbean',442.00,1981,68000,'Antigua and Barbuda','Constitutional Monarchy',63,'AG'),('AUS','Australia','Oceania','Australia and New Zealand',7741220.00,1901,18886000,'Australia','Constitutional Monarchy, Federation',135,'AU'),('AUT','Austria','Europe','Western Europe',83859.00,1918,8091800,'Ã–sterreich','Federal Republic',1523,'AT'),('AZE','Azerbaijan','Asia','Middle East',86600.00,1991,7734000,'AzÃ¤rbaycan','Federal Republic',144,'AZ'),('BDI','Burundi','Africa','Eastern Africa',27834.00,1962,6695000,'Burundi/Uburundi','Republic',552,'BI'),('BEL','Belgium','Europe','Western Europe',30518.00,1830,10239000,'BelgiÃ«/Belgique','Constitutional Monarchy, Federation',179,'BE'),('BEN','Benin','Africa','Western Africa',112622.00,1960,6097000,'BÃ©nin','Republic',187,'BJ'),('BFA','Burkina Faso','Africa','Western Africa',274000.00,1960,11937000,'Burkina Faso','Republic',549,'BF'),('BGD','Bangladesh','Asia','Southern and Central Asia',143998.00,1971,129155000,'Bangladesh','Republic',150,'BD'),('BGR','Bulgaria','Europe','Eastern Europe',110994.00,1908,8190900,'Balgarija','Republic',539,'BG'),('BHR','Bahrain','Asia','Middle East',694.00,1971,617000,'Al-Bahrayn','Monarchy (Emirate)',149,'BH'),('BHS','Bahamas','North America','Caribbean',13878.00,1973,307000,'The Bahamas','Constitutional Monarchy',148,'BS'),('BIH','Bosnia and Herzegovina','Europe','Southern Europe',51197.00,1992,3972000,'Bosna i Hercegovina','Federal Republic',201,'BA'),('BLR','Belarus','Europe','Eastern Europe',207600.00,1991,10236000,'Belarus','Republic',3520,'BY'),('BLZ','Belize','North America','Central America',22696.00,1981,241000,'Belize','Constitutional Monarchy',185,'BZ'),('BMU','Bermuda','North America','North America',53.00,NULL,65000,'Bermuda','Dependent Territory of the UK',191,'BM'),('BOL','Bolivia','South America','South America',1098581.00,1825,8329000,'Bolivia','Republic',194,'BO'),('BRA','Brazil','South America','South America',8547403.00,1822,170115000,'Brasil','Federal Republic',211,'BR'),('BRB','Barbados','North America','Caribbean',430.00,1966,270000,'Barbados','Constitutional Monarchy',174,'BB'),('BRN','Brunei','Asia','Southeast Asia',5765.00,1984,328000,'Brunei Darussalam','Monarchy (Sultanate)',538,'BN'),('BTN','Bhutan','Asia','Southern and Central Asia',47000.00,1910,2124000,'Druk-Yul','Monarchy',192,'BT'),('BVT','Bouvet Island','Antarctica','Antarctica',59.00,NULL,0,'BouvetÃ¸ya','Dependent Territory of Norway',NULL,'BV'),('BWA','Botswana','Africa','Southern Africa',581730.00,1966,1622000,'Botswana','Republic',204,'BW'),('CAF','Central African Republic','Africa','Central Africa',622984.00,1960,3615000,'Centrafrique/BÃª-AfrÃ®ka','Republic',1889,'CF'),('CAN','Canada','North America','North America',9970610.00,1867,31147000,'Canada','Constitutional Monarchy, Federation',1822,'CA'),('CCK','Cocos (Keeling) Islands','Oceania','Australia and New Zealand',14.00,NULL,600,'Cocos (Keeling) Islands','Territory of Australia',2317,'CC'),('CHE','Switzerland','Europe','Western Europe',41284.00,1499,7160400,'Schweiz/Suisse/Svizzera/Svizra','Federation',3248,'CH'),('CHL','Chile','South America','South America',756626.00,1810,15211000,'Chile','Republic',554,'CL'),('CHN','China','Asia','Eastern Asia',9572900.00,-1523,1277558000,'Zhongquo','People\'sRepublic',1891,'CN'),('CIV','CÃ´te dÂ’Ivoire','Africa','Western Africa',322463.00,1960,14786000,'CÃ´te dÂ’Ivoire','Republic',2814,'CI'),('CMR','Cameroon','Africa','Central Africa',475442.00,1960,15085000,'Cameroun/Cameroon','Republic',1804,'CM'),('COD','Congo, The Democratic Republic of the','Africa','Central Africa',2344858.00,1960,51654000,'RÃ©publique DÃ©mocratique du Congo','Republic',2298,'CD'),('COG','Congo','Africa','Central Africa',342000.00,1960,2943000,'Congo','Republic',2296,'CG'),('COK','Cook Islands','Oceania','Polynesia',236.00,NULL,20000,'The Cook Islands','Nonmetropolitan Territory of New Zealand',583,'CK'),('COL','Colombia','South America','South America',1138914.00,1810,42321000,'Colombia','Republic',2257,'CO'),('COM','Comoros','Africa','Eastern Africa',1862.00,1975,578000,'Komori/Comores','Republic',2295,'KM'),('CPV','Cape Verde','Africa','Western Africa',4033.00,1975,428000,'Cabo Verde','Republic',1859,'CV'),('CRI','Costa Rica','North America','Central America',51100.00,1821,4023000,'Costa Rica','Republic',584,'CR'),('CUB','Cuba','North America','Caribbean',110861.00,1902,11201000,'Cuba','Socialistic Republic',2413,'CU'),('CXR','Christmas Island','Oceania','Australia and New Zealand',135.00,NULL,2500,'Christmas Island','Territory of Australia',1791,'CX'),('CYM','Cayman Islands','North America','Caribbean',264.00,NULL,38000,'Cayman Islands','Dependent Territory of the UK',553,'KY'),('CYP','Cyprus','Asia','Middle East',9251.00,1960,754700,'KÃ½pros/Kibris','Republic',2430,'CY'),('CZE','Czech Republic','Europe','Eastern Europe',78866.00,1993,10278100,'Â¸esko','Republic',3339,'CZ'),('DEU','Germany','Europe','Western Europe',357022.00,1955,82164700,'Deutschland','Federal Republic',3068,'DE'),('DJI','Djibouti','Africa','Eastern Africa',23200.00,1977,638000,'Djibouti/Jibuti','Republic',585,'DJ'),('DMA','Dominica','North America','Caribbean',751.00,1978,71000,'Dominica','Republic',586,'DM'),('DNK','Denmark','Europe','Nordic Countries',43094.00,800,5330000,'Danmark','Constitutional Monarchy',3315,'DK'),('DOM','Dominican Republic','North America','Caribbean',48511.00,1844,8495000,'RepÃºblica Dominicana','Republic',587,'DO'),('DZA','Algeria','Africa','Northern Africa',2381741.00,1962,31471000,'Al-JazaÂ’ir/AlgÃ©rie','Republic',35,'DZ'),('ECU','Ecuador','South America','South America',283561.00,1822,12646000,'Ecuador','Republic',594,'EC'),('EGY','Egypt','Africa','Northern Africa',1001449.00,1922,68470000,'Misr','Republic',608,'EG'),('ERI','Eritrea','Africa','Eastern Africa',117600.00,1993,3850000,'Ertra','Republic',652,'ER'),('ESH','Western Sahara','Africa','Northern Africa',266000.00,NULL,293000,'As-Sahrawiya','Occupied by Marocco',2453,'EH'),('ESP','Spain','Europe','Southern Europe',505992.00,1492,39441700,'EspaÃ±a','Constitutional Monarchy',653,'ES'),('EST','Estonia','Europe','Baltic Countries',45227.00,1991,1439200,'Eesti','Republic',3791,'EE'),('ETH','Ethiopia','Africa','Eastern Africa',1104300.00,-1000,62565000,'YeItyopÂ´iya','Republic',756,'ET'),('FIN','Finland','Europe','Nordic Countries',338145.00,1917,5171300,'Suomi','Republic',3236,'FI'),('FJI','Fiji Islands','Oceania','Melanesia',18274.00,1970,817000,'Fiji Islands','Republic',764,'FJ'),('FLK','Falkland Islands','South America','South America',12173.00,NULL,2000,'Falkland Islands','Dependent Territory of the UK',763,'FK'),('FRA','France','Europe','Western Europe',551500.00,843,59225700,'France','Republic',2974,'FR'),('FRO','Faroe Islands','Europe','Nordic Countries',1399.00,NULL,43000,'FÃ¸royar','Part of Denmark',901,'FO'),('FSM','Micronesia, Federated States of','Oceania','Micronesia',702.00,1990,119000,'Micronesia','Federal Republic',2689,'FM'),('GAB','Gabon','Africa','Central Africa',267668.00,1960,1226000,'Le Gabon','Republic',902,'GA'),('GBR','United Kingdom','Europe','British Islands',242900.00,1066,59623400,'United Kingdom','Constitutional Monarchy',456,'GB'),('GEO','Georgia','Asia','Middle East',69700.00,1991,4968000,'Sakartvelo','Republic',905,'GE'),('GHA','Ghana','Africa','Western Africa',238533.00,1957,20212000,'Ghana','Republic',910,'GH'),('GIB','Gibraltar','Europe','Southern Europe',6.00,NULL,25000,'Gibraltar','Dependent Territory of the UK',915,'GI'),('GIN','Guinea','Africa','Western Africa',245857.00,1958,7430000,'GuinÃ©e','Republic',926,'GN'),('GLP','Guadeloupe','North America','Caribbean',1705.00,NULL,456000,'Guadeloupe','Overseas Department of France',919,'GP'),('GMB','Gambia','Africa','Western Africa',11295.00,1965,1305000,'The Gambia','Republic',904,'GM'),('GNB','Guinea-Bissau','Africa','Western Africa',36125.00,1974,1213000,'GuinÃ©-Bissau','Republic',927,'GW'),('GNQ','Equatorial Guinea','Africa','Central Africa',28051.00,1968,453000,'Guinea Ecuatorial','Republic',2972,'GQ'),('GRC','Greece','Europe','Southern Europe',131626.00,1830,10545700,'EllÃ¡da','Republic',2401,'GR'),('GRD','Grenada','North America','Caribbean',344.00,1974,94000,'Grenada','Constitutional Monarchy',916,'GD'),('GRL','Greenland','North America','North America',2166090.00,NULL,56000,'Kalaallit Nunaat/GrÃ¸nland','Part of Denmark',917,'GL'),('GTM','Guatemala','North America','Central America',108889.00,1821,11385000,'Guatemala','Republic',922,'GT'),('GUF','French Guiana','South America','South America',90000.00,NULL,181000,'Guyane franÃ§aise','Overseas Department of France',3014,'GF'),('GUM','Guam','Oceania','Micronesia',549.00,NULL,168000,'Guam','US Territory',921,'GU'),('GUY','Guyana','South America','South America',214969.00,1966,861000,'Guyana','Republic',928,'GY'),('HKG','Hong Kong','Asia','Eastern Asia',1075.00,NULL,6782000,'Xianggang/Hong Kong','Special Administrative Region of China',937,'HK'),('HMD','Heard Island and McDonald Islands','Antarctica','Antarctica',359.00,NULL,0,'Heard and McDonald Islands','Territory of Australia',NULL,'HM'),('HND','Honduras','North America','Central America',112088.00,1838,6485000,'Honduras','Republic',933,'HN'),('HRV','Croatia','Europe','Southern Europe',56538.00,1991,4473000,'Hrvatska','Republic',2409,'HR'),('HTI','Haiti','North America','Caribbean',27750.00,1804,8222000,'HaÃ¯ti/Dayti','Republic',929,'HT'),('HUN','Hungary','Europe','Eastern Europe',93030.00,1918,10043200,'MagyarorszÃ¡g','Republic',3483,'HU'),('IDN','Indonesia','Asia','Southeast Asia',1904569.00,1945,212107000,'Indonesia','Republic',939,'ID'),('IND','India','Asia','Southern and Central Asia',3287263.00,1947,1013662000,'Bharat/India','Federal Republic',1109,'IN'),('IOT','British Indian Ocean Territory','Africa','Eastern Africa',78.00,NULL,0,'British Indian Ocean Territory','Dependent Territory of the UK',NULL,'IO'),('IRL','Ireland','Europe','British Islands',70273.00,1921,3775100,'Ireland/Ã‰ire','Republic',1447,'IE'),('IRN','Iran','Asia','Southern and Central Asia',1648195.00,1906,67702000,'Iran','Islamic Republic',1380,'IR'),('IRQ','Iraq','Asia','Middle East',438317.00,1932,23115000,'Al-Â´Iraq','Republic',1365,'IQ'),('ISL','Iceland','Europe','Nordic Countries',103000.00,1944,279000,'Ãsland','Republic',1449,'IS'),('ISR','Israel','Asia','Middle East',21056.00,1948,6217000,'YisraÂ’el/IsraÂ’il','Republic',1450,'IL'),('ITA','Italy','Europe','Southern Europe',301316.00,1861,57680000,'Italia','Republic',1464,'IT'),('JAM','Jamaica','North America','Caribbean',10990.00,1962,2583000,'Jamaica','Constitutional Monarchy',1530,'JM'),('JOR','Jordan','Asia','Middle East',88946.00,1946,5083000,'Al-Urdunn','Constitutional Monarchy',1786,'JO'),('JPN','Japan','Asia','Eastern Asia',377829.00,-660,126714000,'Nihon/Nippon','Constitutional Monarchy',1532,'JP'),('KAZ','Kazakstan','Asia','Southern and Central Asia',2724900.00,1991,16223000,'Qazaqstan','Republic',1864,'KZ'),('KEN','Kenya','Africa','Eastern Africa',580367.00,1963,30080000,'Kenya','Republic',1881,'KE'),('KGZ','Kyrgyzstan','Asia','Southern and Central Asia',199900.00,1991,4699000,'Kyrgyzstan','Republic',2253,'KG'),('KHM','Cambodia','Asia','Southeast Asia',181035.00,1953,11168000,'KÃ¢mpuchÃ©a','Constitutional Monarchy',1800,'KH'),('KIR','Kiribati','Oceania','Micronesia',726.00,1979,83000,'Kiribati','Republic',2256,'KI'),('KNA','Saint Kitts and Nevis','North America','Caribbean',261.00,1983,38000,'Saint Kitts and Nevis','Constitutional Monarchy',3064,'KN'),('KOR','South Korea','Asia','Eastern Asia',99434.00,1948,46844000,'Taehan MinÂ’guk (Namhan)','Republic',2331,'KR'),('KWT','Kuwait','Asia','Middle East',17818.00,1961,1972000,'Al-Kuwayt','Constitutional Monarchy (Emirate)',2429,'KW'),('LAO','Laos','Asia','Southeast Asia',236800.00,1953,5433000,'Lao','Republic',2432,'LA'),('LBN','Lebanon','Asia','Middle East',10400.00,1941,3282000,'Lubnan','Republic',2438,'LB'),('LBR','Liberia','Africa','Western Africa',111369.00,1847,3154000,'Liberia','Republic',2440,'LR'),('LBY','Libyan Arab Jamahiriya','Africa','Northern Africa',1759540.00,1951,5605000,'Libiya','Socialistic State',2441,'LY'),('LCA','Saint Lucia','North America','Caribbean',622.00,1979,154000,'Saint Lucia','Constitutional Monarchy',3065,'LC'),('LIE','Liechtenstein','Europe','Western Europe',160.00,1806,32300,'Liechtenstein','Constitutional Monarchy',2446,'LI'),('LKA','Sri Lanka','Asia','Southern and Central Asia',65610.00,1948,18827000,'Sri Lanka/Ilankai','Republic',3217,'LK'),('LSO','Lesotho','Africa','Southern Africa',30355.00,1966,2153000,'Lesotho','Constitutional Monarchy',2437,'LS'),('LTU','Lithuania','Europe','Baltic Countries',65301.00,1991,3698500,'Lietuva','Republic',2447,'LT'),('LUX','Luxembourg','Europe','Western Europe',2586.00,1867,435700,'Luxembourg/LÃ«tzebuerg','Constitutional Monarchy',2452,'LU'),('LVA','Latvia','Europe','Baltic Countries',64589.00,1991,2424200,'Latvija','Republic',2434,'LV'),('MAC','Macao','Asia','Eastern Asia',18.00,NULL,473000,'Macau/Aomen','Special Administrative Region of China',2454,'MO'),('MAR','Morocco','Africa','Northern Africa',446550.00,1956,28351000,'Al-Maghrib','Constitutional Monarchy',2486,'MA'),('MCO','Monaco','Europe','Western Europe',1.50,1861,34000,'Monaco','Constitutional Monarchy',2695,'MC'),('MDA','Moldova','Europe','Eastern Europe',33851.00,1991,4380000,'Moldova','Republic',2690,'MD'),('MDG','Madagascar','Africa','Eastern Africa',587041.00,1960,15942000,'Madagasikara/Madagascar','Federal Republic',2455,'MG'),('MDV','Maldives','Asia','Southern and Central Asia',298.00,1965,286000,'Dhivehi Raajje/Maldives','Republic',2463,'MV'),('MEX','Mexico','North America','Central America',1958201.00,1810,98881000,'MÃ©xico','Federal Republic',2515,'MX'),('MHL','Marshall Islands','Oceania','Micronesia',181.00,1990,64000,'Marshall Islands/Majol','Republic',2507,'MH'),('MKD','Macedonia','Europe','Southern Europe',25713.00,1991,2024000,'Makedonija','Republic',2460,'MK'),('MLI','Mali','Africa','Western Africa',1240192.00,1960,11234000,'Mali','Republic',2482,'ML'),('MLT','Malta','Europe','Southern Europe',316.00,1964,380200,'Malta','Republic',2484,'MT'),('MMR','Myanmar','Asia','Southeast Asia',676578.00,1948,45611000,'Myanma Pye','Republic',2710,'MM'),('MNG','Mongolia','Asia','Eastern Asia',1566500.00,1921,2662000,'Mongol Uls','Republic',2696,'MN'),('MNP','Northern Mariana Islands','Oceania','Micronesia',464.00,NULL,78000,'Northern Mariana Islands','Commonwealth of the US',2913,'MP'),('MOZ','Mozambique','Africa','Eastern Africa',801590.00,1975,19680000,'MoÃ§ambique','Republic',2698,'MZ'),('MRT','Mauritania','Africa','Western Africa',1025520.00,1960,2670000,'Muritaniya/Mauritanie','Republic',2509,'MR'),('MSR','Montserrat','North America','Caribbean',102.00,NULL,11000,'Montserrat','Dependent Territory of the UK',2697,'MS'),('MTQ','Martinique','North America','Caribbean',1102.00,NULL,395000,'Martinique','Overseas Department of France',2508,'MQ'),('MUS','Mauritius','Africa','Eastern Africa',2040.00,1968,1158000,'Mauritius','Republic',2511,'MU'),('MWI','Malawi','Africa','Eastern Africa',118484.00,1964,10925000,'Malawi','Republic',2462,'MW'),('MYS','Malaysia','Asia','Southeast Asia',329758.00,1957,22244000,'Malaysia','Constitutional Monarchy, Federation',2464,'MY'),('MYT','Mayotte','Africa','Eastern Africa',373.00,NULL,149000,'Mayotte','Territorial Collectivity of France',2514,'YT'),('NAM','Namibia','Africa','Southern Africa',824292.00,1990,1726000,'Namibia','Republic',2726,'NA'),('NCL','New Caledonia','Oceania','Melanesia',18575.00,NULL,214000,'Nouvelle-CalÃ©donie','Nonmetropolitan Territory of France',3493,'NC'),('NER','Niger','Africa','Western Africa',1267000.00,1960,10730000,'Niger','Republic',2738,'NE'),('NFK','Norfolk Island','Oceania','Australia and New Zealand',36.00,NULL,2000,'Norfolk Island','Territory of Australia',2806,'NF'),('NGA','Nigeria','Africa','Western Africa',923768.00,1960,111506000,'Nigeria','Federal Republic',2754,'NG'),('NIC','Nicaragua','North America','Central America',130000.00,1838,5074000,'Nicaragua','Republic',2734,'NI'),('NIU','Niue','Oceania','Polynesia',260.00,NULL,2000,'Niue','Nonmetropolitan Territory of New Zealand',2805,'NU'),('NLD','Netherlands','Europe','Western Europe',41526.00,1581,15864000,'Nederland','Constitutional Monarchy',5,'NL'),('NOR','Norway','Europe','Nordic Countries',323877.00,1905,4478500,'Norge','Constitutional Monarchy',2807,'NO'),('NPL','Nepal','Asia','Southern and Central Asia',147181.00,1769,23930000,'Nepal','Constitutional Monarchy',2729,'NP'),('NRU','Nauru','Oceania','Micronesia',21.00,1968,12000,'Naoero/Nauru','Republic',2728,'NR'),('NZL','New Zealand','Oceania','Australia and New Zealand',270534.00,1907,3862000,'New Zealand/Aotearoa','Constitutional Monarchy',3499,'NZ'),('OMN','Oman','Asia','Middle East',309500.00,1951,2542000,'Â´Uman','Monarchy (Sultanate)',2821,'OM'),('PAK','Pakistan','Asia','Southern and Central Asia',796095.00,1947,156483000,'Pakistan','Republic',2831,'PK'),('PAN','Panama','North America','Central America',75517.00,1903,2856000,'PanamÃ¡','Republic',2882,'PA'),('PCN','Pitcairn','Oceania','Polynesia',49.00,NULL,50,'Pitcairn','Dependent Territory of the UK',2912,'PN'),('PER','Peru','South America','South America',1285216.00,1821,25662000,'PerÃº/Piruw','Republic',2890,'PE'),('PHL','Philippines','Asia','Southeast Asia',300000.00,1946,75967000,'Pilipinas','Republic',766,'PH'),('PLW','Palau','Oceania','Micronesia',459.00,1994,19000,'Belau/Palau','Republic',2881,'PW'),('PNG','Papua New Guinea','Oceania','Melanesia',462840.00,1975,4807000,'Papua New Guinea/Papua Niugini','Constitutional Monarchy',2884,'PG'),('POL','Poland','Europe','Eastern Europe',323250.00,1918,38653600,'Polska','Republic',2928,'PL'),('PRI','Puerto Rico','North America','Caribbean',8875.00,NULL,3869000,'Puerto Rico','Commonwealth of the US',2919,'PR'),('PRK','North Korea','Asia','Eastern Asia',120538.00,1948,24039000,'Choson Minjujuui InÂ´min Konghwaguk (Bukhan)','Socialistic Republic',2318,'KP'),('PRT','Portugal','Europe','Southern Europe',91982.00,1143,9997600,'Portugal','Republic',2914,'PT'),('PRY','Paraguay','South America','South America',406752.00,1811,5496000,'Paraguay','Republic',2885,'PY'),('PSE','Palestine','Asia','Middle East',6257.00,NULL,3101000,'Filastin','Autonomous Area',4074,'PS'),('PYF','French Polynesia','Oceania','Polynesia',4000.00,NULL,235000,'PolynÃ©sie franÃ§aise','Nonmetropolitan Territory of France',3016,'PF'),('QAT','Qatar','Asia','Middle East',11000.00,1971,599000,'Qatar','Monarchy',2973,'QA'),('REU','RÃ©union','Africa','Eastern Africa',2510.00,NULL,699000,'RÃ©union','Overseas Department of France',3017,'RE'),('ROM','Romania','Europe','Eastern Europe',238391.00,1878,22455500,'RomÃ¢nia','Republic',3018,'RO'),('RUS','Russian Federation','Europe','Eastern Europe',17075400.00,1991,146934000,'Rossija','Federal Republic',3580,'RU'),('RWA','Rwanda','Africa','Eastern Africa',26338.00,1962,7733000,'Rwanda/Urwanda','Republic',3047,'RW'),('SAU','Saudi Arabia','Asia','Middle East',2149690.00,1932,21607000,'Al-Â´Arabiya as-SaÂ´udiya','Monarchy',3173,'SA'),('SDN','Sudan','Africa','Northern Africa',2505813.00,1956,29490000,'As-Sudan','Islamic Republic',3225,'SD'),('SEN','Senegal','Africa','Western Africa',196722.00,1960,9481000,'SÃ©nÃ©gal/Sounougal','Republic',3198,'SN'),('SGP','Singapore','Asia','Southeast Asia',618.00,1965,3567000,'Singapore/Singapura/Xinjiapo/Singapur','Republic',3208,'SG'),('SGS','South Georgia and the South Sandwich Islands','Antarctica','Antarctica',3903.00,NULL,0,'South Georgia and the South Sandwich Islands','Dependent Territory of the UK',NULL,'GS'),('SHN','Saint Helena','Africa','Western Africa',314.00,NULL,6000,'Saint Helena','Dependent Territory of the UK',3063,'SH'),('SJM','Svalbard and Jan Mayen','Europe','Nordic Countries',62422.00,NULL,3200,'Svalbard og Jan Mayen','Dependent Territory of Norway',938,'SJ'),('SLB','Solomon Islands','Oceania','Melanesia',28896.00,1978,444000,'Solomon Islands','Constitutional Monarchy',3161,'SB'),('SLE','Sierra Leone','Africa','Western Africa',71740.00,1961,4854000,'Sierra Leone','Republic',3207,'SL'),('SLV','El Salvador','North America','Central America',21041.00,1841,6276000,'El Salvador','Republic',645,'SV'),('SMR','San Marino','Europe','Southern Europe',61.00,885,27000,'San Marino','Republic',3171,'SM'),('SOM','Somalia','Africa','Eastern Africa',637657.00,1960,10097000,'Soomaaliya','Republic',3214,'SO'),('SPM','Saint Pierre and Miquelon','North America','North America',242.00,NULL,7000,'Saint-Pierre-et-Miquelon','Territorial Collectivity of France',3067,'PM'),('STP','Sao Tome and Principe','Africa','Central Africa',964.00,1975,147000,'SÃ£o TomÃ© e PrÃ­ncipe','Republic',3172,'ST'),('SUR','Suriname','South America','South America',163265.00,1975,417000,'Suriname','Republic',3243,'SR'),('SVK','Slovakia','Europe','Eastern Europe',49012.00,1993,5398700,'Slovensko','Republic',3209,'SK'),('SVN','Slovenia','Europe','Southern Europe',20256.00,1991,1987800,'Slovenija','Republic',3212,'SI'),('SWE','Sweden','Europe','Nordic Countries',449964.00,836,8861400,'Sverige','Constitutional Monarchy',3048,'SE'),('SWZ','Swaziland','Africa','Southern Africa',17364.00,1968,1008000,'kaNgwane','Monarchy',3244,'SZ'),('SYC','Seychelles','Africa','Eastern Africa',455.00,1976,77000,'Sesel/Seychelles','Republic',3206,'SC'),('SYR','Syria','Asia','Middle East',185180.00,1941,16125000,'Suriya','Republic',3250,'SY'),('TCA','Turks and Caicos Islands','North America','Caribbean',430.00,NULL,17000,'The Turks and Caicos Islands','Dependent Territory of the UK',3423,'TC'),('TCD','Chad','Africa','Central Africa',1284000.00,1960,7651000,'Tchad/Tshad','Republic',3337,'TD'),('TGO','Togo','Africa','Western Africa',56785.00,1960,4629000,'Togo','Republic',3332,'TG'),('THA','Thailand','Asia','Southeast Asia',513115.00,1350,61399000,'Prathet Thai','Constitutional Monarchy',3320,'TH'),('TJK','Tajikistan','Asia','Southern and Central Asia',143100.00,1991,6188000,'ToÃ§ikiston','Republic',3261,'TJ'),('TKL','Tokelau','Oceania','Polynesia',12.00,NULL,2000,'Tokelau','Nonmetropolitan Territory of New Zealand',3333,'TK'),('TKM','Turkmenistan','Asia','Southern and Central Asia',488100.00,1991,4459000,'TÃ¼rkmenostan','Republic',3419,'TM'),('TMP','East Timor','Asia','Southeast Asia',14874.00,NULL,885000,'Timor Timur','Administrated by the UN',1522,'TP'),('TON','Tonga','Oceania','Polynesia',650.00,1970,99000,'Tonga','Monarchy',3334,'TO'),('TTO','Trinidad and Tobago','North America','Caribbean',5130.00,1962,1295000,'Trinidad and Tobago','Republic',3336,'TT'),('TUN','Tunisia','Africa','Northern Africa',163610.00,1956,9586000,'Tunis/Tunisie','Republic',3349,'TN'),('TUR','Turkey','Asia','Middle East',774815.00,1923,66591000,'TÃ¼rkiye','Republic',3358,'TR'),('TUV','Tuvalu','Oceania','Polynesia',26.00,1978,12000,'Tuvalu','Constitutional Monarchy',3424,'TV'),('TWN','Taiwan','Asia','Eastern Asia',36188.00,1945,22256000,'TÂ’ai-wan','Republic',3263,'TW'),('TZA','Tanzania','Africa','Eastern Africa',883749.00,1961,33517000,'Tanzania','Republic',3306,'TZ'),('UGA','Uganda','Africa','Eastern Africa',241038.00,1962,21778000,'Uganda','Republic',3425,'UG'),('UKR','Ukraine','Europe','Eastern Europe',603700.00,1991,50456000,'Ukrajina','Republic',3426,'UA'),('UMI','United States Minor Outlying Islands','Oceania','Micronesia/Caribbean',16.00,NULL,0,'United States Minor Outlying Islands','Dependent Territory of the US',NULL,'UM'),('URY','Uruguay','South America','South America',175016.00,1828,3337000,'Uruguay','Republic',3492,'UY'),('USA','United States','North America','North America',9363520.00,1776,278357000,'United States','Federal Republic',3813,'US'),('UZB','Uzbekistan','Asia','Southern and Central Asia',447400.00,1991,24318000,'Uzbekiston','Republic',3503,'UZ'),('VAT','Holy See (Vatican City State)','Europe','Southern Europe',0.40,1929,1000,'Santa Sede/CittÃ  del Vaticano','Independent Church State',3538,'VA'),('VCT','Saint Vincent and the Grenadines','North America','Caribbean',388.00,1979,114000,'Saint Vincent and the Grenadines','Constitutional Monarchy',3066,'VC'),('VEN','Venezuela','South America','South America',912050.00,1811,24170000,'Venezuela','Federal Republic',3539,'VE'),('VGB','Virgin Islands, British','North America','Caribbean',151.00,NULL,21000,'British Virgin Islands','Dependent Territory of the UK',537,'VG'),('VIR','Virgin Islands, U.S.','North America','Caribbean',347.00,NULL,93000,'Virgin Islands of the United States','US Territory',4067,'VI'),('VNM','Vietnam','Asia','Southeast Asia',331689.00,1945,79832000,'ViÃªt Nam','Socialistic Republic',3770,'VN'),('VUT','Vanuatu','Oceania','Melanesia',12189.00,1980,190000,'Vanuatu','Republic',3537,'VU'),('WLF','Wallis and Futuna','Oceania','Polynesia',200.00,NULL,15000,'Wallis-et-Futuna','Nonmetropolitan Territory of France',3536,'WF'),('WSM','Samoa','Oceania','Polynesia',2831.00,1962,180000,'Samoa','Parlementary Monarchy',3169,'WS'),('YEM','Yemen','Asia','Middle East',527968.00,1918,18112000,'Al-Yaman','Republic',1780,'YE'),('YUG','Yugoslavia','Europe','Southern Europe',102173.00,1918,10640000,'Jugoslavija','Federal Republic',1792,'YU'),('ZAF','South Africa','Africa','Southern Africa',1221037.00,1910,40377000,'South Africa','Republic',716,'ZA'),('ZMB','Zambia','Africa','Eastern Africa',752618.00,1964,9169000,'Zambia','Republic',3162,'ZM'),('ZWE','Zimbabwe','Africa','Eastern Africa',390757.00,1980,11669000,'Zimbabwe','Republic',4068,'ZW');

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
  `modifiedOn` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `deposits` */

/*Table structure for table `funds` */

DROP TABLE IF EXISTS `funds`;

CREATE TABLE `funds` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) DEFAULT NULL,
  `initialAmount` decimal(12,0) DEFAULT NULL,
  `outstandingAmount` decimal(12,0) DEFAULT '0',
  `dateOfApproval` date DEFAULT NULL,
  `remarks` text,
  `createdBy` varchar(24) DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(24) DEFAULT NULL,
  `modifiedOn` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `funds` */

insert  into `funds`(`id`,`name`,`initialAmount`,`outstandingAmount`,`dateOfApproval`,`remarks`,`createdBy`,`createdOn`,`modifiedBy`,`modifiedOn`) values (1,'Just Funds','7800000','450000','2014-10-21','Somre Remarks Edited','SYSTEM','2014-10-18 20:52:20',NULL,'2014-10-18 23:42:01'),(2,'Just Funds 2000','7800000','450000','2014-10-21','Somre Remarks','SYSTEM','2014-10-18 20:52:32',NULL,'2014-10-18 20:52:32'),(3,'Jamhuri Amolo','1000000000',NULL,'2014-10-19','Funds for Ausklip','SYSTEM','2014-10-18 23:54:57',NULL,'2014-10-18 23:56:24');

/*Table structure for table `implementation` */

DROP TABLE IF EXISTS `implementation`;

CREATE TABLE `implementation` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discussionDate` date DEFAULT NULL,
  `dateIssuedToPromoters` date DEFAULT NULL,
  `reportTypeGiven` varchar(1200) NOT NULL,
  `fundingParty` varchar(1200) NOT NULL,
  `numberOfMaleEmployed` int(11) DEFAULT NULL,
  `numberOfFemaleEmployed` int(11) DEFAULT NULL,
  `remarks` varchar(1200) NOT NULL,
  `committeeId` bigint(20) DEFAULT NULL,
  `applicationId` bigint(20) DEFAULT NULL,
  `createdBy` varchar(24) DEFAULT NULL,
  `createdOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(24) DEFAULT NULL,
  `modifiedOn` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_implementation_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `implementation` */

/*Table structure for table `legal_entities` */

DROP TABLE IF EXISTS `legal_entities`;

CREATE TABLE `legal_entities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) DEFAULT NULL,
  `middleName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `passportNumber` varchar(15) DEFAULT NULL,
  `identityNumber` varchar(15) DEFAULT NULL,
  `companyName` varchar(256) DEFAULT NULL,
  `companyRegistrationNumber` varchar(30) DEFAULT NULL,
  `entityType` varchar(30) DEFAULT NULL COMMENT '[I]ndividual , [C]ompany',
  `entityCategory` varchar(30) DEFAULT NULL COMMENT '[P]romoter , [S]ponsor',
  `emailAddress` varchar(50) DEFAULT NULL,
  `telephoneNumber` varchar(24) DEFAULT NULL,
  `mobileNumber` varchar(24) DEFAULT NULL,
  `faxNumber` varchar(24) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `remarks` text,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(24) DEFAULT NULL,
  `modifiedBy` varchar(24) DEFAULT NULL,
  `modifiedOn` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_identityNumber` (`identityNumber`),
  KEY `idx_passportNumber` (`passportNumber`),
  KEY `idx_registrationNumber` (`companyRegistrationNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `legal_entities` */

insert  into `legal_entities`(`id`,`firstName`,`middleName`,`lastName`,`dateOfBirth`,`passportNumber`,`identityNumber`,`companyName`,`companyRegistrationNumber`,`entityType`,`entityCategory`,`emailAddress`,`telephoneNumber`,`mobileNumber`,`faxNumber`,`isActive`,`remarks`,`createdOn`,`createdBy`,`modifiedBy`,`modifiedOn`) values (1,'Juliette','Jade','Amolo',NULL,'AB457878','AB361032',NULL,NULL,'consultant',NULL,'jadejuliette@gmail.com','+264814774999','+264814774999','+264814774999',1,NULL,'2014-10-15 19:50:37','SYSTEM',NULL,'2014-10-15 19:50:37'),(2,'Juliette','Jade','Amolo',NULL,'AB457878','AB361032',NULL,NULL,'consultant',NULL,'jadejuliette@gmail.com','+264814774999','+264814774999','+264814774999',1,NULL,'2014-10-15 19:52:27','SYSTEM',NULL,'2014-10-15 19:52:27'),(3,'Eben','Eben','Shikongo',NULL,'111111111','45781112221',NULL,NULL,'person',NULL,'jadejuliette@gmail.com','+264814774999','+264814774999','+264814774999',1,NULL,'2014-10-19 19:15:39','SYSTEM',NULL,'2014-10-19 19:15:39'),(4,'Eben 2011','Eben','Shikongo',NULL,'111111111','45781112221',NULL,NULL,'person','consultant','jadejuliette@gmail.com','+264814774999','+264814774999','+264814774999',1,NULL,'2014-10-19 19:22:47','SYSTEM',NULL,'2014-10-21 00:08:07'),(5,'Eben',NULL,'Shikongo 4578',NULL,NULL,'45781112221',NULL,NULL,NULL,NULL,'jadejuliette@gmail.com','+264814774999','+264814774999','+264814774999',1,NULL,'2014-10-19 19:23:02','SYSTEM',NULL,'2014-10-21 00:05:38'),(6,NULL,NULL,NULL,NULL,NULL,NULL,'INNOCENT JBLAC INC 2003','SH23567745','company','consultant','jadejuliette@gmail.com','+264814774999','+264814774999','+264814774999',1,NULL,'2014-10-19 19:33:09','SYSTEM',NULL,'2014-10-19 19:33:09'),(7,NULL,NULL,NULL,NULL,NULL,NULL,'INNOCENT JBLAC INC 2003','SH23567745','company','consultant','jadejuliette@gmail.com','+264814774999','+264814774999','+264814774999',1,NULL,'2014-10-19 19:33:38','SYSTEM',NULL,'2014-10-19 19:33:38'),(8,NULL,NULL,NULL,NULL,NULL,NULL,'INNOCENT JBLAC INC 2023','SH23567745','company','promoter','jadejuliette@gmail.com','+264814774999','+264814774999','+264814774999',1,NULL,'2014-10-19 19:33:42','SYSTEM',NULL,'2014-10-20 23:52:01'),(9,NULL,NULL,NULL,NULL,NULL,NULL,'INNOCENT JBLAC INC','201529INC21','company','promoter','innocent.blacius@gmail.com','+264814774999','+264814774999','+264814774999',1,NULL,'2014-10-19 19:49:46','SYSTEM',NULL,'2014-10-19 19:49:46'),(10,'Jasmine 200','Jade','Amolo Blacius',NULL,'1111111112','45781112221',NULL,NULL,'person','promoter','innocent.blacius@gmail.com','+264814774999','+264814774999','+264814774999',1,NULL,'2014-10-19 19:52:29','SYSTEM',NULL,'2014-10-19 19:52:29'),(11,'Janety','K','Kisoka',NULL,'111111122','45781112221',NULL,NULL,'person','promoter','jadejuliette@gmail.com','+264814774999','+264814774999','+264814774999',1,NULL,'2014-10-19 23:45:14','SYSTEM',NULL,'2014-10-21 00:08:32'),(12,NULL,NULL,NULL,NULL,NULL,NULL,'AA CUbes International','4578921','company','promoter','jadejuliette@gmail.com','+264814774999','+264814774999','+264814774999',1,NULL,'2014-10-20 22:48:51','SYSTEM',NULL,'2014-10-20 22:48:51');

/*Table structure for table `payments` */

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `amount` decimal(12,0) DEFAULT NULL,
  `phase` varchar(30) NOT NULL COMMENT '[F]irst Instalment , [S]econd Installement , [T]hird Instalment',
  `dateOfPayment` date DEFAULT NULL,
  `applicationId` bigint(20) DEFAULT NULL,
  `fundsId` bigint(20) NOT NULL,
  `remarks` text,
  `createdBy` varchar(24) DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(24) DEFAULT NULL,
  `modifiedOn` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`,`phase`,`fundsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `payments` */

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_role` int(11) NOT NULL,
  `id_resource` int(11) NOT NULL,
  `permission` enum('allow','deny') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`id_role`,`id_resource`,`permission`) values (1,3,1,'allow'),(2,1,2,'allow'),(3,2,3,'deny');

/*Table structure for table `promoters` */

DROP TABLE IF EXISTS `promoters`;

CREATE TABLE `promoters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `identityNumber` varchar(15) DEFAULT NULL,
  `companyRegistrationNumber` varchar(28) DEFAULT NULL,
  `companyName` varchar(256) DEFAULT NULL,
  `promoterType` varchar(128) DEFAULT NULL,
  `emailAddress` varchar(50) DEFAULT NULL,
  `telephoneNumber` varchar(30) DEFAULT NULL,
  `mobileNumber` varchar(30) DEFAULT NULL,
  `faxNumber` varchar(30) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `remarks` text,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(24) DEFAULT NULL,
  `modifiedBy` varchar(24) DEFAULT NULL,
  `modifiedOn` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_identityNumber` (`identityNumber`),
  KEY `idx_companyRegistrationNumber` (`companyRegistrationNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `promoters` */

insert  into `promoters`(`id`,`firstName`,`lastName`,`identityNumber`,`companyRegistrationNumber`,`companyName`,`promoterType`,`emailAddress`,`telephoneNumber`,`mobileNumber`,`faxNumber`,`isActive`,`remarks`,`createdOn`,`createdBy`,`modifiedBy`,`modifiedOn`) values (11,'Silas','Nyundu Shishu','1111155',NULL,NULL,'individual','jadejuliette@gmail.com','+264814774999','+264814774999','+264814774999',1,NULL,'2014-10-15 16:52:19','SYSTEM',NULL,'2014-10-15 17:04:06');

/*Table structure for table `resolutions` */

DROP TABLE IF EXISTS `resolutions`;

CREATE TABLE `resolutions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discussionDate` date DEFAULT NULL,
  `discussionStatus` varchar(120) NOT NULL,
  `corespondenceDate` date DEFAULT NULL,
  `requestType` varchar(120) NOT NULL,
  `consultantId` bigint(20) NOT NULL,
  `paymentId` bigint(20) NOT NULL,
  `fundsId` bigint(20) DEFAULT NULL,
  `extensionId` bigint(20) NOT NULL,
  `implementationId` bigint(20) NOT NULL,
  `applicationId` bigint(20) NOT NULL,
  `createdBy` varchar(24) DEFAULT NULL,
  `createdOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(24) DEFAULT NULL,
  `modifiedOn` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_resolutions_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `resolutions` */

/*Table structure for table `resources` */

DROP TABLE IF EXISTS `resources`;

CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `resources` */

insert  into `resources`(`id`,`resource`) values (1,'*/*/*'),(3,'home/index/menu'),(2,'home/*/*');

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(40) NOT NULL,
  `id_parent` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `roles` */

insert  into `roles`(`id`,`role`,`id_parent`) values (3,'admin',0),(2,'user',1),(1,'guest',0);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `id_role` int(11) NOT NULL,
  `ldap` tinyint(1) NOT NULL DEFAULT '0',
  `firstname` varchar(80) DEFAULT NULL,
  `lastname` varchar(80) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`username`,`password`,`id_role`,`ldap`,`firstname`,`lastname`,`email`) values ('admin','13956c93ab56025e9397ab69957418989ebab847',3,0,'Hafeni','',NULL),('jade','ed64662ef2d8425bc7654e5d7a09fee0788b72ec',2,0,'Jade Juliette','',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
