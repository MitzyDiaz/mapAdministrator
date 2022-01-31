CREATE DATABASE  IF NOT EXISTS `queretaro`;
USE `queretaro`;
--
-- Host: localhost    Database: queretaro
-- ------------------------------------------------------
-- Server version	8.0.28

--
-- Table structure for table `descripcion`
--

DROP TABLE IF EXISTS `descripcion`;
CREATE TABLE `descripcion` (
  `idDescripcion` int NOT NULL AUTO_INCREMENT,
  `descripMunicipio` mediumtext CHARACTER SET utf8 COLLATE utf8_spanish_ci,
  `imgMunicipio` varchar(100) DEFAULT NULL,
  `idMunicipio` int DEFAULT NULL,
  PRIMARY KEY (`idDescripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `descripcion`
--

-- LOCK TABLES `descripcion` WRITE;
-- /*!40000 ALTER TABLE `descripcion` DISABLE KEYS */;
-- INSERT INTO `descripcion` VALUES (2,'esto es una pequeña prueba para mi experimento','../img/retrato equis.jpg',1),(3,'Pruebita para ver municipios','../img/1247-moya_clemente_roberto_juan-20190102-112416.jpg',2),(4,'erer','../img/1.png',3),(5,'El municipio de Ezequiel Montes lleva este nombre en honor al Lic. Ezequiel Montes Ledesma, ilustre personaje queretano, originario de la región, cuya personalidad, aunque no fue partícipe de la fundación, es reconocido como su más preclaro orador y político, así como un distinguido jurisconsulto de la época de la Reforma.','../img/ezequiel-montes.jpg',7),(7,'Se le nombra así en honor al descubridor de América, el navegante genovés Cristóforo Colombo. El nombre de Colón se da a esta ciudad y municipio por petición de sus habitantes y el correspondiente al Decreto del Congreso del Estado de fecha 12 de junio de 1882, Artículo 2º, Ley 59, que a la letra dice: \"De los Pueblos de Tolimanejo y Soriano se formará una villa que se denominará \"Villa Colón\", y el 13 del mismo mes y año, así lo mandó el gobernador Don Francisco González de Cosío. Desde entonces tiene el nombre de Colón.','../img/colon.jpg',5),(8,'Palabra de origen Náhuatl que significa: lugar sobre arena (xalli arena y pan sobre). Se le agrega el apellido del misionero Fray Junípero Serra. Jalpan de Serra está enclavada en el corazón de la Sierra Gorda, región que sirvió de frontera natural entre los grupos sedentarios, agricultores y mineros de Mesoamérica, y los grupos nómadas del Norte (Aridoamérica), quienes eran cazadores y recolectores. ','../img/477_jalpan.png',9),(9,'Tolimán proviene de la palabra Náhuatl Tolimani que significa \"lugar donde se recoge el tule\", cuyo jeroglífico locativo se encuentra en el Códice Matrícula de Tributos y en el Códice Mendocino. Tolimán fue fundado durante el siglo XVI con el nombre de San Pedro Tolimán.\r\n\r\nEn 1532, fecha de su colonización, se encontraron por primera vez españoles y sus aliados, indígenas Otomíes nahuatlizados procedentes de Xilotepec, con la población ya establecida de origen Chichimeca.','../img/902_toliman.jpg',18),(10,'Viene del sobrenombre con que se conoció popularmente a Doña Josefa Ortíz de Domínguez, heroína queretana de la guerra de Independencia de 1810. Esta área territorial y poblacional ha tenido diversas denominaciones, las cuales se han dado de acuerdo a fenómenos políticos y religiosos. ','../img/133_corregidora.jpg',6),(11,'	\r\nEn octubre de 1639 el Virrey Lope Diez de Armendáriz comisionó al Capitán Alonso de Tovar Guzmán para pacificar a los indios chichimecos del Cerro Gordo que se habían sublevado, y con cuyo patrocinio el 29 de junio de 1640 se fundó una población de españoles nombrada \"villa de Cadereyta\" en su honor. El 16 de febrero de 1641 el Virrey Marqués de Villena confirmó la fundación, quedando desde entonces con este nombre.','../img/221_cadereyta.jpg',4),(13,'El nombre de Peñamiller se traduce como Piedras al Millar o cerro de Peñascos y le fue dado por el teniente coronel de Virreyes, Don José de Escandón y de la Helguera; debido a la semejanza que guarda el cerro que se levanta al Oriente de la población','../img/13109_penamiller.jpg',13),(14,'Huimilpan vienen del Nahuátl hui, lugar; mil, milpa; pan, sobre, en. Por consiguiente quiere decir: Lugar de Grandes Milpas.\r\nEl territorio de Huimilpan estuvo ocupado por un buen número de culturas, entre ellas destacan la Otomí, que dejó huella y aún existen pobladores con las características de esta cultura.','../img/8_520_humilpan.jpg',8),(21,'asdad','../img/2_111_dog-girl.png',2),(22,'ss','../img/4_149_cadereyta.jpg',4),(23,'sdsad','../img/2_853_penamiller.jpg',2),(24,'yyyy','../img/3_517_516690414062.pdf',3),(25,'gg','../img/2_289_516690414062.pdf',2),(26,'tewtw','../img/4_752_penamiller.jpg',4),(27,'dfff','../img/3_956_toliman.jpg',3),(28,'dfff','../img/3_331_toliman.jpg',3),(29,'ddddd','../img/1_673_penamiller.jpg',1),(30,'ddddd','../img/1_482_penamiller.jpg',1),(31,'ddddd','../img/1_260_penamiller.jpg',1),(32,'kkk','../img/3_960_mapa2.zip',3),(33,'kjkjhk','../img/3_101_humilpan.jpg',3),(34,'ddd','../img/5_570_jalpan.png',5),(35,'dsadsa','../img/3_896_corregidora.jpg',3),(36,'sadasd','../img/4_941_jalpan.png',4),(37,'ssaS','../img/5_170_corregidora.jpg',5),(38,'sda','../img/6_454_toliman.jpg',6),(39,'sadas','../img/5_265_toliman.jpg',5),(40,'sadas','../img/3_335_corregidora.jpg',3),(41,'sd','../img/3_814_1247-moya_clemente_roberto_juan-20190102-112416.jpg',3),(42,'das','../img/5_466_WhatsApp Image 2021-09-28 at 22.56.45.jpeg',5),(43,'ddd','../img/4_175_corregidora.jpg',4),(44,'sss','../img/2_283_colon.jpg',2),(45,'dfsf','../img/4_524_WhatsApp Image 2021-11-03 at 07.30.10.jpeg',4),(46,'ddas','../img/6_297_1247-moya_clemente_roberto_juan-20190102-112416.jpg',6),(47,'dsad','../img/2_891_WhatsApp Image 2021-11-03 at 07.30.10.jpeg',2),(48,'dsa','../img/2_554_corregidora.jpg',2),(49,'dsad','../img/3_373_1247-moya_clemente_roberto_juan-20190102-112416.jpg',3),(50,'das','../img/8_883_corregidora.jpg',8),(51,'dasd','../img/5_550_jalpan.png',5),(52,'dasd','../img/5_681_humilpan.jpg',5),(53,'dasd','../img/5_787_cadereyta.jpg',5),(54,'ewqe','../img/3_192_corregidora.jpg',3),(55,'dasd','../img/5_433_corregidora.jpg',5),(56,'ewqewq','../img/2_456_penamiller.jpg',2),(57,'dasd','../img/4_321_cadereyta.jpg',4),(58,'dsa','../img/3_187_toliman.jpg',3),(59,'dsa','../img/3_824_corregidora.jpg',3),(60,'dsad','../img/2_531_toliman.jpg',2),(61,'dasd','../img/6_764_cadereyta.jpg',6),(62,'dasd','../img/3_599_toliman.jpg',3),(63,'dsad','../img/3_217_toliman.jpg',3),(64,'dasd','../img/2_256_jalpan.png',2),(65,'dsa','../img/2_686_jalpan.png',2),(66,'yrt','',1),(67,'dsa','../img/3_922_cadereyta.jpg',3),(68,'ds','../img/4_800_jalpan.png',4),(69,'da','../img/2_688_cadereyta.jpg',2),(70,'d','../img/1_176_corregidora.jpg',1),(71,'dd','../img/2_814_penamiller.jpg',2),(72,'ss','../img/5_951_jalpan.png',5),(73,'ss','../img/3_513_cadereyta.jpg',3),(74,'ss','../img/3_322_cadereyta.jpg',3),(75,'ss','../img/3_487_toliman.jpg',3),(76,'dd','../img/4_529_corregidora.jpg',4),(77,'ds','../img/3_796_humilpan.jpg',3),(78,'dsa','../img/4_968_cadereyta.jpg',4),(79,'das','../img/3_390_corregidora.jpg',3),(80,'ss','../img/4_906_jalpan.png',4),(81,'dd','../img/4_114_corregidora.jpg',4),(82,'ss','../img/2_629_toliman.jpg',2),(83,'ddd','../img/4_363_toliman.jpg',4),(84,'dsa','../img/2_538_toliman.jpg',2),(85,'ds','../img/3_821_penamiller.jpg',3),(86,'sss','../img/2_624_penamiller.jpg',2),(87,'sss','../img/4_417_colon.jpg',4),(88,'eee','../img/2_559_corregidora.jpg',2),(89,'dd','../img/3_826_cadereyta.jpg',3),(90,'sss','../img/5_771_corregidora.jpg',5),(91,'sss','../img/5_118_corregidora.jpg',5),(92,'sss','../img/5_771_corregidora.jpg',5),(93,'sss','../img/1_690_penamiller.jpg',1),(94,'sss','../img/3_607_jalpan.png',3),(95,'sss','../img/1_689_jalpan.png',1),(96,'jjj','../img/2_328_corregidora.jpg',2),(97,'hhhh','../img/7_391_colon.jpg',7),(98,'ss','../img/3_381_toliman.jpg',3),(99,'ddd','../img/4__jalpan.png',4),(100,'ss','../img/2_0_cadereyta.jpg',2),(101,'ss','../img/2_0_241433628_Escudo Oficial EM-jpg.jpg',2),(102,'sss','../img/2_0_colon.jpg',2),(103,'sss','../img/3_0_corregidora.jpg',3),(104,'sss','../img/4_104_penamiller.jpg',4),(105,'sss','../img/4_105_penamiller.jpg',4),(106,'sss','../img/4_106_toliman.jpg',4),(107,'ddd','../img/8_107_colon.jpg',8);
-- /*!40000 ALTER TABLE `descripcion` ENABLE KEYS */;
-- UNLOCK TABLES;

--
-- Table structure for table `municipios`
--
DROP TABLE IF EXISTS `municipios`;
CREATE TABLE `municipios` (
  `idMunicipio` int NOT NULL AUTO_INCREMENT,
  `nombreMunicipio` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idMunicipio`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `municipios`
--
LOCK TABLES `municipios` WRITE;
INSERT INTO `municipios` VALUES (1,'Amealco de Bonfil'),(2,'Pinal de Amoles'),(3,'Arroyo Seco'),(4,'Cadereyta'),(5,'Colón'),(6,'Corregidora'),(7,'Ezequiel Montes'),(8,'Huimilpan'),(9,'Jalpan de Serra'),(10,'Landa de Matamoros'),(11,'El Marqués'),(12,'Pedro Escobedo'),(13,'Peñamiller'),(14,'Querétaro'),(15,'San Joaquín'),(16,'San Juan del Río'),(17,'Tequisquiapan'),(18,'Tolimán');
UNLOCK TABLES;
