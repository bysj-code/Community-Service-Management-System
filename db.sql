/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoqufuwuguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoqufuwuguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoqufuwuguanlixitong`;

/*Table structure for table `anbao` */

DROP TABLE IF EXISTS `anbao`;

CREATE TABLE `anbao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `anbao_name` varchar(200) DEFAULT NULL COMMENT '安保姓名 Search111 ',
  `anbao_phone` varchar(200) DEFAULT NULL COMMENT '安保手机号 Search111 ',
  `anbao_id_number` varchar(200) DEFAULT NULL COMMENT '安保身份证号 Search111 ',
  `anbao_photo` varchar(200) DEFAULT NULL COMMENT '安保照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='安保';

/*Data for the table `anbao` */

insert  into `anbao`(`id`,`anbao_name`,`anbao_phone`,`anbao_id_number`,`anbao_photo`,`sex_types`,`create_time`) values (1,'安保姓名1','17703786901','410224199010102001','upload/yuangong1.jpg',1,'2023-02-24 20:29:18'),(2,'安保姓名2','17703786902','410224199010102002','upload/yuangong2.jpg',2,'2023-02-24 20:29:18'),(3,'安保姓名3','17703786903','410224199010102003','upload/yuangong3.jpg',1,'2023-02-24 20:29:18'),(4,'安保姓名4','17703786904','410224199010102004','upload/yuangong2.jpg',2,'2023-02-24 20:29:18'),(5,'安保姓名5','17703786905','410224199010102005','upload/yuangong3.jpg',2,'2023-02-24 20:29:18');

/*Table structure for table `anbao_fenpei` */

DROP TABLE IF EXISTS `anbao_fenpei`;

CREATE TABLE `anbao_fenpei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `anbao_fenpei_name` varchar(200) DEFAULT NULL COMMENT '安排名称  Search111 ',
  `anbao_id` int(11) DEFAULT NULL COMMENT '安保',
  `anbao_fenpei` text COMMENT '安排内容',
  `anbao_fenpei_types` int(11) DEFAULT NULL COMMENT '安排类型',
  `anpai_time` timestamp NULL DEFAULT NULL COMMENT '安排时间',
  `zhxing_time` timestamp NULL DEFAULT NULL COMMENT '执行时间',
  `anbao_fenpei_xiangqing` text COMMENT '安排详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='安保分配';

/*Data for the table `anbao_fenpei` */

insert  into `anbao_fenpei`(`id`,`anbao_fenpei_name`,`anbao_id`,`anbao_fenpei`,`anbao_fenpei_types`,`anpai_time`,`zhxing_time`,`anbao_fenpei_xiangqing`,`create_time`) values (1,'安排名称1',1,'安排内容1',1,'2023-02-24 20:29:18','2023-02-24 20:29:18','安排详情1','2023-02-24 20:29:18'),(2,'安排名称2',2,'安排内容2',1,'2023-02-24 20:29:18','2023-02-24 20:29:18','安排详情2','2023-02-24 20:29:18'),(3,'安排名称3',3,'安排内容3',1,'2023-02-24 20:29:18','2023-02-24 20:29:18','安排详情3','2023-02-24 20:29:18'),(4,'安排名称4',4,'安排内容4',2,'2023-02-24 20:29:18','2023-02-24 20:29:18','安排详情4','2023-02-24 20:29:18'),(5,'安排名称5',5,'安排内容5',2,'2023-02-24 20:29:18','2023-02-24 20:29:18','安排详情5','2023-02-24 20:29:18'),(7,'15',5,'465',2,'2023-02-25 17:20:32','2023-02-25 17:20:31','59','2023-02-25 17:20:35');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='客服聊天';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'你好',NULL,NULL,NULL,2,1,'2023-02-25 17:11:50'),(2,1,NULL,NULL,'还要','2023-02-25 17:15:11',NULL,2,'2023-02-25 17:15:12');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-02-24 20:28:46'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-02-24 20:28:46'),(3,'fangwu_types','房屋类型',1,'房屋类型1',NULL,NULL,'2023-02-24 20:28:46'),(4,'fangwu_types','房屋类型',2,'房屋类型2',NULL,NULL,'2023-02-24 20:28:46'),(5,'loudong_types','楼栋',2,'1号',NULL,NULL,'2023-02-24 20:28:46'),(6,'loudong_types','楼栋',2,'2号',NULL,NULL,'2023-02-24 20:28:46'),(7,'anbao_fenpei_types','安排类型',1,'安排类型1',NULL,NULL,'2023-02-24 20:28:46'),(8,'anbao_fenpei_types','安排类型',2,'安排类型2',NULL,NULL,'2023-02-24 20:28:46'),(9,'fankiu_types','反馈类型',1,'反馈类型1',NULL,NULL,'2023-02-24 20:28:46'),(10,'fankiu_types','反馈类型',2,'反馈类型2',NULL,NULL,'2023-02-24 20:28:46'),(11,'fankiu_zhuangtai_types','反馈状态',1,'已解决',NULL,NULL,'2023-02-24 20:28:46'),(12,'fankiu_zhuangtai_types','反馈状态',2,'未解决',NULL,NULL,'2023-02-24 20:28:46'),(13,'chat_types','数据类型',1,'问题',NULL,NULL,'2023-02-24 20:28:46'),(14,'chat_types','数据类型',2,'回复',NULL,NULL,'2023-02-24 20:28:46'),(15,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-02-24 20:28:46'),(16,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-02-24 20:28:46'),(17,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-02-24 20:28:46'),(18,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-02-24 20:28:46'),(19,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-02-24 20:28:46'),(20,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-02-24 20:28:46');

/*Table structure for table `fangwu` */

DROP TABLE IF EXISTS `fangwu`;

CREATE TABLE `fangwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangwu_name` varchar(200) DEFAULT NULL COMMENT '房屋名称 Search111 ',
  `fangwu_address` varchar(200) DEFAULT NULL COMMENT '房屋地址 Search111 ',
  `fangwu_photo` varchar(200) DEFAULT NULL COMMENT '房屋照片',
  `loudong_types` int(11) DEFAULT NULL COMMENT '楼栋  Search111',
  `fangwu_types` int(11) DEFAULT NULL COMMENT '房屋类型  Search111',
  `fangwu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `fangwu_content` text COMMENT '房屋详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='房屋';

