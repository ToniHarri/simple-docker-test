use test;

DROP TABLE IF EXISTS `dockerSample`;

CREATE TABLE `dockerSample` (
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


LOCK TABLES `dockerSample` WRITE;
/*!40000 ALTER TABLE `dockerSample` DISABLE KEYS */;
INSERT INTO `dockerSample` VALUES ('George'),('Sam'),('Kathy');
/*!40000 ALTER TABLE `dockerSample` ENABLE KEYS */;
UNLOCK TABLES;

