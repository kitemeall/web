-- MySQL dump 10.13  Distrib 5.6.27, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	5.6.27-0ubuntu1

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
-- Table structure for table `Comment`
--

DROP TABLE IF EXISTS `Comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `message` longtext,
  `userName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comment`
--

LOCK TABLES `Comment` WRITE;
/*!40000 ALTER TABLE `Comment` DISABLE KEYS */;
INSERT INTO `Comment` VALUES (44,'2015-11-23 11:38:40','','tomcat'),(45,'2015-11-23 11:39:58','коаываываываыва','tomcat'),(46,'2015-11-23 18:42:14','комментария','tomcat'),(47,'2015-11-23 18:50:32','коммнте','tomcat'),(48,'2015-11-23 18:52:07','fdff','tomcat'),(49,'2015-11-23 18:52:16','dd','tomcat'),(50,'2015-11-23 18:53:38','ddd','tomcat'),(51,'2015-11-23 18:53:47','dd','tomcat'),(52,'2015-11-23 19:09:02','ffsdfsdf','tomcat'),(53,'2015-11-23 19:09:07','Ð¿ÑÑÑÑÐ¿Ð¿','tomcat');
/*!40000 ALTER TABLE `Comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORDERS`
--

DROP TABLE IF EXISTS `ORDERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ORDERS` (
  `ORDER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  `DELIVERY` bit(1) DEFAULT NULL,
  `USER_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDERS`
--