/*Data for the table `fangwu` */

insert  into `fangwu`(`id`,`yonghu_id`,`fangwu_name`,`fangwu_address`,`fangwu_photo`,`loudong_types`,`fangwu_types`,`fangwu_delete`,`fangwu_content`,`create_time`) values (1,2,'房屋名称1','房屋地址1','upload/fangwu1.jpg',2,1,1,'房屋详情1','2023-02-24 20:29:18'),(2,2,'房屋名称2','房屋地址2','upload/fangwu2.jpg',2,1,1,'房屋详情2','2023-02-24 20:29:18'),(3,3,'房屋名称3','房屋地址3','upload/fangwu3.jpg',2,2,1,'房屋详情3','2023-02-24 20:29:18'),(4,1,'房屋名称4','房屋地址4','upload/fangwu4.jpg',2,2,1,'房屋详情4','2023-02-24 20:29:18'),(5,2,'房屋名称5','房屋地址5','upload/fangwu5.jpg',2,2,1,'房屋详情5','2023-02-24 20:29:18');

/*Table structure for table `fankiu` */

DROP TABLE IF EXISTS `fankiu`;

CREATE TABLE `fankiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fankiu_name` varchar(200) DEFAULT NULL COMMENT '反馈名称 Search111',
  `fankiu_photo` varchar(200) DEFAULT NULL COMMENT '反馈图片',
  `fankiu_types` int(11) NOT NULL COMMENT '反馈类型 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请反馈时间',
  `fankiu_zhuangtai_types` int(11) NOT NULL COMMENT '反馈状态 Search111',
  `fankiu_content` text COMMENT '反馈详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='反馈';

/*Data for the table `fankiu` */

