/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootiv1oo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootiv1oo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootiv1oo`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootiv1oo/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springbootiv1oo/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springbootiv1oo/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `gangweifenlei` */

DROP TABLE IF EXISTS `gangweifenlei`;

CREATE TABLE `gangweifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangweifenlei` varchar(200) DEFAULT NULL COMMENT '岗位分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='岗位分类';

/*Data for the table `gangweifenlei` */

insert  into `gangweifenlei`(`id`,`addtime`,`gangweifenlei`) values (31,'2021-04-12 22:14:10','服务类'),(32,'2021-04-12 22:14:10','岗位分类2'),(33,'2021-04-12 22:14:10','岗位分类3'),(34,'2021-04-12 22:14:10','岗位分类4'),(35,'2021-04-12 22:14:10','岗位分类5'),(36,'2021-04-12 22:14:10','岗位分类6');

/*Table structure for table `gangweishenqing` */

DROP TABLE IF EXISTS `gangweishenqing`;

CREATE TABLE `gangweishenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhaopingangwei` varchar(200) DEFAULT NULL COMMENT '招聘岗位',
  `gangweifenlei` varchar(200) DEFAULT NULL COMMENT '岗位分类',
  `xueliyaoqiu` varchar(200) DEFAULT NULL COMMENT '学历要求',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `jianli` varchar(200) DEFAULT NULL COMMENT '简历',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618237646025 DEFAULT CHARSET=utf8 COMMENT='岗位申请';

/*Data for the table `gangweishenqing` */

insert  into `gangweishenqing`(`id`,`addtime`,`zhaopingangwei`,`gangweifenlei`,`xueliyaoqiu`,`xinzidaiyu`,`qiyezhanghao`,`qiyemingcheng`,`shenqingshijian`,`jianli`,`yonghuming`,`yonghuxingming`,`shoujihaoma`,`sfsh`,`shhf`) values (51,'2021-04-12 22:14:10','招聘岗位1','岗位分类1','学历要求1','薪资待遇1','企业账号1','企业名称1','2021-04-12 22:14:10','','用户名1','用户姓名1','手机号码1','是',''),(52,'2021-04-12 22:14:10','招聘岗位2','岗位分类2','学历要求2','薪资待遇2','企业账号2','企业名称2','2021-04-12 22:14:10','','用户名2','用户姓名2','手机号码2','是',''),(53,'2021-04-12 22:14:10','招聘岗位3','岗位分类3','学历要求3','薪资待遇3','企业账号3','企业名称3','2021-04-12 22:14:10','','用户名3','用户姓名3','手机号码3','是',''),(54,'2021-04-12 22:14:10','招聘岗位4','岗位分类4','学历要求4','薪资待遇4','企业账号4','企业名称4','2021-04-12 22:14:10','','用户名4','用户姓名4','手机号码4','是',''),(55,'2021-04-12 22:14:10','招聘岗位5','岗位分类5','学历要求5','薪资待遇5','企业账号5','企业名称5','2021-04-12 22:14:10','','用户名5','用户姓名5','手机号码5','是',''),(56,'2021-04-12 22:14:10','招聘岗位6','岗位分类6','学历要求6','薪资待遇6','企业账号6','企业名称6','2021-04-12 22:14:10','','用户名6','用户姓名6','手机号码6','是',''),(1618237646024,'2021-04-12 22:27:25','文员','岗位分类1','大专以上','3500-4500','22','江铃汽车','2021-04-12 22:26:31','http://localhost:8080/springbootiv1oo/upload/1618237622971.doc','11','陈强','13823855555','是','请于4月15号上午9点来公司面试');

/*Table structure for table `qiuzhixinxi` */

DROP TABLE IF EXISTS `qiuzhixinxi`;

CREATE TABLE `qiuzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `qiuzhigangwei` varchar(200) DEFAULT NULL COMMENT '求职岗位',
  `gongziyaoqiu` varchar(200) DEFAULT NULL COMMENT '工资要求',
  `jianli` varchar(200) DEFAULT NULL COMMENT '简历',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618237366928 DEFAULT CHARSET=utf8 COMMENT='求职信息';

