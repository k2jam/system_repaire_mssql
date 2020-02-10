/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.4.11-MariaDB : Database - system_repair
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`system_repair` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `system_repair`;

/*Table structure for table `brand` */

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `brand` */

insert  into `brand`(`id`,`name`,`status`) values 
(1,'DELL','Y'),
(2,'NO Brand','Y'),
(3,'HP','Y');

/*Table structure for table `calendar` */

DROP TABLE IF EXISTS `calendar`;

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `inventory` varchar(50) DEFAULT NULL,
  `start` datetime(3) DEFAULT NULL,
  `end` datetime(3) DEFAULT NULL,
  `link_url` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `calendar` */

insert  into `calendar`(`id`,`title`,`inventory`,`start`,`end`,`link_url`,`color`,`type`) values 
(1,'บำรุงรักษาตามแผน','1','2020-02-06 00:00:00.000','2020-02-06 00:00:00.000',NULL,'#DC143C','PM'),
(2,'บำรุงรักษาตามแผน','1','2020-02-19 00:00:00.000','2020-02-19 00:00:00.000',NULL,'#00FFFF','PM'),
(3,'บำรุงรักษาตามแผน','1','2020-02-02 00:00:00.000','2020-02-02 00:00:00.000',NULL,'#5F9EA0','PM');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `created_date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`id`,`name`,`status`,`updated_at`,`created_date`) values 
(1,'conputer','Y',NULL,NULL),
(2,'notebook','Y',NULL,NULL),
(3,'Software','Y',NULL,NULL);

/*Table structure for table `inventory` */

DROP TABLE IF EXISTS `inventory`;

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `owner_name` varchar(200) DEFAULT NULL,
  `serial_number` varchar(200) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `section` varchar(200) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `inven_status` varchar(50) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  `expire_date` varchar(50) DEFAULT NULL,
  `os_name` varchar(50) DEFAULT NULL,
  `cpu_model` varchar(50) DEFAULT NULL,
  `ram_model` varchar(50) DEFAULT NULL,
  `hdd_model` varchar(50) DEFAULT NULL,
  `monitor_model` varchar(50) DEFAULT NULL,
  `pm_day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `inventory` */

insert  into `inventory`(`id`,`name`,`owner_name`,`serial_number`,`category`,`section`,`type`,`brand`,`photo`,`inven_status`,`updated_at`,`created_at`,`expire_date`,`os_name`,`cpu_model`,`ram_model`,`hdd_model`,`monitor_model`,`pm_day`) values 
(1,'COM-IT-001','IT','','2','1','1','1','1581316608_26.png','1',NULL,NULL,'','win10','5.3','4GB','500GB','19\"',NULL);

/*Table structure for table `osname` */

DROP TABLE IF EXISTS `osname`;

