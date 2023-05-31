/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.16-log : Database - weekly_report
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`weekly_report` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `weekly_report`;

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `weekly_report` */

DROP TABLE IF EXISTS `weekly_report`;

CREATE TABLE `weekly_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL COMMENT '起始日期',
  `end_date` date NOT NULL COMMENT '终止日期',
  `submit_time` datetime NOT NULL COMMENT '提交时间',
  `submitter` varchar(50) NOT NULL COMMENT '提交人',
  `content` text COMMENT '周报内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COMMENT='周报记录表';

/*Table structure for table `work_content` */

DROP TABLE IF EXISTS `work_content`;

CREATE TABLE `work_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '工作内容ID',
  `date` date NOT NULL COMMENT '日期',
  `action_type` varchar(20) NOT NULL COMMENT '行为类型',
  `content` text NOT NULL COMMENT '工作内容',
  `weekly_report_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COMMENT='工作内容表';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