/*Data for the table `qiuzhixinxi` */

insert  into `qiuzhixinxi`(`id`,`addtime`,`yonghuming`,`yonghuxingming`,`touxiang`,`shoujihaoma`,`qiuzhigangwei`,`gongziyaoqiu`,`jianli`,`fabushijian`) values (71,'2021-04-12 22:14:10','用户名1','用户姓名1','http://localhost:8080/springbootiv1oo/upload/qiuzhixinxi_touxiang1.jpg','手机号码1','求职岗位1','工资要求1','','2021-04-12 22:14:10'),(72,'2021-04-12 22:14:10','用户名2','用户姓名2','http://localhost:8080/springbootiv1oo/upload/qiuzhixinxi_touxiang2.jpg','手机号码2','求职岗位2','工资要求2','','2021-04-12 22:14:10'),(73,'2021-04-12 22:14:10','用户名3','用户姓名3','http://localhost:8080/springbootiv1oo/upload/qiuzhixinxi_touxiang3.jpg','手机号码3','求职岗位3','工资要求3','','2021-04-12 22:14:10'),(74,'2021-04-12 22:14:10','用户名4','用户姓名4','http://localhost:8080/springbootiv1oo/upload/qiuzhixinxi_touxiang4.jpg','手机号码4','求职岗位4','工资要求4','','2021-04-12 22:14:10'),(75,'2021-04-12 22:14:10','用户名5','用户姓名5','http://localhost:8080/springbootiv1oo/upload/qiuzhixinxi_touxiang5.jpg','手机号码5','求职岗位5','工资要求5','','2021-04-12 22:14:10'),(76,'2021-04-12 22:14:10','用户名6','用户姓名6','http://localhost:8080/springbootiv1oo/upload/qiuzhixinxi_touxiang6.jpg','手机号码6','求职岗位6','工资要求6','','2021-04-12 22:14:10'),(1618237366927,'2021-04-12 22:22:46','11','陈强','http://localhost:8080/springbootiv1oo/upload/1618237169374.jpg','13823855555','文员','4000以上','http://localhost:8080/springbootiv1oo/upload/1618237360977.doc','2021-04-12 22:22:41');

/*Table structure for table `qiye` */

DROP TABLE IF EXISTS `qiye`;