CREATE TABLE `osname` (
  `os_id` varchar(50) NOT NULL,
  `os_name` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`os_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `osname` */

insert  into `osname`(`os_id`,`os_name`,`status`) values 
('nonos','-','Y'),
('win10','Windows 10','Y'),
('win2003','Windows Server 2003','Y'),
('win7','Windows 7','Y');

/*Table structure for table `permission` */

DROP TABLE IF EXISTS `permission`;

CREATE TABLE `permission` (
  `per_id` int(11) NOT NULL AUTO_INCREMENT,
  `per_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`per_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `permission` */

insert  into `permission`(`per_id`,`per_name`) values 
(1,'Administrator'),
(2,'Staff');

/*Table structure for table `preventive` */

DROP TABLE IF EXISTS `preventive`;

CREATE TABLE `preventive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `preventive` */

insert  into `preventive`(`id`,`name`,`status`) values 
(1,'งานซ่อมประจำวัน','Y'),
(2,'บำรุงรักษาตามแผน','Y'),
(3,'งานซ่อมประจำวัน','Y');

/*Table structure for table `problem` */

DROP TABLE IF EXISTS `problem`;

CREATE TABLE `problem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `cate_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `problem` */

insert  into `problem`(`id`,`name`,`status`,`cate_id`) values 
(1,'เครื่องเปิดไม่ติด','Y','1'),
(2,'ใช้งาน Internet ไม่ได้',NULL,NULL);

/*Table structure for table `repair` */

DROP TABLE IF EXISTS `repair`;

CREATE TABLE `repair` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  `problem` varchar(200) DEFAULT NULL,
  `repairer` varchar(200) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  `user_name` varchar(200) DEFAULT NULL,
  `doc_date` date DEFAULT NULL,
  `doc_status` varchar(50) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `repair` */

insert  into `repair`(`id`,`type`,`inventory_id`,`problem`,`repairer`,`title`,`description`,`user_id`,`updated_at`,`created_at`,`user_name`,`doc_date`,`doc_status`,`photo`) values 
(1,NULL,1,'1','lชาย',NULL,'ดกเดกเ',NULL,'2020-02-10 13:43:50','2020-02-10 13:43:50',NULL,'2020-02-10','3',NULL);

/*Table structure for table `repair_detail` */

DROP TABLE IF EXISTS `repair_detail`;

CREATE TABLE `repair_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repair_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `user_name` varchar(200) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  `per_name` varchar(200) DEFAULT NULL,
  `amount` int(11) DEFAULT 0,
  `breakdown` int(11) DEFAULT 0,
  `inventory_id` varchar(50) DEFAULT NULL,
  `doc_date` date DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `repair_detail` */

insert  into `repair_detail`(`id`,`repair_id`,`status_id`,`note`,`user_name`,`updated_at`,`created_at`,`per_name`,`amount`,`breakdown`,`inventory_id`,`doc_date`,`problem_id`) values 
(1,1,3,NULL,NULL,'2020-02-10 13:43:50','2020-02-10 13:43:50',NULL,0,0,'1','2020-02-10',1);

/*Table structure for table `section` */

DROP TABLE IF EXISTS `section`;

CREATE TABLE `section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `section` */

insert  into `section`(`id`,`name`,`status`,`updated_at`,`created_at`) values 
(1,'IT','Y',NULL,NULL),
(2,'MK','Y',NULL,NULL),
(3,'EG','Y',NULL,NULL);

/*Table structure for table `status` */

DROP TABLE IF EXISTS `status`;

CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `status` */

insert  into `status`(`id`,`name`) values 
(1,'ปกติ'),
(2,'จำหน่าย'),
(3,'รอซ่อม'),
(4,'หมดอายุ'),
(5,'อยู่ระหว่างซ่อม'),
(6,'ซ่อมเสร็จ'),
(7,'เข้า Internetไม่ได้');

/*Table structure for table `system` */

DROP TABLE IF EXISTS `system`;

CREATE TABLE `system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `system` */

insert  into `system`(`id`,`title`,`name`,`updated_at`,`created_at`) values 
(1,'IT CARE','IT CARE','2019-12-26 19:05:49','2019-12-26 19:05:49'),
(2,'IT CARE','IT CARE','2019-12-26 19:05:49','2019-12-26 19:05:49');

/*Table structure for table `type` */

DROP TABLE IF EXISTS `type`;

CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `type` */

insert  into `type`(`id`,`name`,`status`,`updated_at`,`created_at`) values 
(1,'CPU i7','Y',NULL,NULL),
(2,'CPU i3','Y',NULL,NULL),
(3,'CPU i5','Y',NULL,NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `birthdate` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `profile` varchar(50) DEFAULT NULL,
  `permission` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`first_name`,`last_name`,`gender`,`birthdate`,`email`,`phone_number`,`profile`,`permission`,`status`,`updated_at`,`created_at`) values 
(1,'admin','$2y$10$QlDBfJ1.weyu9xKbIm26NuTf.6wF2wzND19MApb1AqjWoXG0xGviW','เอกชัย','พิจารณ์','M','1978-06-06','akachai1526@hotmail.com','0898918431','1579776113_26.jpg','1','Y','Dec 27 2019  4:28AM','Dec 27 2019  4:28AM');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
