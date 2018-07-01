
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`selfmanager` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `selfmanager`;

/*Table structure for table `big_thing` */

DROP TABLE IF EXISTS `big_thing`;

CREATE TABLE `big_thing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thing_date` date DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `feeling` varchar(2000) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Table structure for table `bill` */

DROP TABLE IF EXISTS `bill`;

CREATE TABLE `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_date` datetime DEFAULT NULL,
  `cost_type` int(11) DEFAULT NULL,
  `cost_money` decimal(10,2) DEFAULT NULL,
  `pay_type` int(11) DEFAULT NULL,
  `pay_way` int(11) DEFAULT NULL,
  `use_to` varchar(300) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=836 DEFAULT CHARSET=utf8;

/*Table structure for table `booklist` */

DROP TABLE IF EXISTS `booklist`;

CREATE TABLE `booklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  `book_name` varchar(200) DEFAULT NULL,
  `author` varchar(300) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `reading_thinking` varchar(1500) DEFAULT NULL,
  `discard` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;

/*Table structure for table `booklist_config` */

DROP TABLE IF EXISTS `booklist_config`;

CREATE TABLE `booklist_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `booklist_id` int(11) DEFAULT NULL,
  `config_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1139 DEFAULT CHARSET=utf8;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `type_name` varchar(100) DEFAULT NULL,
  `group_id` varchar(50) DEFAULT NULL,
  `group_name` varchar(100) DEFAULT NULL,
  `property_id` varchar(50) DEFAULT NULL,
  `property_name` varchar(100) DEFAULT NULL,
  `property_value` varchar(300) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;

/*Table structure for table `diary` */

DROP TABLE IF EXISTS `diary`;

CREATE TABLE `diary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `diary_date` datetime DEFAULT NULL,
  `weather` varchar(50) DEFAULT NULL,
  `place` varchar(200) DEFAULT NULL,
  `mood` varchar(50) DEFAULT NULL,
  `content` text,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1073 DEFAULT CHARSET=utf8;

/*Table structure for table `future_letter` */

DROP TABLE IF EXISTS `future_letter`;

CREATE TABLE `future_letter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `write_date` datetime DEFAULT NULL,
  `read_date` datetime DEFAULT NULL,
  `content` text,
  `after_read_feeling` varchar(1500) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Table structure for table `future_task` */

DROP TABLE IF EXISTS `future_task`;

CREATE TABLE `future_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(1500) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `begin_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Table structure for table `long_term_task` */

DROP TABLE IF EXISTS `long_term_task`;

CREATE TABLE `long_term_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan` varchar(500) DEFAULT NULL,
  `finish` varchar(500) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Table structure for table `people_history` */

DROP TABLE IF EXISTS `people_history`;

CREATE TABLE `people_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `content` text,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Table structure for table `person` */

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `home` varchar(200) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

/*Table structure for table `person_word` */

DROP TABLE IF EXISTS `person_word`;

CREATE TABLE `person_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `write_date` datetime DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `word` varchar(300) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8;

/*Table structure for table `tags` */

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `type_name` varchar(100) DEFAULT NULL,
  `tag_name` varchar(100) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `task` */

DROP TABLE IF EXISTS `task`;

CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `privilege` int(11) DEFAULT NULL,
  `default_time` int(11) DEFAULT NULL,
  `task_name` varchar(200) DEFAULT NULL,
  `step` varchar(1500) DEFAULT NULL,
  `discard` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Table structure for table `task_plan` */

DROP TABLE IF EXISTS `task_plan`;

CREATE TABLE `task_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `do_date` datetime DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `done` int(11) DEFAULT NULL,
  `discard` int(11) DEFAULT NULL,
  `remark` varchar(1500) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=683 DEFAULT CHARSET=utf8;

/*Table structure for table `week_task` */

DROP TABLE IF EXISTS `week_task`;

CREATE TABLE `week_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `p` varchar(1500) DEFAULT NULL,
  `d` varchar(1500) DEFAULT NULL,
  `c` varchar(1500) DEFAULT NULL,
  `a` varchar(1500) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Table structure for table `word` */

DROP TABLE IF EXISTS `word`;

CREATE TABLE `word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(500) DEFAULT NULL,
  `from_who` varchar(30) DEFAULT NULL,
  `like_percent` int(11) DEFAULT NULL,
  `discard` int(11) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- MySQL dump 10.13  Distrib 5.6.12, for Win64 (x86_64)