CREATE TABLE `qiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) NOT NULL COMMENT '企业账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyezhanghao` (`qiyezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618237437883 DEFAULT CHARSET=utf8 COMMENT='企业';

/*Data for the table `qiye` */

insert  into `qiye`(`id`,`addtime`,`qiyezhanghao`,`mima`,`qiyemingcheng`,`tupian`,`lianxiren`,`lianxidianhua`,`qiyedizhi`) values (21,'2021-04-12 22:14:10','企业1','123456','企业名称1','http://localhost:8080/springbootiv1oo/upload/qiye_tupian1.jpg','联系人1','13823888881','企业地址1'),(22,'2021-04-12 22:14:10','企业2','123456','企业名称2','http://localhost:8080/springbootiv1oo/upload/qiye_tupian2.jpg','联系人2','13823888882','企业地址2'),(23,'2021-04-12 22:14:10','企业3','123456','企业名称3','http://localhost:8080/springbootiv1oo/upload/qiye_tupian3.jpg','联系人3','13823888883','企业地址3'),(24,'2021-04-12 22:14:10','企业4','123456','企业名称4','http://localhost:8080/springbootiv1oo/upload/qiye_tupian4.jpg','联系人4','13823888884','企业地址4'),(25,'2021-04-12 22:14:10','企业5','123456','企业名称5','http://localhost:8080/springbootiv1oo/upload/qiye_tupian5.jpg','联系人5','13823888885','企业地址5'),(26,'2021-04-12 22:14:10','企业6','123456','企业名称6','http://localhost:8080/springbootiv1oo/upload/qiye_tupian6.jpg','联系人6','13823888886','企业地址6'),(1618237437882,'2021-04-12 22:23:57','22','123456','江铃汽车','http://localhost:8080/springbootiv1oo/upload/1618237467544.jpg','巫先生','13823899999','广州路9号');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1618237144568,'11','yonghu','用户','50vucv8qevg1hjhd5zq6q8cwfvpnf575','2021-04-12 22:19:13','2021-04-12 23:32:44'),(2,1618237437882,'22','qiye','企业','0o1auab8aumdy1qdvmi8e3tiftxyk8lm','2021-04-12 22:24:06','2021-04-12 23:28:15'),(3,21,'企业1','qiye','企业','2gtbz5hw1h09gal2k8egq5xft3tmfiet','2021-04-12 22:30:53','2021-04-12 23:30:54'),(4,1,'abo','users','管理员','5ofh8pn9txxp8gfuutv2dul746jlazlg','2021-04-12 22:33:02','2021-04-12 23:33:03');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-12 22:14:10');

/*Table structure for table `yaoqingmianshi` */

DROP TABLE IF EXISTS `yaoqingmianshi`;

CREATE TABLE `yaoqingmianshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `qiuzhigangwei` varchar(200) DEFAULT NULL COMMENT '求职岗位',
  `yaoqingshijian` datetime DEFAULT NULL COMMENT '邀请时间',
  `neirong` varchar(200) DEFAULT NULL COMMENT '内容',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618237935805 DEFAULT CHARSET=utf8 COMMENT='邀请面试';

/*Data for the table `yaoqingmianshi` */

insert  into `yaoqingmianshi`(`id`,`addtime`,`yonghuming`,`yonghuxingming`,`shoujihaoma`,`qiuzhigangwei`,`yaoqingshijian`,`neirong`,`qiyezhanghao`,`qiyemingcheng`,`lianxiren`,`lianxidianhua`,`qiyedizhi`) values (81,'2021-04-12 22:14:10','用户名1','用户姓名1','手机号码1','求职岗位1','2021-04-12 22:14:10','内容1','企业账号1','企业名称1','联系人1','联系电话1','企业地址1'),(82,'2021-04-12 22:14:10','用户名2','用户姓名2','手机号码2','求职岗位2','2021-04-12 22:14:10','内容2','企业账号2','企业名称2','联系人2','联系电话2','企业地址2'),(83,'2021-04-12 22:14:10','用户名3','用户姓名3','手机号码3','求职岗位3','2021-04-12 22:14:10','内容3','企业账号3','企业名称3','联系人3','联系电话3','企业地址3'),(84,'2021-04-12 22:14:10','用户名4','用户姓名4','手机号码4','求职岗位4','2021-04-12 22:14:10','内容4','企业账号4','企业名称4','联系人4','联系电话4','企业地址4'),(85,'2021-04-12 22:14:10','用户名5','用户姓名5','手机号码5','求职岗位5','2021-04-12 22:14:10','内容5','企业账号5','企业名称5','联系人5','联系电话5','企业地址5'),(86,'2021-04-12 22:14:10','用户名6','用户姓名6','手机号码6','求职岗位6','2021-04-12 22:14:10','内容6','企业账号6','企业名称6','联系人6','联系电话6','企业地址6'),(1618237935804,'2021-04-12 22:32:15','11','陈强','13823855555','文员','2021-04-15 09:00:00','邀请你于15号上午来我公司面试','企业1','企业名称1','联系人1','13823888881','企业地址1');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1618237144569 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`youxiang`) values (11,'2021-04-12 22:14:10','用户1','123456','用户姓名1','http://localhost:8080/springbootiv1oo/upload/yonghu_touxiang1.jpg','男','年龄1','13823888881','773890001@qq.com'),(12,'2021-04-12 22:14:10','用户2','123456','用户姓名2','http://localhost:8080/springbootiv1oo/upload/yonghu_touxiang2.jpg','男','年龄2','13823888882','773890002@qq.com'),(13,'2021-04-12 22:14:10','用户3','123456','用户姓名3','http://localhost:8080/springbootiv1oo/upload/yonghu_touxiang3.jpg','男','年龄3','13823888883','773890003@qq.com'),(14,'2021-04-12 22:14:10','用户4','123456','用户姓名4','http://localhost:8080/springbootiv1oo/upload/yonghu_touxiang4.jpg','男','年龄4','13823888884','773890004@qq.com'),(15,'2021-04-12 22:14:10','用户5','123456','用户姓名5','http://localhost:8080/springbootiv1oo/upload/yonghu_touxiang5.jpg','男','年龄5','13823888885','773890005@qq.com'),(16,'2021-04-12 22:14:10','用户6','123456','用户姓名6','http://localhost:8080/springbootiv1oo/upload/yonghu_touxiang6.jpg','男','年龄6','13823888886','773890006@qq.com'),(1618237144568,'2021-04-12 22:19:04','11','123456','陈强','http://localhost:8080/springbootiv1oo/upload/1618237169374.jpg','男','25','13823855555',NULL);