insert  into `fankiu`(`id`,`yonghu_id`,`fankiu_name`,`fankiu_photo`,`fankiu_types`,`insert_time`,`fankiu_zhuangtai_types`,`fankiu_content`,`create_time`) values (1,2,'反馈名称1','upload/yuangong2.jpg',1,'2023-02-24 20:29:18',1,'反馈详情1','2023-02-24 20:29:18'),(2,2,'反馈名称2','upload/yuangong3.jpg',1,'2023-02-24 20:29:18',1,'反馈详情2','2023-02-24 20:29:18'),(3,2,'反馈名称3','upload/yuangong2.jpg',1,'2023-02-24 20:29:18',2,'反馈详情3','2023-02-24 20:29:18'),(4,1,'反馈名称4','upload/yuangong2.jpg',1,'2023-02-24 20:29:18',1,'反馈详情4','2023-02-24 20:29:18'),(5,3,'反馈名称5','upload/yuangong3.jpg',1,'2023-02-24 20:29:18',2,'反馈详情5','2023-02-24 20:29:18'),(22,1,'问','upload/1677308025339.jpg',2,'2023-02-25 15:10:29',1,'委屈问','2023-02-25 15:10:29'),(23,1,'丫丫','upload/1677316293697.jpg',2,'2023-02-25 17:15:57',1,'丫丫','2023-02-25 17:15:57');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,'发布内容1',87,1,'2023-02-24 20:29:18','2023-02-24 20:29:18','2023-02-24 20:29:18'),(2,'帖子标题2',3,NULL,'发布内容2',382,1,'2023-02-24 20:29:18','2023-02-24 20:29:18','2023-02-24 20:29:18'),(3,'帖子标题3',1,NULL,'发布内容3',353,1,'2023-02-24 20:29:18','2023-02-24 20:29:18','2023-02-24 20:29:18'),(4,'帖子标题4',1,NULL,'发布内容4',10,1,'2023-02-24 20:29:18','2023-02-24 20:29:18','2023-02-24 20:29:18');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-02-24 20:29:18','公告详情1','2023-02-24 20:29:18'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-02-24 20:29:18','公告详情2','2023-02-24 20:29:18'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-02-24 20:29:18','公告详情3','2023-02-24 20:29:18'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-02-24 20:29:18','公告详情4','2023-02-24 20:29:18'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-02-24 20:29:18','公告详情5','2023-02-24 20:29:18');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','住户','hc3j2uuulc8egamf0tt64gmnhxyw9oyt','2023-02-24 20:38:49','2023-02-25 18:09:43'),(2,1,'admin','users','管理员','q7vpf6kass3ea6rudo6p965ouo6vtbf7','2023-02-25 12:02:40','2023-02-25 18:39:19'),(3,1,'a1','yuangong','员工','a0pgpmp3e14tfis9i507jps2u7v15x8l','2023-02-25 14:10:51','2023-02-25 18:17:06');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-02-24 20:28:46');

/*Table structure for table `weixui` */

DROP TABLE IF EXISTS `weixui`;

CREATE TABLE `weixui` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fankiu_id` int(11) DEFAULT NULL COMMENT '反馈',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '维修人员',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '指派时间',
  `weixui_text` text COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='反馈处理';

/*Data for the table `weixui` */

insert  into `weixui`(`id`,`fankiu_id`,`yuangong_id`,`insert_time`,`weixui_text`,`create_time`) values (1,1,3,'2023-02-24 20:29:18','备注1','2023-02-24 20:29:18'),(2,2,1,'2023-02-24 20:29:18','备注2','2023-02-24 20:29:18'),(3,3,2,'2023-02-24 20:29:18','备注3','2023-02-24 20:29:18'),(4,4,3,'2023-02-24 20:29:18','备注4','2023-02-24 20:29:18'),(5,5,3,'2023-02-24 20:29:18','备注5','2023-02-24 20:29:18'),(9,22,1,'2023-02-25 15:10:29','是','2023-02-25 15:10:29'),(10,23,1,'2023-02-25 17:15:57','尽快','2023-02-25 17:15:57');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '住户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '住户手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '住户身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '住户照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='住户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`create_time`) values (1,'a1','123456','住户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'2023-02-24 20:29:18'),(2,'a2','123456','住户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2023-02-24 20:29:18'),(3,'a3','123456','住户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'2023-02-24 20:29:18');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号 Search111 ',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号 Search111 ',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`create_time`) values (1,'a1','123456','员工姓名1','17703786901','410224199010102001','upload/yuangong1.jpg',2,'2023-02-24 20:29:18'),(2,'a2','123456','员工姓名2','17703786902','410224199010102002','upload/yuangong2.jpg',2,'2023-02-24 20:29:18'),(3,'a3','123456','员工姓名3','17703786903','410224199010102003','upload/yuangong3.jpg',2,'2023-02-24 20:29:18');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
