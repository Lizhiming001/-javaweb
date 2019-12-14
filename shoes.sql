-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: javaweb
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `n_time` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (3,'发货通知','双12期间(12.07-12-20),发货比平常推迟一到两天','20191204195946');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitem` (
  `order_id` varchar(100) NOT NULL DEFAULT '',
  `product_id` varchar(100) NOT NULL DEFAULT '',
  `buynum` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES ('0c0796f2-0124-4a13-a891-5efbb63b04f9','79bbe618-d2f8-4081-b35a-62ebbe938b64',1),('305a7870-3820-4079-b6f9-5d2b63cbcd2a','72c52302-cd1e-4a22-8ac8-dc300a915be5',1),('52eea290-1b0e-4e32-9dc6-d590bc153d64','56692720-5b10-4aff-816b-14e6997e0890',1),('571b8cb3-1377-4ae3-87d8-dc4737a39d00','56692720-5b10-4aff-816b-14e6997e0890',1),('611f80fa-4273-4674-be09-9530b6276e15','84c842da-16b6-4e87-953e-859a1ca62bab',1),('677a7314-0e16-4e18-8aec-552f848e0d75','3a0196b2-71c1-4d4d-a4e8-d1f875096f00',1),('677a7314-0e16-4e18-8aec-552f848e0d75','bf66a00c-4a78-458b-93c8-08896ee14976',1),('6dba2de0-47be-4659-af00-241067341c35','8c5720e5-6900-4abb-bf9e-2c01455a486c',1),('6f591522-7a2a-4a31-899d-ef1181c72f5f','9a7af97e-deea-417e-ad66-23ea755d2a51',1),('7ae96e6d-4600-41a5-bc5d-143b34ba61db','bdb32537-8f2c-4ba2-a752-94fdc0e9a250',1),('835e6aad-a97d-44e1-a7ab-12e39b099c91','11301dba-bc14-43ce-8bf3-d8ca67d522f0',1),('8ecc0292-d54e-4fca-b3d5-1c32cadf000d','595b8a39-fce6-487a-82fd-b93716ff3514',1),('a5bfb13d-9085-4374-94d9-4864b4d618ab','9a7af97e-deea-417e-ad66-23ea755d2a51',1),('bc943ba0-30cf-462b-beb1-5ec41f387568','8c5720e5-6900-4abb-bf9e-2c01455a486c',1),('c4b2bfff-1694-4e28-bcf8-fa7169bfc978','3a0196b2-71c1-4d4d-a4e8-d1f875096f00',2),('c4b2bfff-1694-4e28-bcf8-fa7169bfc978','79bbe618-d2f8-4081-b35a-62ebbe938b64',2),('d88d75cd-15e3-4622-801d-4cad902aeaa1','3cdd01d2-95d4-4077-b512-ff4c3b340d6b',1);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` varchar(100) NOT NULL,
  `money` double DEFAULT NULL,
  `receiverAddress` varchar(255) DEFAULT NULL,
  `receiverName` varchar(20) DEFAULT NULL,
  `receiverPhone` varchar(20) DEFAULT NULL,
  `paystate` int(11) DEFAULT '0',
  `ordertime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('52eea290-1b0e-4e32-9dc6-d590bc153d64',1099,'华南理工大学','lizhiming','18824584652',1,'2019-12-10 13:00:18',12),('571b8cb3-1377-4ae3-87d8-dc4737a39d00',1099,'华南理工大学','lizhiming','18824584652',0,'2019-12-10 12:59:45',12),('6dba2de0-47be-4659-af00-241067341c35',1596,'华南理工大学','lizhiming','18824584652',1,'2019-12-05 11:06:28',12),('8ecc0292-d54e-4fca-b3d5-1c32cadf000d',499,'华南理工大学','Ceciro','18824584652',1,'2019-12-05 11:26:00',21),('bc943ba0-30cf-462b-beb1-5ec41f387568',1596,'华南理工大学','lizhiming','18824584652',1,'2019-12-08 13:04:24',12);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(40) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `category` varchar(40) DEFAULT NULL,
  `pnum` int(11) DEFAULT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('02be5daa-6b57-4e74-9882-a7a1b6c26f4c','鸿星尔克运动鞋男冬季',129,'鸿星尔克',240,'/photos/O1CN01crE8VM1uRcQjkEym4_!!0-item_pic.jpg_580x580Q90.jpg_.webp','鸿星尔克运动鞋男冬季老爹鞋皮面鞋子秋冬休闲跑步鞋旗舰官网男鞋'),('03e21335-1552-4af3-b146-4fd050a6b35d','鸿星尔克2019新款男鞋',119,'鸿星尔克',250,'/photos/O1CN01uONHCM1zrn64RYmLb_!!0-item_pic.jpg_580x580Q90.jpg_.webp','鸿星尔克2019新款男鞋高帮鞋板鞋男潮鞋男空军一号百搭冬季运动鞋'),('11301dba-bc14-43ce-8bf3-d8ca67d522f0','Nike 耐克官方NIKE AIR MAX',1199,'耐克',19,'/photos/O1CN01gaMtCs1S29ASxTVlU_!!0-item_pic.jpg_580x580Q90.jpg_.webp','Nike 耐克官方NIKE AIR MAX 270 REACT男子运动鞋AO4971'),('17a7b232-fc3b-425e-9663-22b1a9e5c488','回力男鞋2019新款',69,'回力',99,'/photos/O1CN01Df1zIH1ju3F9NlOoO_!!2-item_pic.png_580x580Q90.jpg_.webp','回力男鞋2019新款冬季平板鞋男秋冬鞋子男潮鞋百搭休闲鞋帆布鞋男'),('1f6e7bc1-b415-4d7d-9997-08aab66ece41','NEW BALANCE/男鞋女鞋2019冬季',649,'新百伦',63,'/photos/O1CN01gxxXmd1TzyW6G07NC_!!0-saturn_solar.jpg_580x580Q90.jpg_.webp','NEW BALANCE/男鞋女鞋2019冬季新款运动鞋低帮减震跑步鞋MTHIERW5 '),('21ff5254-f50c-48ea-af5f-5b70095b77b9','PUMA彪马官方正品',389,'彪马',88,'/photos/O1CN01KlZcUf29oGFgWoz9a_!!0-item_pic.jpg_580x580Q90.jpg_.webp','PUMA彪马官方正品 新款男女同款情侣缓震跑步鞋 LQDCELL 192560'),('33bced54-5054-4b64-bccb-5b8251a93dd7','New Balance NB官方男鞋女鞋休闲鞋',279,'新百伦',189,'/photos/O1CN01rGVodC1kXRIT2ulIF_!!4066234693.jpg_580x580Q90.jpg_.webp','New Balance NB官方男鞋女鞋休闲鞋ML373GRE复古休闲鞋运动鞋简约'),('4a5c01b0-3808-4933-88b3-40323c531a21','New Balance 990v5 NB男子慢跑鞋',1125,'新百伦',79,'/photos/O1CN01UZl06D23bXY5qZZQZ_!!0-item_pic.jpg_580x580Q90.jpg_.webp','New Balance 990v5 NB男子慢跑鞋 美产复古运动鞋'),('4e1ea267-8362-4422-8eef-e23614ef1e3e','鸿星尔克运动鞋男鞋',439,'鸿星尔克',340,'/photos/O1CN01V77gWt1X2DISSJE9g_!!0-item_pic.jpg_580x580Q90.jpg_.webp','鸿星尔克运动鞋男鞋2019秋冬季新款正品红潮气垫休闲鞋子跑步鞋男'),('56692720-5b10-4aff-816b-14e6997e0890','PUMA彪马官方正品 新款',1099,'彪马',84,'/photos/O1CN01rSTP6r20lfSYzgqlN_!!0-saturn_solar.jpg_270x270.jpg_.webp','PUMA彪马官方正品 新款男女同款情侣休闲鞋 THUNDER 370376'),('595b8a39-fce6-487a-82fd-b93716ff3514','耐克官方NIKE AIR MAX ALPHA',499,'耐克',54,'/photos/O1CN01HYOe2d1S299eN7ooY_!!0-item_pic.jpg_580x580Q90.jpg_.webp','Nike 耐克官方NIKE AIR MAX ALPHA TRAINER 2 男子训练鞋AT1237'),('59a4e312-8e30-40a4-b54b-74d6db6ef034','Puma/彪马冬季新款Ader',769,'彪马',69,'/photos/O1CN01wVdzEE1IqOSiQAWHc_!!0-saturn_solar.jpg_270x270.jpg_.webp','Puma/彪马冬季新款Ader ERROR联名休闲板鞋男女皮面运动鞋370108'),('6787d8b7-5108-4d68-8286-bac36184417c','ASICS亚瑟士跑鞋运动鞋',309,'亚瑟士',68,'/photos/O1CN01wEDl471CVQdHeezJ0_!!673890086.jpg_580x580Q90.jpg_.webp','ASICS亚瑟士跑鞋运动鞋CONTEND透气女缓震保护跑步鞋 '),('68688401-eb4a-4b3b-9598-c7dde97b3dcb','Nike耐克官方NIKE EPIC',1099,'耐克',100,'/photos/O1CN01qrznSm2ADS2BzxY4Y_!!2571548169.jpg_580x580Q90.jpg_.webp','Nike耐克官方NIKE EPIC REACT FLYKNIT2男子跑步鞋夏季透气BQ8928'),('6fd01c1c-9b3d-4dc2-b51c-4636bece02b4','ASICS亚瑟士GEL-FLUX 4',299,'亚瑟士',100,'/photos/TB1dqluXH2pK1RjSZFsXXaNlXXa_!!0-item_pic.jpg_580x580Q90.jpg_.webp','ASICS亚瑟士GEL-FLUX 4 男鞋 跑步运动鞋跑鞋 回弹缓震 缓冲T714N'),('765244c4-7d89-4952-99e3-4fcf8d9a7cc2','ASICS亚瑟士19秋冬男',309,'亚瑟士',55,'/photos/O1CN01Vz9DRk1D07Aide7LT_!!3853680153.jpg_580x580Q90.jpg_.webp','ASICS亚瑟士19秋冬男缓震保护跑鞋GEL-CONTEND 4运动鞋T8D4Q-013 '),('8485c3f4-fa99-4f48-af0e-d6d7511f47ef','Asics GEL-PTGMT灌篮高手',649,'亚瑟士',55,'/photos/O1CN01G34SSS1WSUPTClgFQ_!!0-item_pic.jpg_580x580Q90.jpg_.webp','Asics GEL-PTGMT灌篮高手高帮复古休闲鞋HL7W4-0190/1191A181-101'),('8c5720e5-6900-4abb-bf9e-2c01455a486c','Y-3男子休闲运动靴子',1596,'阿迪达斯',11,'/photos/O1CN01DvYmNc1D8ohFKKUj3_!!4147970172.jpg_580x580Q90.jpg_.webp','Y-3男子休闲运动靴子 y3 QASA BOOT BB4802'),('9741887e-f3be-45bf-b26f-14c9e97eab3b','回力男鞋加绒马丁靴',99,'回力',100,'/photos/O1CN01k3sl672A3phmxmmeI_!!0-item_pic.jpg_580x580Q90.jpg_.webp','回力男鞋加绒马丁靴男高帮棉鞋秋冬季2019新款男士工装潮鞋雪地靴 '),('9add1df4-ef5b-4472-97b2-5eee91791b69','特步情侣鞋运动鞋',159,'特步',351,'/photos/O1CN01J8sm9i1bozx8x2amM_!!0-item_pic.jpg_580x580Q90.jpg_.webp','特步情侣鞋运动鞋男鞋2019秋季新款个性轻便拼色男女休闲跑步鞋冬'),('9b145c26-85e0-410f-ba41-94a87ae790bd','New Balance NB官方男鞋女鞋',659,'新百伦',99,'/photos/O1CN015KTHBg23bXVpvsDNh_!!0-item_pic.jpg_580x580Q90.jpg_.webp','New Balance NB官方男鞋女鞋复古休闲鞋ML574EGW运动鞋574系列 '),('ac69cf0c-7f7b-4261-800b-e8c7667a8332','特步男鞋板鞋2019',119,'特步',780,'/photos/O1CN01nQpaIZ1cTlCKOnxi5_!!0-item_pic.jpg_580x580Q90.jpg_.webp','特步男鞋板鞋2019秋冬季新款白鞋小白鞋子休闲潮鞋男士秋季运动鞋'),('b6f3af18-dd9e-4a51-a0b5-68597318e0e7','美国直邮New Balance 990v5 NB',1599,'新百伦',32,'/photos/O1CN01rGVodC1kXRIT2ulIF_!!4066234693.jpg_580x580Q90.jpg_.webp','美国直邮New Balance 990v5 NB女子慢跑鞋 美产复古透气经典运动'),('c01435ab-64d5-49a8-994e-550dfb189330','阿迪达斯官网UltraBOOST',1399,'阿迪达斯',63,'/photos/O1CN01kBw15A20kIHWXy7wX_!!2646246887.png_580x580Q90.jpg_.webp','阿迪达斯官网UltraBOOST 19 跑步运动鞋B37704 B37707 F35242 '),('c79159ad-ab27-4ff2-91e3-1bdbf43d7393','Puma Roma Smooth NBK 彪马',460,'彪马',36,'/photos/O1CN01tG2BSi1HYF8tDVVLo_!!0-item_pic.jpg_580x580Q90.jpg_.webp','Puma Roma Smooth NBK 彪马男子板鞋 复古风时尚休闲鞋'),('cc89a86c-0ad5-404c-b1ea-acd7922f8bd7','彪马男女鞋2019冬季新款',559,'彪马',67,'/photos/O1CN01SnZzgV1XXocnr6UO9_!!0-saturn_solar.jpg_270x270.jpg_.webp','彪马男女鞋2019冬季新款李现同款OG联名签名款高帮休闲板鞋370847 '),('cfc10b1a-ce96-4013-9018-e4339f35954c','Air Jordan 1',2714,'耐克',15,'/photos/O1CN01l5kSau1S299m5SGU7_!!0-item_pic.jpg_580x580Q90.jpg_.webp','Air Jordan 1 Retro High OG AJ1 猪油扣碎3.0 男鞋 - 555088-028 耐克'),('d2c21914-e395-447a-8cde-88594c364824','耐克官方NIKE JOYRIDE CC',709,'耐克',60,'/photos/O1CN01NncxmY1S29AK55g4c_!!0-item_pic.jpg_580x580Q90.jpg_.webp','Nike 耐克官方NIKE JOYRIDE CC男子运动鞋 女码可选AO1742'),('da5b7480-35b9-4845-964b-fd8224a63336','回力马丁靴高帮男鞋2019秋季',129,'回力',82,'/photos/O1CN01mwOzDp1aObTbWFZkH_!!0-item_pic.jpg_580x580Q90.jpg_.webp','回力马丁靴高帮男鞋2019秋季新款工装靴中帮潮鞋冬季加绒机车短靴'),('ebf1236d-04cf-4a5f-bcdf-6fa305c067d2','特步男鞋秋冬2019新款',139,'特步',360,'/photos/O1CN01ps32cy1LNwhnE1w9z_!!0-item_pic.jpg_580x580Q90.jpg_.webp','特步男鞋秋冬2019新款减震跑鞋男士冬季跑步鞋子男潮鞋休闲运动鞋 '),('ec03bb25-8f2f-4b7e-bc4b-6dc4569de68d','Y-3 男女同款运动休闲鞋',2990,'阿迪达斯',10,'/photos/O1CN01BHBaBH20kIHT4JxGN_!!2646246887.jpg_580x580Q90.jpg_.webp','【2019新款】Y-3 男女同款运动休闲鞋 Y-3 YUBEN MID EF2653');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `introduce` varchar(100) DEFAULT NULL,
  `activeCode` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `role` varchar(10) DEFAULT '普通用户',
  `registTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (12,'lizhiming','123456','男','312740338@qq.com','18824584652','我是网络工程李志铭，我是普通用户','49338fdc-d8c9-46fa-8391-0fac7bf098049',1,'普通用户','2019-12-01 11:16:20'),(20,'admin','123456','男','312710338@qq.com','18824584652','我是超级管理员，我可以登录后台管理系统','49338fdc-d8c9-46fa-8391-0fac7bf09707',1,'超级用户','2019-12-03 13:16:40'),(21,'Ceciro','123456','男','312740338@qq.com','27799350','网工乔丹','1',1,'普通用户','2019-12-04 14:38:16');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'javaweb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-14 16:25:31
