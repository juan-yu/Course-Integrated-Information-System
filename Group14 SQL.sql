-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: uoclab.nccu.edu.tw    Database: 109308028
-- ------------------------------------------------------
-- Server version	5.7.37-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Comment` (
  `Comment_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_ID` varchar(9) NOT NULL,
  `Course_ID` varchar(12) NOT NULL,
  `Content` varchar(100) NOT NULL,
  `Cold` int(1) NOT NULL,
  `Sweet` int(1) NOT NULL,
  `Is_Deleted` char(1) NOT NULL DEFAULT 'N',
  `Violate` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Comment_ID`),
  KEY `User_ID` (`User_ID`),
  KEY `Comment_ibfk_2` (`Course_ID`),
  CONSTRAINT `Comment_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `User` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Comment_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `Course` (`Course_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comment`
--

LOCK TABLES `Comment` WRITE;
/*!40000 ALTER TABLE `Comment` DISABLE KEYS */;
INSERT INTO `Comment` VALUES (1,'109308028','110306049011','有料的一堂課',2,4,'Y',0),(2,'109308028','110306050011','越學越有心得 謝謝老師',1,4,'N',0),(3,'109308028','110306008001','作業好多 但是非常實用',1,3,'N',0),(4,'109202007','109306005001','The course is good.',4,3,'N',0),(5,'109202007','109306047001','poor',4,2,'N',0),(8,'109207344','110306050011','期中考很難 可是老師人很好 加上助教不厭其煩的解說 被當掉我都甘願！',1,3,'N',0),(10,'109207344','109306005001','I\'m enjoy myself a lot in this course!',5,5,'N',0),(12,'109207344','109306049011','Heartwarming teacher, he gave everyone A+ :D',4,5,'N',0),(14,'109207344','110306049011','You will regret having this course.',1,1,'N',0),(15,'109703005','109306013011','老師十分用心 收穫滿滿',1,4,'N',0),(16,'109703005','109306005001','好課推推',5,5,'N',0),(19,'109301095','110306008001','非常感謝教授的教導',4,3,'N',0),(20,'108702001','110306008001','老師上的很棒 但是我真的資質不夠',1,2,'N',0),(21,'109306095','110306008001','漂亮的ppt',2,1,'Y',0),(22,'109306096','110306008001','助教非常厲害',1,1,'N',0),(23,'109306097','110306008001','交易管理太難了啦救命',2,1,'Y',0),(24,'107502023','110306008001','充實的不得了',2,3,'N',0),(25,'107303098','110306008001','綜院113太舒服了 很容易睡著',3,2,'N',0),(26,'109207344','109306007001','更瞭解網路與通訊原理了，謝謝老師！',4,4,'N',0),(27,'109307028','110306008001','好讚',2,3,'Y',0),(28,'109308028','110306008001','',1,1,'Y',0),(29,'109202007','109306005001','測試分享',1,1,'Y',0),(32,'109207344','109306049011','偏涼~',2,4,'N',0),(43,'109207344','110306007011','系統分析很難 但是收穫很多 推推',4,4,'N',0),(45,'109207344','110306008001','資料庫管理是收穫很多的一堂課！雖然平時忙著讀考試跟做專案都睡不飽，但是老師跟助教人很Nice，所以推推',5,3,'N',0),(46,'109207344','110306008001','「資料庫管理」是收穫很多的一堂課！不過選修前要三思，平常會睡不飽QQ。 但老師跟助教人都很Nice！總之推推',2,3,'N',0),(47,'109308028','110306005011','超Ez啦 ',5,4,'Y',0),(49,'110308056','110306005001','',5,2,'Y',0),(50,'109308028','109306049011','又甜又涼 010是好老師！',5,4,'N',0);
/*!40000 ALTER TABLE `Comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comment_Like`
--

DROP TABLE IF EXISTS `Comment_Like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Comment_Like` (
  `User_ID` varchar(9) NOT NULL,
  `Comment _ID` int(11) NOT NULL AUTO_INCREMENT,
  `Likes` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Comment _ID`,`User_ID`),
  KEY `Comment_Like_ibfk_1` (`User_ID`),
  CONSTRAINT `Comment_Like_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `User` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Comment_Like_ibfk_2` FOREIGN KEY (`Comment _ID`) REFERENCES `Comment` (`Comment_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comment_Like`
--

LOCK TABLES `Comment_Like` WRITE;
/*!40000 ALTER TABLE `Comment_Like` DISABLE KEYS */;
INSERT INTO `Comment_Like` VALUES ('109308028',1,40),('109308028',2,22),('109308028',3,18),('109202007',4,26),('109202007',5,303),('109207344',8,102),('109207344',10,26),('109207344',12,36),('109207344',14,121),('109301095',19,1);
/*!40000 ALTER TABLE `Comment_Like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comment_Like_1`
--

DROP TABLE IF EXISTS `Comment_Like_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Comment_Like_1` (
  `User_ID` varchar(9) NOT NULL,
  `Comment_ID` int(4) NOT NULL,
  PRIMARY KEY (`User_ID`,`Comment_ID`),
  KEY `Comment_Like_2_ibfk_1_idx` (`Comment_ID`),
  CONSTRAINT `Comment_Like_1_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `User` (`User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Comment_Like_2_ibfk_1` FOREIGN KEY (`Comment_ID`) REFERENCES `Comment` (`Comment_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comment_Like_1`
--

LOCK TABLES `Comment_Like_1` WRITE;
/*!40000 ALTER TABLE `Comment_Like_1` DISABLE KEYS */;
INSERT INTO `Comment_Like_1` VALUES ('109308028',2),('109308028',8),('109308028',19),('110306000',19),('109308028',20),('110306000',20),('110308056',20),('109301095',21),('109308028',21),('109301095',22),('109308028',23),('109703005',23),('109308028',24),('110306000',24),('109308028',25),('109308028',27),('109308028',28),('109207344',46);
/*!40000 ALTER TABLE `Comment_Like_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Course`
--

DROP TABLE IF EXISTS `Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Course` (
  `Course_ID` varchar(12) NOT NULL,
  `Department_ID` varchar(3) NOT NULL,
  `Teacher_ID` varchar(6) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `可遞補` char(1) NOT NULL,
  `先修科目` varchar(20) DEFAULT NULL,
  `可加選` char(1) NOT NULL,
  `可退選` char(1) NOT NULL,
  `低年級選修` char(1) NOT NULL,
  `本系本班` int(11) NOT NULL,
  `本系同年級非本班` int(11) NOT NULL,
  `本系不同年級非本班` int(11) NOT NULL,
  `全系` int(11) NOT NULL,
  `雙主修` int(11) NOT NULL,
  `輔系` int(11) NOT NULL,
  `本院非本系` int(11) NOT NULL,
  `非本院` int(11) NOT NULL,
  `全校總人數` int(11) NOT NULL,
  `必選修` varchar(5) DEFAULT NULL,
  `Time` varchar(10) NOT NULL,
  PRIMARY KEY (`Course_ID`,`Department_ID`,`Teacher_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course`
--

LOCK TABLES `Course` WRITE;
/*!40000 ALTER TABLE `Course` DISABLE KEYS */;
INSERT INTO `Course` VALUES ('109306005001','306','簡士鎰','計算機概論','Y',NULL,'Y','Y','Y',50,50,50,50,50,50,0,0,50,'必','五23'),('109306005011','306','簡士鎰','計算機概論','Y',NULL,'Y','Y','Y',50,50,50,50,50,50,5,5,50,'必','五D5'),('109306007001','306','蕭舜文','企業資料通訊','Y',NULL,'Y','Y','N',50,50,50,50,50,50,0,0,50,'必','二234'),('109306007011','306','蕭舜文','企業資料通訊','Y',NULL,'Y','Y','N',50,50,50,50,50,50,5,5,50,'必','三234'),('109306008001','306','周致遠','資料庫管理','Y',NULL,'Y','Y','Y',60,60,60,60,60,60,5,5,60,'必','二D56'),('109306008011','306','周致遠','資料庫管理','Y',NULL,'Y','Y','Y',60,60,60,60,60,60,0,0,60,'必','四D56'),('109306009001','306','杜雨儒','系統分析與設計','Y',NULL,'Y','Y','Y',48,48,48,48,48,48,0,0,48,'必','二D56'),('109306009011','306','杜雨儒','系統分析與設計','Y',NULL,'Y','Y','Y',48,48,48,48,48,48,10,0,48,'必','五D56'),('109306013001','306','郁方','資料結構','Y',NULL,'Y','Y','Y',50,50,50,50,50,50,0,0,50,'必','四234'),('109306013011','306','郁方','資料結構','Y',NULL,'Y','Y','Y',50,50,50,50,50,50,5,5,50,'必','四D56'),('109306047001','306','李怡慧','資訊管理','Y',NULL,'Y','Y','Y',50,50,50,50,50,50,5,5,50,'必','三234'),('109306047011','306','周彥君','資訊管理','Y',NULL,'Y','Y','Y',50,50,50,50,50,50,0,0,50,'必','三D56'),('109306048001','306','周彥君','管理科學','Y',NULL,'Y','Y','Y',60,60,60,60,60,60,0,0,60,'必','三234'),('109306048011','306','周彥君','管理科學','Y',NULL,'Y','Y','Y',60,60,60,60,60,60,5,5,60,'必','三78E'),('109306049001','306','林怡伶','程式設計一','Y',NULL,'Y','Y','Y',50,50,50,50,50,50,0,0,50,'必','一56'),('109306049011','306','林怡伶','程式設計一','Y',NULL,'Y','Y','Y',50,50,50,50,50,50,5,5,50,'必','二23'),('109306050001','306','林怡伶','程式設計二','Y','程式設計一','Y','Y','Y',60,60,60,60,60,60,0,0,60,'必','一56'),('109306050011','306','林怡伶','程式設計二','Y','程式設計一','Y','Y','Y',60,60,60,60,60,60,15,5,60,'必','二23'),('110306005001','306','簡士鎰','計算機概論','Y','','Y','Y','Y',50,50,50,50,50,50,0,0,50,'必','五23'),('110306005011','306','簡士鎰','計算機概論','Y','','Y','Y','Y',50,50,50,50,50,50,5,5,50,'必','五D5'),('110306007001','306','蕭舜文','企業資料通訊','Y',NULL,'Y','Y','N',60,60,60,60,60,60,0,0,60,'必','二234'),('110306007011','306','蕭舜文','企業資料通訊','Y',NULL,'Y','Y','N',60,60,60,60,60,60,5,5,60,'必','三234'),('110306008001','306','周致遠','資料庫管理','Y',NULL,'Y','Y','Y',70,70,70,70,70,70,5,5,70,'必','二D56'),('110306008011','306','周致遠','資料庫管理','Y',NULL,'Y','Y','Y',70,70,70,70,70,70,0,0,70,'必','四D56'),('110306009001','306','杜雨儒','系統分析與設計','Y',NULL,'Y','Y','Y',50,50,50,50,50,50,0,0,50,'必','二D56'),('110306009011','306','杜雨儒','系統分析與設計','Y',NULL,'Y','Y','Y',50,50,50,50,50,50,5,0,50,'必','五D56'),('110306013001','306','郁方','資料結構','Y',NULL,'Y','Y','Y',50,50,50,50,50,50,0,0,50,'必','四234'),('110306013011','306','郁方','資料結構','Y',NULL,'Y','Y','Y',50,50,50,50,50,50,5,5,50,'必','四D56'),('110306047001','306','李怡慧','資訊管理','Y',NULL,'Y','Y','Y',50,50,50,50,50,50,5,5,50,'必','三234'),('110306047011','306','周彥君','資訊管理','Y',NULL,'Y','Y','Y',50,50,50,50,50,50,0,0,50,'必','三D56'),('110306048001','306','周彥君','管理科學','Y',NULL,'Y','Y','Y',50,50,50,50,50,50,0,0,50,'必','三234'),('110306048011','306','周彥君','管理科學','Y',NULL,'Y','Y','Y',50,50,50,50,50,50,5,5,50,'必','三78E'),('110306049001','306','林怡伶','程式設計一','N',NULL,'Y','Y','Y',50,50,50,50,50,50,0,0,50,'必','一56'),('110306049011','306','林怡伶','程式設計一','N',NULL,'Y','Y','Y',50,50,50,50,50,50,5,5,50,'必','二23'),('110306050001','306','林怡伶','程式設計二','N','程式設計一','Y','Y','Y',60,60,60,60,60,60,0,0,60,'必','一56'),('110306050011','306','林怡伶','程式設計二','N','程式設計一','Y','Y','Y',60,60,60,60,60,60,15,5,60,'必','二23'),('306','306','測試','計算機','N',NULL,'Y','Y','Y',50,50,50,50,50,50,0,0,50,'必','測試');
/*!40000 ALTER TABLE `Course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Department`
--

DROP TABLE IF EXISTS `Department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Department` (
  `Department_ID` varchar(3) NOT NULL,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`Department_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Department`
--

LOCK TABLES `Department` WRITE;
/*!40000 ALTER TABLE `Department` DISABLE KEYS */;
INSERT INTO `Department` VALUES ('101','中國文學系'),('102','教育系'),('103','歷史學系'),('104','哲學系'),('109','教育學程中心'),('202','政治學系'),('203','外交學系'),('204','社會學系'),('205','財政學系'),('206','公共行政學系'),('207','地政學系'),('208','經濟學系'),('209','民族學系'),('301','國際經營與貿易學系'),('302','金融學系'),('303','會計學系'),('304','統計學系'),('305','企業管理學系'),('306','資訊管理學系'),('307','財務管理學系'),('308','風險管理與保險學系'),('401','新聞學系'),('402','廣告學系'),('403','廣播電視學系'),('405','傳院大一大二不分系'),('501','英國語文學系'),('502','阿拉伯語文學系'),('503','歐洲語文學系'),('504','俄國語文學系'),('506','日本語文學系'),('507','韓國語文學系'),('508','土耳其語文學系'),('601','法律系'),('701','應用數學系'),('702','心理學系'),('703','資訊科學系');
/*!40000 ALTER TABLE `Department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order_Like`
--

DROP TABLE IF EXISTS `Order_Like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Order_Like` (
  `User_ID` varchar(9) NOT NULL,
  `Order_ID` int(4) NOT NULL,
  `Likes` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Order_ID`,`User_ID`),
  KEY `User_ID` (`User_ID`),
  CONSTRAINT `Order_Like_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `User` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Order_Like_ibfk_2` FOREIGN KEY (`Order_ID`) REFERENCES `Orders` (`Order_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_Like`
--

LOCK TABLES `Order_Like` WRITE;
/*!40000 ALTER TABLE `Order_Like` DISABLE KEYS */;
INSERT INTO `Order_Like` VALUES ('109308028',1,40),('109308028',2,51),('109703005',6,88),('109301095',7,29),('109308028',8,95),('109207344',9,11),('109207344',10,24),('109207344',11,53),('109703005',12,101),('109703005',13,52),('109202007',14,40),('109301095',18,34);
/*!40000 ALTER TABLE `Order_Like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order_Like_1`
--

DROP TABLE IF EXISTS `Order_Like_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Order_Like_1` (
  `User_ID` varchar(9) NOT NULL,
  `Order_ID` int(4) NOT NULL,
  PRIMARY KEY (`User_ID`,`Order_ID`),
  KEY `Order_Like_1_ibfk_2_idx` (`Order_ID`),
  KEY `Order_Like_1_ibfk_1_idx` (`User_ID`),
  CONSTRAINT `Order_Like_1_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `User` (`User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Order_Like_1_ibfk_2` FOREIGN KEY (`Order_ID`) REFERENCES `Orders` (`Order_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_Like_1`
--

LOCK TABLES `Order_Like_1` WRITE;
/*!40000 ALTER TABLE `Order_Like_1` DISABLE KEYS */;
INSERT INTO `Order_Like_1` VALUES ('107502023',2),('109307028',6),('109308028',6),('109307028',7),('109308028',7),('109207344',8),('109301095',8),('109307028',8),('109308028',8),('109703005',8),('109207344',9),('109301095',9),('109307028',9),('109308028',9),('109308028',11),('109703005',11),('109307028',19),('109308028',19),('109703005',19),('109207344',20),('109307028',20),('109308028',20),('109703005',20),('109307028',21),('109307028',22),('107303098',23),('109207344',23),('109307028',23),('109307028',24),('109308028',24),('109308028',25),('109703005',26),('109202007',27),('109207344',27),('109307028',27),('109308028',27),('109703005',27),('110306000',27),('109207344',30),('109308028',31),('110306000',40),('109202007',42);
/*!40000 ALTER TABLE `Order_Like_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `Order_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_ID` varchar(9) NOT NULL,
  `Course_ID` varchar(12) NOT NULL,
  `Identity` varchar(10) NOT NULL,
  `Is_Enrolled` char(1) NOT NULL,
  `Num` int(1) NOT NULL,
  `Is_Deleted` char(1) NOT NULL DEFAULT 'N',
  `Violate` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Order_ID`),
  KEY `User_ID` (`User_ID`),
  KEY `Order_ibfk_1` (`Course_ID`),
  CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`Course_ID`) REFERENCES `Course` (`Course_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Orders_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `User` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,'109308028','110306049011','本院外系','Y',3,'Y',0),(2,'109308028','110306050011','本院外系','Y',3,'N',0),(6,'109703005','110306008001','外院','Y',1,'N',0),(7,'109301095','110306008001','本院外系','N',2,'N',0),(8,'109308028','110306008001','本院外系','Y',1,'N',0),(9,'109207344','110306008001','雙主修','Y',2,'N',0),(10,'109207344','110306049011','外院','Y',2,'N',0),(11,'109207344','110306050011','輔系','Y',2,'N',0),(12,'109703005','109306047001','非本院','Y',2,'N',0),(13,'109703005','109306047001','非本院','Y',2,'N',0),(14,'109202007','110306050011','本系本班','Y',3,'N',0),(16,'109703005','109306007011','非本院','N',3,'N',0),(17,'109703005','110306049001','非本院','N',3,'N',0),(18,'109301095','110306049001','本系外系','N',4,'N',0),(19,'107303098','110306008001','本院外系','N',4,'N',0),(20,'110308056','110306008001','本院外系','Y',1,'N',0),(21,'108702001','110306008001','非本院','N',2,'N',0),(22,'110304001','110306008001','本院外系','Y',1,'N',0),(23,'107502023','110306008001','非本院','N',2,'N',0),(24,'106405191','110306008001','非本院','Y',1,'N',0),(25,'109306095','110306008001','本系本班','Y',2,'N',0),(26,'109306096','110306008001','本系非本班','N',2,'N',0),(27,'109306097','110306008001','本系本班','Y',1,'N',0),(28,'109307028','110306050001','本院外系','Y',2,'N',0),(29,'109207344','109306005001','輔系','N',40,'N',0),(30,'109308028','109306005001','本院外系','Y',2,'N',0),(31,'109202007','110306008001','本系本班','N',1,'Y',0),(32,'109202007','109306005001','本系本班','Y',1,'N',0),(33,'109202007','110306047011','非本院','N',50,'N',0),(34,'109207344','109306005001','雙主修','Y',7,'N',0),(35,'109207344','109306007001','非本院','N',2,'N',0),(36,'110307002','110306008001','本院外系','N',2,'Y',0),(37,'110307002','109306008001','本院外系','Y',1,'N',0),(38,'107502023','110306008001','非本院','Y',1,'N',0),(39,'109308028','110306005001','本院外系','Y',2,'N',0),(40,'110306000','110306008001','雙主修','N',50,'N',0),(41,'110308056','110306005001','本院外系','Y',1,'Y',0),(42,'110308056','110306005001','本院外系','Y',2,'Y',0),(43,'109308028','109306049011','本院外系','Y',2,'N',0),(44,'109308028','110306049001','本院外系','N',4,'N',0),(45,'107502023','109306005001','本系本班','Y',1,'Y',0);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teacher`
--

DROP TABLE IF EXISTS `Teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Teacher` (
  `Teacher_ID` varchar(6) NOT NULL,
  `Department_ID` varchar(3) NOT NULL,
  PRIMARY KEY (`Teacher_ID`),
  KEY `Teacher_ibfk_1_idx` (`Department_ID`),
  CONSTRAINT `Teacher_ibfk_1` FOREIGN KEY (`Department_ID`) REFERENCES `Department` (`Department_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teacher`
--

LOCK TABLES `Teacher` WRITE;
/*!40000 ALTER TABLE `Teacher` DISABLE KEYS */;
INSERT INTO `Teacher` VALUES ('余千智','306'),('吳雅鈴','306'),('周彥君','306'),('周致遠','306'),('姜國輝','306'),('季延平','306'),('尚孝純','306'),('張景堯','306'),('張欣綠','306'),('張瑞岩','306'),('彭志宏','306'),('曾淑峰','306'),('李博逸','306'),('李怡慧','306'),('李曉惠','306'),('杜雨儒','306'),('林怡伶','306'),('林我聰','306'),('楊亨利','306'),('洪為璽','306'),('湯宗益','306'),('簡士鎰','306'),('莊皓鈞','306'),('蔡瑞煌','306'),('蔡維奇','306'),('蕭舜文','306'),('郁方','306'),('陳恭','306');
/*!40000 ALTER TABLE `Teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `User_ID` varchar(9) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Authority` varchar(10) NOT NULL DEFAULT 'N',
  `Gender` char(1) NOT NULL,
  `Department_ID` varchar(3) DEFAULT NULL,
  `Total_Violate` int(2) NOT NULL DEFAULT '0',
  `StopUse` char(1) NOT NULL DEFAULT 'N',
  `ImageType` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`User_ID`),
  KEY `User_fk1_idx` (`Department_ID`),
  CONSTRAINT `User_fk_1` FOREIGN KEY (`Department_ID`) REFERENCES `Department` (`Department_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('101010101','111','111','N','M','208',0,'N',0),('103308028','103308028','張同學','N','F','308',0,'N',0),('106405191','106405191','柏同學','N','F','403',0,'N',0),('107302091','107302091','張同學','N','F','302',0,'N',0),('107303098','107303098','蔡同學','N','M','303',0,'N',2),('107308028','107308028','汪同學','N','F','308',0,'N',0),('107502023','107502023','莊同學','N','F','502',0,'N',3),('108308002','108308002','林同學','N','F','308',2,'N',0),('108702001','108702001','王同學','N','F','702',0,'N',0),('109202007','109202007','余則緯','Y','M','202',0,'N',2),('109207344','109207344','王行遠','Y','M','208',0,'N',1),('109208000','123','王同學','N','M','208',0,'N',0),('109301095','109301095','林竺徵','Y','M','301',0,'N',1),('109306095','109306095','黃同學','N','M','306',0,'N',0),('109306096','109306096','黃同學','N','M','306',0,'N',0),('109306097','109306097','蔡同學','Y','M','306',0,'Y',0),('109307028','109307028','吳同學','N','F','307',0,'N',0),('109308028','109308028','蔡念澄','Y','M','308',0,'N',1),('109308037','109308037','張同學','N','M','308',0,'N',0),('109703005','109703005','童昱維','Y','M','703',0,'N',1),('110304001','110304001','張同學','N','F','304',3,'N',0),('110306000','1234','王同學','N','M','306',0,'N',2),('110307002','110307002','廖宇勝','N','M','307',0,'N',2),('110308056','110308056','李同學','N','M','308',1,'N',0),('111222333','123','1234456778','N','F','306',0,'N',0);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-25 17:05:21
