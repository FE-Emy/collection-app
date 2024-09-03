# ************************************************************
# Sequel Ace SQL dump
# Version 20070
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: w1kr9ijlozl9l79i.chr7pe7iynqr.eu-west-1.rds.amazonaws.com. (MySQL 8.0.35)
# Database: by5m6ddmdn7ydny6
# Generation Time: 2024-09-03 19:57:35 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table exoplanets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exoplanets`;

CREATE TABLE `exoplanets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `orbital_period` varchar(255) DEFAULT NULL,
  `distance` varchar(255) DEFAULT NULL,
  `fact` text,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `exoplanets` WRITE;
/*!40000 ALTER TABLE `exoplanets` DISABLE KEYS */;

INSERT INTO `exoplanets` (`id`, `name`, `location`, `type`, `orbital_period`, `distance`, `fact`, `image_url`)
VALUES
	(1,'Kepler-1002 Ab','Constellation Cygnus','Rocky','3.2 days','4.24 light-years','The closest known exoplanet to the Solar System, located in the habitable zone of its star, Proxima Centauri.','https://i.pinimg.com/564x/82/b2/1b/82b21b6811740eaca36eac217fa55602.jpg'),
	(2,'Kepler-452b','Constellation Cygnus','Super-Earth','385 days','1,400 light-years','Often referred to as \"Earth\'s cousin,\" Kepler-452b orbits within the habitable zone of a Sun-like star.','https://i.pinimg.com/564x/a6/a7/31/a6a731d80759d35cd924b0ada41308b0.jpg'),
	(3,'HD 189733 b','Constellation Vulpecula','Gas Giant','2.2 days','63 light-years','Known for its deep blue color and extreme weather conditions, including rain of molten glass.','https://i.pinimg.com/564x/34/9b/0a/349b0a4db78f885ca6a1a4e9954c5624.jpg'),
	(4,'Trappist-1e','Constellation Aquarius','Terrestrial','6.1 days','39 light-years','Part of the Trappist-1 system, which contains seven Earth-sized planets. Trappist-1e is considered potentially habitable.','https://i.pinimg.com/564x/11/e1/0b/11e10ba5643fb0127b384f73b6ffebc6.jpg'),
	(5,'WASP-12b','Constellation Aurigas','Hot Jupiter','1.1 days','1,400 light-years','A \"Hot Jupiter\" known for its extremely high temperatures and being one of the darkest known exoplanets, reflecting very little light.','https://i.pinimg.com/564x/f6/6a/d9/f66ad96e603a6c634cf8adbe0842af6d.jpg');

/*!40000 ALTER TABLE `exoplanets` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
