/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.7.28-log : Database - xdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`xdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `xdb`;

/*Table structure for table `x_menu` */

DROP TABLE IF EXISTS `x_menu`;

CREATE TABLE `x_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `component` varchar(100) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `redirect` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_leaf` varchar(1) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `x_menu` */

insert  into `x_menu`(`menu_id`,`component`,`path`,`redirect`,`name`,`title`,`icon`,`parent_id`,`is_leaf`,`hidden`) values (1,'Layout','/sys','/sys/user','sysManage','系统管理','userManage',0,'N',0),(2,'sys/user','user',NULL,'userList','用户列表','user',1,'Y',0),(3,'sys/role','role',NULL,'roleList','角色列表','roleManage',1,'Y',0),(4,'Layout','/test','/test/test1','test','功能测试','form',0,'N',0),(5,'test/test1','test1','','test1','测试点一','form',4,'Y',0),(6,'test/test2','test2','','test2','测试点二','form',4,'Y',0),(7,'test/test3','test3','','test3','测试点三','form',4,'Y',0);

/*Table structure for table `x_role` */

DROP TABLE IF EXISTS `x_role`;

CREATE TABLE `x_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL,
  `role_desc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `x_role` */

insert  into `x_role`(`role_id`,`role_name`,`role_desc`) values (1,'admin','超级管理员'),(2,'hr','人事管理员'),(3,'normal','普通员工');

/*Table structure for table `x_role_menu` */

DROP TABLE IF EXISTS `x_role_menu`;

CREATE TABLE `x_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

/*Data for the table `x_role_menu` */

insert  into `x_role_menu`(`id`,`role_id`,`menu_id`) values (11,1,1),(12,1,2),(13,1,3),(14,1,4),(15,1,5),(16,1,6),(17,1,7),(18,3,4),(19,3,5),(20,3,6),(21,3,7);

/*Table structure for table `x_user` */

DROP TABLE IF EXISTS `x_user`;

CREATE TABLE `x_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `x_user` */

insert  into `x_user`(`id`,`username`,`password`,`email`,`phone`,`status`,`avatar`,`deleted`) values (1,'admin','$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC','super@aliyun.com','18677778888',1,'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif',0),(2,'zhangsan','$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC','zhangsan@gmail.com','13966667777',1,'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif',0),(3,'lisi','$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC','lisi@gmail.com','13966667778',1,'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif',0),(4,'wangwu','$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC','wangwu@gmail.com','13966667772',1,'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif',0),(5,'zhaoer','$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC','zhaoer@gmail.com','13966667776',1,'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif',0),(6,'songliu','$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC','songliu@gmail.com','13966667771',1,'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif',0),(7,'aaa','$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC','aaa@aliyun.com','18899998888',1,NULL,1),(8,'bbb','666666','bbb@qq.com','188888889999',1,NULL,1),(9,'ccc','$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC','1111@ali.com','11111111',1,NULL,0),(10,'xxx222','$2a$10$dQ1n957Q3qP2D0lHBSqdEeRHym9kAauXgxnIqAv9KDhnsJOC0Kooi','1122@qq.com','111111122',0,NULL,1),(11,'yyy','$2a$10$hX03AhH9Yt//V.crSdqGP.nhj3EQi.cMwIEglT9Eqd.5KDkIGaCQC','1111111@ali.com','1111111',1,NULL,0),(12,'xxx6','$2a$10$LTtlLYIPtDelUtP01FhcSe9JZkNuJmeXf66YMJyZee.04Q1yzNoj.','xxx6@aliyun.com','18677778886',1,NULL,1),(13,'test','$2a$10$jWewP9UNr.6AhrP2ofza1OaTDBq7nBL23C9zHnwBXh8Q/9Vd2zNSC','test@ali.com','11111111111',1,NULL,0),(14,'xxx','$2a$10$QpmItVrXHa5YWTfH25yCEuTu69VFjJbcxBxMYQTWb8qVNBSp0laxq','xxx@ali.com','1111111111111',1,NULL,1);

/*Table structure for table `x_user_role` */

DROP TABLE IF EXISTS `x_user_role`;

CREATE TABLE `x_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `x_user_role` */

insert  into `x_user_role`(`id`,`user_id`,`role_id`) values (1,1,1),(2,1,3),(6,3,2),(7,4,2),(8,4,3),(11,2,3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