LOCK TABLES `ORDERS` WRITE;
/*!40000 ALTER TABLE `ORDERS` DISABLE KEYS */;
INSERT INTO `ORDERS` VALUES (18,'Освобождения 25','2015-11-22 18:14:23','','tomcat'),(19,'Ветеранов 130','2015-11-22 18:15:45','\0','tomcat'),(20,'Ветеранов 130','2015-11-22 18:39:05','\0','tomcat'),(21,'Ветеранов 130','2015-11-22 18:57:30','\0','tomcat'),(22,' Невский 21','2015-11-22 19:03:38','\0','tomcat'),(23,'Казансая 25','2015-11-22 19:05:14','\0','tomcat'),(24,' Невский 21','2015-11-22 19:07:14','\0','tomcat'),(25,' Невский 21','2015-11-22 19:25:45','\0','tomcat'),(26,'fdsafsadfasdfsdaf','2015-11-23 08:44:33','','tomcat'),(27,'Казансая 25','2015-11-23 11:37:29','\0','tomcat'),(28,'Ветеранов 130','2015-11-23 12:05:36','\0','tomcat'),(29,'Ветеранов 130','2015-11-23 17:49:38','\0','tomcat'),(30,'лэти','2015-11-23 18:41:50','','tomcat');
/*!40000 ALTER TABLE `ORDERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order_cartItemList`
--

DROP TABLE IF EXISTS `Order_cartItemList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Order_cartItemList` (
  `Order_ORDER_ID` int(11) NOT NULL,
  `AMOUNT` int(11) DEFAULT NULL,
  `GOODS_ID` int(11) DEFAULT NULL,
  KEY `FK_f0umpb40xmotwnamm7h1edbel` (`Order_ORDER_ID`),
  CONSTRAINT `FK_f0umpb40xmotwnamm7h1edbel` FOREIGN KEY (`Order_ORDER_ID`) REFERENCES `ORDERS` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_cartItemList`
--

LOCK TABLES `Order_cartItemList` WRITE;
/*!40000 ALTER TABLE `Order_cartItemList` DISABLE KEYS */;
INSERT INTO `Order_cartItemList` VALUES (18,3,1),(18,2,2),(19,1,1),(19,1,2),(20,3,1),(20,1,2),(21,2,1),(22,8,1),(22,6,2),(23,1,1),(24,1,2),(25,3,2),(26,1,1),(27,1,1),(28,2,1),(29,2,1),(30,1,1),(30,1,2);
/*!40000 ALTER TABLE `Order_cartItemList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descriptions`
--

DROP TABLE IF EXISTS `descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descriptions` (
  `goods_id` int(11) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `description` text CHARACTER SET utf8,
  PRIMARY KEY (`goods_id`,`lang`),
  KEY `descriptions_goods_id_idx` (`goods_id`),
  KEY `descriptions_lang_idx` (`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descriptions`
--

LOCK TABLES `descriptions` WRITE;
/*!40000 ALTER TABLE `descriptions` DISABLE KEYS */;
INSERT INTO `descriptions` VALUES (1,'en','universal navigator\nblack and white display 2.66 \"\nresolution 64x100 pixels.\nSoftware: Garmin\nwaterproof housing\nPowered by AA batteries\n'),(1,'ru','универсальный навигатор\nчерно-белый дисплей 2.66\"\nразрешение 64x100 пикс.\nПО: Garmin\nводонепроницаемый корпус\nпитание от батареек AA\n'),(1,'ua','універсальний навігатор\nчорно-білий дисплей 2.66 \"\nдозвіл 64x100 пікс.\nПО: Garmin\nводонепроникний корпус\nживлення від батарейок AA\n'),(2,'en','Navigator \"premium\" class with a screen 6.0 \"built-in DVR and function of warning the driver about the speed limits, radar on the road, the camera control strips of public transport.'),(2,'ru','Навигатор «премиум» класса с экраном 6.0”, встроенным видеорегистратором и функцией предупреждения водителя о скоростных ограничениях, радарах на дороге, камерах контроля полосы общественного транспорта.'),(2,'ua','Навігатор «преміум» класу з екраном 6.0 \", вбудованим відеореєстратором і функцією попередження водія про швидкісні обмеження, радарах на дорозі, камерах контролю смуги громадського транспорту.');
/*!40000 ALTER TABLE `descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `name` char(200) CHARACTER SET utf8 NOT NULL,
  `price` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `categ` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'Garmin 12',500,'img/garmin12.jpg','tourist'),(2,'Garmin nuviCam',400,'img/GarminnuviCam.jpg','auto');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `properties` (
  `property` char(200) CHARACTER SET utf8 NOT NULL,
  `value` char(200) CHARACTER SET utf8 NOT NULL,
  `goods_id` int(11) NOT NULL,
  `lang` varchar(2) NOT NULL,
  PRIMARY KEY (`property`,`goods_id`,`lang`),
  KEY `properties_goods_id_idx` (`goods_id`),
  KEY `properties_lang_idx` (`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES ('Diagonal display','6.1',2,'en'),('Display size','5,4 \"x 2.8\" (13,6 x 7,2 cm) diagonal, 6.1 \"(15.4 cm)',2,'en'),('Resolution','800 x 480',2,'en'),('The accuracy of coordinates','15m',1,'en'),('The accuracy of speed','0.05 m/s',1,'en'),('The number of receiver channels','12',1,'en'),('Update Rate','1 time / s',1,'en'),('Warm','15',1,'en'),('Weight','319.2 g',2,'en'),('Вага','319,2 г',2,'ua'),('Вес',' 319,2 г',2,'ru'),('Діагональ дисплея','6.1',2,'ua'),('Диагональ дисплея',' 6.1',2,'ru'),('Кількість каналів приймача','12',1,'ua'),('Количество каналов приемника','12',1,'ru'),('Размеры дисплея','5,4\" x 2,8\" (13,6 x 7,2 см); диагональ 6,1\" (15,4 см)',2,'ru'),('Разрешение дисплея :',' 800 x 480 пикселей',2,'ru'),('Роздільна здатність дисплея:','800 x 480 пікселів',2,'ua'),('Розміри дисплея','5,4 \"x 2,8\" (13,6 x 7,2 см); діагональ 6,1 \"(15,4 см)',2,'ua'),('Теплий старт','15 з',1,'ua'),('Теплый старт','15 с',1,'ru'),('Точність визначення координат','15м',1,'ua'),('Точність визначення швидкості','0.05 м / с',1,'ua'),('Точность определения координат','15м',1,'ru'),('Точность определения скорости','0.05 м/с',1,'ru'),('Частота обновления','1 раз/с',1,'ru'),('Частота оновлення','1 раз / с',1,'ua');
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `author` char(200) CHARACTER SET utf8 NOT NULL,
  `review` text CHARACTER SET utf8 NOT NULL,
  `goods_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_goods_id_idx` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES ('Вася','Хорошо!!',1,1),('Петя','Отлично',1,2),('Гриша','Супер',1,3),('Sam','sample review',2,4);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-29 11:24:22
