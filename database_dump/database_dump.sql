-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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

-- Dump completed on 2015-11-15 16:19:12