/*Table structure for table `zaixianliuyan` */

DROP TABLE IF EXISTS `zaixianliuyan`;

CREATE TABLE `zaixianliuyan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhaopingangwei` varchar(200) DEFAULT NULL COMMENT '招聘岗位',
  `gangweifenlei` varchar(200) DEFAULT NULL COMMENT '岗位分类',
  `xueliyaoqiu` varchar(200) DEFAULT NULL COMMENT '学历要求',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `liuyanneirong` varchar(200) DEFAULT NULL COMMENT '留言内容',
  `liuyanshijian` datetime DEFAULT NULL COMMENT '留言时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618237665144 DEFAULT CHARSET=utf8 COMMENT='在线留言';

/*Data for the table `zaixianliuyan` */

insert  into `zaixianliuyan`(`id`,`addtime`,`zhaopingangwei`,`gangweifenlei`,`xueliyaoqiu`,`xinzidaiyu`,`qiyezhanghao`,`qiyemingcheng`,`liuyanneirong`,`liuyanshijian`,`yonghuming`,`yonghuxingming`,`shoujihaoma`,`sfsh`,`shhf`) values (61,'2021-04-12 22:14:10','招聘岗位1','岗位分类1','学历要求1','薪资待遇1','企业账号1','企业名称1','留言内容1','2021-04-12 22:14:10','用户名1','用户姓名1','手机号码1','是',''),(62,'2021-04-12 22:14:10','招聘岗位2','岗位分类2','学历要求2','薪资待遇2','企业账号2','企业名称2','留言内容2','2021-04-12 22:14:10','用户名2','用户姓名2','手机号码2','是',''),(63,'2021-04-12 22:14:10','招聘岗位3','岗位分类3','学历要求3','薪资待遇3','企业账号3','企业名称3','留言内容3','2021-04-12 22:14:10','用户名3','用户姓名3','手机号码3','是',''),(64,'2021-04-12 22:14:10','招聘岗位4','岗位分类4','学历要求4','薪资待遇4','企业账号4','企业名称4','留言内容4','2021-04-12 22:14:10','用户名4','用户姓名4','手机号码4','是',''),(65,'2021-04-12 22:14:10','招聘岗位5','岗位分类5','学历要求5','薪资待遇5','企业账号5','企业名称5','留言内容5','2021-04-12 22:14:10','用户名5','用户姓名5','手机号码5','是',''),(66,'2021-04-12 22:14:10','招聘岗位6','岗位分类6','学历要求6','薪资待遇6','企业账号6','企业名称6','留言内容6','2021-04-12 22:14:10','用户名6','用户姓名6','手机号码6','是',''),(1618237665143,'2021-04-12 22:27:44','文员','岗位分类1','大专以上','3500-4500','22','江铃汽车','sdfsfsdsgsdgsg','2021-04-12 22:27:36','11','陈强','13823855555','是','sdfsgsdgsgg');

