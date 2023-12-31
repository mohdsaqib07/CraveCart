-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: techtonic
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add blog',7,'add_blog'),(26,'Can change blog',7,'change_blog'),(27,'Can delete blog',7,'delete_blog'),(28,'Can view blog',7,'view_blog'),(29,'Can add justcontact',8,'add_justcontact'),(30,'Can change justcontact',8,'change_justcontact'),(31,'Can delete justcontact',8,'delete_justcontact'),(32,'Can view justcontact',8,'view_justcontact'),(33,'Can add responses',9,'add_responses'),(34,'Can change responses',9,'change_responses'),(35,'Can delete responses',9,'delete_responses'),(36,'Can view responses',9,'view_responses'),(37,'Can add products',10,'add_products'),(38,'Can change products',10,'change_products'),(39,'Can delete products',10,'delete_products'),(40,'Can view products',10,'view_products'),(41,'Can add contact',11,'add_contact'),(42,'Can change contact',11,'change_contact'),(43,'Can delete contact',11,'delete_contact'),(44,'Can view contact',11,'view_contact'),(45,'Can add orders',12,'add_orders'),(46,'Can change orders',12,'change_orders'),(47,'Can delete orders',12,'delete_orders'),(48,'Can view orders',12,'view_orders'),(49,'Can add order updates',13,'add_orderupdates'),(50,'Can change order updates',13,'change_orderupdates'),(51,'Can delete order updates',13,'delete_orderupdates'),(52,'Can view order updates',13,'view_orderupdates'),(53,'Can add Blog',14,'add_blogs'),(54,'Can change Blog',14,'change_blogs'),(55,'Can delete Blog',14,'delete_blogs'),(56,'Can view Blog',14,'view_blogs');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$f2J91ujDoB4iEOHFnSJt9h$ewWVhmdo/Aije81kdrxOl6JGq8uRwJU09j8V0l06Iwc=','2023-08-01 11:00:02.215412',1,'saqib','','','mohdsaqib148183@gmail.com',1,1,'2023-07-15 10:58:25.956470'),(2,'pbkdf2_sha256$600000$n7RFGpJaEmB1W1gT8rXcA1$6Fp2LHmsOAMNzPO1AuFu/7Avvt/qCf/FZ5zTiHXvPqM=','2023-08-01 10:59:33.828008',1,'haris','','','mdharis@gmail.com',1,1,'2023-08-01 10:59:05.210018');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogs`
--

DROP TABLE IF EXISTS `blog_blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_blogs` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `head0` varchar(5000) NOT NULL,
  `head1` varchar(5000) NOT NULL,
  `head2` varchar(5000) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `pub_by` varchar(50) DEFAULT NULL,
  `thead0` varchar(50) NOT NULL,
  `thead1` varchar(50) NOT NULL,
  `thead2` varchar(50) NOT NULL,
  `background` varchar(100) NOT NULL,
  `backgroundVideo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogs`
--

LOCK TABLES `blog_blogs` WRITE;
/*!40000 ALTER TABLE `blog_blogs` DISABLE KEYS */;
INSERT INTO `blog_blogs` VALUES (1,'BitCoin','Bitcoin transactions are verified by network nodes through cryptography and recorded in a public distributed ledger called a blockchain. The cryptocurrency was invented in 2008 by an unknown person or group of people using the name Satoshi Nakamoto.[10] The currency began use in 2009,[11] when its implementation was released as open-source software.[7]:ΓÇèch. 1ΓÇè The word \"bitcoin\" was defined in a white paper published on October 31, 2008.[3][12] It is a compound of the words bit and coin.','The unit of account of the bitcoin system is the bitcoin. Currency codes for representing bitcoin are BTC[a] and XBT.[b][25]:ΓÇè2ΓÇè Its Unicode character is Γé┐.[1] One bitcoin is divisible to eight decimal places.[7]:ΓÇèch. 5ΓÇè Units for smaller amounts of bitcoin are the millibitcoin (mBTC), equal to 1Γüä1000 bitcoin, and the satoshi (sat), which is the smallest possible division, and named in homage to bitcoin\'s creator, representing 1Γüä100000000 (one hundred millionth) bitcoin.[2] 100,000 satoshis are','The environmental effects of bitcoin are substantial.[17] Its proof-of-work algorithm for bitcoin mining is designed to be computationally difficult, which requires the consumption of increasing quantities of electricity, the generation of which has contributed to climate change.[18][19] According to the University of Cambridge, bitcoin has emitted an estimated 200 million tonnes of carbon dioxide since its launch,[20] or about 0.04% of all carbon dioxide released since 2009.','2023-07-29 11:22:16.472866','blog/images/reinhart-julian-pVDnlvCNPpw-unsplash.jpg','Mohd Saqib','Introduction','Design','Blockchain','blog/images/kanchanara-Lta5b8mPytw-unsplash.jpg','blog/videos/Code_29_-_Bitcoin_logo_reveal_1_Intro_Logo_Animation1080P_HD.mp4'),(2,'Apple Inc.','Apple Computer Company was founded on April 1, 1976, by Steve Jobs, Steve Wozniak, and Ronald Wayne as a partnership.[9][12] The company\'s first product was the Apple I, a computer designed and hand-built entirely by Wozniak.[13] To finance its creation, Jobs sold his Volkswagen Bus, and Wozniak sold his HP-65 calculator.[14]:ΓÇè57ΓÇè[a] Wozniak debuted the first prototype Apple I at the Homebrew Computer Club in July 1976.[15] The Apple I was sold as a motherboard with CPU, RAM, and basic textual-v','The Mac is Apple\'s family of personal computers. Macs are known for their ease of use[180] and distinctive aluminium, minimalist designs. Macs have been popular among students, creative professionals, and software engineers. The current lineup consists of the MacBook Air and MacBook Pro laptops, and the iMac, Mac mini, Mac Studio and Mac Pro desktop computers.  Often described as a walled garden, Macs use Apple silicon chips, run the macOS operating system, and include Apple software like the Sa','According to Steve Jobs, the company\'s name was inspired by his visit to an apple farm while on a fruitarian diet. Jobs thought the name \"Apple\" was \"fun, spirited and not intimidating.\"[196] Steve Jobs and Steve Wozniak were fans of the Beatles,[197] but Apple Inc. had name and logo trademark issues with Apple Corps Ltd., a multimedia company started by the Beatles in 1968. This resulted in a series of lawsuits and tension between the two companies. These issues ended with the settling of their','2023-07-29 12:13:58.701283','blog/images/akshar-dave-bOKESlj2dlk-unsplash.jpg','Mohd Haris','History','Products','Branding','blog/images/laurenz-heymann-wAygsCk20h8-unsplash_zXKdA7A.jpg','blog/videos/Apple_Logo_Animation_-_After_Effects720P_60FPS.mp4'),(3,'Play Station','PlayStation (Japanese: πâùπâ¼πéñπé╣πâåπâ╝πé╖πâºπâ│, Hepburn: Pureisut─ôshon, officially abbreviated as PS) is a video gaming brand that consists of five home video game consoles, two handhelds, a media center, and a smartphone, as well as an online service and multiple magazines. The brand is produced by Sony Interactive Entertainment, a division of Sony; the first PlayStation console was released in Japan in December 1994, and worldwide the following year.','PlayStation was the brainchild of Ken Kutaragi, a Sony executive who managed one of the company\'s hardware engineering divisions and was later dubbed \"The Father of the PlayStation\".[18][19]  Until 1991, Sony had little direct involvement with the video game industry. The company supplied components for other consoles, such as the sound chip for the Super Famicom from Nintendo, and operated a video game studio, Sony Imagesoft.[20] As part of a joint project between Nintendo and Sony that began a','The PSP-2000 (also known as the Slim & Lite in PAL territories) was the first major hardware revision of the PlayStation Portable, released in September 2007. The 2000 series was 33% lighter and 19% slimmer than the original PlayStation Portable.[91][92] The capacity of the battery was also reduced by Γàô but the run time remained the same as the previous model due to lower power consumption. Older model batteries will still work and they extend the amount of playing time.[93] The PSP Slim & Lite','2023-07-29 16:09:00.481182','blog/images/martin-katler-caNzzoxls8Q-unsplash.jpg','Saqib Mohammad','Introduction','History','Handheld systems','blog/images/jonathan-cooper-dX_Y7f9T2G4-unsplash_5giDVWq.jpg','blog/videos/PlayStation_Studios_Opening_Animation1080P_HD.mp4'),(4,'Marvel','Marvel Comics is an American comic book publisher and the property of The Walt Disney Company since December 31, 2009. Marvel was founded in 1939 by Martin Goodman as Timely Comics,[3] and by 1951 had generally become known as Atlas Comics. The Marvel era began in June 1961 with the launch of The Fantastic Four and other superhero titles created by Stan Lee, Jack Kirby, Steve Ditko, and many others. The Marvel brand, which had been used over the years and decades, was solidified as the company\'s','Pulp-magazine publisher Martin Goodman created the company later known as Marvel Comics under the name Timely Publications in 1939.[5][6] Goodman, who had started with a Western pulp in 1933, was expanding into the emergingΓÇöand by then already highly popularΓÇönew medium of comic books. Launching his new line from his existing company\'s offices at 330 West 42nd Street, New York City, he officially held the titles of editor, managing editor, and business manager, with Abraham Goodman (Martin\'s brot','The post-war American comic market saw superheroes falling out of fashion.[18] Goodman\'s comic book line dropped them for the most part and expanded into a wider variety of genres than even Timely had published, featuring horror, Westerns, humor, talking animal, men\'s adventure-drama, giant monster, crime, and war comics, and later adding jungle books, romance titles, espionage, and even medieval adventure, Bible stories and sports.  Goodman began using the globe logo of the Atlas News Company,','2023-07-29 16:52:53.588961','blog/images/erik-mclean-LSPUdV6IWsY-unsplash.jpg','Mohd Azeem','Marvel Comics','History','Magazine Management/Atlas Comics','blog/images/erik-mclean-8SeJUmfahu0-unsplash.jpg','blog/videos/Marvel_Opening_Theme1080P_HD.mp4'),(5,'Meta','Facebook is an online social media and social networking service owned by American technology giant Meta Platforms. Created in 2004 by Mark Zuckerberg with fellow Harvard College students and roommates Eduardo Saverin, Andrew McCollum, Dustin Moskovitz, and Chris Hughes, its name derives from the face book directories often given to American university students. Membership was initially limited to only Harvard students, gradually expanding to other North American universities and, since 2006, anyone over 13 years old. As of December 2022, Facebook claimed 2.96 billion monthly active users,[6] and ranked third worldwide among the most visited websites.[7] It was the most downloaded mobile app of the 2010s.[8]  Facebook can be accessed from devices with Internet connectivity, such as personal computers, tablets and smartphones. After registering, users can create a profile revealing information about themselves. They can post text, photos and multimedia which are shared with any other users who have agreed to be their \"friend\" or, with different privacy settings, publicly. Users can also communicate directly with each other with Messenger, join common-interest groups, and receive notifications on the activities of their Facebook friends and the pages they follow.  The subject of numerous controversies, Facebook has often been criticized over issues such as user privacy (as with the Cambridge Analytica data scandal), political manipulation (as with the 2016 U.S. elections) and mass surveillance.[9] Facebook has also been subject to criticism over psychological effects such as addiction and low self-esteem, and various controversies over content such as fake news, conspiracy theories, copyright infringement, and hate speech.[10] Commentators have accused Facebook of willingly facilitating the spread of such content, as well as exaggerating its number of users to appeal to advertisers.','2003ΓÇô2006: Thefacebook, Thiel investment, and name change  Original layout and name of Thefacebook in 2004, showing Al Pacino\'s face superimposed with binary numbers as Facebook\'s original logo, designed by co-founder Andrew McCollum[12] Zuckerberg built a website called \"Facemash\" in 2003 while attending Harvard University. The site was comparable to Hot or Not and used \"photos compiled from the online face books of nine Houses, placing two next to each other at a time and asking users to choose the \"hotter\" person\".[13] Facemash attracted 450 visitors and 22,000 photo-views in its first four hours.[14] The site was sent to several campus group listservs, but was shut down a few days later by Harvard administration. Zuckerberg faced expulsion and was charged with breaching security, violating copyrights and violating individual privacy. Ultimately, the charges were dropped.[13] Zuckerberg expanded on this project that semester by creating a social study tool. He uploaded art images, each accompanied by a comments section, to a website he shared with his classmates.[15]  A \"face book\" is a student directory featuring photos and personal information.[14] In 2003, Harvard had only a paper version[16] along with private online directories.[13][17] Zuckerberg told The Harvard Crimson, \"Everyone\'s been talking a lot about a universal face book within Harvard. ... I think it\'s kind of silly that it would take the University a couple of years to get around to it. I can do it better than they can, and I can do it in a week.\"[17] In January 2004, Zuckerberg coded a new website, known as \"TheFacebook\", inspired by a Crimson editorial about Facemash, stating, \"It is clear that the technology needed to create a centralized Website is readily available ... the benefits are many.\" Zuckerberg met with Harvard student Eduardo Saverin, and each of them agreed to invest $1,000 ($1,549 in 2022 dollars[18]) in the site.[19] On February 4, 2004, Zuckerberg launched \"TheFacebook\", originally located at thefacebook.com.[20]   Mark Zuckerberg, co-creator of Facebook, in his Harvard dorm room, 2005 Six days after the site launched, Harvard seniors Cameron Winklevoss, Tyler Winklevoss, and Divya Narendra accused Zuckerberg of intentionally misleading them into believing that he would help them build a social network called HarvardConnection.com. They claimed that he was instead using their ideas to build a competing product.[21] The three complained to the Crimson and the newspaper began an investigation. They later sued Zuckerberg, settling in 2008[22] for 1.2 million shares (worth $300 million ($382 million in 2022 dollars[18]) at Facebook\'s IPO).[23]  Membership was initially restricted to students of Harvard College. Within a month, more than half the undergraduates had registered.[24] Dustin Moskovitz, Andrew McCollum, and Chris Hughes joined Zuckerberg to help manage the growth of the website.[25] In March 2004, Facebook expanded to Columbia, Stanford and Yale.[26] It then became available to all Ivy League colleges, Boston University, NYU, MIT, and successively most universities in the United States and Canada.[27][28]  In mid-2004, Napster co-founder and entrepreneur Sean ParkerΓÇöan informal advisor to ZuckerbergΓÇöbecame company president.[29] In June 2004, the company moved to Palo Alto, California.[30] Sean Parker called Reid Hoffman to fund Facebook. However, Reid Hoffman was too busy launching LinkedIn so he set Facebook up with PayPal co-founder Peter Thiel, who gave Facebook its first investment later that month.[31][32] In 2005, the company dropped \"the\" from its name after purchasing the domain name Facebook.com for US$200,000 ($299,676 in 2022 dollars[18]).[33] The domain had belonged to AboutFace Corporation.  In May 2005, Accel Partners invested $12.7 million ($19 million in 2022 dollars[18]) in Facebook, and Jim Breyer[34] added $1 million ($1.5 million in 2022 dollars[18]) of his own money. A high-school version of the site launched in September 2005.[35] Eligibility expanded to include employees of several companies, including Apple Inc. and Microsoft','The \"like\" button, stylized as a \"thumbs up\" icon, was first enabled on February 9, 2009,[274] and enables users to easily interact with status updates, comments, photos and videos, links shared by friends, and advertisements. Once clicked by a user, the designated content is more likely to appear in friends\' News Feeds.[275][276] The button displays the number of other users who have liked the content.[277] The like button was extended to comments in June 2010.[278] In February 2016, Facebook expanded Like into \"Reactions\", choosing among five pre-defined emotions, including \"Love\", \"Haha\", \"Wow\", \"Sad\", or \"Angry\".[279][280][281][282] In late April 2020, during the COVID-19 pandemic, a new \"Care\" reaction was added','2023-07-29 18:40:22.469505','blog/images/facebookthumbnail_z8zcLeu.jpg','Ayan Ahmad','Facebook','History','Like button','blog/images/facebookbackground.jpg','blog/videos/Meta_Logo_Animation1080P_HD.mp4');
/*!40000 ALTER TABLE `blog_blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-07-15 11:28:03.002822','2','azeem',2,'[{\"changed\": {\"fields\": [\"Address\"]}}]',7,1),(2,'2023-07-15 11:29:49.656669','3','Shaan',3,'',7,1),(3,'2023-07-16 12:16:07.506324','1','Iphone7',1,'[{\"added\": {}}]',10,1),(4,'2023-07-16 13:37:07.086124','2','Labtop',1,'[{\"added\": {}}]',10,1),(5,'2023-07-16 13:38:01.385357','1','Iphone7',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',10,1),(6,'2023-07-16 14:09:45.622502','3','Tablet',2,'[{\"changed\": {\"fields\": [\"Desc\"]}}]',10,1),(7,'2023-07-16 14:09:54.429219','2','Laptop',2,'[{\"changed\": {\"fields\": [\"Product name\"]}}]',10,1),(8,'2023-07-16 14:11:22.495506','4','Mouse',1,'[{\"added\": {}}]',10,1),(9,'2023-07-16 14:12:14.149537','3','Tablet',3,'',10,1),(10,'2023-07-16 14:13:34.764380','3','Tablet',2,'[{\"changed\": {\"fields\": [\"Desc\", \"Image\"]}}]',10,1),(11,'2023-07-16 22:15:52.757608','5','printer',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',10,1),(12,'2023-07-16 22:17:20.999893','2','Laptop',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',10,1),(13,'2023-07-16 22:23:01.827225','6','Microwave',1,'[{\"added\": {}}]',10,1),(14,'2023-07-16 22:23:57.290427','7','Gaming Keboard',1,'[{\"added\": {}}]',10,1),(15,'2023-07-16 22:29:22.512546','8','HeadPhones',1,'[{\"added\": {}}]',10,1),(16,'2023-07-17 13:02:32.518254','9','Nike Air Max Plus III',1,'[{\"added\": {}}]',10,1),(17,'2023-07-17 13:03:38.747687','9','Nike Air Max Plus III',2,'[{\"changed\": {\"fields\": [\"Desc\"]}}]',10,1),(18,'2023-07-17 13:06:42.208847','10','Apple Watch SE',1,'[{\"added\": {}}]',10,1),(19,'2023-07-17 13:12:47.956278','11','BRAVIA XR | MASTER Series',1,'[{\"added\": {}}]',10,1),(20,'2023-07-17 13:15:09.824267','12','Strauss Premium (Club) RH Cricket Kit',1,'[{\"added\": {}}]',10,1),(21,'2023-07-17 13:17:11.360075','11','BRAVIA XR | MASTER Series',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',10,1),(22,'2023-07-17 13:21:10.019192','13','Women Printed Round Neck Cotton Blend Black T-Shir',1,'[{\"added\": {}}]',10,1),(23,'2023-07-17 14:00:57.724475','14','Prestige PKOSS Electric Kettle  (1.5 L, Silver)',1,'[{\"added\": {}}]',10,1),(24,'2023-07-17 14:06:48.214269','15','Flipkart SmartBuy JRZ-ST01 BW Solid Body Electric',1,'[{\"added\": {}}]',10,1),(25,'2023-07-17 14:09:34.141801','16','Spartan Thunder Football',1,'[{\"added\": {}}]',10,1),(26,'2023-07-17 14:12:21.081355','17','Table Lamp',1,'[{\"added\": {}}]',10,1),(27,'2023-07-17 14:14:51.937766','18','PlayStation 4',1,'[{\"added\": {}}]',10,1),(28,'2023-07-17 14:17:02.794958','19','Men Slim Fit Solid Spread Collar Formal Shirt',1,'[{\"added\": {}}]',10,1),(29,'2023-07-18 11:41:32.084070','20','H&M Men Bomber Jacket',1,'[{\"added\": {}}]',10,1),(30,'2023-07-18 12:44:40.915336','5','printer',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',10,1),(31,'2023-07-18 13:40:47.151033','21','Home Garage 180 TC Cotton King 3D Printed Flat Bed',1,'[{\"added\": {}}]',10,1),(32,'2023-07-18 13:42:00.620850','22','Bulfyss Digital Black Clock',1,'[{\"added\": {}}]',10,1),(33,'2023-07-18 13:44:18.400226','22','Bulfyss Digital Black Clock',2,'[{\"changed\": {\"fields\": [\"Price\", \"Desc\"]}}]',10,1),(34,'2023-07-18 14:58:45.258600','23','Qubo HLM03 Smart Door Lock',1,'[{\"added\": {}}]',10,1),(35,'2023-07-20 17:49:50.974770','1','Iphone7',2,'[{\"changed\": {\"fields\": [\"Desc\"]}}]',10,1),(36,'2023-07-20 17:51:14.425607','1','Iphone7',2,'[{\"changed\": {\"fields\": [\"Desc\"]}}]',10,1),(37,'2023-07-20 17:52:08.475464','3','Tablet',2,'[{\"changed\": {\"fields\": [\"Desc\"]}}]',10,1),(38,'2023-07-20 17:53:39.265301','2','Laptop',2,'[{\"changed\": {\"fields\": [\"Desc\"]}}]',10,1),(39,'2023-07-24 21:56:50.776601','12','Orders object (12)',3,'',12,1),(40,'2023-07-24 21:56:54.444899','11','Orders object (11)',3,'',12,1),(41,'2023-07-24 21:56:59.039274','10','Orders object (10)',3,'',12,1),(42,'2023-07-24 21:57:03.287618','9','Orders object (9)',3,'',12,1),(43,'2023-07-24 21:57:07.230938','8','Orders object (8)',3,'',12,1),(44,'2023-07-24 21:57:11.051251','7','Orders object (7)',3,'',12,1),(45,'2023-07-24 21:57:14.598538','6','Orders object (6)',3,'',12,1),(46,'2023-07-24 21:57:27.514592','3','Orders object (3)',3,'',12,1),(47,'2023-07-24 21:57:34.350148','4','Orders object (4)',3,'',12,1),(48,'2023-07-24 21:57:59.053160','2','Orders object (2)',3,'',12,1),(49,'2023-07-25 16:22:44.223105','1','Your Order ...',2,'[{\"changed\": {\"fields\": [\"Update desc\"]}}]',13,1),(50,'2023-07-25 16:23:02.544599','1','Your Order ...',2,'[{\"changed\": {\"fields\": [\"Update desc\"]}}]',13,1),(51,'2023-07-25 16:26:53.192845','2','Your Shipme...',1,'[{\"added\": {}}]',13,1),(52,'2023-07-27 10:23:11.022029','3','Your Order ...',1,'[{\"added\": {}}]',13,1),(53,'2023-07-29 11:22:16.486867','1','BitCoin',1,'[{\"added\": {}}]',14,1),(54,'2023-07-29 11:46:01.583796','1','BitCoin',2,'[{\"changed\": {\"fields\": [\"Thead0\", \"Thead1\", \"Head1\", \"Thead2\"]}}]',14,1),(55,'2023-07-29 12:13:58.723945','2','Apple Inc.',1,'[{\"added\": {}}]',14,1),(56,'2023-07-29 13:41:47.856389','1','BitCoin',2,'[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]',14,1),(57,'2023-07-29 16:09:00.831228','3','Play Station',1,'[{\"added\": {}}]',14,1),(58,'2023-07-29 16:31:38.951563','2','Apple Inc.',2,'[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]',14,1),(59,'2023-07-29 16:45:38.294097','3','Play Station',2,'[{\"changed\": {\"fields\": [\"Background\"]}}]',14,1),(60,'2023-07-29 16:47:02.440718','3','Play Station',2,'[{\"changed\": {\"fields\": [\"Thumbnail\", \"Background\"]}}]',14,1),(61,'2023-07-29 16:48:09.937038','1','BitCoin',2,'[{\"changed\": {\"fields\": [\"Background\"]}}]',14,1),(62,'2023-07-29 16:49:31.641318','2','Apple Inc.',2,'[{\"changed\": {\"fields\": [\"Thumbnail\", \"Background\"]}}]',14,1),(63,'2023-07-29 16:52:53.609962','4','Marvel',1,'[{\"added\": {}}]',14,1),(64,'2023-07-29 18:40:22.488784','5','Meta',1,'[{\"added\": {}}]',14,1),(65,'2023-07-29 18:42:13.824438','5','Meta',2,'[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]',14,1),(66,'2023-07-30 10:41:11.033807','4','Marvel',2,'[{\"changed\": {\"fields\": [\"BackgroundVideo\"]}}]',14,1),(67,'2023-07-30 10:41:49.210748','5','Meta',2,'[{\"changed\": {\"fields\": [\"BackgroundVideo\"]}}]',14,1),(68,'2023-07-30 10:41:58.477504','3','Play Station',2,'[{\"changed\": {\"fields\": [\"BackgroundVideo\"]}}]',14,1),(69,'2023-07-30 10:42:08.416880','2','Apple Inc.',2,'[{\"changed\": {\"fields\": [\"BackgroundVideo\"]}}]',14,1),(70,'2023-07-30 10:42:16.114506','1','BitCoin',2,'[{\"changed\": {\"fields\": [\"BackgroundVideo\"]}}]',14,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(14,'blog','blogs'),(5,'contenttypes','contenttype'),(7,'myapp','blog'),(11,'myapp','contact'),(8,'myapp','justcontact'),(12,'myapp','orders'),(13,'myapp','orderupdates'),(10,'myapp','products'),(9,'myapp','responses'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-07-14 21:58:00.261485'),(2,'auth','0001_initial','2023-07-14 21:58:00.747193'),(3,'admin','0001_initial','2023-07-14 21:58:00.978481'),(4,'admin','0002_logentry_remove_auto_add','2023-07-14 21:58:00.994120'),(5,'admin','0003_logentry_add_action_flag_choices','2023-07-14 21:58:00.994120'),(6,'contenttypes','0002_remove_content_type_name','2023-07-14 21:58:01.116528'),(7,'auth','0002_alter_permission_name_max_length','2023-07-14 21:58:01.163406'),(8,'auth','0003_alter_user_email_max_length','2023-07-14 21:58:01.194654'),(9,'auth','0004_alter_user_username_opts','2023-07-14 21:58:01.216982'),(10,'auth','0005_alter_user_last_login_null','2023-07-14 21:58:01.279481'),(11,'auth','0006_require_contenttypes_0002','2023-07-14 21:58:01.279481'),(12,'auth','0007_alter_validators_add_error_messages','2023-07-14 21:58:01.295105'),(13,'auth','0008_alter_user_username_max_length','2023-07-14 21:58:01.348011'),(14,'auth','0009_alter_user_last_name_max_length','2023-07-14 21:58:01.417035'),(15,'auth','0010_alter_group_name_max_length','2023-07-14 21:58:01.448288'),(16,'auth','0011_update_proxy_permissions','2023-07-14 21:58:01.448288'),(17,'auth','0012_alter_user_first_name_max_length','2023-07-14 21:58:01.579818'),(18,'myapp','0001_initial','2023-07-14 21:58:01.617579'),(19,'myapp','0002_justcontact_delete_contact','2023-07-14 21:58:01.648832'),(20,'myapp','0003_contact_delete_justcontact','2023-07-14 21:58:01.680079'),(21,'myapp','0004_justcontact_delete_contact_blog_file_blog_image','2023-07-14 21:58:01.748684'),(22,'sessions','0001_initial','2023-07-14 21:58:01.779934'),(23,'myapp','0005_blog_address_alter_justcontact_date','2023-07-14 22:37:03.098405'),(24,'myapp','0006_blog_email_alter_justcontact_date','2023-07-14 22:39:17.226538'),(25,'myapp','0007_responses_alter_justcontact_date','2023-07-15 10:47:08.863156'),(26,'myapp','0008_alter_justcontact_date','2023-07-15 11:02:59.426633'),(27,'myapp','0009_responses_image_alter_justcontact_date','2023-07-15 11:09:14.508711'),(28,'myapp','0010_blog_url_alter_justcontact_date','2023-07-15 11:41:38.711057'),(29,'myapp','0011_products_alter_blog_file_alter_blog_name_and_more','2023-07-16 12:09:02.603848'),(30,'myapp','0012_alter_justcontact_date_alter_products_desc_and_more','2023-07-20 17:48:08.706433'),(31,'myapp','0013_contact_alter_justcontact_date_and_more','2023-07-21 11:51:14.895345'),(32,'myapp','0014_orders_alter_justcontact_date_and_more','2023-07-24 20:24:54.148516'),(33,'myapp','0015_alter_justcontact_date_alter_orders_datetime_and_more','2023-07-24 20:44:33.596093'),(34,'myapp','0016_alter_justcontact_date_alter_orders_datetime_and_more','2023-07-24 20:48:20.378366'),(35,'myapp','0017_alter_justcontact_date_alter_orders_addresstype_and_more','2023-07-24 20:58:49.238146'),(36,'myapp','0018_alter_justcontact_date_alter_orders_datetime_and_more','2023-07-24 21:04:19.197584'),(37,'myapp','0019_alter_orders_options_alter_justcontact_date_and_more','2023-07-24 21:59:21.243862'),(38,'myapp','0020_orderupdates_alter_orders_options_and_more','2023-07-25 15:58:37.910843'),(39,'blog','0001_initial','2023-07-29 11:13:54.648772'),(40,'blog','0002_blogs_pub_by','2023-07-29 11:19:04.463513'),(41,'blog','0003_blogs_thead0_blogs_thead1_blogs_thead2','2023-07-29 11:44:40.614698'),(42,'myapp','0021_alter_orderupdates_options_alter_justcontact_date_and_more','2023-07-29 12:38:15.666274'),(43,'blog','0004_blogs_background','2023-07-29 16:43:48.266196'),(44,'blog','0005_alter_blogs_head0_alter_blogs_head1_and_more','2023-07-29 18:37:22.509194'),(45,'blog','0006_blogs_backgroundvideo','2023-07-30 10:39:50.051585'),(46,'myapp','0022_orders_amount_alter_justcontact_date_and_more','2023-07-30 12:08:35.600346'),(47,'myapp','0023_alter_justcontact_date_alter_orders_amount_and_more','2023-07-30 12:08:35.639351');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0qlvrumcn310bbd10p1col1k82xuw8zf','.eJxVjEEOwiAQRe_C2hBm2inUpXvPQAYGpGpoUtqV8e7apAvd_vfefynP21r81tLiJ1FnBer0uwWOj1R3IHeut1nHua7LFPSu6IM2fZ0lPS-H-3dQuJVvTQMnIy6Bc0Scw2AFOiO2R0SbEQW4i8FacExgEPNoDHURA42xJwH1_gDNszb7:1qQn6g:OtnBopVh8Ejs4YCUXl52-ChqLITR-ftVo63L42wu-38','2023-08-15 11:00:02.273420'),('2sw9exvowexxsk62vq5lhjd4hgecwqli','.eJxVjDsOwyAQBe9CHSF-Bm_K9D4DWlgITiKQjF1FuXtsyUXSvpl5b-ZxW4vfelr8TOzKJLv8bgHjM9UD0APrvfHY6rrMgR8KP2nnU6P0up3u30HBXvYajFNDAAjGiRGzc8qIaDBbCEpqMUCyWkttsiRFaGnXSensRqtBKDDs8wWzXzZg:1qKcz6:JYClL9ambOWCJW9T3WMpCDtuPq7NS_V3I5M3TeH36Q4','2023-07-29 10:58:44.218430'),('t4aq81t7md7zl0qdtdxpi3pab5egfcjd','.eJxVjEEOwiAQRe_C2hBm2inUpXvPQAYGpGpoUtqV8e7apAvd_vfefynP21r81tLiJ1FnBer0uwWOj1R3IHeut1nHua7LFPSu6IM2fZ0lPS-H-3dQuJVvTQMnIy6Bc0Scw2AFOiO2R0SbEQW4i8FacExgEPNoDHURA42xJwH1_gDNszb7:1qQn2K:Y0n0Zg7UdB-4xKw9Gfydo893LTFiKh9D-96UEoc-OSg','2023-08-15 10:55:32.174519');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_blog`
--

DROP TABLE IF EXISTS `myapp_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_blog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `tagline` longtext NOT NULL,
  `file` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` longtext NOT NULL DEFAULT (_utf8mb3'2023-07-14 22:37:02.982513+00:00'),
  `email` varchar(254) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_blog`
--

LOCK TABLES `myapp_blog` WRITE;
/*!40000 ALTER TABLE `myapp_blog` DISABLE KEYS */;
INSERT INTO `myapp_blog` VALUES (2,'azeem','this','1.txt','myimage.png','this is the address of azeem','this@gmail.com','https://google.com'),(4,'Shahid','boom boom afridi','challenge.py','AirBrush_20190930022558.jpg','this is the address of shahid afridi','afridi@gmail.com','https://google.com'),(5,'aman','this is another tagline','background_clip.html','DSC_0020.NEF','address of aman','aman@gmail.com','https://docs.djangoproject.com/en/4.2/contents/'),(6,'sayra','tagline01','requirements.txt','DSC_0020.jpg','fdsafsdf','121@gmail.com','https://apache.friends.org'),(7,'Bruce','wayne enterprises','advance_backgrounds.html','AirBrush_20190930022558.jpg','this is the address of bruce wayne','wayne@gmail.com','https://wayneenterprises.in');
/*!40000 ALTER TABLE `myapp_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_contact`
--

DROP TABLE IF EXISTS `myapp_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_contact` (
  `sno` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `number` varchar(13) NOT NULL,
  `concern` longtext NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_contact`
--

LOCK TABLES `myapp_contact` WRITE;
/*!40000 ALTER TABLE `myapp_contact` DISABLE KEYS */;
INSERT INTO `myapp_contact` VALUES (1,'Mohd Saqib','mdsaqib94100@gmail.com','7906719540','let\'s see if the email got send or not'),(2,'Ibrahim Deviliers','abd@gmail.com','1234567890','I do not have any concern this website is not responsive i just want to say that'),(3,'Mohd Saqib','mdsaqib94100@gmail.com','7906719540','I do not get the email'),(4,'haris','this@gmail.com','9389625025','sfafdas'),(5,'haris','this@gmail.com','9389625025','sfafdas'),(6,'haris','this@gmail.com','9389625025','sfafdas'),(7,'haris','this@gmail.com','9389625025','sfafdas'),(8,'haris','this@gmail.com','9389625025','sfafdas'),(9,'Mohd Haris','this@gmail.com','7906719540','the google smtp server is not working even in django'),(10,'Mohd Haris','this@gmail.com','7906719540','the google smtp server is not working even in django'),(11,'Mohd Haris','this@gmail.com','07906719540','the google smtp server is not working even in django ');
/*!40000 ALTER TABLE `myapp_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_justcontact`
--

DROP TABLE IF EXISTS `myapp_justcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_justcontact` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_justcontact`
--

LOCK TABLES `myapp_justcontact` WRITE;
/*!40000 ALTER TABLE `myapp_justcontact` DISABLE KEYS */;
INSERT INTO `myapp_justcontact` VALUES (1,'','2023-07-15 17:26:35.941695');
/*!40000 ALTER TABLE `myapp_justcontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_orders`
--

DROP TABLE IF EXISTS `myapp_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `json_data` varchar(500) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `phoneNumber` varchar(13) NOT NULL,
  `email` varchar(25) NOT NULL,
  `address` varchar(500) NOT NULL,
  `address2` varchar(500) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `addressType` varchar(12) NOT NULL,
  `datetime` datetime(6) NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_orders`
--

LOCK TABLES `myapp_orders` WRITE;
/*!40000 ALTER TABLE `myapp_orders` DISABLE KEYS */;
INSERT INTO `myapp_orders` VALUES (1,'{}','Mohd ','Saqib','7906719540','mdsaqib94100@gmail.com','Mohalla Khandsari ','Six Road ','Budaun','Uttar Pradesh','243601','Home','2023-07-24 20:55:54.419375',0),(5,'{\"product1\":[1,\"Iphone7\"],\"product2\":[1,\"Laptop\"],\"product3\":[1,\"Tablet\"],\"product13\":[1,\"Women Printed Round Neck Cotton Blend Black T-Shir\"]}','fdsaf','asdfds','1234568520','me@gmail.com','asdf','fasdf','fasdf','Haryana','123456','Work','2023-07-25 02:45:57.455648',0),(13,'{\"product1\":[1,\"Iphone7\"],\"product2\":[1,\"Laptop\"],\"product3\":[1,\"Tablet\"]}','Saqlain ','Mushtag','112233445566','saqlain@gmail.com','mera address 1','mera address 2','bareily','Jammu and Kashmir','123456','Home','2023-07-25 20:03:07.562663',0),(14,'{\"product2\":[1,\"Laptop\"],\"product3\":[1,\"Tablet\"]}','Peter',' Parker','1144556699','venom@gmail.com','queens','manhattan','new york','Nagaland','114488','Work','2023-07-25 21:50:17.871662',0),(15,'{\"product2\":[1,\"Laptop\",45020],\"product3\":[1,\"Tablet\",14500],\"product19\":[1,\"Men Slim Fit Solid Spread Collar Formal Shirt\",400]}','Ahmed','Ali','7906719540','mn136066@gmail.com','ChandchiChowk','near turk building','budaun','Chhattisgarh','243601','Home','2023-07-30 17:47:14.788942',59920),(16,'{\"product3\":[1,\"Tablet\",14500],\"product2\":[1,\"Laptop\",45020]}','sadf','sdaf','asdf','mdharis@gmail.oom','mera address 1','mera address 2','meri city','Uttar Pradesh','255026','Home','2023-07-30 17:50:06.523653',59520),(17,'{\"product2\":[1,\"Laptop\",45020],\"product3\":[2,\"Tablet\",14500],\"product19\":[1,\"Men Slim Fit Solid Spread Collar Formal Shirt\",400],\"product6\":[1,\"Microwave\",4500],\"product5\":[1,\"printer\",8700]}','haris','ramesh','9389625025','mdharis4092@gmail.com','this is my first address','this is my second address','meri city is budaun','Delhi','123456','Home','2023-08-01 20:18:30.910818',87620),(18,'{\"product2\":[1,\"Laptop\",45020],\"product3\":[2,\"Tablet\",14500],\"product19\":[1,\"Men Slim Fit Solid Spread Collar Formal Shirt\",400],\"product6\":[1,\"Microwave\",4500],\"product5\":[1,\"printer\",8700]}','haris','ramesh','9386951223','mdharis4092@gmail.comsa','asdfd','afdsfas','asdfsa','Lakshadweep','123456','Work','2023-08-01 20:18:30.910818',87620);
/*!40000 ALTER TABLE `myapp_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_orderupdates`
--

DROP TABLE IF EXISTS `myapp_orderupdates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_orderupdates` (
  `update_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `update_desc` varchar(5000) NOT NULL,
  `timestamp` date NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_orderupdates`
--

LOCK TABLES `myapp_orderupdates` WRITE;
/*!40000 ALTER TABLE `myapp_orderupdates` DISABLE KEYS */;
INSERT INTO `myapp_orderupdates` VALUES (1,14,'Your Order has been placed successfully','2023-07-25'),(2,14,'Your Shipment has reached the Indore Courier Facility','2023-07-25'),(3,14,'Your Order has reached the Unnao Facility','2023-07-27'),(4,15,'Your Order has been placed successfully','2023-07-30'),(5,16,'Your Order has been placed successfully','2023-07-30'),(6,17,'Your Order has been placed successfully','2023-08-02'),(7,18,'Your Order has been placed successfully','2023-08-02');
/*!40000 ALTER TABLE `myapp_orderupdates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_products`
--

DROP TABLE IF EXISTS `myapp_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `subcategory` varchar(50) NOT NULL,
  `price` int NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_products`
--

LOCK TABLES `myapp_products` WRITE;
/*!40000 ALTER TABLE `myapp_products` DISABLE KEYS */;
INSERT INTO `myapp_products` VALUES (1,'Iphone7','Electronics','smartphone',36500,'The iPhone 7 and iPhone 7 Plus[a] are smartphones that were designed, developed, and marketed by Apple Inc. They are the tenth generation of the iPhone. They were announced on September 7, 2016, at the Bill Graham Civic Auditorium in San Francisco by Apple CEO Tim Cook, and were released on September 16, 2016, succeeding the iPhone 6, iPhone 6 Plus, iPhone 6S and iPhone 6S Plus as the flagship devices in the iPhone series. Apple also released the iPhone 7 and iPhone 7 Plus in numerous countries worldwide throughout September and October 2016. They were succeeded as flagship devices by the iPhone 8 and iPhone 8 Plus[1] on September 12, 2017, and were discontinued with the announcement of the iPhone 11 and iPhone 11 Pro on September 10, 2019. The iPhone 7\'s overall design is similar to the iPhone 6 and iPhone 6S. Changes introduced included new color options (Matte Black and Jet Black), water and dust resistance, a new capacitive, static home button, revised antenna bands, and the contro','2023-07-16 17:42:38.000000','myapp/images/sara-kurfess-KegwEO8r29E-unsplash.jpg'),(2,'Laptop','Electronics','home',45020,'A laptop computer or notebook computer, also known as a laptop or notebook for short, is a small, portable personal computer (PC). Laptops typically have a clamshell form factor with a flat panel screen (usually 11ΓÇô17 in or 280ΓÇô430 mm in diagonal size) on the inside of the upper lid and an alphanumeric keyboard and pointing device (such as a trackpad and/or trackpoint) on the inside of the lower lid, although 2-in-1 PCs with a detachable keyboard are often marketed as laptops or as having a \"laptop mode\".[1][2] Most of the computer\'s internal hardware is fitted inside the lower lid enclosure under the keyboard, although many laptops have a built-in webcam at the top of the screen and some modern ones even feature a touch-screen display. In most cases, unlike tablet computers which run on mobile operating systems, laptops tend to run on desktop operating systems which have been traditionally associated with desktop computers.','2023-07-16 19:05:24.000000','myapp/images/laptop.jpg'),(3,'Tablet','Electronics','Device',14500,'A tablet computer, commonly shortened to tablet, is a mobile device, typically with a mobile operating system and touchscreen display processing circuitry, and a rechargeable battery in a single, thin and flat package. Tablets, being computers, have similar capabilities, but lack some input/output (I/O) abilities that others have. Modern tablets largely resemble modern smartphones, the only differences being that tablets are relatively larger than smartphones, with screens 7 inches (18 cm) or larger, measured diagonally,[1][2][3][4] and may not support access to a cellular network. Unlike laptops (which have traditionally run off operating systems usually designed for desktops), tablets usually run mobile operating systems, alongside smartphones.  The touchscreen display is operated by gestures executed by finger or digital pen (stylus), instead of the mouse, touchpad, and keyboard of larger computers. Portable computers can be classified according to the presence and appearance of phy','2023-07-16 19:42:29.000000','myapp/images/tablet.jpg'),(4,'Mouse','Electronics','Devices',350,'This is a very good mouse','2023-07-16 19:38:44.000000','myapp/images/mouse.jpg'),(5,'printer','Electronics','device',8700,'this is a very good printer','2023-07-16 19:50:50.000000','myapp/images/printer.jpg'),(6,'Microwave','Electronics','Devices',4500,'This is a very good microwave','2023-07-17 03:40:38.000000','myapp/images/microwave.jpg'),(7,'Gaming Keboard','Computer Accessories','Input Devices',1200,'this is a very good gaming Keboard','2023-07-17 03:40:38.000000','myapp/images/keboard.jpg'),(8,'HeadPhones','Electronics','Hearing Devices',750,'these are  very good Headphone','2023-07-17 03:57:08.000000','myapp/images/headphone.jpg'),(9,'Nike Air Max Plus III','Fashion','Men\'s Footwear',4500,'The Nike Air Max Plus III combines ultra-comfortable Tuned Air Technology with an energetic silhouette made famous by its predecessors.','2023-07-17 18:26:57.000000','myapp/images/nike.webp'),(10,'Apple Watch SE','Electronics','SmartWatches',12000,'A great deal to love. In fun, fresh combinations.','2023-07-17 18:26:57.000000','myapp/images/watch.png'),(11,'BRAVIA XR | MASTER Series','Appliances','Television',14500,'Our BRAVIA XRΓäó TV takes vision and sound to the next level with the ingenious Cognitive Processor XR. It understands how humans see and hear, providing a whole new experience that immerses you completely in the scene.','2023-07-17 18:26:57.000000','myapp/images/istockphoto-467946398-2048x2048.png'),(12,'Strauss Premium (Club) RH Cricket Kit','Sports','Cricket',4600,'Get ready to take your cricket game to the next level with Strauss Premium (Club) RH Oriented complete cricket set, featuring everything you need to get started. This set includes a high-quality cricket bat, cricket ball, batting gloves, thigh pads, a cricket helmet, Leg/Elbow/Chest/ Abdominal Guard','2023-07-17 18:26:57.000000','myapp/images/cricket.webp'),(13,'Women Printed Round Neck Cotton Blend Black T-Shir','Fashion','Women\'s Topwear',250,'A very beautiful Topwear for Women','2023-07-17 18:26:57.000000','myapp/images/w.png'),(14,'Prestige PKOSS Electric Kettle  (1.5 L, Silver)','Appliances','Kitchen',750,'Enjoy a cup of hot tea on that rainy day by taking advantage of the Prestige PKOSS Electric Kettle. It comes with features, such as the Auto Shut-off Strix Thermostat and Single-touch Lid Locking, making it safe even for a home with kids.','2023-07-17 19:19:45.000000','myapp/images/cattle.png'),(15,'Flipkart SmartBuy JRZ-ST01 BW Solid Body Electric','Music','Instruments',4000,'Swan7 S370 Double Cutway 6 String Black Electric Guitar is perfectly designed to fulfill the demands of every musician. It features professional quality standards and delivers the best Swan7 innovative excellence.','2023-07-17 19:31:47.000000','myapp/images/louis-hansel-M_dJ_ScwaLE-unsplash.jpg'),(16,'Spartan Thunder Football','Sports','Football',289,'Play effortlessly and to your best capacity with this SPARTAN THUNDER Football that is attractively designed and splashed with bright hues.','2023-07-17 19:31:47.000000','myapp/images/football.png'),(17,'Table Lamp','Home & Furniture','Table Lamp',599,'Pick Ur Needs Rocklight Rechargeable LED Touch On/off Switch Desk Lamp Children Eye Protection Student Study Reading Dimmer Rechargeable Led Table Lamps USB Charging Touch Dimmer(white)-707 Charging time-8 Hours Battery Backup-4 Hours(Depends On led Brightness)','2023-07-17 19:31:47.000000','myapp/images/lamp.png'),(18,'PlayStation 4','Gaming','Consoles',34500,'A very powerful gaming console . Made for Pro Gamers','2023-07-17 19:31:47.000000','myapp/images/play.jpg'),(19,'Men Slim Fit Solid Spread Collar Formal Shirt','Fashion','Men\'s Clothing',400,'A very good shirt gives you a classic look','2023-07-17 19:31:47.000000','myapp/images/shirt.jpg'),(20,'H&M Men Bomber Jacket','Fashion','Men\'s Clothing',2699,'Non-padded bomber jacket in woven fabric with a ribbed stand-up collar, a zip down the front and long raglan sleeves. Diagonal front pockets with a press-stud, an inner pocket with a press-stud, and ribbing at the cuffs and hem. Lined.','2023-07-18 17:03:41.000000','myapp/images/jacket.jpg'),(21,'Home Garage 180 TC Cotton King 3D Printed Flat Bed','Home & Furniture','Room BedSheet',299,'Add life and colors to your bedroom space with this trendy double Flat Bedsheet. Styled with an enthralling design and pattern, it will flaunt your rich taste in exclusive bed linen. Made from 100% microfiber fabric, it is skin-friendly, durable and easy to wash.','2023-07-18 18:55:41.000000','myapp/images/bedsheet.jpg'),(22,'Bulfyss Digital Black Clock','Home & Furniture','Clocks',1089,'Need more alarm options to wake you up? Need more alarm options to remind you do something? Easy to set 3 alarms with this clock, you can see the 3 alarm time on the display clearly. [ MULTI-FUNCTIONAL ] - A clock that includes snooze, nightlight, temperature, calendar, voice adjust functions can be','2023-07-18 18:55:41.000000','myapp/images/clock.jpg'),(23,'Qubo HLM03 Smart Door Lock','Home & Furniture','Smart Door Locks',9990,'Front Panel, Back Panel, Drilling Template, User Manual, Screw Kit Moritise, 2 Mechanical Keys, Access Cards','2023-07-18 20:03:12.000000','myapp/images/lock.jpg');
/*!40000 ALTER TABLE `myapp_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_responses`
--

DROP TABLE IF EXISTS `myapp_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_responses` (
  `sno` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `number` int NOT NULL,
  `address` longtext,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_responses`
--

LOCK TABLES `myapp_responses` WRITE;
/*!40000 ALTER TABLE `myapp_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_responses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-02  3:07:21
