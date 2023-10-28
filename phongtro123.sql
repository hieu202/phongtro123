-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: phongtro123
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `attribute`
--

DROP TABLE IF EXISTS `attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `acreage` double DEFAULT NULL,
  `published` varchar(120) DEFAULT NULL,
  `hashtag` varchar(120) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute`
--

LOCK TABLES `attribute` WRITE;
/*!40000 ALTER TABLE `attribute` DISABLE KEYS */;
INSERT INTO `attribute` VALUES (1,6000000,100,'1 ngày trước','605621',NULL,NULL),(2,8000000,150,'23 giờ trước','605599',NULL,NULL),(3,12000000,20,'1 ngày trước','605610',NULL,NULL),(4,1500000,45,'1 ngày trước','605611',NULL,NULL),(5,12000000,11,NULL,NULL,NULL,NULL),(6,100000,12,NULL,NULL,NULL,NULL),(7,1000000,25,NULL,NULL,NULL,NULL),(8,1000000,12,NULL,NULL,NULL,NULL),(9,1500000,30,NULL,NULL,NULL,NULL),(10,1000000,25,NULL,NULL,NULL,NULL),(11,1500000,25,NULL,NULL,'2023-08-06 06:09:20','2023-08-06 06:09:20'),(12,1500000,15000000,NULL,NULL,'2023-08-06 06:17:22','2023-08-06 06:17:22'),(13,10000000,24,NULL,NULL,'2023-08-06 06:27:40','2023-08-06 06:27:40'),(14,2000000,25,NULL,NULL,'2023-08-07 08:58:36','2023-08-07 08:58:36'),(15,1000000,25,NULL,NULL,'2023-08-07 09:09:25','2023-08-07 09:09:25'),(16,10000000,50,NULL,NULL,'2023-08-07 09:48:47','2023-08-07 09:48:47'),(17,1000000,100,NULL,NULL,'2023-08-07 09:52:13','2023-08-07 09:52:13'),(18,12,12,NULL,NULL,'2023-08-08 09:07:11','2023-08-08 09:07:11'),(19,11111,11,NULL,NULL,'2023-08-08 09:12:39','2023-08-08 09:12:39'),(20,1000000,12,NULL,NULL,'2023-08-08 09:14:16','2023-08-08 09:14:16'),(21,1000000,12,NULL,NULL,'2023-08-08 09:20:36','2023-08-08 09:20:36'),(22,1,1,NULL,NULL,'2023-08-08 10:08:39','2023-08-08 10:08:39'),(23,1,1,NULL,NULL,'2023-08-08 10:08:39','2023-08-08 10:08:39'),(24,1,1,NULL,NULL,'2023-08-08 10:18:28','2023-08-08 10:18:28'),(25,1,1,NULL,NULL,'2023-08-08 10:18:29','2023-08-08 10:18:29'),(26,1,1,NULL,NULL,'2023-08-08 10:18:29','2023-08-08 10:18:29'),(27,1,1,NULL,NULL,'2023-08-08 10:18:30','2023-08-08 10:18:30'),(28,1,1,NULL,NULL,'2023-08-08 10:18:30','2023-08-08 10:18:30'),(29,1,1,NULL,NULL,'2023-08-08 10:18:31','2023-08-08 10:18:31'),(30,1,1,NULL,NULL,'2023-08-08 10:18:31','2023-08-08 10:18:31'),(31,1,1,NULL,NULL,'2023-08-08 10:18:31','2023-08-08 10:18:31'),(32,1,1,NULL,NULL,'2023-08-08 10:18:31','2023-08-08 10:18:31'),(33,1,1,NULL,NULL,'2023-08-08 10:18:31','2023-08-08 10:18:31'),(34,1,1,NULL,NULL,'2023-08-08 10:18:33','2023-08-08 10:18:33'),(35,1,1,NULL,NULL,'2023-08-08 10:18:33','2023-08-08 10:18:33'),(36,1,1,NULL,NULL,'2023-08-08 10:18:33','2023-08-08 10:18:33'),(37,1,1,NULL,NULL,'2023-08-08 10:18:33','2023-08-08 10:18:33'),(38,1,1,NULL,NULL,'2023-08-08 10:18:33','2023-08-08 10:18:33'),(39,1,1,NULL,NULL,'2023-08-08 10:33:05','2023-08-08 10:33:05'),(40,1,1,NULL,NULL,'2023-08-08 10:33:05','2023-08-08 10:33:05'),(41,1,1,NULL,NULL,'2023-08-08 10:33:06','2023-08-08 10:33:06'),(42,1,1,NULL,NULL,'2023-08-08 10:33:06','2023-08-08 10:33:06'),(43,1,1,NULL,NULL,'2023-08-08 10:33:06','2023-08-08 10:33:06'),(44,1,1,NULL,NULL,'2023-08-08 10:33:06','2023-08-08 10:33:06'),(45,1,1,NULL,NULL,'2023-08-08 10:33:06','2023-08-08 10:33:06'),(46,1,1,NULL,NULL,'2023-08-08 10:33:06','2023-08-08 10:33:06'),(47,1,1,NULL,NULL,'2023-08-08 10:33:06','2023-08-08 10:33:06'),(48,1,1,NULL,NULL,'2023-08-08 10:33:07','2023-08-08 10:33:07'),(49,1,1,NULL,NULL,'2023-08-08 10:33:07','2023-08-08 10:33:07'),(50,1,1,NULL,NULL,'2023-08-08 10:33:07','2023-08-08 10:33:07'),(51,1,1,NULL,NULL,'2023-08-08 10:33:07','2023-08-08 10:33:07'),(52,1,1,NULL,NULL,'2023-08-08 10:33:07','2023-08-08 10:33:07'),(53,1,1,NULL,NULL,'2023-08-08 10:33:07','2023-08-08 10:33:07'),(54,1,1,NULL,NULL,'2023-08-08 10:33:08','2023-08-08 10:33:08'),(55,1,1,NULL,NULL,'2023-08-08 10:33:08','2023-08-08 10:33:08'),(56,1,1,NULL,NULL,'2023-08-08 10:33:08','2023-08-08 10:33:08'),(57,1,1,NULL,NULL,'2023-08-08 10:33:08','2023-08-08 10:33:08'),(58,1,1,NULL,NULL,'2023-08-08 10:33:08','2023-08-08 10:33:08'),(59,1,1,NULL,NULL,'2023-08-08 10:33:08','2023-08-08 10:33:08'),(60,1,1,NULL,NULL,'2023-08-08 10:33:08','2023-08-08 10:33:08'),(61,1,1,NULL,NULL,'2023-08-08 10:59:50','2023-08-08 10:59:50'),(62,1,1,NULL,NULL,'2023-08-08 11:09:49','2023-08-08 11:09:49'),(63,1,1,NULL,NULL,'2023-08-08 11:09:49','2023-08-08 11:09:49'),(64,1,1,NULL,NULL,'2023-08-08 11:09:49','2023-08-08 11:09:49'),(65,1,1,NULL,NULL,'2023-08-08 11:09:49','2023-08-08 11:09:49'),(66,1,1,NULL,NULL,'2023-08-08 11:09:49','2023-08-08 11:09:49'),(67,1,1,NULL,NULL,'2023-08-08 11:09:49','2023-08-08 11:09:49'),(68,1,1,NULL,NULL,'2023-08-08 11:09:49','2023-08-08 11:09:49'),(69,1,1,NULL,NULL,'2023-08-08 11:09:49','2023-08-08 11:09:49'),(70,1,1,NULL,NULL,'2023-08-08 11:09:50','2023-08-08 11:09:50'),(71,1,1,NULL,NULL,'2023-08-08 11:09:50','2023-08-08 11:09:50'),(72,1,1,NULL,NULL,'2023-08-08 11:09:50','2023-08-08 11:09:50'),(73,1,1,NULL,NULL,'2023-08-08 11:09:50','2023-08-08 11:09:50'),(74,1,1,NULL,NULL,'2023-08-08 11:09:50','2023-08-08 11:09:50'),(75,1,1,NULL,NULL,'2023-08-08 11:09:50','2023-08-08 11:09:50'),(76,1,1,NULL,NULL,'2023-08-08 11:09:50','2023-08-08 11:09:50'),(77,1,1,NULL,NULL,'2023-08-08 11:11:45','2023-08-08 11:11:45'),(78,1,1,NULL,NULL,'2023-08-08 11:11:45','2023-08-08 11:11:45'),(79,1,1,NULL,NULL,'2023-08-08 11:11:45','2023-08-08 11:11:45'),(80,1,1,NULL,NULL,'2023-08-08 11:40:42','2023-08-08 11:40:42'),(81,1,1,NULL,NULL,'2023-08-08 11:43:34','2023-08-08 11:43:34'),(82,123123123,12,NULL,NULL,'2023-08-09 20:02:04','2023-08-09 20:02:04'),(83,12,12,NULL,NULL,'2023-08-09 23:30:56','2023-08-09 23:30:56'),(84,12,12,NULL,NULL,'2023-08-09 23:30:56','2023-08-09 23:30:56'),(85,12,12,NULL,NULL,'2023-08-09 23:30:56','2023-08-09 23:30:56'),(86,12,12,NULL,NULL,'2023-08-09 23:48:39','2023-08-09 23:48:39'),(87,12,12,NULL,NULL,'2023-08-09 23:52:04','2023-08-09 23:52:04'),(88,12,12,NULL,NULL,'2023-08-09 23:52:04','2023-08-09 23:52:04'),(89,12,12,NULL,NULL,'2023-08-09 23:52:04','2023-08-09 23:52:04'),(90,12,12,NULL,NULL,'2023-08-09 23:52:04','2023-08-09 23:52:04'),(91,12,12,NULL,NULL,'2023-08-09 23:52:04','2023-08-09 23:52:04'),(92,12,12,NULL,NULL,'2023-08-09 23:52:04','2023-08-09 23:52:04'),(93,12,12,NULL,NULL,'2023-08-10 00:00:08','2023-08-10 00:00:08'),(94,12,12,NULL,NULL,'2023-08-10 00:00:08','2023-08-10 00:00:08'),(95,12,12,NULL,NULL,'2023-08-10 00:00:22','2023-08-10 00:00:22'),(96,12,12,NULL,NULL,'2023-08-10 00:00:22','2023-08-10 00:00:22'),(97,12,12,NULL,NULL,'2023-08-10 00:00:22','2023-08-10 00:00:22'),(98,12,12,NULL,NULL,'2023-08-10 00:00:22','2023-08-10 00:00:22'),(99,12,12,NULL,NULL,'2023-08-10 00:00:22','2023-08-10 00:00:22'),(100,12,12,NULL,NULL,'2023-08-10 00:00:22','2023-08-10 00:00:22'),(101,12,12,NULL,NULL,'2023-08-10 00:00:23','2023-08-10 00:00:23'),(102,12,12,NULL,NULL,'2023-08-10 00:06:13','2023-08-10 00:06:13'),(103,12,12,NULL,NULL,'2023-08-10 00:06:13','2023-08-10 00:06:13'),(104,12,12,NULL,NULL,'2023-08-10 00:06:13','2023-08-10 00:06:13'),(105,12,12,NULL,NULL,'2023-08-10 00:06:13','2023-08-10 00:06:13'),(106,12,12,NULL,NULL,'2023-08-10 00:06:13','2023-08-10 00:06:13'),(107,12,12,NULL,NULL,'2023-08-10 00:06:14','2023-08-10 00:06:14'),(108,12,12,NULL,NULL,'2023-08-10 00:06:14','2023-08-10 00:06:14'),(109,12,12,NULL,NULL,'2023-08-10 00:06:14','2023-08-10 00:06:14'),(110,12,12,NULL,NULL,'2023-08-10 00:44:43','2023-08-10 00:44:43'),(111,12,12,NULL,NULL,'2023-08-10 00:49:03','2023-08-10 00:49:03'),(112,12,12,NULL,NULL,'2023-08-10 00:49:03','2023-08-10 00:49:03'),(113,123123,12,NULL,NULL,'2023-08-10 09:09:24','2023-08-10 09:09:24'),(114,1000,122222,NULL,NULL,'2023-08-10 09:15:51','2023-08-10 09:15:51'),(115,123,12,NULL,NULL,'2023-08-10 09:16:26','2023-08-10 09:16:26'),(116,123,12,NULL,NULL,'2023-08-10 09:17:02','2023-08-10 09:17:02'),(117,1200,12,NULL,NULL,'2023-08-10 10:57:19','2023-08-10 10:57:19'),(118,123312312,123,NULL,NULL,'2023-08-13 08:50:00','2023-08-13 08:50:00'),(119,123,123,NULL,NULL,'2023-08-15 11:09:52','2023-08-15 11:09:52'),(120,3000000,35,NULL,NULL,'2023-08-15 18:23:32','2023-08-15 18:23:32'),(121,1200000,12,NULL,NULL,'2023-08-15 18:30:13','2023-08-31 10:18:06'),(122,1200000,12,NULL,NULL,'2023-08-15 18:54:38','2023-08-15 18:54:38'),(123,12,12,NULL,NULL,'2023-08-26 15:59:09','2023-08-26 15:59:09'),(124,1233,12,NULL,NULL,'2023-08-26 16:02:12','2023-08-26 16:02:12'),(125,1000000,23,NULL,NULL,'2023-08-26 17:11:36','2023-08-26 17:11:36'),(126,123312312,123,NULL,NULL,'2023-08-26 17:31:04','2023-08-26 17:31:04'),(127,1500000,12,NULL,NULL,'2023-08-26 17:33:30','2023-08-26 17:33:30'),(128,1000000,23,NULL,NULL,'2023-08-28 10:59:29','2023-08-28 10:59:29'),(129,1000000,2000000,NULL,NULL,'2023-08-28 11:16:55','2023-08-28 11:16:55'),(130,1200000,25,NULL,NULL,'2023-08-28 11:22:21','2023-08-28 11:22:21'),(131,1200000,25,NULL,NULL,'2023-08-30 21:07:27','2023-08-30 21:07:27'),(132,1200000,25,NULL,NULL,'2023-08-31 08:46:59','2023-08-31 08:46:59'),(133,1200000,25,NULL,NULL,'2023-08-31 08:47:19','2023-08-31 08:47:19'),(134,1200000,25,NULL,NULL,'2023-08-31 08:47:39','2023-08-31 08:47:39'),(135,1200000,25,NULL,NULL,'2023-08-31 08:49:39','2023-08-31 08:49:39'),(136,1200000,25,NULL,NULL,'2023-08-31 08:51:13','2023-08-31 08:51:13'),(137,1200000,25,NULL,NULL,'2023-08-31 09:04:02','2023-08-31 09:04:02'),(138,1200000,25,NULL,NULL,'2023-08-31 09:08:33','2023-08-31 09:08:33'),(139,1000000,35,NULL,NULL,'2023-09-11 20:33:55','2023-09-11 20:33:55'),(140,2500000,35,NULL,NULL,'2023-09-18 14:12:31','2023-09-18 14:12:31');
/*!40000 ALTER TABLE `attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(120) DEFAULT NULL,
  `value` varchar(120) DEFAULT NULL,
  `header` longtext,
  `subheader` longtext,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryCode` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'CTPT','Cho thuê phòng trọ','Cho Thuê Phòng Trọ, Giá Rẻ, Tiện Nghi, Mới Nhất 2023','Cho thuê phòng trọ - Kênh thông tin số 1 về phòng trọ giá rẻ, phòng trọ sinh viên, phòng trọ cao cấp mới nhất năm 2023. Tất cả nhà trọ cho thuê giá tốt nhất tại Việt Nam.',NULL,NULL),(2,'NCT','Nhà cho thuê','Cho Thuê Nhà Nguyên Căn, Giá Rẻ, Chính Chủ, Mới Nhất 2023','Cho thuê nhà nguyên căn - Kênh đăng tin cho thuê nhà số 1: giá rẻ, chính chủ, miễn trung gian, đầy đủ tiện nghi, mức giá, diện tích cho thuê khác nhau',NULL,NULL),(3,'CTCH','Cho thuê căn hộ','Cho thuê căn hộ trung cư, giá rẻ, mới nhất, 2023','Cho thuê phòng trọ - Kênh thông tin số 1 về phòng trọ giá rẻ, phòng trọ sinh viên, phòng trọ cao cấp mới nhất năm 2023. Tất cả nhà trọ cho thuê giá tốt nhất tại Việt Nam.',NULL,NULL),(4,'CTMB','Cho thuê mặt bằng','Cho Thuê Mặt Bằng, Cửa Hàng + Kiot Giá Rẻ, Mới Nhất 2023','Cho thuê mặt bằng - Kênh thông tin mặt bằng giá rẻ, cửa hàng, kiot số 1 Việt Nam. Tìm mặt bằng kinh doanh, buôn bán nhỏ, gần chợ tất cả có tại web phongtro123.com.',NULL,NULL),(5,'TNOG','Tìm người ở ghép','Cho thuê mặt bằng - Kênh thông tin mặt bằng giá rẻ, cửa hàng, kiot số 1 Việt Nam. Tìm mặt bằng kinh doanh, buôn bán nhỏ, gần chợ tất cả có tại web phongtro123.com','Tìm người ở ghép, tìm nam ở ghép, tìm nữ ở ghép, share phòng trọ, tìm chỗ ở ghép cùng, tìm bạn ở ghép, xin ở ghép mới nhất 2023. Đăng tin ở ghép hiệu quả, nhanh chóng nhất...',NULL,NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hocvien`
--

DROP TABLE IF EXISTS `hocvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hocvien` (
  `hocvienID` int NOT NULL AUTO_INCREMENT,
  `khoaHocID` varchar(45) DEFAULT NULL,
  `hoTen` varchar(45) DEFAULT NULL,
  `ngaySinh` varchar(45) DEFAULT NULL,
  `diachi` varchar(45) DEFAULT NULL,
  `queQuan` varchar(45) DEFAULT NULL,
  `sodienThoai` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`hocvienID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hocvien`
--

LOCK TABLES `hocvien` WRITE;
/*!40000 ALTER TABLE `hocvien` DISABLE KEYS */;
/*!40000 ALTER TABLE `hocvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(1000) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2022/08/05/img-1659710873407-1659710889836_1659712134.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2022/08/05/img-1659710874006-1659710890335_1659712133.jpg\",\n\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2018/11/23/wp-20161225-11-09-36-pro_1542975423.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2018/11/23/wp-20151110-10-52-08-pro-1_1542975371.jpg\"]',NULL,NULL),(2,'[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2022/08/05/img-1659710873407-1659710889836_1659712134.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2022/08/05/img-1659710874006-1659710890335_1659712133.jpg\",\n\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2022/08/05/img-1659710874006-1659710890335_1659712133.jpg\",\n\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2018/11/23/wp-20161225-11-09-36-pro_1542975423.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2018/11/23/wp-20151110-10-52-08-pro-1_1542975371.jpg\"]',NULL,NULL),(3,'[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2022/08/05/img-1659710873407-1659710889836_1659712134.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2022/08/05/img-1659710874006-1659710890335_1659712133.jpg\", \"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2022/07/14/8_1657763752.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2020/02/26/tp_1582694811.jpg\"]',NULL,NULL),(4,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1690774710/phongtro123/nrj3foynaxd0lpzoblas.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690774711/phongtro123/dynxsvgjl5a9qi0ziqtk.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690774711/phongtro123/qu3ez0vrc82jxm5keeof.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690774713/phongtro123/rlo2qbx8dq0tlenen6ns.jpg\"]',NULL,NULL),(5,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1690774710/phongtro123/nrj3foynaxd0lpzoblas.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690774711/phongtro123/dynxsvgjl5a9qi0ziqtk.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690774711/phongtro123/qu3ez0vrc82jxm5keeof.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690774713/phongtro123/rlo2qbx8dq0tlenen6ns.jpg\"]',NULL,NULL),(6,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1690774710/phongtro123/nrj3foynaxd0lpzoblas.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690774711/phongtro123/dynxsvgjl5a9qi0ziqtk.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690774711/phongtro123/qu3ez0vrc82jxm5keeof.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690774713/phongtro123/rlo2qbx8dq0tlenen6ns.jpg\"]',NULL,NULL),(7,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1690774710/phongtro123/nrj3foynaxd0lpzoblas.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690774711/phongtro123/dynxsvgjl5a9qi0ziqtk.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690774711/phongtro123/qu3ez0vrc82jxm5keeof.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690774713/phongtro123/rlo2qbx8dq0tlenen6ns.jpg\"]',NULL,NULL),(8,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1690948550/phongtro123/cojjrarat9wz9fhs0xrd.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690948551/phongtro123/qvmbgor8dhb9pjtiyrq0.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690948552/phongtro123/iqxep4fihuntduxbqmtr.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690948552/phongtro123/l4ibcbrcsza2h6vtbcmo.jpg\"]',NULL,NULL),(9,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1690949051/phongtro123/o9gvndstjqf72sgodvcv.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690949052/phongtro123/lkewcj5wfhvgjvuabt40.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690949053/phongtro123/ejakqqf6soc0j8tv2m0r.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690949054/phongtro123/ar6zqzqpnspknwats99l.jpg\"]',NULL,NULL),(10,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1690949715/phongtro123/fh13yfwtkr3odfwoqah1.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690949716/phongtro123/bolnedth06apru8myei7.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690949717/phongtro123/a0mkejtyk3jpwcswvtso.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690949718/phongtro123/czy4rccz7gm6vcmr21ad.jpg\"]',NULL,NULL),(11,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1690949925/phongtro123/uhzwyqadxde8ofcgtudg.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690949926/phongtro123/mcr0ojouma901rnevuos.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690949926/phongtro123/pl7qx0ji0dij8hswhyuj.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1690949927/phongtro123/w4wiugnrsjh0cbaphunf.jpg\"]',NULL,NULL),(12,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691220767/phongtro123/i3tqm6hxlqshdq0jw5mm.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1691220769/phongtro123/qwznrtcjqnrup4htv5gs.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1691220771/phongtro123/ekn4mbnbhg11mgdxss0c.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1691220776/phongtro123/zz8mwunbmyiui02gpl0y.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1691220773/phongtro123/xkyggel2dmhorteiahzv.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1691220779/phongtro123/p55qe6mbamegn7w1d2am.jpg\"]',NULL,NULL),(13,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691276947/phongtro123/huxpnxzhi9zyzhbku9uf.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1691276949/phongtro123/lxyj2eawg9c4cfohyodc.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1691276950/phongtro123/x65ep5k2ljxlhqozbzur.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1691276953/phongtro123/i8nudiiloq6jxgubgxle.jpg\"]','2023-08-06 06:09:20','2023-08-06 06:09:20'),(14,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691277422/phongtro123/mqjivhrwxyljvyzl6lhu.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1691277424/phongtro123/svyblexnkpzdlwyyz2uc.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1691277426/phongtro123/nh4nrjathxwbkffhitxy.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1691277428/phongtro123/ts7pfbflqftrl0u3gylq.jpg\"]','2023-08-06 06:17:22','2023-08-06 06:17:22'),(15,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691278050/phongtro123/pgd258xpmdhragganhyg.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1691278052/phongtro123/favegze2kdxbic8unl6s.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1691278053/phongtro123/ikvbmgzcqjsjxo1fuemw.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1691278056/phongtro123/xuy1brkife5kmfhkzo2z.jpg\"]','2023-08-06 06:27:40','2023-08-06 06:27:40'),(16,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691373510/phongtro123/gvl4slbfpjkmkvs74ywr.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1691373511/phongtro123/bsedym9aojnxsjjuxxpd.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1691373511/phongtro123/b4guy25gsjixv5gelh9e.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1691373512/phongtro123/y0l3a8glmpmzzlzkqm7s.jpg\"]','2023-08-07 08:58:36','2023-08-07 08:58:36'),(17,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691374160/phongtro123/z3xcb4ftzebvoc3canuf.jpg\"]','2023-08-07 09:09:25','2023-08-07 09:09:25'),(18,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691376521/phongtro123/ebvpetwn8veunczplwqs.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1691376521/phongtro123/y6msg5a7v9ilwof9psdw.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1691376522/phongtro123/z2laskpidjl0capq5xuu.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1691376523/phongtro123/nwlr7ddu98bdqxjfngwb.jpg\"]','2023-08-07 09:48:47','2023-08-07 09:48:47'),(19,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691376729/phongtro123/z0ujrco2ehcqjwreiqkd.jpg\"]','2023-08-07 09:52:13','2023-08-07 09:52:13'),(20,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691460431/phongtro123/wesef71ax8wklbb96ard.jpg\"]','2023-08-08 09:07:11','2023-08-08 09:07:11'),(21,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691460757/phongtro123/t3uuf54c97xu1jwnelad.jpg\"]','2023-08-08 09:12:39','2023-08-08 09:12:39'),(22,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691460855/phongtro123/mk9oqqad10ywuoueviy5.jpg\"]','2023-08-08 09:14:16','2023-08-08 09:14:16'),(23,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691461235/phongtro123/vest73k2dxwabulfsjk5.jpg\"]','2023-08-08 09:20:36','2023-08-08 09:20:36'),(24,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691464117/phongtro123/moo4wmbglqni9kluj4ui.jpg\"]','2023-08-08 10:08:39','2023-08-08 10:08:39'),(25,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691464117/phongtro123/moo4wmbglqni9kluj4ui.jpg\"]','2023-08-08 10:08:39','2023-08-08 10:08:39'),(26,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691464706/phongtro123/ot9jc2oxawow3vkqtzrv.jpg\"]','2023-08-08 10:18:28','2023-08-08 10:18:28'),(27,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691464706/phongtro123/ot9jc2oxawow3vkqtzrv.jpg\"]','2023-08-08 10:18:29','2023-08-08 10:18:29'),(28,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691464706/phongtro123/ot9jc2oxawow3vkqtzrv.jpg\"]','2023-08-08 10:18:29','2023-08-08 10:18:29'),(29,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691464706/phongtro123/ot9jc2oxawow3vkqtzrv.jpg\"]','2023-08-08 10:18:30','2023-08-08 10:18:30'),(30,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691464706/phongtro123/ot9jc2oxawow3vkqtzrv.jpg\"]','2023-08-08 10:18:30','2023-08-08 10:18:30'),(31,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691464706/phongtro123/ot9jc2oxawow3vkqtzrv.jpg\"]','2023-08-08 10:18:31','2023-08-08 10:18:31'),(32,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691464706/phongtro123/ot9jc2oxawow3vkqtzrv.jpg\"]','2023-08-08 10:18:31','2023-08-08 10:18:31'),(33,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691464706/phongtro123/ot9jc2oxawow3vkqtzrv.jpg\"]','2023-08-08 10:18:31','2023-08-08 10:18:31'),(34,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691464706/phongtro123/ot9jc2oxawow3vkqtzrv.jpg\"]','2023-08-08 10:18:31','2023-08-08 10:18:31'),(35,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691464706/phongtro123/ot9jc2oxawow3vkqtzrv.jpg\"]','2023-08-08 10:18:31','2023-08-08 10:18:31'),(36,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691464706/phongtro123/ot9jc2oxawow3vkqtzrv.jpg\"]','2023-08-08 10:18:33','2023-08-08 10:18:33'),(37,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691464706/phongtro123/ot9jc2oxawow3vkqtzrv.jpg\"]','2023-08-08 10:18:33','2023-08-08 10:18:33'),(38,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691464706/phongtro123/ot9jc2oxawow3vkqtzrv.jpg\"]','2023-08-08 10:18:33','2023-08-08 10:18:33'),(39,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691464706/phongtro123/ot9jc2oxawow3vkqtzrv.jpg\"]','2023-08-08 10:18:33','2023-08-08 10:18:33'),(40,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691464706/phongtro123/ot9jc2oxawow3vkqtzrv.jpg\"]','2023-08-08 10:18:33','2023-08-08 10:18:33'),(41,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:05','2023-08-08 10:33:05'),(42,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:05','2023-08-08 10:33:05'),(43,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:06','2023-08-08 10:33:06'),(44,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:06','2023-08-08 10:33:06'),(45,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:06','2023-08-08 10:33:06'),(46,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:06','2023-08-08 10:33:06'),(47,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:06','2023-08-08 10:33:06'),(48,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:06','2023-08-08 10:33:06'),(49,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:06','2023-08-08 10:33:06'),(50,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:07','2023-08-08 10:33:07'),(51,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:07','2023-08-08 10:33:07'),(52,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:07','2023-08-08 10:33:07'),(53,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:07','2023-08-08 10:33:07'),(54,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:07','2023-08-08 10:33:07'),(55,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:07','2023-08-08 10:33:07'),(56,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:08','2023-08-08 10:33:08'),(57,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:08','2023-08-08 10:33:08'),(58,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:08','2023-08-08 10:33:08'),(59,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:08','2023-08-08 10:33:08'),(60,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:08','2023-08-08 10:33:08'),(61,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:08','2023-08-08 10:33:08'),(62,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691465583/phongtro123/yrfkvk4h2w62mzignggo.jpg\"]','2023-08-08 10:33:08','2023-08-08 10:33:08'),(63,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691467186/phongtro123/ljskasynuazviqrh911u.jpg\"]','2023-08-08 10:59:50','2023-08-08 10:59:50'),(64,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691467787/phongtro123/qdzxgz8fanuthgnhikih.jpg\"]','2023-08-08 11:09:49','2023-08-08 11:09:49'),(65,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691467787/phongtro123/qdzxgz8fanuthgnhikih.jpg\"]','2023-08-08 11:09:49','2023-08-08 11:09:49'),(66,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691467787/phongtro123/qdzxgz8fanuthgnhikih.jpg\"]','2023-08-08 11:09:49','2023-08-08 11:09:49'),(67,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691467787/phongtro123/qdzxgz8fanuthgnhikih.jpg\"]','2023-08-08 11:09:49','2023-08-08 11:09:49'),(68,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691467787/phongtro123/qdzxgz8fanuthgnhikih.jpg\"]','2023-08-08 11:09:49','2023-08-08 11:09:49'),(69,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691467787/phongtro123/qdzxgz8fanuthgnhikih.jpg\"]','2023-08-08 11:09:49','2023-08-08 11:09:49'),(70,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691467787/phongtro123/qdzxgz8fanuthgnhikih.jpg\"]','2023-08-08 11:09:49','2023-08-08 11:09:49'),(71,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691467787/phongtro123/qdzxgz8fanuthgnhikih.jpg\"]','2023-08-08 11:09:49','2023-08-08 11:09:49'),(72,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691467787/phongtro123/qdzxgz8fanuthgnhikih.jpg\"]','2023-08-08 11:09:50','2023-08-08 11:09:50'),(73,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691467787/phongtro123/qdzxgz8fanuthgnhikih.jpg\"]','2023-08-08 11:09:50','2023-08-08 11:09:50'),(74,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691467787/phongtro123/qdzxgz8fanuthgnhikih.jpg\"]','2023-08-08 11:09:50','2023-08-08 11:09:50'),(75,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691467787/phongtro123/qdzxgz8fanuthgnhikih.jpg\"]','2023-08-08 11:09:50','2023-08-08 11:09:50'),(76,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691467787/phongtro123/qdzxgz8fanuthgnhikih.jpg\"]','2023-08-08 11:09:50','2023-08-08 11:09:50'),(77,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691467787/phongtro123/qdzxgz8fanuthgnhikih.jpg\"]','2023-08-08 11:09:50','2023-08-08 11:09:50'),(78,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691467787/phongtro123/qdzxgz8fanuthgnhikih.jpg\"]','2023-08-08 11:09:50','2023-08-08 11:09:50'),(79,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691467787/phongtro123/qdzxgz8fanuthgnhikih.jpg\"]','2023-08-08 11:11:45','2023-08-08 11:11:45'),(80,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691467787/phongtro123/qdzxgz8fanuthgnhikih.jpg\"]','2023-08-08 11:11:45','2023-08-08 11:11:45'),(81,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691467787/phongtro123/qdzxgz8fanuthgnhikih.jpg\"]','2023-08-08 11:11:45','2023-08-08 11:11:45'),(82,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691469637/phongtro123/fqykvvh4ebehduo81bhb.jpg\"]','2023-08-08 11:40:42','2023-08-08 11:40:42'),(83,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691469637/phongtro123/fqykvvh4ebehduo81bhb.jpg\"]','2023-08-08 11:43:34','2023-08-08 11:43:34'),(84,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691586122/phongtro123/wang9htp0i7ne7pevvas.jpg\"]','2023-08-09 20:02:04','2023-08-09 20:02:04'),(85,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-09 23:30:56','2023-08-09 23:30:56'),(86,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-09 23:30:56','2023-08-09 23:30:56'),(87,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-09 23:30:56','2023-08-09 23:30:56'),(88,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-09 23:48:39','2023-08-09 23:48:39'),(89,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-09 23:52:04','2023-08-09 23:52:04'),(90,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-09 23:52:04','2023-08-09 23:52:04'),(91,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-09 23:52:04','2023-08-09 23:52:04'),(92,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-09 23:52:04','2023-08-09 23:52:04'),(93,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-09 23:52:04','2023-08-09 23:52:04'),(94,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-09 23:52:04','2023-08-09 23:52:04'),(95,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-10 00:00:08','2023-08-10 00:00:08'),(96,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-10 00:00:08','2023-08-10 00:00:08'),(97,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-10 00:00:22','2023-08-10 00:00:22'),(98,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-10 00:00:22','2023-08-10 00:00:22'),(99,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-10 00:00:22','2023-08-10 00:00:22'),(100,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-10 00:00:22','2023-08-10 00:00:22'),(101,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-10 00:00:22','2023-08-10 00:00:22'),(102,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-10 00:00:22','2023-08-10 00:00:22'),(103,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-10 00:00:23','2023-08-10 00:00:23'),(104,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-10 00:06:13','2023-08-10 00:06:13'),(105,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-10 00:06:13','2023-08-10 00:06:13'),(106,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-10 00:06:13','2023-08-10 00:06:13'),(107,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-10 00:06:13','2023-08-10 00:06:13'),(108,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-10 00:06:13','2023-08-10 00:06:13'),(109,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-10 00:06:14','2023-08-10 00:06:14'),(110,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-10 00:06:14','2023-08-10 00:06:14'),(111,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-10 00:06:14','2023-08-10 00:06:14'),(112,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-10 00:44:43','2023-08-10 00:44:43'),(113,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-10 00:49:03','2023-08-10 00:49:03'),(114,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691598654/phongtro123/tf1c7t51cc7jp50blaeu.jpg\"]','2023-08-10 00:49:03','2023-08-10 00:49:03'),(115,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691633362/phongtro123/dpijvu4xht1vkdd2lgzu.jpg\"]','2023-08-10 09:09:24','2023-08-10 09:09:24'),(116,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691633750/phongtro123/wtrslp3jhcdorrjsjwit.jpg\"]','2023-08-10 09:15:51','2023-08-10 09:15:51'),(117,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691633785/phongtro123/t6vee9bdok1t8gan7tc3.jpg\"]','2023-08-10 09:16:26','2023-08-10 09:16:26'),(118,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691633822/phongtro123/iiykvxyyahyr3xxmouio.jpg\"]','2023-08-10 09:17:02','2023-08-10 09:17:02'),(119,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691639838/phongtro123/eoeq19qvjvzfcphbhcz0.jpg\"]','2023-08-10 10:57:19','2023-08-10 10:57:19'),(120,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1691891399/phongtro123/y0sintodhgj4dnliusli.jpg\"]','2023-08-13 08:50:00','2023-08-13 08:50:00'),(121,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1692072580/phongtro123/xkajop4dxxufr7aiss7x.jpg\"]','2023-08-15 11:09:52','2023-08-15 11:09:52'),(122,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1692098585/phongtro123/aw8rto7siavd6n4unyzh.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1692098587/phongtro123/xqkeb5en6mjzxp23rfed.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1692098590/phongtro123/zhmvzsh0jf4gqd6ghigd.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1692098594/phongtro123/efobdq98wtycl6zy0kcp.jpg\"]','2023-08-15 18:23:32','2023-08-15 18:23:32'),(123,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1692099010/phongtro123/tzqxmuh43klwpiy2nveh.jpg\"]','2023-08-15 18:30:13','2023-08-15 18:30:13'),(124,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1692100474/phongtro123/sy7agpioa7h8qzcxryjw.jpg\"]','2023-08-15 18:54:36','2023-08-15 18:54:36'),(125,'[\"[\",\"\"\",\"h\",\"t\",\"t\",\"p\",\"s\",\":\",\"/\",\"/\",\"r\",\"e\",\"s\",\".\",\"c\",\"l\",\"o\",\"u\",\"d\",\"i\",\"n\",\"a\",\"r\",\"y\",\".\",\"c\",\"o\",\"m\",\"/\",\"d\",\"o\",\"m\",\"c\",\"o\",\"f\",\"z\",\"l\",\"7\",\"/\",\"i\",\"m\",\"a\",\"g\",\"e\",\"/\",\"u\",\"p\",\"l\",\"o\",\"a\",\"d\",\"/\",\"v\",\"1\",\"6\",\"9\",\"1\",\"5\",\"9\",\"8\",\"6\",\"5\",\"4\",\"/\",\"p\",\"h\",\"o\",\"n\",\"g\",\"t\",\"r\",\"o\",\"1\",\"2\",\"3\",\"/\",\"t\",\"f\",\"1\",\"c\",\"7\",\"t\",\"5\",\"1\",\"c\",\"c\",\"7\",\"j\",\"p\",\"5\",\"0\",\"b\",\"l\",\"a\",\"e\",\"u\",\".\",\"j\",\"p\",\"g\",\"\"\",\"]\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1693040346/phongtro123/ip1xwic0ysblequhlxnl.jpg\"]','2023-08-26 15:59:09','2023-08-26 15:59:09'),(126,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1693040530/phongtro123/sgcxqst4uckkomgwyeuz.jpg\"]','2023-08-26 16:02:12','2023-08-26 16:02:12'),(127,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1693044693/phongtro123/mev8jhafwolvxhdxy0fu.jpg\"]','2023-08-26 17:11:36','2023-08-26 17:11:36'),(128,'[\"[\",\"\"\",\"h\",\"t\",\"t\",\"p\",\"s\",\":\",\"/\",\"/\",\"r\",\"e\",\"s\",\".\",\"c\",\"l\",\"o\",\"u\",\"d\",\"i\",\"n\",\"a\",\"r\",\"y\",\".\",\"c\",\"o\",\"m\",\"/\",\"d\",\"o\",\"m\",\"c\",\"o\",\"f\",\"z\",\"l\",\"7\",\"/\",\"i\",\"m\",\"a\",\"g\",\"e\",\"/\",\"u\",\"p\",\"l\",\"o\",\"a\",\"d\",\"/\",\"v\",\"1\",\"6\",\"9\",\"1\",\"8\",\"9\",\"1\",\"3\",\"9\",\"9\",\"/\",\"p\",\"h\",\"o\",\"n\",\"g\",\"t\",\"r\",\"o\",\"1\",\"2\",\"3\",\"/\",\"y\",\"0\",\"s\",\"i\",\"n\",\"t\",\"o\",\"d\",\"h\",\"g\",\"j\",\"4\",\"d\",\"n\",\"l\",\"i\",\"u\",\"s\",\"l\",\"i\",\".\",\"j\",\"p\",\"g\",\"\"\",\"]\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1693045540/phongtro123/tgwg21xoagfptlxhbjyv.jpg\"]','2023-08-26 17:31:04','2023-08-26 17:31:04'),(129,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1693046001/phongtro123/b0pavz52yxrdcf53b3rd.jpg\"]','2023-08-26 17:33:30','2023-08-26 17:33:30'),(130,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1693195110/phongtro123/p6j1cysl7tkou6lci3b5.jpg\"]','2023-08-28 10:59:29','2023-08-28 10:59:29'),(131,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1693196187/phongtro123/xarhar1jejoogvrhpyce.jpg\"]','2023-08-28 11:16:55','2023-08-28 11:16:55'),(132,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1693196512/phongtro123/dckse8hpj2qk78igh62z.jpg\"]','2023-08-28 11:22:21','2023-08-28 11:22:21'),(133,'[\"[\",\"\"\",\"h\",\"t\",\"t\",\"p\",\"s\",\":\",\"/\",\"/\",\"r\",\"e\",\"s\",\".\",\"c\",\"l\",\"o\",\"u\",\"d\",\"i\",\"n\",\"a\",\"r\",\"y\",\".\",\"c\",\"o\",\"m\",\"/\",\"d\",\"o\",\"m\",\"c\",\"o\",\"f\",\"z\",\"l\",\"7\",\"/\",\"i\",\"m\",\"a\",\"g\",\"e\",\"/\",\"u\",\"p\",\"l\",\"o\",\"a\",\"d\",\"/\",\"v\",\"1\",\"6\",\"9\",\"3\",\"1\",\"9\",\"6\",\"5\",\"1\",\"2\",\"/\",\"p\",\"h\",\"o\",\"n\",\"g\",\"t\",\"r\",\"o\",\"1\",\"2\",\"3\",\"/\",\"d\",\"c\",\"k\",\"s\",\"e\",\"8\",\"h\",\"p\",\"j\",\"2\",\"q\",\"k\",\"7\",\"8\",\"i\",\"g\",\"h\",\"6\",\"2\",\"z\",\".\",\"j\",\"p\",\"g\",\"\"\",\"]\"]','2023-08-30 21:07:27','2023-08-30 21:07:27'),(134,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1693196512/phongtro123/dckse8hpj2qk78igh62z.jpg\"]','2023-08-31 08:46:59','2023-08-31 08:46:59'),(135,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1693196512/phongtro123/dckse8hpj2qk78igh62z.jpg\"]','2023-08-31 08:47:18','2023-08-31 08:47:18'),(136,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1693196512/phongtro123/dckse8hpj2qk78igh62z.jpg\"]','2023-08-31 08:47:39','2023-08-31 08:47:39'),(137,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1693196512/phongtro123/dckse8hpj2qk78igh62z.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1693446557/phongtro123/orwrrd8i63x1awobg7rc.jpg\"]','2023-08-31 08:49:39','2023-08-31 08:49:39'),(138,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1693196512/phongtro123/dckse8hpj2qk78igh62z.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1693446557/phongtro123/orwrrd8i63x1awobg7rc.jpg\"]','2023-08-31 08:51:13','2023-08-31 08:51:13'),(139,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1693196512/phongtro123/dckse8hpj2qk78igh62z.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1693448272/phongtro123/dyk3ztcbtmluaxhtbjot.jpg\"]','2023-08-31 09:04:02','2023-08-31 09:17:54'),(140,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1693446557/phongtro123/orwrrd8i63x1awobg7rc.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1693448392/phongtro123/for5t0bt2gzbwppkr54y.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1693448554/phongtro123/nvyvvn728bnvfgb5e0q1.png\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1693451649/phongtro123/o0dwn6zsk7wlmbphz3mv.jpg\"]','2023-08-31 09:08:33','2023-08-31 10:14:13'),(141,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1694439105/phongtro123/klzfkshscumhx13ohilo.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1694439265/phongtro123/jtmwnp2wzho1e8ntr8t0.jpg\"]','2023-09-11 20:33:55','2023-09-11 20:34:29'),(142,'[\"https://res.cloudinary.com/domcofzl7/image/upload/v1695021138/phongtro123/uuml6d6bzd3ntopetait.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1695021141/phongtro123/t541o0upwvqqce4le4h3.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1695021143/phongtro123/ygu8chtksyoay0l4gxk0.jpg\",\"https://res.cloudinary.com/domcofzl7/image/upload/v1695021148/phongtro123/ziijo7yawcnvrtbuoqdp.jpg\"]','2023-09-18 14:12:31','2023-09-18 14:12:31');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khoahoc`
--

DROP TABLE IF EXISTS `khoahoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khoahoc` (
  `KhoahocID` int NOT NULL AUTO_INCREMENT,
  `TenKhoaHoc` varchar(45) DEFAULT NULL,
  `MoTa` varchar(45) DEFAULT NULL,
  `HocPhi` varchar(45) DEFAULT NULL,
  `NgayBatDau` varchar(45) DEFAULT NULL,
  `NgayKetThuc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`KhoahocID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khoahoc`
--

LOCK TABLES `khoahoc` WRITE;
/*!40000 ALTER TABLE `khoahoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `khoahoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `label`
--

DROP TABLE IF EXISTS `label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `label` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(120) DEFAULT NULL,
  `value` varchar(120) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `labelCode` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `label`
--

LOCK TABLES `label` WRITE;
/*!40000 ALTER TABLE `label` DISABLE KEYS */;
/*!40000 ALTER TABLE `label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ngayhoc`
--

DROP TABLE IF EXISTS `ngayhoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ngayhoc` (
  `NgayHocID` int NOT NULL AUTO_INCREMENT,
  `KhoaHocID` varchar(45) DEFAULT NULL,
  `NoiDung` varchar(45) DEFAULT NULL,
  `GhiChu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`NgayHocID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ngayhoc`
--

LOCK TABLES `ngayhoc` WRITE;
/*!40000 ALTER TABLE `ngayhoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `ngayhoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overview`
--

DROP TABLE IF EXISTS `overview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `overview` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(120) DEFAULT NULL,
  `area` varchar(120) DEFAULT NULL,
  `type` varchar(120) DEFAULT NULL,
  `target` varchar(120) DEFAULT NULL,
  `expire` varchar(120) DEFAULT NULL,
  `bonus` varchar(120) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overview`
--

LOCK TABLES `overview` WRITE;
/*!40000 ALTER TABLE `overview` DISABLE KEYS */;
INSERT INTO `overview` VALUES (1,NULL,NULL,NULL,'Nam',NULL,NULL,'2023-08-15 11:09:52','2023-08-15 11:09:52'),(2,NULL,NULL,NULL,'Tất cả',NULL,NULL,'2023-08-15 18:23:32','2023-08-15 18:23:32'),(3,NULL,NULL,NULL,'Tất cả',NULL,NULL,'2023-08-15 18:30:13','2023-08-15 18:30:13'),(4,NULL,NULL,NULL,'Nam',NULL,NULL,'2023-08-15 18:54:38','2023-08-15 18:54:38'),(5,NULL,NULL,NULL,'Nam',NULL,NULL,'2023-08-26 15:59:09','2023-08-26 15:59:09'),(6,NULL,NULL,NULL,'Nam',NULL,NULL,'2023-08-26 16:02:12','2023-08-26 16:02:12'),(7,NULL,NULL,NULL,'Nam',NULL,NULL,'2023-08-26 17:11:36','2023-08-26 17:11:36'),(8,NULL,NULL,NULL,'Nam',NULL,NULL,'2023-08-26 17:31:04','2023-08-26 17:31:04'),(9,NULL,NULL,NULL,'Nam',NULL,NULL,'2023-08-26 17:33:30','2023-08-26 17:33:30'),(10,NULL,NULL,NULL,'Nam',NULL,NULL,'2023-08-28 10:59:29','2023-08-28 10:59:29'),(11,NULL,NULL,NULL,'Nam',NULL,NULL,'2023-08-28 11:16:55','2023-08-28 11:16:55'),(12,NULL,NULL,NULL,'Nam',NULL,NULL,'2023-08-28 11:22:21','2023-08-28 11:22:21'),(13,NULL,NULL,NULL,'Nam',NULL,NULL,'2023-08-30 21:07:27','2023-08-30 21:07:27'),(14,NULL,NULL,NULL,'Nam',NULL,NULL,'2023-08-31 08:46:59','2023-08-31 08:46:59'),(15,NULL,NULL,NULL,'Nam',NULL,NULL,'2023-08-31 08:47:19','2023-08-31 08:47:19'),(16,NULL,NULL,NULL,'Nam',NULL,NULL,'2023-08-31 08:47:39','2023-08-31 08:47:39'),(17,NULL,NULL,NULL,'Nam',NULL,NULL,'2023-08-31 08:49:39','2023-08-31 08:49:39'),(18,NULL,NULL,NULL,'Nam',NULL,NULL,'2023-08-31 08:51:13','2023-08-31 08:51:13'),(19,NULL,NULL,NULL,'Nam',NULL,NULL,'2023-08-31 09:04:02','2023-08-31 09:04:02'),(20,NULL,NULL,NULL,'Nam',NULL,NULL,'2023-08-31 09:08:33','2023-08-31 09:08:33'),(21,NULL,NULL,NULL,'Nam',NULL,NULL,'2023-09-11 20:33:55','2023-09-11 20:33:55'),(22,NULL,NULL,NULL,'Tất cả',NULL,NULL,'2023-09-18 14:12:31','2023-09-18 14:12:31');
/*!40000 ALTER TABLE `overview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(120) DEFAULT NULL,
  `star` varchar(120) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `description` longtext,
  `label_code` varchar(120) DEFAULT NULL,
  `attribute_id` int DEFAULT NULL,
  `images_id` int DEFAULT NULL,
  `category_code` varchar(120) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `overview_id` int DEFAULT NULL,
  `province` varchar(120) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `street` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'Cho thuê nhà mặt tiền 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn','4','Địa chỉ: Bùi Công Trừng, Xã Đông Thạnh, Huyện Hóc Môn, Hồ Chí Minh','[\"Chính chủ, cần cho thuê nhà mặt tiền\",\"Địa chỉ: 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn\",\"Diện tích: 3.5 x 9, xây 1 trệt 2 lầu.\",\"Trệt trống suốt có 1 WC\",\"Lầu 1&2 : mỗi lầu 1 phòng ngủ và 1 phòng khách, 1 WC\",\"Giá thuê: 6 triệu/ tháng, cọc 2 tháng.\",\"Cho thuê ngắn hoặc dài hạn đều được\",\"Vị trí: Gần chùa Pháp Bửu, gần nhà thờ, chợ, trường học, siêu thị mini... Trục chính kết nối Hóc Môn với Quận 12, Củ Chị và Gò Vấp.\",\"Phù hợp kinh doanh: Salon tóc, spa, shop, tiệm thuốc, văn phòng nhà đất, ở gia đình, ....\",\"Liên hệ: 0902.973.753 gặp a Thủ\"]','1',1,4,'1',1,1,NULL,'2023-08-06 06:17:22',NULL,NULL,NULL),(2,'Cho thuê Nhà, Kho, Bãi Phong Phú, Đa Phước, Bình Chánh','5','Địa chỉ: Đường Trần Quang Khải, Phường Tân Định, Quận 1, Hồ Chí Minh','[\"Chính chủ, cần cho thuê nhà mặt tiền\",\"Địa chỉ: 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn\",\"Diện tích: 3.5 x 9, xây 1 trệt 2 lầu.\",\"Trệt trống suốt có 1 WC\",\"Lầu 1&2 : mỗi lầu 1 phòng ngủ và 1 phòng khách, 1 WC\",\"Giá thuê: 6 triệu/ tháng, cọc 2 tháng.\",\"Cho thuê ngắn hoặc dài hạn đều được\",\"Vị trí: Gần chùa Pháp Bửu, gần nhà thờ, chợ, trường học, siêu thị mini... Trục chính kết nối Hóc Môn với Quận 12, Củ Chị và Gò Vấp.\",\"Phù hợp kinh doanh: Salon tóc, spa, shop, tiệm thuốc, văn phòng nhà đất, ở gia đình, ....\",\"Liên hệ: 0902.973.753 gặp a Thủ\"]','2',2,2,'2',2,2,NULL,'2023-08-06 06:17:22',NULL,NULL,NULL),(4,'Khai Trương Sàn Làm Văn Phòng Mặt Tiền Trần Quang Khải Gần Cầu Bông','3','Địa chỉ: Đường Nhất Chi Mai, Phường 13, Quận Tân Bình, Hồ Chí Minh','[\"Chính chủ, cần cho thuê nhà mặt tiền\",\"Địa chỉ: 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn\",\"Diện tích: 3.5 x 9, xây 1 trệt 2 lầu.\",\"Trệt trống suốt có 1 WC\",\"Lầu 1&2 : mỗi lầu 1 phòng ngủ và 1 phòng khách, 1 WC\",\"Giá thuê: 6 triệu/ tháng, cọc 2 tháng.\",\"Cho thuê ngắn hoặc dài hạn đều được\",\"Vị trí: Gần chùa Pháp Bửu, gần nhà thờ, chợ, trường học, siêu thị mini... Trục chính kết nối Hóc Môn với Quận 12, Củ Chị và Gò Vấp.\",\"Phù hợp kinh doanh: Salon tóc, spa, shop, tiệm thuốc, văn phòng nhà đất, ở gia đình, ....\",\"Liên hệ: 0902.973.753 gặp a Thủ\"]','1',4,1,'1',1,2,NULL,'2023-08-06 06:17:22',NULL,NULL,NULL),(6,'Cho thuê nhà mặt tiền 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn','5','Địa chỉ: Bùi Công Trừng, Xã Đông Thạnh, Huyện Hóc Môn, Hồ Chí Minh','[\"Chính chủ, cần cho thuê nhà mặt tiền\",\"Địa chỉ: 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn\",\"Diện tích: 3.5 x 9, xây 1 trệt 2 lầu.\",\"Trệt trống suốt có 1 WC\",\"Lầu 1&2 : mỗi lầu 1 phòng ngủ và 1 phòng khách, 1 WC\",\"Giá thuê: 6 triệu/ tháng, cọc 2 tháng.\",\"Cho thuê ngắn hoặc dài hạn đều được\",\"Vị trí: Gần chùa Pháp Bửu, gần nhà thờ, chợ, trường học, siêu thị mini... Trục chính kết nối Hóc Môn với Quận 12, Củ Chị và Gò Vấp.\",\"Phù hợp kinh doanh: Salon tóc, spa, shop, tiệm thuốc, văn phòng nhà đất, ở gia đình, ....\",\"Liên hệ: 0902.973.753 gặp a Thủ\"]','2',1,2,'2',2,2,NULL,'2023-08-06 06:17:22',NULL,NULL,NULL),(8,'Cho thuê nhà mặt tiền 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn','3','Địa chỉ: Bùi Công Trừng, Xã Đông Thạnh, Huyện Hóc Môn, Hồ Chí Minh','[\"Chính chủ, cần cho thuê nhà mặt tiền\",\"Địa chỉ: 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn\",\"Diện tích: 3.5 x 9, xây 1 trệt 2 lầu.\",\"Trệt trống suốt có 1 WC\",\"Lầu 1&2 : mỗi lầu 1 phòng ngủ và 1 phòng khách, 1 WC\",\"Giá thuê: 6 triệu/ tháng, cọc 2 tháng.\",\"Cho thuê ngắn hoặc dài hạn đều được\",\"Vị trí: Gần chùa Pháp Bửu, gần nhà thờ, chợ, trường học, siêu thị mini... Trục chính kết nối Hóc Môn với Quận 12, Củ Chị và Gò Vấp.\",\"Phù hợp kinh doanh: Salon tóc, spa, shop, tiệm thuốc, văn phòng nhà đất, ở gia đình, ....\",\"Liên hệ: 0902.973.753 gặp a Thủ\"]','`1',2,1,'1',2,2,NULL,'2023-08-06 06:17:22',NULL,NULL,NULL),(9,'Cho thuê nhà mặt tiền 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn','2','Địa chỉ: Bùi Công Trừng, Xã Đông Thạnh, Huyện Hóc Môn, Hồ Chí Minh','[\"Chính chủ, cần cho thuê nhà mặt tiền\",\"Địa chỉ: 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn\",\"Diện tích: 3.5 x 9, xây 1 trệt 2 lầu.\",\"Trệt trống suốt có 1 WC\",\"Lầu 1&2 : mỗi lầu 1 phòng ngủ và 1 phòng khách, 1 WC\",\"Giá thuê: 6 triệu/ tháng, cọc 2 tháng.\",\"Cho thuê ngắn hoặc dài hạn đều được\",\"Vị trí: Gần chùa Pháp Bửu, gần nhà thờ, chợ, trường học, siêu thị mini... Trục chính kết nối Hóc Môn với Quận 12, Củ Chị và Gò Vấp.\",\"Phù hợp kinh doanh: Salon tóc, spa, shop, tiệm thuốc, văn phòng nhà đất, ở gia đình, ....\",\"Liên hệ: 0902.973.753 gặp a Thủ\"]','1',2,2,'2',2,2,NULL,'2023-08-06 06:17:22',NULL,NULL,NULL),(10,'Cho thuê nhà mặt tiền 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn','3','Địa chỉ: Bùi Công Trừng, Xã Đông Thạnh, Huyện Hóc Môn, Hồ Chí Minh','[\"Chính chủ, cần cho thuê nhà mặt tiền\",\"Địa chỉ: 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn\",\"Diện tích: 3.5 x 9, xây 1 trệt 2 lầu.\",\"Trệt trống suốt có 1 WC\",\"Lầu 1&2 : mỗi lầu 1 phòng ngủ và 1 phòng khách, 1 WC\",\"Giá thuê: 6 triệu/ tháng, cọc 2 tháng.\",\"Cho thuê ngắn hoặc dài hạn đều được\",\"Vị trí: Gần chùa Pháp Bửu, gần nhà thờ, chợ, trường học, siêu thị mini... Trục chính kết nối Hóc Môn với Quận 12, Củ Chị và Gò Vấp.\",\"Phù hợp kinh doanh: Salon tóc, spa, shop, tiệm thuốc, văn phòng nhà đất, ở gia đình, ....\",\"Liên hệ: 0902.973.753 gặp a Thủ\"]','`1',4,1,'1',2,2,NULL,'2023-08-06 06:17:22',NULL,NULL,NULL),(11,'Cho thuê nhà mặt tiền 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn','3','Địa chỉ: Bùi Công Trừng, Xã Đông Thạnh, Huyện Hóc Môn, Hồ Chí Minh','[\"Chính chủ, cần cho thuê nhà mặt tiền\",\"Địa chỉ: 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn\",\"Diện tích: 3.5 x 9, xây 1 trệt 2 lầu.\",\"Trệt trống suốt có 1 WC\",\"Lầu 1&2 : mỗi lầu 1 phòng ngủ và 1 phòng khách, 1 WC\",\"Giá thuê: 6 triệu/ tháng, cọc 2 tháng.\",\"Cho thuê ngắn hoặc dài hạn đều được\",\"Vị trí: Gần chùa Pháp Bửu, gần nhà thờ, chợ, trường học, siêu thị mini... Trục chính kết nối Hóc Môn với Quận 12, Củ Chị và Gò Vấp.\",\"Phù hợp kinh doanh: Salon tóc, spa, shop, tiệm thuốc, văn phòng nhà đất, ở gia đình, ....\",\"Liên hệ: 0902.973.753 gặp a Thủ\"]','`1',2,1,'1',2,2,NULL,'2023-08-06 06:17:22',NULL,NULL,NULL),(12,'Cho thuê nhà mặt tiền 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn','3','Địa chỉ: Bùi Công Trừng, Xã Đông Thạnh, Huyện Hóc Môn, Hồ Chí Minh','[\"Chính chủ, cần cho thuê nhà mặt tiền\",\"Địa chỉ: 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn\",\"Diện tích: 3.5 x 9, xây 1 trệt 2 lầu.\",\"Trệt trống suốt có 1 WC\",\"Lầu 1&2 : mỗi lầu 1 phòng ngủ và 1 phòng khách, 1 WC\",\"Giá thuê: 6 triệu/ tháng, cọc 2 tháng.\",\"Cho thuê ngắn hoặc dài hạn đều được\",\"Vị trí: Gần chùa Pháp Bửu, gần nhà thờ, chợ, trường học, siêu thị mini... Trục chính kết nối Hóc Môn với Quận 12, Củ Chị và Gò Vấp.\",\"Phù hợp kinh doanh: Salon tóc, spa, shop, tiệm thuốc, văn phòng nhà đất, ở gia đình, ....\",\"Liên hệ: 0902.973.753 gặp a Thủ\"]','`1',2,1,'1',2,2,NULL,'2023-08-06 06:17:22',NULL,NULL,NULL),(13,'Cho thuê nhà mặt tiền 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn','3','Địa chỉ: Bùi Công Trừng, Xã Đông Thạnh, Huyện Hóc Môn, Hồ Chí Minh','[\"Chính chủ, cần cho thuê nhà mặt tiền\",\"Địa chỉ: 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn\",\"Diện tích: 3.5 x 9, xây 1 trệt 2 lầu.\",\"Trệt trống suốt có 1 WC\",\"Lầu 1&2 : mỗi lầu 1 phòng ngủ và 1 phòng khách, 1 WC\",\"Giá thuê: 6 triệu/ tháng, cọc 2 tháng.\",\"Cho thuê ngắn hoặc dài hạn đều được\",\"Vị trí: Gần chùa Pháp Bửu, gần nhà thờ, chợ, trường học, siêu thị mini... Trục chính kết nối Hóc Môn với Quận 12, Củ Chị và Gò Vấp.\",\"Phù hợp kinh doanh: Salon tóc, spa, shop, tiệm thuốc, văn phòng nhà đất, ở gia đình, ....\",\"Liên hệ: 0902.973.753 gặp a Thủ\"]','`1',2,1,'1',2,2,NULL,'2023-08-06 06:17:22',NULL,NULL,NULL),(14,'Cho thuê nhà mặt tiền 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn','3','Địa chỉ: Bùi Công Trừng, Xã Đông Thạnh, Huyện Hóc Môn, Hồ Chí Minh','[\"Chính chủ, cần cho thuê nhà mặt tiền\",\"Địa chỉ: 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn\",\"Diện tích: 3.5 x 9, xây 1 trệt 2 lầu.\",\"Trệt trống suốt có 1 WC\",\"Lầu 1&2 : mỗi lầu 1 phòng ngủ và 1 phòng khách, 1 WC\",\"Giá thuê: 6 triệu/ tháng, cọc 2 tháng.\",\"Cho thuê ngắn hoặc dài hạn đều được\",\"Vị trí: Gần chùa Pháp Bửu, gần nhà thờ, chợ, trường học, siêu thị mini... Trục chính kết nối Hóc Môn với Quận 12, Củ Chị và Gò Vấp.\",\"Phù hợp kinh doanh: Salon tóc, spa, shop, tiệm thuốc, văn phòng nhà đất, ở gia đình, ....\",\"Liên hệ: 0902.973.753 gặp a Thủ\"]','`1',2,1,'1',2,2,NULL,'2023-08-06 06:17:22',NULL,NULL,NULL),(15,'Cho thuê nhà mặt tiền 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn','3','Địa chỉ: Bùi Công Trừng, Xã Đông Thạnh, Huyện Hóc Môn, Hồ Chí Minh','[\"Chính chủ, cần cho thuê nhà mặt tiền\",\"Địa chỉ: 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn\",\"Diện tích: 3.5 x 9, xây 1 trệt 2 lầu.\",\"Trệt trống suốt có 1 WC\",\"Lầu 1&2 : mỗi lầu 1 phòng ngủ và 1 phòng khách, 1 WC\",\"Giá thuê: 6 triệu/ tháng, cọc 2 tháng.\",\"Cho thuê ngắn hoặc dài hạn đều được\",\"Vị trí: Gần chùa Pháp Bửu, gần nhà thờ, chợ, trường học, siêu thị mini... Trục chính kết nối Hóc Môn với Quận 12, Củ Chị và Gò Vấp.\",\"Phù hợp kinh doanh: Salon tóc, spa, shop, tiệm thuốc, văn phòng nhà đất, ở gia đình, ....\",\"Liên hệ: 0902.973.753 gặp a Thủ\"]','`1',2,1,'1',2,2,NULL,'2023-08-06 06:17:22',NULL,NULL,NULL),(16,'Cho thuê nhà mặt tiền 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn','3','Địa chỉ: Bùi Công Trừng, Xã Đông Thạnh, Huyện Hóc Môn, Hồ Chí Minh','[\"Chính chủ, cần cho thuê nhà mặt tiền\",\"Địa chỉ: 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn\",\"Diện tích: 3.5 x 9, xây 1 trệt 2 lầu.\",\"Trệt trống suốt có 1 WC\",\"Lầu 1&2 : mỗi lầu 1 phòng ngủ và 1 phòng khách, 1 WC\",\"Giá thuê: 6 triệu/ tháng, cọc 2 tháng.\",\"Cho thuê ngắn hoặc dài hạn đều được\",\"Vị trí: Gần chùa Pháp Bửu, gần nhà thờ, chợ, trường học, siêu thị mini... Trục chính kết nối Hóc Môn với Quận 12, Củ Chị và Gò Vấp.\",\"Phù hợp kinh doanh: Salon tóc, spa, shop, tiệm thuốc, văn phòng nhà đất, ở gia đình, ....\",\"Liên hệ: 0902.973.753 gặp a Thủ\"]','`1',2,4,'1',2,2,NULL,'2023-08-06 06:17:22',NULL,NULL,NULL),(17,'Cho thuê nhà mặt tiền 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn','3','Địa chỉ: Bùi Công Trừng, Xã Đông Thạnh, Huyện Hóc Môn, Hồ Chí Minh','[\"Chính chủ, cần cho thuê nhà mặt tiền\",\"Địa chỉ: 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn\",\"Diện tích: 3.5 x 9, xây 1 trệt 2 lầu.\",\"Trệt trống suốt có 1 WC\",\"Lầu 1&2 : mỗi lầu 1 phòng ngủ và 1 phòng khách, 1 WC\",\"Giá thuê: 6 triệu/ tháng, cọc 2 tháng.\",\"Cho thuê ngắn hoặc dài hạn đều được\",\"Vị trí: Gần chùa Pháp Bửu, gần nhà thờ, chợ, trường học, siêu thị mini... Trục chính kết nối Hóc Môn với Quận 12, Củ Chị và Gò Vấp.\",\"Phù hợp kinh doanh: Salon tóc, spa, shop, tiệm thuốc, văn phòng nhà đất, ở gia đình, ....\",\"Liên hệ: 0902.973.753 gặp a Thủ\"]','`1',2,1,'1',2,2,NULL,'2023-08-06 06:17:22',NULL,NULL,NULL),(18,'Cho thuê nhà mặt tiền 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn','3','Địa chỉ: Bùi Công Trừng, Xã Đông Thạnh, Huyện Hóc Môn, Hồ Chí Minh','[\"Chính chủ, cần cho thuê nhà mặt tiền\",\"Địa chỉ: 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn\",\"Diện tích: 3.5 x 9, xây 1 trệt 2 lầu.\",\"Trệt trống suốt có 1 WC\",\"Lầu 1&2 : mỗi lầu 1 phòng ngủ và 1 phòng khách, 1 WC\",\"Giá thuê: 6 triệu/ tháng, cọc 2 tháng.\",\"Cho thuê ngắn hoặc dài hạn đều được\",\"Vị trí: Gần chùa Pháp Bửu, gần nhà thờ, chợ, trường học, siêu thị mini... Trục chính kết nối Hóc Môn với Quận 12, Củ Chị và Gò Vấp.\",\"Phù hợp kinh doanh: Salon tóc, spa, shop, tiệm thuốc, văn phòng nhà đất, ở gia đình, ....\",\"Liên hệ: 0902.973.753 gặp a Thủ\"]','`1',2,1,'1',2,2,NULL,'2023-08-06 06:17:22',NULL,NULL,NULL),(19,'Cho thuê nhà mặt tiền 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn','3','Địa chỉ: Bùi Công Trừng, Xã Đông Thạnh, Huyện Hóc Môn, Hồ Chí Minh','[\"Chính chủ, cần cho thuê nhà mặt tiền\",\"Địa chỉ: 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn\",\"Diện tích: 3.5 x 9, xây 1 trệt 2 lầu.\",\"Trệt trống suốt có 1 WC\",\"Lầu 1&2 : mỗi lầu 1 phòng ngủ và 1 phòng khách, 1 WC\",\"Giá thuê: 6 triệu/ tháng, cọc 2 tháng.\",\"Cho thuê ngắn hoặc dài hạn đều được\",\"Vị trí: Gần chùa Pháp Bửu, gần nhà thờ, chợ, trường học, siêu thị mini... Trục chính kết nối Hóc Môn với Quận 12, Củ Chị và Gò Vấp.\",\"Phù hợp kinh doanh: Salon tóc, spa, shop, tiệm thuốc, văn phòng nhà đất, ở gia đình, ....\",\"Liên hệ: 0902.973.753 gặp a Thủ\"]','`1',2,1,'1',2,2,NULL,'2023-08-06 06:17:22',NULL,NULL,NULL),(20,'Cho thuê nhà mặt tiền 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn','3','Địa chỉ: Bùi Công Trừng, Xã Đông Thạnh, Huyện Hóc Môn, Hồ Chí Minh','[\"Chính chủ, cần cho thuê nhà mặt tiền\",\"Địa chỉ: 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn\",\"Diện tích: 3.5 x 9, xây 1 trệt 2 lầu.\",\"Trệt trống suốt có 1 WC\",\"Lầu 1&2 : mỗi lầu 1 phòng ngủ và 1 phòng khách, 1 WC\",\"Giá thuê: 6 triệu/ tháng, cọc 2 tháng.\",\"Cho thuê ngắn hoặc dài hạn đều được\",\"Vị trí: Gần chùa Pháp Bửu, gần nhà thờ, chợ, trường học, siêu thị mini... Trục chính kết nối Hóc Môn với Quận 12, Củ Chị và Gò Vấp.\",\"Phù hợp kinh doanh: Salon tóc, spa, shop, tiệm thuốc, văn phòng nhà đất, ở gia đình, ....\",\"Liên hệ: 0902.973.753 gặp a Thủ\"]','`1',2,1,'1',2,2,NULL,'2023-08-06 06:17:22',NULL,NULL,NULL),(21,'Cho thuê nhà mặt tiền 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn','3','Địa chỉ: Bùi Công Trừng, Xã Đông Thạnh, Huyện Hóc Môn, Hồ Chí Minh','[\"Chính chủ, cần cho thuê nhà mặt tiền\",\"Địa chỉ: 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn\",\"Diện tích: 3.5 x 9, xây 1 trệt 2 lầu.\",\"Trệt trống suốt có 1 WC\",\"Lầu 1&2 : mỗi lầu 1 phòng ngủ và 1 phòng khách, 1 WC\",\"Giá thuê: 6 triệu/ tháng, cọc 2 tháng.\",\"Cho thuê ngắn hoặc dài hạn đều được\",\"Vị trí: Gần chùa Pháp Bửu, gần nhà thờ, chợ, trường học, siêu thị mini... Trục chính kết nối Hóc Môn với Quận 12, Củ Chị và Gò Vấp.\",\"Phù hợp kinh doanh: Salon tóc, spa, shop, tiệm thuốc, văn phòng nhà đất, ở gia đình, ....\",\"Liên hệ: 0902.973.753 gặp a Thủ\"]','`1',2,1,'1',2,2,NULL,'2023-08-06 06:17:22',NULL,NULL,NULL),(22,'Cho thuê nhà mặt tiền 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn','3','Địa chỉ: Bùi Công Trừng, Xã Đông Thạnh, Huyện Hóc Môn, Hồ Chí Minh','[\"Chính chủ, cần cho thuê nhà mặt tiền\",\"Địa chỉ: 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn\",\"Diện tích: 3.5 x 9, xây 1 trệt 2 lầu.\",\"Trệt trống suốt có 1 WC\",\"Lầu 1&2 : mỗi lầu 1 phòng ngủ và 1 phòng khách, 1 WC\",\"Giá thuê: 6 triệu/ tháng, cọc 2 tháng.\",\"Cho thuê ngắn hoặc dài hạn đều được\",\"Vị trí: Gần chùa Pháp Bửu, gần nhà thờ, chợ, trường học, siêu thị mini... Trục chính kết nối Hóc Môn với Quận 12, Củ Chị và Gò Vấp.\",\"Phù hợp kinh doanh: Salon tóc, spa, shop, tiệm thuốc, văn phòng nhà đất, ở gia đình, ....\",\"Liên hệ: 0902.973.753 gặp a Thủ\"]','`1',2,4,'1',2,2,NULL,'2023-08-06 06:17:22',NULL,NULL,NULL),(23,'Cho thuê nhà mặt tiền 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn','3','Địa chỉ: Bùi Công Trừng, Xã Đông Thạnh, Huyện Hóc Môn, Hồ Chí Minh','[\"Chính chủ, cần cho thuê nhà mặt tiền\",\"Địa chỉ: 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn\",\"Diện tích: 3.5 x 9, xây 1 trệt 2 lầu.\",\"Trệt trống suốt có 1 WC\",\"Lầu 1&2 : mỗi lầu 1 phòng ngủ và 1 phòng khách, 1 WC\",\"Giá thuê: 6 triệu/ tháng, cọc 2 tháng.\",\"Cho thuê ngắn hoặc dài hạn đều được\",\"Vị trí: Gần chùa Pháp Bửu, gần nhà thờ, chợ, trường học, siêu thị mini... Trục chính kết nối Hóc Môn với Quận 12, Củ Chị và Gò Vấp.\",\"Phù hợp kinh doanh: Salon tóc, spa, shop, tiệm thuốc, văn phòng nhà đất, ở gia đình, ....\",\"Liên hệ: 0902.973.753 gặp a Thủ\"]','`1',2,1,'1',2,2,NULL,'2023-08-06 06:17:22',NULL,NULL,NULL),(24,'Cho thuê nhà mặt tiền 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn','3','Địa chỉ: Bùi Công Trừng, Xã Đông Thạnh, Huyện Hóc Môn, Hồ Chí Minh','[\"Chính chủ, cần cho thuê nhà mặt tiền\",\"Địa chỉ: 24 Bùi Công Trừng, Đông Thạnh, Hóc Môn\",\"Diện tích: 3.5 x 9, xây 1 trệt 2 lầu.\",\"Trệt trống suốt có 1 WC\",\"Lầu 1&2 : mỗi lầu 1 phòng ngủ và 1 phòng khách, 1 WC\",\"Giá thuê: 6 triệu/ tháng, cọc 2 tháng.\",\"Cho thuê ngắn hoặc dài hạn đều được\",\"Vị trí: Gần chùa Pháp Bửu, gần nhà thờ, chợ, trường học, siêu thị mini... Trục chính kết nối Hóc Môn với Quận 12, Củ Chị và Gò Vấp.\",\"Phù hợp kinh doanh: Salon tóc, spa, shop, tiệm thuốc, văn phòng nhà đất, ở gia đình, ....\",\"Liên hệ: 0902.973.753 gặp a Thủ\"]','`1',2,4,'1',2,2,NULL,'2023-08-06 06:17:22',NULL,NULL,NULL),(32,'Thuê phòng trọ giá rẻ',NULL,' Phường Minh Khai, Quận Bắc Từ Liêm, Hà Nội','[\"Thuê phòng trọ giá rẻ\"]','1',12,14,'1',23,1,NULL,'2023-08-06 06:17:22','2023-08-06 06:17:22',NULL,NULL),(33,'Cho thuê nhà',NULL,' Xã Đại Hà, Huyện Kiến Thuỵ, Hải Phòng','[\"nhà sạch\"]','2',13,15,'2',23,1,NULL,'2023-08-06 06:27:40','2023-08-06 06:27:40',NULL,NULL),(96,'1',NULL,' Xã Hòa Bắc, Huyện Hòa Vang, Đà Nẵng','[\"1\"]','1',76,78,'1',24,1,NULL,'2023-08-08 11:09:50','2023-08-08 11:09:50',NULL,NULL),(97,'1',NULL,' Xã Hòa Bắc, Huyện Hòa Vang, Đà Nẵng','[\"1\"]','1',77,79,'1',24,1,NULL,'2023-08-08 11:11:45','2023-08-08 11:11:45',0,NULL),(98,'1',NULL,' Xã Hòa Bắc, Huyện Hòa Vang, Đà Nẵng','[\"1\"]','1',78,80,'1',24,1,NULL,'2023-08-08 11:11:45','2023-08-08 11:11:45',0,NULL),(99,'1',NULL,' Xã Hòa Bắc, Huyện Hòa Vang, Đà Nẵng','[\"1\"]','1',79,81,'1',24,1,NULL,'2023-08-08 11:11:46','2023-08-08 11:11:46',0,NULL),(100,'11',NULL,' Xã Đông Bình, Huyện Thới Lai, Cần Thơ','[\"11\"]','2',80,82,'2',24,1,NULL,'2023-08-08 11:40:42','2023-08-08 11:40:42',0,NULL),(101,'11',NULL,' Xã Đông Bình, Huyện Thới Lai, Cần Thơ','[\"11\"]','2',81,83,'2',24,1,NULL,'2023-08-08 11:43:34','2023-08-08 11:43:34',0,NULL),(138,'Thuê nhà giá rẻ',NULL,' Xã Đông Bình, Huyện Thới Lai, Cần Thơ','[\"Cho thuê nhà giá siêu rẻ\"]','2',118,120,'2',3,1,NULL,'2023-08-13 08:50:00','2023-08-13 08:50:00',1,NULL),(141,'Cho thuê phọng trọ giá rẻ',NULL,' Phường Phương Canh, Quận Nam Từ Liêm, Hà Nội','[\"Cho thuê phòng trọ giá rẻ thoáng mát, chung chủ, đầy đủ điều hòa nóng lạnh, gần Trường Đại học công nghiệp Hà Nội, đối diện chợ Nhổn, phòng rộng ở được đến 4, 5 người\"]','1',120,122,'1',3,2,NULL,'2023-08-15 18:23:32','2023-08-15 18:23:32',1,NULL),(142,'as',NULL,'Thôn Cu Te, Phường Hòa Thọ Đông, Quận Cẩm Lệ, Đà Nẵng','[\"assss\"]','2',121,123,'2',3,3,'Thành phố Đà Nẵng','2023-08-15 18:30:13','2023-08-31 10:18:06',1,'Thôn Cu Te'),(148,'Thuê nhà giá rẻ',NULL,'Thôn Minh Khai, Thị trấn Trường Sơn, Huyện An Lão, Hải Phòng','[\"Cho thuê nhà trọ giá rẻ nguyên căn, đầy đủ điều hòa nóng lạnh\"]','1',127,129,'1',3,9,'Thành phố Hải Phòng','2023-08-26 17:33:30','2023-08-26 17:33:30',1,NULL),(151,'Thuê phòng trọ giá rẻ',NULL,'Thôn Cu Te, Xã Cổ Loa, Huyện Đông Anh, Hà Nội','[\"123\"]','1',136,138,'1',3,18,'Thành phố Hà Nội','2023-08-28 11:22:21','2023-08-31 09:08:33',1,'Thôn Cu Te'),(153,'Thuê nhà giá rẻ',NULL,'Thôn Ăn Cơm, Xã Cổ Loa, Huyện Đông Anh, Hà Nội','[\"123\"]','2',137,139,'2',3,19,'Thành phố Hà Nội','2023-08-31 09:04:02','2023-08-31 10:16:10',1,'Thôn Ăn Cơm'),(154,'Thuê phòng trọ giá rẻ',NULL,'Thôn Nam Lý, Xã Cát Quế, Huyện Hoài Đức, Hà Nội','[\"12345566\"]','1',138,140,'1',3,20,'Thành phố Hà Nội','2023-08-31 09:08:33','2023-09-11 20:21:00',1,'Thôn Nam Lý'),(155,'Thuê Nhà giá rẻ',NULL,'Thôn Nam Sơn, Xã Bắc Hồng, Huyện Đông Anh, Hà Nội','[\"12313123\"]','2',139,141,'2',3,21,'Thành phố Hà Nội','2023-09-11 20:33:55','2023-09-11 20:34:29',1,'Thôn Nam Sơn'),(156,'Cho thê nhà cấp 4',NULL,'Ngõ 46 Đường Xuân Phương, Phường Phương Canh, Quận Nam Từ Liêm, Hà Nội','[\"Nhà cho thuê giá rẻ\"]','2',140,142,'2',3,22,'Thành phố Hà Nội','2023-09-18 14:12:31','2023-09-18 14:12:31',1,'Ngõ 46 Đường Xuân Phương');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_ADMIN',NULL,NULL),(2,'ROLE_USER',NULL,NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'2023-08-09 17:59:14',1),(2,'2023-08-09 18:00:08',1),(3,'2023-08-09 18:00:08',1),(4,'2023-08-09 18:00:08',1),(5,'2023-08-09 18:00:08',1),(6,'2023-08-09 18:00:09',1);
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `zalo` varchar(45) DEFAULT NULL,
  `avatar` varchar(120) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_UNIQUE` (`phone`),
  UNIQUE KEY `zalo_UNIQUE` (`zalo`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Hoàng Minh Hiếu','$2a$10$ay2tt/tDVIfWZ6AZhkma4OdegFbJgvGsxfAlF5dlIHUzYgGLq8u5G','12','0369028719',NULL,NULL,NULL),(2,'Nguyễn Huy Ngọ','$2a$10$ay2tt/tDVIfWZ6AZhkma4OdegFbJgvGsxfAlF5dlIHUzYgGLq8u5G','22','123123',NULL,NULL,NULL),(3,'Hoàng Minh Hiếu','$2a$10$m/B6S1O.V4.C1ppDbRgQV.TRqmXqnzWqasmvGyZXKBNn8Rrv3vyYq','0369028719','1231231','https://i.pinimg.com/736x/7c/b5/49/7cb5492889809cb8303b76b80759f0df.jpg',NULL,NULL),(22,'Hoàng Minh Hiếu','$2a$10$ay2tt/tDVIfWZ6AZhkma4OdegFbJgvGsxfAlF5dlIHUzYgGLq8u5G','131321312','123123123',NULL,NULL,NULL),(23,'Lương Văn Tuyên','$2a$10$LI5RXxlA12Me7iJhYLOLnuQrU/1My5effIxKqHFmFF2HtZIfbUdQK','0369028718',NULL,NULL,NULL,NULL),(24,'Nguyễn Quang Anh','$2a$10$xjuAxVC7JuDddRWowdQX9.yGzxKP4iZqalQaMCx2IDGlgGbZizgty','123456',NULL,NULL,NULL,NULL),(25,'Hoàng Minh Hiếu','$2a$10$yss4NhPg72RHce5HkOOuzuWZV0PS4jtNKUL9HK5cqGTLWqTtm96WS','0123456789',NULL,NULL,NULL,NULL),(26,'Hoàng Minh Hiếu','$2a$10$lgh2jvI9kUQ6RF6mAgdxL.d8vNebbp1EXNunsHa0np9M0Xk4SSxo6','123456789',NULL,NULL,NULL,NULL),(27,'Hoàng Minh Hiếu','$2a$10$wlCYjXlkKmIx57qfW.1yiOeD6VK1B2fGH0ijznYCgC1whtDBXn4Oy','1234567890',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_role2_idx` (`role_id`),
  CONSTRAINT `user_role1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_role2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (3,2),(22,2),(23,2),(24,2),(25,2),(26,2),(27,2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-28 10:45:08