/*Table structure for table `zhaopinxinxi` */

DROP TABLE IF EXISTS `zhaopinxinxi`;

CREATE TABLE `zhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhaopingangwei` varchar(200) DEFAULT NULL COMMENT '招聘岗位',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gangweifenlei` varchar(200) DEFAULT NULL COMMENT '岗位分类',
  `zhaopinrenshu` varchar(200) DEFAULT NULL COMMENT '招聘人数',
  `xueliyaoqiu` varchar(200) DEFAULT NULL COMMENT '学历要求',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `gongzuoshijian` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `gongzuoneirong` longtext COMMENT '工作内容',
  `gangweixiangqing` longtext COMMENT '岗位详情',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618237542572 DEFAULT CHARSET=utf8 COMMENT='招聘信息';

/*Data for the table `zhaopinxinxi` */

insert  into `zhaopinxinxi`(`id`,`addtime`,`zhaopingangwei`,`tupian`,`gangweifenlei`,`zhaopinrenshu`,`xueliyaoqiu`,`xinzidaiyu`,`gongzuoshijian`,`gongzuoneirong`,`gangweixiangqing`,`qiyezhanghao`,`qiyemingcheng`,`lianxiren`,`lianxidianhua`,`qiyedizhi`) values (41,'2021-04-12 22:14:10','招聘岗位1','http://localhost:8080/springbootiv1oo/upload/zhaopinxinxi_tupian1.jpg','岗位分类1','招聘人数1','学历要求1','薪资待遇1','工作时间1','工作内容1','岗位详情1','企业账号1','企业名称1','联系人1','联系电话1','企业地址1'),(42,'2021-04-12 22:14:10','招聘岗位2','http://localhost:8080/springbootiv1oo/upload/zhaopinxinxi_tupian2.jpg','岗位分类2','招聘人数2','学历要求2','薪资待遇2','工作时间2','工作内容2','岗位详情2','企业账号2','企业名称2','联系人2','联系电话2','企业地址2'),(43,'2021-04-12 22:14:10','招聘岗位3','http://localhost:8080/springbootiv1oo/upload/zhaopinxinxi_tupian3.jpg','岗位分类3','招聘人数3','学历要求3','薪资待遇3','工作时间3','工作内容3','岗位详情3','企业账号3','企业名称3','联系人3','联系电话3','企业地址3'),(44,'2021-04-12 22:14:10','招聘岗位4','http://localhost:8080/springbootiv1oo/upload/zhaopinxinxi_tupian4.jpg','岗位分类4','招聘人数4','学历要求4','薪资待遇4','工作时间4','工作内容4','岗位详情4','企业账号4','企业名称4','联系人4','联系电话4','企业地址4'),(45,'2021-04-12 22:14:10','招聘岗位5','http://localhost:8080/springbootiv1oo/upload/zhaopinxinxi_tupian5.jpg','岗位分类5','招聘人数5','学历要求5','薪资待遇5','工作时间5','工作内容5','岗位详情5','企业账号5','企业名称5','联系人5','联系电话5','企业地址5'),(46,'2021-04-12 22:14:10','招聘岗位6','http://localhost:8080/springbootiv1oo/upload/zhaopinxinxi_tupian6.jpg','岗位分类6','招聘人数6','学历要求6','薪资待遇6','工作时间6','工作内容6','岗位详情6','企业账号6','企业名称6','联系人6','联系电话6','企业地址6'),(1618237542571,'2021-04-12 22:25:42','文员','http://localhost:8080/springbootiv1oo/upload/1618237508290.jpg','岗位分类1','2','大专以上','3500-4500','8小时','sdfsfsdfsdfsf','<p>sdfsdgsdgsdfsdfsdgsdgsdgff</p>','22','江铃汽车','巫先生','13823899999','广州路9号');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
