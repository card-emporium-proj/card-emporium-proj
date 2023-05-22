-- MySQL dump 10.13  Distrib 8.0.32, for macos13.0 (arm64)
--
-- Host: localhost    Database: card_project_db
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `ads_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,1,'Michael Jordan Rookie Card','Rare Michael Jordan rookie card in mint condition.',5000.00,'https://cconnect.s3.amazonaws.com/wp-content/uploads/2019/03/1986-87-Fleer-Michael-Jordan-57-RC-Authentic-Rookie-Card.jpg','Sports'),(2,2,'Charizard Pokémon Card','1st Edition Charizard card in near-mint condition.',3000.00,'https://product-images.tcgplayer.com/fit-in/870x870/106999.jpg','Pokemon'),(3,3,'Black Lotus Magic Card','Limited Edition Black Lotus card, highly sought after.',10000.00,'https://product-images.tcgplayer.com/fit-in/870x870/21480.jpg','Magic'),(4,4,'Kobe Bryant Autographed Card','Autographed Kobe Bryant card with certificate of authenticity.',2500.00,'https://auctionofchampions.com/ItemImages/000053/11119cards82009_lg.jpeg','Sports'),(5,5,'Mewtwo Pokémon Card','Holographic Mewtwo card, excellent condition.',800.00,'https://product-images.tcgplayer.com/fit-in/870x870/42445.jpg','Pokemon'),(6,1,'Tropical Island Magic Card','Tropical Island dual land card, great addition to your deck.',1500.00,'https://product-images.tcgplayer.com/fit-in/870x870/8932.jpg','Magic'),(7,2,'LeBron James Rookie Card','LeBron James rookie card, rare find.',4000.00,'https://beckett-www.s3.amazonaws.com/news/news-content/uploads/2020/06/2003-04-Upper-Deck-Exquisite-Rookie-Auto-Patch-Parallel-LeBron-James-BGS-9-5-Goldin-July-2020.jpg','Sports'),(8,3,'Pikachu Pokémon Card','Classic Pikachu card, perfect for any Pokémon collector.',200.00,'https://product-images.tcgplayer.com/42402.jpg','Pokemon'),(9,4,'Time Walk Magic Card','Time Walk card, iconic card for Magic players.',3000.00,'https://product-images.tcgplayer.com/fit-in/870x870/9231.jpg','Magic'),(10,5,'Wayne Gretzky Autographed Card','Autographed Wayne Gretzky card, a true hockey legend.',1800.00,'https://cdn11.bigcommerce.com/s-karer354/images/stencil/1280x1280/products/232030/905827/DM_1_11_23_1274__99320.1673488293.jpg?c=2','Sports'),(11,1,'Blastoise Pokémon Card','Rare Blastoise card, a must-have for Pokémon fans.',500.00,'https://product-images.tcgplayer.com/fit-in/870x870/42360.jpg','Pokemon'),(12,2,'Mox Jet Magic Card','Mox Jet card, powerful artifact for Magic decks.',2500.00,'https://product-images.tcgplayer.com/fit-in/870x870/8842.jpg','Magic'),(13,3,'Tom Brady Autographed Card','Autographed Tom Brady card, a collectible for football fans.',1500.00,'https://cdn11.bigcommerce.com/s-karer354/images/stencil/1280x1280/products/226454/885478/D_8_5_22_1012__42950.1659742240.jpg?c=2','Sports'),(14,4,'Zapdos Pokémon Card','Holographic Zapdos card, electric type Pokémon.',300.00,'https://product-images.tcgplayer.com/fit-in/870x870/42356.jpg','Pokemon'),(15,5,'Jace, the Mind Sculptor Magic Card','Jace, the Mind Sculptor card, a planeswalker of immense power.',2000.00,'https://product-images.tcgplayer.com/fit-in/870x870/158250.jpg','Magic'),(16,2,'Mickey Mantle Rookie Card','The Holy Grail of baseball cards.',10000000.00,'https://imageio.forbes.com/blogs-images/davidseideman/files/2018/04/resizedmantle.jpg?format=jpg&width=960','Sports');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'john_doe','john@example.com','password123'),(2,'jane_smith','jane@example.com','secret456'),(3,'mike_jones','mike@example.com','pass789'),(4,'sarah_walker','sarah@example.com','sarahpass'),(5,'david_brown','david@example.com','david123'),(6,'donkey','matthew.lorber@gmail.com','$2a$12$TLlnwTivYQm2SezBHeK.rOP3zR2DBLjR7xdeGlJHrAb0qImkM7zEW');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-19 11:25:12
