

-- 长期任务表
DROP TABLE IF EXISTS `future_task_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `future_task_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `privilege` int(11) DEFAULT NULL,
  `default_time` int(11) DEFAULT NULL,
  `task_name` varchar(200) DEFAULT NULL,
  `step` varchar(1500) DEFAULT NULL,
  `discard` int(11) DEFAULT NULL,
  `future_id` int(11) DEFAULT NULL,
  `plan_date` datetime DEFAULT NULL,
  `done` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


-- 停用url链接管理
update config set state=1 where type='url';

-- 停用菜单栏中的任务安排菜单
update config set state=1 where id=186;