--
-- Host: localhost    Database: selfmanager
-- ------------------------------------------------------
-- Server version   5.6.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'url','链接管理','booklist','图书','title','标题','图书管理',0,NULL,NULL),(2,'url','链接管理','booklist','图书','addUrl','添加图书','booklist/addBooklist',0,NULL,NULL),(3,'url','链接管理','booklist','图书','modifyUrl','修改图书','booklist/modifyBooklist',0,NULL,NULL),(4,'url','链接管理','booklist','图书','queryUrl','查询图书','booklist/queryBooklist',0,NULL,NULL),(5,'url','链接管理','booklist','图书','listUrl','图书列表','booklist/listBooklist',0,NULL,NULL),(6,'url','链接管理','booklist','图书','goAddUrl','前往添加图书','bookModule/addBooklist',0,NULL,'2018-06-22 16:04:23'),(7,'url','链接管理','booklist','图书','goModifyUrl','前往修改图书','bookModule/modifyBooklist',0,NULL,NULL),(8,'url','链接管理','booklist','图书','goViewUrl','前往查询图书','bookModule/viewBooklist',0,NULL,NULL),(9,'url','链接管理','booklist','图书','goListUrl','前往图书列表','bookModule/listBooklist',0,NULL,NULL),(10,'menu','菜单链接管理','b_personal','个人','listUrl','图书管理','bookModule/listBooklist',0,NULL,'2018-06-22 18:21:59'),(11,'url','链接管理','config','配置','title','标题','配置管理',0,NULL,NULL),(12,'url','链接管理','config','配置','addUrl','添加配置','config/addConfig',0,NULL,'2018-06-22 16:00:15'),(13,'url','链接管理','config','配置','modifyUrl','修改配置','config/modifyConfig',0,NULL,NULL),(14,'url','链接管理','config','配置','queryUrl','查询配置','config/queryConfig',0,NULL,NULL),(15,'url','链接管理','config','配置','listUrl','配置列表','config/listConfig',0,NULL,NULL),(16,'url','链接管理','config','配置','goAddUrl','前往添加配置','configModule/addConfig',0,NULL,'2018-06-22 16:00:16'),(17,'url','链接管理','config','配置','goModifyUrl','前往修改配置','configModule/modifyConfig',0,NULL,NULL),(18,'url','链接管理','config','配置','goViewUrl','前往查询配置','configModule/viewConfig',0,NULL,NULL),(19,'url','链接管理','config','配置','goListUrl','前往配置列表','configModule/listConfig',0,NULL,NULL),(20,'menu','菜单链接管理','config','配置','listUrl','配置管理','configModule/listConfig',0,NULL,'2018-06-22 16:17:10'),(21,'bookTag','图书标签','bookTag','图书标签','np_discard','非专业废弃图书','废弃(非)x',0,NULL,'2018-06-24 01:21:16'),(22,'bookTag','图书标签','nonProfesstional','非专业图书标签','np_normal','非专业一般图书','一般非专业书',0,NULL,'2018-06-24 01:14:30'),(23,'bookTag','图书标签','nonProfesstional','非专业图书标签','np_ok','还行非专业书','还行非专业书',0,NULL,'2018-06-24 01:14:26'),(24,'bookTag','图书标签','nonProfesstional','非专业图书标签','np_like','重复看非专业书','重复看非专业书',0,NULL,'2018-06-24 01:14:36'),(25,'bookTag','图书标签','professional','专业图书标签','p_importantReference','重要专业参考图书','重要专业参考图书',0,NULL,'2018-06-24 01:33:14'),(26,'bookTag','图书标签','professional','专业图书标签','p_reference','参考专业书','参考专业图书',0,NULL,'2018-06-24 00:46:43'),(27,'bookTag','图书标签','professional','专业图书标签','p_normal','一般专业图书','一般专业图书',0,NULL,'2018-06-24 11:26:21'),(28,'bookTag','图书标签','readState','阅读状态标签','rs_read','已看图书','已看',0,NULL,'2018-06-24 01:25:37'),(29,'bookTag','图书标签','readState','阅读状态标签','rs_waitRead','待看图书','待看',0,NULL,'2018-06-24 01:25:56'),(30,'bookTag','图书标签','bookState','书本状态标签','bs_waitBuy','待买图书','待买(状态)',0,NULL,'2018-06-24 01:16:36'),(31,'bookTag','图书标签','professional','专业图书标签','p_repeat','重复看专业书','重复看专业书',0,NULL,'2018-06-24 00:45:50'),(32,'url','链接管理','task','任务','title','标题','任务',0,NULL,NULL),(33,'url','链接管理','task','任务','addUrl','添加任务','task/addTask',0,NULL,NULL),(34,'url','链接管理','task','任务','modifyUrl','修改任务','task/modifyTask',0,NULL,NULL),(35,'url','链接管理','task','任务','queryUrl','查询任务','task/queryTask',0,NULL,NULL),(36,'url','链接管理','task','任务','listUrl','配置任务','task/listTask',0,NULL,NULL),(37,'url','链接管理','task','任务','goAddUrl','前往添加任务','diaryModule/addTask',0,NULL,NULL),(38,'url','链接管理','task','任务','goModifyUrl','前往修改任务','diaryModule/modifyTask',0,NULL,NULL),(39,'url','链接管理','task','任务','goViewUrl','前往查询任务','diaryModule/viewTask',0,NULL,NULL),(40,'url','链接管理','task','任务','goListUrl','前往配置任务','diaryModule/listTask',0,NULL,NULL),(41,'menu','菜单链接管理','a_task','日常','e_listUrl','任务管理','diaryModule/listTask',0,NULL,'2018-06-23 09:23:01'),(42,'url','链接管理','taskPlan','任务安排','title','标题','任务安排',0,NULL,NULL),(43,'url','链接管理','taskPlan','任务安排','addUrl','添加任务安排','taskPlan/addTaskPlan',0,NULL,NULL),(44,'url','链接管理','taskPlan','任务安排','modifyUrl','修改任务安排','taskPlan/modifyTaskPlan',0,NULL,NULL),(45,'url','链接管理','taskPlan','任务安排','queryUrl','查询任务安排','taskPlan/queryTaskPlan',0,NULL,NULL),(46,'url','链接管理','taskPlan','任务安排','listUrl','配置任务安排','taskPlan/listTaskPlan',0,NULL,NULL),(47,'url','链接管理','taskPlan','任务安排','goAddUrl','前往添加任务安排','diaryModule/addTaskPlan',0,NULL,NULL),(48,'url','链接管理','taskPlan','任务安排','goModifyUrl','前往修改任务安排','diaryModule/modifyTaskPlan',0,NULL,NULL),(49,'url','链接管理','taskPlan','任务安排','goViewUrl','前往查询任务安排','diaryModule/viewTaskPlan',0,NULL,NULL),(50,'url','链接管理','taskPlan','任务安排','goListUrl','前往任务安排列表','diaryModule/listTaskPlan',0,NULL,NULL),(51,'menu','菜单链接管理','a_task','日常','c_listUrl','天任务','diaryModule/listTaskPlan',0,NULL,'2018-06-22 18:15:35'),(52,'url','链接管理','weekTask','周任务管理','title','标题','周任务',0,NULL,NULL),(53,'url','链接管理','weekTask','周任务管理','addUrl','添加周任务','weekTask/addWeekTask',0,NULL,NULL),(54,'url','链接管理','weekTask','周任务管理','modifyUrl','修改周任务','weekTask/modifyWeekTask',0,NULL,NULL),(55,'url','链接管理','weekTask','周任务管理','queryUrl','查询周任务','weekTask/queryWeekTask',0,NULL,NULL),(56,'url','链接管理','weekTask','周任务管理','listUrl','周任务安排','weekTask/listWeekTask',0,NULL,NULL),(57,'url','链接管理','weekTask','周任务管理','goAddUrl','前往添加周任务','diaryModule/addWeekTask',0,NULL,NULL),(58,'url','链接管理','weekTask','周任务管理','goModifyUrl','前往修改周任务','diaryModule/modifyWeekTask',0,NULL,NULL),(59,'url','链接管理','weekTask','周任务管理','goViewUrl','前往查询周任务','diaryModule/viewWeekTask',0,NULL,NULL),(60,'url','链接管理','weekTask','周任务管理','goListUrl','前往周任务列表','diaryModule/listWeekTask',0,NULL,NULL),(61,'menu','菜单链接管理','a_task','日常','d_listUrl','周任务管理','diaryModule/listWeekTask',0,NULL,'2018-06-23 09:22:53'),(72,'url','链接管理','futureTask','长期任务管理','title','标题','长期任务',0,NULL,NULL),(73,'url','链接管理','futureTask','长期任务管理','addUrl','添加长期任务管理','futureTask/addFutureTask',0,NULL,NULL),(74,'url','链接管理','futureTask','长期任务管理','modifyUrl','修改长期任务管理','futureTask/modifyFutureTask',0,NULL,NULL),(75,'url','链接管理','futureTask','长期任务管理','queryUrl','查询长期任务管理','futureTask/queryFutureTask',0,NULL,NULL),(76,'url','链接管理','futureTask','长期任务管理','listUrl','长期任务管理安排','futureTask/listFutureTask',0,NULL,NULL),(77,'url','链接管理','futureTask','长期任务管理','goAddUrl','前往添加长期任务管理','diaryModule/addFutureTask',0,NULL,NULL),(78,'url','链接管理','futureTask','长期任务管理','goModifyUrl','前往修改长期任务管理','diaryModule/modifyFutureTask',0,NULL,NULL),(79,'url','链接管理','futureTask','长期任务管理','goViewUrl','前往查询长期任务管理','diaryModule/viewFutureTask',0,NULL,NULL),(80,'url','链接管理','futureTask','长期任务管理','goListUrl','前往长期任务管理列表','diaryModule/listFutureTask',0,NULL,NULL),(81,'menu','菜单链接管理','a_task','日常','g_listUrl','长期任务管理','diaryModule/listFutureTask',0,NULL,'2018-06-23 09:23:21'),(82,'url','链接管理','diary','日记管理','title','标题','日记',0,NULL,NULL),(83,'url','链接管理','diary','日记管理','addUrl','添加日记','diary/addDiary',0,NULL,NULL),(84,'url','链接管理','diary','日记管理','modifyUrl','修改日记','diary/modifyDiary',0,NULL,NULL),(85,'url','链接管理','diary','日记管理','queryUrl','查询日记','diary/queryDiary',0,NULL,NULL),(86,'url','链接管理','diary','日记管理','listUrl','日记安排','diary/listDiary',0,NULL,NULL),(87,'url','链接管理','diary','日记管理','goAddUrl','前往添加日记','diaryModule/addDiary',0,NULL,NULL),(88,'url','链接管理','diary','日记管理','goModifyUrl','前往修改日记','diaryModule/modifyDiary',0,NULL,NULL),(89,'url','链接管理','diary','日记管理','goViewUrl','前往查询日记','diaryModule/viewDiary',0,NULL,NULL),(90,'url','链接管理','diary','日记管理','goListUrl','前往日记列表','diaryModule/listDiary',0,NULL,NULL),(91,'menu','菜单链接管理','a_task','日常','a_listUrl','日记管理','diaryModule/listDiary',0,NULL,'2018-06-22 18:14:45'),(92,'url','链接管理','bill','账单管理','title','标题','账单',0,NULL,NULL),(93,'url','链接管理','bill','账单管理','addUrl','添加账单','bill/addBill',0,NULL,NULL),(94,'url','链接管理','bill','账单管理','modifyUrl','修改账单','bill/modifyBill',0,NULL,NULL),(95,'url','链接管理','bill','账单管理','queryUrl','查询账单','bill/queryBill',0,NULL,NULL),(96,'url','链接管理','bill','账单管理','listUrl','账单安排','bill/listBill',0,NULL,NULL),(97,'url','链接管理','bill','账单管理','goAddUrl','前往添加账单','diaryModule/addBill',0,NULL,NULL),(98,'url','链接管理','bill','账单管理','goModifyUrl','前往修改账单','diaryModule/modifyBill',0,NULL,NULL),(99,'url','链接管理','bill','账单管理','goViewUrl','前往查询账单','diaryModule/viewBill',0,NULL,NULL),(100,'url','链接管理','bill','账单管理','goListUrl','前往账单列表','diaryModule/listBill',0,NULL,NULL),(101,'menu','菜单链接管理','a_task','日常','b_listUrl','账单管理','diaryModule/listBill',0,NULL,'2018-06-22 18:14:59'),(102,'billTag','账单标签','billTag','账单标签','eat','食','食',0,NULL,NULL),(103,'billTag','账单标签','billTag','账单标签','cloth','衣','衣',0,NULL,NULL),(104,'billTag','账单标签','billTag','账单标签','settle','住','住',0,NULL,NULL),(105,'billTag','账单标签','billTag','账单标签','walk','行','行',0,NULL,NULL),(106,'billTag','账单标签','billTag','账单标签','study','学习','学习',0,NULL,NULL),(107,'billTag','账单标签','billTag','账单标签','mobileBill','话费','话费',0,NULL,NULL),(108,'billTag','账单标签','billTag','账单标签','repayment','还款','还款',0,NULL,NULL),(109,'billTag','账单标签','billTag','账单标签','medicalTreatment','医疗','医疗',0,NULL,NULL),(120,'url','链接管理','bigThing','大事件管理','title','标题','大事件',0,NULL,NULL),(121,'url','链接管理','bigThing','大事件管理','addUrl','添加大事件','bigThing/addBigThing',0,NULL,NULL),(122,'url','链接管理','bigThing','大事件管理','modifyUrl','修改大事件','bigThing/modifyBigThing',0,NULL,NULL),(123,'url','链接管理','bigThing','大事件管理','queryUrl','查询大事件','bigThing/queryBigThing',0,NULL,NULL),(124,'url','链接管理','bigThing','大事件管理','listUrl','大事件安排','bigThing/listBigThing',0,NULL,NULL),(125,'url','链接管理','bigThing','大事件管理','goAddUrl','前往添加大事件','personalModule/addBigThing',0,NULL,NULL),(126,'url','链接管理','bigThing','大事件管理','goModifyUrl','前往修改大事件','personalModule/modifyBigThing',0,NULL,NULL),(127,'url','链接管理','bigThing','大事件管理','goViewUrl','前往查询大事件','personalModule/viewBigThing',0,NULL,NULL),(128,'url','链接管理','bigThing','大事件管理','goListUrl','前往大事件列表','personalModule/listBigThing',0,NULL,NULL),(129,'menu','菜单链接管理','b_personal','个人','listUrl','大事件管理','personalModule/listBigThing',0,NULL,'2018-06-22 18:20:56'),(130,'url','链接管理','futureLetter','未来的信管理','title','标题','未来的信',0,NULL,NULL),(131,'url','链接管理','futureLetter','未来的信管理','addUrl','添加未来的信','futureLetter/addFutureLetter',0,NULL,NULL),(132,'url','链接管理','futureLetter','未来的信管理','modifyUrl','修改未来的信','futureLetter/modifyFutureLetter',0,NULL,NULL),(133,'url','链接管理','futureLetter','未来的信管理','queryUrl','查询未来的信','futureLetter/queryFutureLetter',0,NULL,NULL),(134,'url','链接管理','futureLetter','未来的信管理','listUrl','未来的信安排','futureLetter/listFutureLetter',0,NULL,NULL),(135,'url','链接管理','futureLetter','未来的信管理','goAddUrl','前往添加未来的信','personalModule/addFutureLetter',0,NULL,NULL),(136,'url','链接管理','futureLetter','未来的信管理','goModifyUrl','前往修改未来的信','personalModule/modifyFutureLetter',0,NULL,NULL),(137,'url','链接管理','futureLetter','未来的信管理','goViewUrl','前往查询未来的信','personalModule/viewFutureLetter',0,NULL,NULL),(138,'url','链接管理','futureLetter','未来的信管理','goListUrl','前往未来的信列表','personalModule/listFutureLetter',0,NULL,NULL),(139,'menu','菜单链接管理','b_personal','个人','listUrl','未来的信管理','personalModule/listFutureLetter',0,NULL,'2018-06-22 18:21:00'),(140,'url','链接管理','person','认识的人管理','title','标题','认识的人',0,NULL,NULL),(141,'url','链接管理','person','认识的人管理','addUrl','添加认识的人','person/addPerson',0,NULL,NULL),(142,'url','链接管理','person','认识的人管理','modifyUrl','修改认识的人','person/modifyPerson',0,NULL,NULL),(143,'url','链接管理','person','认识的人管理','queryUrl','查询认识的人','person/queryPerson',0,NULL,NULL),(144,'url','链接管理','person','认识的人管理','listUrl','认识的人安排','person/listPerson',0,NULL,NULL),(145,'url','链接管理','person','认识的人管理','goAddUrl','前往添加认识的人','personalModule/addPerson',0,NULL,NULL),(146,'url','链接管理','person','认识的人管理','goModifyUrl','前往修改认识的人','personalModule/modifyPerson',0,NULL,NULL),(147,'url','链接管理','person','认识的人管理','goViewUrl','前往查询认识的人','personalModule/viewPerson',0,NULL,NULL),(148,'url','链接管理','person','认识的人管理','goListUrl','前往认识的人列表','personalModule/listPerson',0,NULL,NULL),(149,'menu','菜单链接管理','b_personal','个人','listUrl','认识的人管理','personalModule/listPerson',0,NULL,'2018-06-22 18:21:05'),(150,'url','链接管理','word','喜欢的话管理','title','标题','喜欢的话',0,NULL,NULL),(151,'url','链接管理','word','喜欢的话管理','addUrl','添加喜欢的话','word/addWord',0,NULL,NULL),(152,'url','链接管理','word','喜欢的话管理','modifyUrl','修改喜欢的话','word/modifyWord',0,NULL,NULL),(153,'url','链接管理','word','喜欢的话管理','queryUrl','查询喜欢的话','word/queryWord',0,NULL,NULL),(154,'url','链接管理','word','喜欢的话管理','listUrl','喜欢的话安排','word/listWord',0,NULL,NULL),(155,'url','链接管理','word','喜欢的话管理','goAddUrl','前往添加喜欢的话','personalModule/addWord',0,NULL,NULL),(156,'url','链接管理','word','喜欢的话管理','goModifyUrl','前往修改喜欢的话','personalModule/modifyWord',0,NULL,NULL),(157,'url','链接管理','word','喜欢的话管理','goViewUrl','前往查询喜欢的话','personalModule/viewWord',0,NULL,NULL),(158,'url','链接管理','word','喜欢的话管理','goListUrl','前往喜欢的话列表','personalModule/listWord',0,NULL,NULL),(159,'menu','菜单链接管理','b_personal','个人','listUrl','喜欢的话管理','personalModule/listWord',0,NULL,'2018-06-24 21:33:37'),(160,'url','链接管理','peopleHistory','人物小传管理','title','标题','人物小传',0,NULL,NULL),(161,'url','链接管理','peopleHistory','人物小传管理','addUrl','添加人物小传','peopleHistory/addPeopleHistory',0,NULL,NULL),(162,'url','链接管理','peopleHistory','人物小传管理','modifyUrl','修改人物小传','peopleHistory/modifyPeopleHistory',0,NULL,NULL),(163,'url','链接管理','peopleHistory','人物小传管理','queryUrl','查询人物小传','peopleHistory/queryPeopleHistory',0,NULL,NULL),(164,'url','链接管理','peopleHistory','人物小传管理','listUrl','人物小传安排','peopleHistory/listPeopleHistory',0,NULL,NULL),(165,'url','链接管理','peopleHistory','人物小传管理','goAddUrl','前往添加人物小传','personalModule/addPeopleHistory',0,NULL,NULL),(166,'url','链接管理','peopleHistory','人物小传管理','goModifyUrl','前往修改人物小传','personalModule/modifyPeopleHistory',0,NULL,NULL),(167,'url','链接管理','peopleHistory','人物小传管理','goViewUrl','前往查询人物小传','personalModule/viewPeopleHistory',0,NULL,NULL),(168,'url','链接管理','peopleHistory','人物小传管理','goListUrl','前往人物小传列表','personalModule/listPeopleHistory',0,NULL,NULL),(169,'menu','菜单链接管理','peopleHistory','人物小传管理','listUrl','前往人物小传列表','personalModule/listPeopleHistory',1,NULL,'2018-06-22 16:13:59'),(170,'url','链接管理','personWord','密语管理','title','标题','密语',0,NULL,NULL),(171,'url','链接管理','personWord','密语管理','addUrl','添加密语','personWord/addPersonWord',0,NULL,NULL),(172,'url','链接管理','personWord','密语管理','modifyUrl','修改密语','personWord/modifyPersonWord',0,NULL,NULL),(173,'url','链接管理','personWord','密语管理','queryUrl','查询密语','personWord/queryPersonWord',0,NULL,NULL),(174,'url','链接管理','personWord','密语管理','listUrl','密语安排','personWord/listPersonWord',0,NULL,NULL),(175,'url','链接管理','personWord','密语管理','goAddUrl','前往添加密语','personalModule/addPersonWord',0,NULL,NULL),(176,'url','链接管理','personWord','密语管理','goModifyUrl','前往修改密语','personalModule/modifyPersonWord',0,NULL,NULL),(177,'url','链接管理','personWord','密语管理','goViewUrl','前往查询密语','personalModule/viewPersonWord',0,NULL,NULL),(178,'url','链接管理','personWord','密语管理','goListUrl','前往密语列表','personalModule/listPersonWord',0,NULL,NULL),(179,'menu','菜单链接管理','personWord','密语管理','listUrl','前往密语列表','personalModule/listPersonWord',1,NULL,'2018-06-22 16:14:57'),(180,'bookTag','图书标签管理','year','年份标签','year2018','年份2018','2018',0,'2018-06-22 14:58:45','2018-06-23 23:20:00'),(181,'bookTag','图书标签管理','year','年份标签','year2017','年份2017','2017',0,'2018-06-22 14:58:53','2018-06-24 00:28:29'),(182,'bookTag','图书标签管理','year','年份标签','year2016','年份2016','2016',0,'2018-06-22 14:59:02','2018-06-24 00:29:22'),(183,'bookTag','图书标签管理','year','年份标签','year2015','年份2015','2015',0,'2018-06-22 14:59:08','2018-06-24 00:29:10'),(184,'bookTag','图书标签管理','year','年份标签','year2014','年份2014','2014',0,'2018-06-22 14:59:13','2018-06-24 00:29:38'),(185,'bookTag','图书标签管理','year','年份标签','year2013','年份2013','2013',0,'2018-06-22 14:59:19','2018-06-24 00:30:27'),(186,'menu','菜单链接管理','a_task','日常','f_listUrl','任务安排','diaryModule/addTaskPlan',0,NULL,'2018-06-23 09:23:08'),(187,'bookTag','图书标签管理','bookState','书本状态标签','bs_noBuy','没有图书，可能图书馆什么地方看的','无书(状态)',0,'2018-06-22 19:21:40','2018-06-24 01:15:53'),(188,'bookTag','图书标签管理','year','年份标签','year2011','年份2011','2011',0,'2018-06-22 19:37:31','2018-06-24 00:28:35'),(189,'bookTag','图书标签管理','year','年份标签','year2012','年份2012','2012',0,'2018-06-22 19:37:35','2018-06-24 00:30:13'),(190,'bookTag','图书标签管理','bookState','书本状态标签','bs_buy','已经有这本书了','有书(状态)',0,'2018-06-22 20:16:32','2018-06-24 01:15:24'),(191,'bookTag','图书标签','readState','阅读状态标签','rs_noRead','不准备阅读的图书','不看',0,'2018-06-23 22:37:39','2018-06-24 01:18:20'),(192,'bookTag','图书标签','bookTag','图书标签','non-professional','非专业','非专业书籍x',0,'2018-06-23 22:37:55','2018-06-24 01:21:09');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-26 12:21:15










