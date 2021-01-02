CREATE DATABASE  IF NOT EXISTS `mobileganggu_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mobileganggu_db`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: mobileganggu_db
-- ------------------------------------------------------
-- Server version	5.7.32-log

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
-- Table structure for table `hero`
--

DROP TABLE IF EXISTS `hero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `id_role` varchar(45) NOT NULL,
  `image` varchar(200) NOT NULL,
  `deskripsi` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hero`
--

LOCK TABLES `hero` WRITE;
/*!40000 ALTER TABLE `hero` DISABLE KEYS */;
INSERT INTO `hero` VALUES (1,'Magina','1','https://res.cloudinary.com/db8ufjm93/image/upload/v1609578186/mobile-ganggu/antimage_fiv4nm.jpg','The monks of Turstarkuri watched the rugged valleys below their mountain monastery as wave after wave of invaders swept through the lower kingdoms. Ascetic and pragmatic, in their remote monastic eyrie they remained aloof from mundane strife, wrapped in meditation that knew no gods or elements of magic. Then came the Legion of the Dead God, crusaders with a sinister mandate to replace all local worship with their Unliving Lords poisonous nihilosophy. From a landscape that had known nothing but blood and battle for a thousand years, they tore the souls and bones of countless fallen legions and pitched them against Turstarkuri. '),(2,'Traxex','7','https://res.cloudinary.com/db8ufjm93/image/upload/v1609578219/mobile-ganggu/drow_r4dhid.jpg','Drow Rangers given name is Traxex--a name well suited to the short, trollish, rather repulsive Drow people. But Traxex herself is not a Drow. Her parents were travelers in a caravan set upon by bandits, whose noisy slaughter of innocents roused the ire of the quiet Drow people. After the battle settled, the Drow discovered a small girl-child hiding in the ruined wagons, and agreed she could not be abandoned. Even as child, Traxex showed herself naturally adept at the arts they prized: Stealth, silence, subtlety. In spirit, if not in physique, she might have been a Drow changeling, returned to her proper home. But as she grew, she towered above her family and came to think of herself as ugly. '),(3,'Rylai','3','https://res.cloudinary.com/db8ufjm93/image/upload/v1609578219/mobile-ganggu/cm2_sijuyl.jpg','Born in a temperate realm, raised with her fiery older sister Lina, Rylai the Crystal Maiden soon found that her innate elemental affinity to ice created trouble for all those around her. Wellsprings and mountain rivers froze in moments if she stopped to rest nearby; ripening crops were bitten by frost, and fruiting orchards turned to mazes of ice and came crashing down, spoiled. When their exasperated parents packed Lina off to the equator, Rylai found herself banished to the cold northern realm of Icewrack, where she was taken in by an Ice Wizard who had carved himself a hermitage at the crown of the Blueheart Glacier.'),(4,'Tresdin','6','https://res.cloudinary.com/db8ufjm93/image/upload/v1609578222/mobile-ganggu/lc_obyd7b.jpg','They came without warning. Within the city walls of Stonehall there came a rumble and a terrible sound, and from blackness unknown came a force of beasts numbering beyond count, wielding flame and foul sorcery, slaying and snatching mothers and sons to dark purpose. Of once-mighty Stonehalls military strength only the Bronze Legion, led by the indomitable Commander Tresdin, was near enough to answer the call of battle. They rode into their city, fighting through bloodstained alleyways and burning markets, cutting their way through the monstrous throng to the source of the sudden invasion: an ethereal rift within the city square, and at its precipice thundered their dreaded champion.'),(5,'Luna','8','https://res.cloudinary.com/db8ufjm93/image/upload/v1609578219/mobile-ganggu/luna_kemxrb.jpg','How had she been reduced to this? She was once the Scourge of the Plains, a merciless leader of men and beasts, and able to sow terror wherever she dared. Now she was far from her homeland, driven half mad from starvation and months of wandering, her army long dead or worse. As she stood at the edge of an ancient forest, a pair of glowing eyes spied on from an elder branch. Something beautiful and deadly sought a meal in the wilting dusk. Without a sound, it turned and left. Fury overtook her. Clutching a rust-eaten dagger, she charged after the beast determined to reclaim even a shred of her past glory, but her quarry would not be caught. Three times she cornered the creature among the rocks and trees, and three times she pounced only to witness its fading shadow darting further into the woods.'),(6,'Lanaya','5','https://res.cloudinary.com/db8ufjm93/image/upload/v1609578218/mobile-ganggu/ta_ns2zup.jpg','Lanaya, the Templar Assassin, came to her calling by a path of curious inquiry. Possessed of a scientific bent, she spent her early years engaged in meticulous study of natures laws--peering into grimoires of magic and alchemy, recreating experiments from charred fragments of the Violet Archives, and memorizing observations of the Keen recordkeepers. Already quiet and secretive by nature, the difficulty of acquiring these objects further reinforced her skills of stealth. Had she been less retiring, she might have become notorious among the guilds as a thief-scholar. Instead her investigations led her into far more obscure corners.'),(7,'Shendelzare','2','https://res.cloudinary.com/db8ufjm93/image/upload/v1609578221/mobile-ganggu/venge_qfvxex.jpg','Even the most contented Skywrath is an ill-tempered creature, naturally inclined to seek revenge for the slightest insult. But Vengeful Spirit is the essence of vengeance. Once a proud and savage Skywrath scion, Shendelzare was first in succession for the Ghastly Eyrie until a sisters treachery robbed her of her birthright. Snared in an assassins net, Shendelzare tore free only at the cost of her wings, limping away in the ultimate humiliation: On foot. With her wings broken, she knew the Skywrath would never accept her as ruler; and in the highest roost of the Eyrie, inaccessible except by winged flight, her sister was untouchable.'),(8,'Lyralei','4','https://res.cloudinary.com/db8ufjm93/image/upload/v1609578218/mobile-ganggu/wr_bmt1at.jpg','The western forests guard their secrets well. One of these is Lyralei, master archer of the wood, and favored godchild of the wind. Known now as Windranger, Lyraleis family was killed in a storm on the night of her birth--their house blown down by the gale, contents scattered to the winds. Only the newborn survived among the debris field of death and destruction. In the quiet after the storm, the wind itself took notice of the lucky infant crying in the grass. The wind pitied the child and so lifted her into the sky and deposited her on a doorstep in a neighboring village. In the years that followed, the wind returned occasionally to the childs life, watching from a distance while she honed her skills.'),(9,'Raigor','4','https://res.cloudinary.com/db8ufjm93/image/upload/v1609579912/mobile-ganggu/earthshaker_cxskcv.jpg','Like a golem or gargoyle, Earthshaker was one with the earth but now walks freely upon it. Unlike those other entities, he created himself through an act of will, and serves no other master. In restless slumbers, encased in a deep seam of stone, he became aware of the life drifting freely above him. He grew curious. During a season of tremors, the peaks of Nishai shook themselves loose of avalanches, shifting the course of rivers and turning shallow valleys into bottomless chasms. When the land finally ceased quaking, Earthshaker stepped from the settling dust, tossing aside massive boulders as if throwing off a light blanket. He had shaped himself in the image of a mortal beast, and named himself Raigor Stonehoof.'),(10,'Rubick','2','https://res.cloudinary.com/db8ufjm93/image/upload/v1609582209/mobile-ganggu/rubick_ozygtt.jpg','Any mage can cast a spell or two, and a few may even study long enough to become a wizard, but only the most talented\n are allowed to be recognized as a Magus. Yet as with any sorcerer\'s circle, a sense of community has never guaranteed \n competitive courtesy. Already a renowned duelist and scholar of the grander world of sorcery, it had never occurred to\n Rubick that he might perhaps be Magus material until he was in the midst of his seventh assassination attempt. As he \n casually tossed the twelfth of a string of would-be killers from a high balcony, it dawned on him how utterly \n unimaginative the attempts on his life had become.');
/*!40000 ALTER TABLE `hero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'carry'),(2,'disabler'),(4,'initiator'),(5,'jungler'),(8,'nuker'),(7,'pusher'),(3,'support'),(6,'tanker');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mobileganggu_db'
--

--
-- Dumping routines for database 'mobileganggu_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-02 17:52:41
