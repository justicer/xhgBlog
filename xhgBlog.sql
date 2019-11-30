/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.41 : Database - xhgblog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xhgblog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `xhgblog`;

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `headTitle` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `timeDate` varchar(50) NOT NULL,
  `godCount` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Data for the table `article` */

insert  into `article`(`id`,`headTitle`,`content`,`timeDate`,`godCount`) values (1,'2222','','2019-11-02 11:14:45',0),(2,'3333','','2019-11-02 11:16:57',0),(3,'fdasd','','2019-11-02 11:29:39',0),(4,'sdasdaasdfasfafafa','','2019-11-02 11:33:15',0),(5,'啊实打实大','大幅度发顺丰','2019-11-02 14:06:57',0),(6,'放更好地发挥地方','大锅饭郭德纲','2019-11-02 14:08:09',0),(7,'啊实打实大所大所大','碍事法师法师法师法师','2019-11-02 14:12:54',3),(8,'啊实打实大所大所大发嘎嘎','阿法法师法师法刚下车V型从是徐宣传部相持不下','2019-11-02 14:13:40',0),(9,'阿萨德法师法法师法师法师法师法师法师发发','阿萨德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费<span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span><span>德法师打算打打分萨法发顺风车V型从V型从V型从v&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 许星程V型持续性陈V型从V型从是反反复复付付付付付付付付付付付付付付付付付付付付付付付付付所所所所所所所所所所所所所所所多付 水电费水电费水电费</span>','2019-11-02 14:35:42',1),(10,'阿斯蒂芬水电费水电费水电费','<span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰<span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span></span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span><span>法师法师法发顺丰</span></span><span></span>','2019-11-04 11:19:22',0);

/*Table structure for table `articleanddiscuss` */

DROP TABLE IF EXISTS `articleanddiscuss`;

CREATE TABLE `articleanddiscuss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `discuss_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `articleanddiscuss` */

/*Table structure for table `discuss` */

DROP TABLE IF EXISTS `discuss`;

CREATE TABLE `discuss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `timeDate` varchar(50) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `discuss` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` int(10) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `headimg` varchar(50) NOT NULL,
  `timeDate` varchar(50) NOT NULL,
  `signature` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`password`,`sex`,`age`,`address`,`headimg`,`timeDate`,`signature`) values (1,'小恒哥','123','男',26,'河南省,商丘市,虞城县,城关镇,响河商街','123','2019-10-30 11:15:00','个性签名'),(2,'小恒哥','123','男',26,'河南省,商丘市,虞城县,城关镇,响河商街','123','2019-10-30 11:15:00','个性签名');

/*Table structure for table `userandarticle` */

DROP TABLE IF EXISTS `userandarticle`;

CREATE TABLE `userandarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `userandarticle` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
