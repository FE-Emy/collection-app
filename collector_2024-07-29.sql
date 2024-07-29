# ************************************************************
# Sequel Ace SQL dump
# Version 20067
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: 127.0.0.1 (MySQL 11.4.2-MariaDB-ubu2404)
# Database: collector
# Generation Time: 2024-07-29 13:34:27 +0000
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `distance` varchar(255) DEFAULT NULL,
  `fact` text DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

LOCK TABLES `exoplanets` WRITE;
/*!40000 ALTER TABLE `exoplanets` DISABLE KEYS */;

INSERT INTO `exoplanets` (`id`, `name`, `type`, `distance`, `fact`, `image_url`)
VALUES
	(1,'Kepler-1002 Ab','Rocky','4.24 light-years','The closest known exoplanet to the Solar System, located in the habitable zone of its star, Proxima Centauri.','https://i.pinimg.com/564x/82/b2/1b/82b21b6811740eaca36eac217fa55602.jpg'),
	(2,'Kepler-452b','Super-Earth','1,400 light-years','Often referred to as \"Earth\'s cousin,\" Kepler-452b orbits within the habitable zone of a Sun-like star.','https://i.pinimg.com/564x/a6/a7/31/a6a731d80759d35cd924b0ada41308b0.jpg'),
	(3,'HD 189733 b','Gas Giant','63 light-years','Known for its deep blue color and extreme weather, including rain of molten glass.','https://i.pinimg.com/564x/a4/bf/e8/a4bfe8ce0107cab0306ffcd10e9a8c86.jpg'),
	(4,'Trappist-1e','Terrestrial','39 light-years','Part of the Trappist-1 system, which contains seven Earth-sized planets; Trappist-1e is considered potentially habitable.','https://i.pinimg.com/564x/cf/2a/19/cf2a192535b1b11d08f4fa591ea4bb6f.jpg'),
	(5,'WASP-12b','Hot Jupiter','1,400 light-years','A \"Hot Jupiter\" known for its extremely high temperatures and being one of the darkest known exoplanets, reflecting very little light.','https://i.pinimg.com/564x/50/a3/f5/50a3f50039157e26b27feabce81c47d3.jpg');

/*!40000 ALTER TABLE `exoplanets` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
