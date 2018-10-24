-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 22 oct. 2018 à 13:52
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `essentialmode`
--

-- --------------------------------------------------------

--
-- Structure de la table `addon_account`
--

DROP TABLE IF EXISTS `addon_account`;
CREATE TABLE IF NOT EXISTS `addon_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_account`
--

INSERT INTO `addon_account` (`id`, `name`, `label`, `shared`) VALUES
(1, 'caution', 'Caution', 0),
(2, 'society_unicorn', 'Unicorn', 1),
(3, 'society_ambulance', 'Ambulance', 1),
(4, 'society_vigne', 'Vigneron', 1),
(5, 'society_banker', 'Banque', 1),
(6, 'bank_savings', 'Livret Bleu', 0),
(7, 'society_cardealer', 'Concessionnaire', 1),
(8, 'society_taxi', 'Taxi', 1),
(9, 'property_black_money', 'Argent Sale Propriété', 0),
(10, 'society_realestateagent', 'Agent immobilier', 1),
(11, 'society_police', 'Police', 1),
(12, 'society_mecano', 'Mécano', 1),
(16, 'society_brewer', 'brewer', 1),
(17, 'society_lawyer', 'Lawyer', 1),
(18, 'society_ordinateur', 'Informaticien', 1),
(19, 'society_gouvernor', 'Gouvernement', 1),
(20, 'society_unicorn', 'Unicorn', 1),
(21, 'society_banker', 'Bank', 1),
(22, 'bank_savings', 'Bank', 0),
(23, 'society_tequilala', 'tequilala', 1),
(24, 'society_fib', 'Fib', 1),
(25, 'society_bahama', 'Bahama', 1),
(26, 'society_mafia', 'Mafia', 1),
(27, 'society_cartel', 'cartel', 1),
(28, 'society_realestateagent', 'Agent immobilier', 1),
(29, 'society_bahama', 'Bahama', 1),
(30, 'society_gang', 'gang', 1),
(31, 'society_digilux', 'Digilux', 1),
(32, 'society_biker', 'Biker', 1),
(33, 'society_armurier', 'Armurier', 1),
(34, 'society_armurier', 'Armurier', 1),
(35, 'society_armurier', 'Armurier', 1),
(36, 'society_gouvernor', 'Gouvernement', 1),
(37, 'society_gouvernor', 'Gouvernement', 1),
(38, 'society_gouvernor', 'Gouvernement', 1),
(39, 'society_tabac', 'tabac', 1),
(40, 'society_police', 'Police', 1),
(41, 'society_Ligues Des Ombres', 'Ligues Des Ombres', 1),
(42, 'society_ambulance', 'Ambulance', 1),
(43, 'society_choco-donpa', 'chocolatier', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

DROP TABLE IF EXISTS `addon_account_data`;
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1431 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_ambulance', 50500, NULL),
(2, 'society_banker', 0, NULL),
(3, 'society_cardealer', 128482, NULL),
(4, 'society_taxi', 0, NULL),
(5, 'society_realestateagent', 676748, NULL),
(6, 'society_police', 1006980, NULL),
(7, 'society_mecano', 12647843, NULL),
(8, 'society_unicorn', 100000, NULL),
(9, 'society_vigne', 0, NULL),
(10, 'bank_savings', 0, NULL),
(11, 'property_black_money', 0, NULL),
(13, 'society_brewer', 50000, NULL),
(14, 'society_lawyer', 422420, NULL),
(15, 'society_ordinateur', 14414, NULL),
(16, 'society_gouvernor', 873050, NULL),
(17, 'society_tequilala', 0, NULL),
(18, 'society_fib', 1407244, NULL),
(19, 'society_bahama', 5000, NULL),
(20, 'society_mafia', 0, NULL),
(21, 'society_cartel', 4440000, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory`
--

DROP TABLE IF EXISTS `addon_inventory`;
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_inventory`
--

INSERT INTO `addon_inventory` (`id`, `name`, `label`, `shared`) VALUES
(1, 'society_ambulance', 'Ambulance', 1),
(2, 'society_vigne', 'Vigneron', 1),
(3, 'society_cardealer', 'Concesionnaire', 1),
(4, 'society_taxi', 'Taxi', 1),
(5, 'property', 'Propriété', 0),
(6, 'society_police', 'Police', 1),
(7, 'society_mecano', 'Mécano', 1),
(8, 'society_unicorn', 'Unicorn', 1),
(9, 'society_unicorn_fridge', 'Unicorn (frigo)', 1),
(13, 'society_brewer', 'brewer', 1),
(14, 'society_lawyer', 'Lawyer', 1),
(15, 'society_ordinateur', 'Informaticien', 1),
(16, 'society_gouvernor', 'Gouvernement', 1),
(17, 'society_unicorn', 'Unicorn', 1),
(18, 'society_unicorn_fridge', 'Unicorn (frigo)', 1),
(19, 'society_tequilala', 'tequilala', 1),
(20, 'society_tequilala_fridge', 'tequilala (frigo)', 1),
(21, 'society_fib', 'Fib', 1),
(22, 'society_bahama', 'Bahama', 1),
(23, 'society_bahama_fridge', 'Bahama (frigo)', 1),
(24, 'society_mafia', 'Mafia', 1),
(25, 'society_cartel', 'Cartel', 1),
(26, 'society_bahama', 'Bahama', 1),
(27, 'society_bahama_fridge', 'Bahama (frigo)', 1),
(28, 'society_gang', 'Gang', 1),
(29, 'society_digilux', 'Digilux', 1),
(30, 'society_digilux_chest', 'Digilux (Coffre)', 1),
(31, 'society_biker', 'Biker', 1),
(32, 'society_armurier', 'Armurier', 1),
(33, 'society_armurier_coffre', 'Armurier (patron)', 1),
(34, 'society_armurier', 'Armurier', 1),
(35, 'society_armurier_coffre', 'Armurier (patron)', 1),
(36, 'society_gouvernor', 'Gouvernement', 1),
(37, 'society_gouvernor', 'Gouvernement', 1),
(38, 'society_gouvernor', 'Gouvernement', 1),
(39, 'society_tabac', 'tabac', 1),
(40, 'society_police', 'Police', 1),
(41, 'society_Ligues Des Ombres', 'Ligues Des Ombres', 1),
(42, 'society_ambulance', 'Ambulance', 1),
(43, 'society_choco-donpa', 'chocolatier', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory_items`
--

DROP TABLE IF EXISTS `addon_inventory_items`;
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_inventory_items`
--

INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
(1, 'society_brewer', 'ingredientsbeer', 0, NULL),
(2, 'society_brewer', 'beer', 445, NULL),
(3, 'society_bahama_fridge', 'beer', 97, NULL),
(4, 'society_ordinateur', 'PcComplet', 9, NULL),
(30, 'society_mecano', 'medikit', 0, NULL),
(29, 'society_mecano', 'bandage', 11, NULL),
(27, 'society_digilux', 'ssd', 0, NULL),
(28, 'society_digilux', 'ram', 0, NULL),
(31, 'society_mecano', 'blowpipe', 99, NULL),
(32, 'society_mecano', 'fixkit', 123, NULL),
(33, 'society_mecano', 'carokit', 100, NULL),
(34, 'society_digilux', 'graphiccard', 8, NULL),
(88, 'society_police', 'keyarmory', 4, NULL),
(38, 'society_mecano', 'gazbottle', 5, NULL),
(39, 'society_mecano', 'carotool', 5, NULL),
(41, 'society_fib', 'bandage', 40, NULL),
(40, 'society_mecano', 'fixtool', 5, NULL),
(42, 'society_fib', 'medikit', 36, NULL),
(43, 'society_fib', 'phone', 1, NULL),
(44, 'society_fib', 'chocolatebardigilux', 0, NULL),
(47, 'society_fib', 'intestin', 20, NULL),
(45, 'society_fib', 'digiluxenergy', 0, NULL),
(46, 'society_fib', 'gpsdigilux', 0, NULL),
(69, 'property', 'intestin', 0, 'steam:110000100db1a28'),
(48, 'society_unicorn_fridge', 'menthe', 20, NULL),
(49, 'society_unicorn_fridge', 'ice', 10, NULL),
(50, 'society_unicorn_fridge', 'bolcacahuetes', 15, NULL),
(51, 'society_unicorn_fridge', 'bolchips', 15, NULL),
(52, 'society_unicorn_fridge', 'bolnoixcajou', 15, NULL),
(53, 'society_unicorn_fridge', 'bolpistache', 15, NULL),
(54, 'society_unicorn_fridge', 'grapperaisin', 15, NULL),
(55, 'society_unicorn_fridge', 'saucisson', 15, NULL),
(56, 'society_unicorn_fridge', 'jager', 0, NULL),
(77, 'society_fib', 'lsd', 90, NULL),
(57, 'society_unicorn_fridge', 'martini', 0, NULL),
(62, 'society_unicorn_fridge', 'drpepper', 5, NULL),
(58, 'society_unicorn_fridge', 'rhum', 5, NULL),
(59, 'society_unicorn_fridge', 'tequila', 0, NULL),
(60, 'society_unicorn_fridge', 'vodka', 0, NULL),
(61, 'society_unicorn_fridge', 'whisky', 0, NULL),
(63, 'society_unicorn_fridge', 'icetea', 0, NULL),
(64, 'society_unicorn_fridge', 'energy', 5, NULL),
(65, 'society_unicorn_fridge', 'jusfruit', 5, NULL),
(66, 'society_unicorn_fridge', 'limonade', 5, NULL),
(67, 'society_unicorn_fridge', 'soda', 0, NULL),
(76, 'society_fib', 'os', 26, NULL),
(71, 'property', 'intestin', 38, 'steam:11000010e8d0f59'),
(72, 'property', 'lsd', 51, 'steam:11000010e8d0f59'),
(73, 'property', 'weed', 15, 'steam:11000010e8d0f59'),
(74, 'society_cartel', 'weed', 43, NULL),
(75, 'society_fib', 'lsd_pooch', 0, NULL),
(78, 'society_fib', 'weed_pooch', 0, NULL),
(80, 'property', 'os', 0, 'steam:11000010e8d0f59'),
(79, 'society_fib', 'weed', 80, NULL),
(81, 'property', 'lsd_pooch', 1, 'steam:11000010e8d0f59'),
(82, 'property', 'weed_pooch', 14, 'steam:11000010e8d0f59'),
(90, 'property', 'lsd_pooch', 0, 'steam:11000010d17d505'),
(84, 'property', 'bread', 0, 'steam:110000103363ad3'),
(85, 'society_digilux', 'powersupply', 5, NULL),
(86, 'society_digilux', 'case', 5, NULL),
(91, 'society_fib', 'cerveau', 20, NULL),
(87, 'society_cartel', 'bandage', 80, NULL),
(89, 'society_police', 'gpsdigilux', 0, NULL),
(92, 'society_fib', 'coeur', 20, NULL),
(93, 'society_fib', 'moelle', 20, NULL),
(94, 'society_fib', 'Toxine', 122, NULL),
(95, 'society_digilux', 'motherboard', 4, NULL),
(96, 'society_digilux', 'processor', 4, NULL),
(97, 'society_digilux', 'laptop', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `billing`
--

DROP TABLE IF EXISTS `billing`;
CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=516 DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Structure de la table `cardealer_vehicles`
--

DROP TABLE IF EXISTS `cardealer_vehicles`;
CREATE TABLE IF NOT EXISTS `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cardealer_vehicles`
--

INSERT INTO `cardealer_vehicles` (`id`, `vehicle`, `price`) VALUES
(16, 'filthynsx', 2500000);

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

DROP TABLE IF EXISTS `characters`;
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=245 DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Structure de la table `coffeemachine`
--

DROP TABLE IF EXISTS `coffeemachine`;
CREATE TABLE IF NOT EXISTS `coffeemachine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `coffeemachine`
--

INSERT INTO `coffeemachine` (`id`, `name`, `item`, `price`) VALUES
(1, 'coffeemachine', 'cafe', 10);

-- --------------------------------------------------------

--
-- Structure de la table `datastore`
--

DROP TABLE IF EXISTS `datastore`;
CREATE TABLE IF NOT EXISTS `datastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `datastore`
--

INSERT INTO `datastore` (`id`, `name`, `label`, `shared`) VALUES
(1, 'society_ambulance', 'Ambulance', 1),
(2, 'society_taxi', 'Taxi', 1),
(3, 'user_mask', 'Masque', 0),
(4, 'property', 'Propriété', 0),
(5, 'society_police', 'Police', 1),
(6, 'society_unicorn', 'Unicorn', 1),
(7, 'society_vigne', 'Vigneron', 1),
(9, 'society_brewer', 'brewer', 1),
(10, 'society_lawyer', 'Lawyer', 1),
(11, 'society_ordinateur', 'Informaticien', 1),
(12, 'society_gouvernor', 'Gouvernement', 1),
(13, 'society_unicorn', 'Unicorn', 1),
(22, 'user_ears', 'Oreilles', 0),
(15, 'society_tequilala', 'tequilala', 1),
(16, 'society_fib', 'Fib', 1),
(17, 'society_bahama', 'Bahama', 1),
(18, 'society_mafia', 'Mafia', 1),
(19, 'society_cartel', 'Cartel', 1),
(20, 'society_bahama', 'Bahama', 1),
(21, 'society_gang', 'Gang', 1),
(23, 'user_glasses', 'Lunettes', 0),
(24, 'user_helmet', 'Casquettes', 0),
(25, 'society_digilux', 'Digilux', 1),
(26, 'society_biker', 'Biker', 1),
(27, 'society_armurier', 'Armurier', 1),
(28, 'society_armurier_coffre', 'Armurier', 1),
(29, 'society_armurier', 'Armurier', 1),
(30, 'society_armurier_coffre', 'Armurier', 1),
(31, 'society_gouvernor', 'Gouvernement', 1),
(32, 'society_gouvernor', 'Gouvernement', 1),
(33, 'society_gouvernor', 'Gouvernement', 1),
(34, 'society_tabac', 'tabac', 1),
(35, 'society_police', 'Police', 1),
(36, 'society_Ligues Des Ombres', 'Ligues Des Ombres', 1),
(37, 'society_ambulance', 'Ambulance', 1),
(38, 'society_choco-donpa', 'chocolatier', 1);

-- --------------------------------------------------------

--
-- Structure de la table `datastore_data`
--

DROP TABLE IF EXISTS `datastore_data`;
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2350 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_ambulance', NULL, '{\"torso_1\":250,\"arms\":85,\"pants_1\":31,\"pants_2\":0,\"tshirt_1\":129,\"helmet_1\":122,\"helmet_2\":0,\"shoes_2\":0,\"tshirt_2\":0,\"decals_1\":58,\"shoes_1\":24,\"torso_2\":0}'),
(2, 'society_taxi', NULL, '{}'),
(4, 'society_unicorn', NULL, '{}'),
(5, 'society_vigne', NULL, '{}'),
(8, 'society_brewer', NULL, '{}'),
(9, 'society_lawyer', NULL, '{}'),
(10, 'society_ordinateur', NULL, '{}'),
(11, 'society_gouvernor', NULL, '{}'),
(12, 'society_tequilala', NULL, '{}'),
(214, 'property', 'steam:110000107214191', '{\"dressing\":[{\"label\":\"Decontracter\",\"skin\":{\"makeup_1\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes\":10,\"glasses_1\":5,\"eyebrows_4\":63,\"beard_2\":10,\"bags_1\":0,\"chain_1\":0,\"arms\":20,\"hair_1\":21,\"bags_2\":0,\"shoes_1\":1,\"bproof_1\":0,\"torso_2\":0,\"decals_2\":0,\"makeup_4\":0,\"eyebrows_3\":0,\"tshirt_2\":0,\"ears_2\":0,\"sex\":0,\"pants_1\":4,\"shoes_2\":5,\"hair_2\":0,\"makeup_2\":0,\"beard_1\":10,\"beard_3\":0,\"ears_1\":-1,\"pants_2\":0,\"eyebrows_2\":10,\"face\":10,\"tshirt_1\":31,\"age_1\":0,\"chain_2\":0,\"hair_color_1\":27,\"skin\":4,\"glasses\":0,\"lipstick_1\":0,\"lipstick_4\":0,\"decals_1\":0,\"makeup_3\":0,\"bproof_2\":0,\"beard_4\":0,\"lipstick_2\":0,\"helmet_2\":0,\"glasses_2\":1,\"hair_color_2\":0,\"eyebrows_1\":0,\"mask_2\":0,\"mask_1\":0,\"age_2\":0,\"torso_1\":29}},{\"label\":\"Secu Gouv\",\"skin\":{\"makeup_1\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes\":10,\"glasses_1\":5,\"eyebrows_4\":63,\"beard_2\":10,\"bags_1\":0,\"chain_1\":12,\"arms\":20,\"hair_1\":21,\"bags_2\":0,\"shoes_1\":10,\"bproof_1\":0,\"torso_2\":0,\"decals_2\":0,\"makeup_4\":0,\"eyebrows_3\":0,\"tshirt_2\":0,\"ears_2\":0,\"sex\":0,\"pants_1\":28,\"shoes_2\":0,\"hair_2\":0,\"makeup_2\":0,\"beard_1\":10,\"beard_3\":0,\"ears_1\":-1,\"helmet_2\":0,\"face\":10,\"tshirt_1\":31,\"age_1\":0,\"hair_color_1\":27,\"mask_2\":0,\"skin\":4,\"chain_2\":2,\"pants_2\":0,\"lipstick_1\":0,\"lipstick_4\":0,\"decals_1\":0,\"makeup_3\":0,\"bproof_2\":0,\"beard_4\":0,\"lipstick_2\":0,\"eyebrows_2\":10,\"glasses_2\":1,\"hair_color_2\":0,\"eyebrows_1\":0,\"torso_1\":29,\"mask_1\":0,\"glasses\":0,\"age_2\":0}},{\"label\":\"Gouv 2\",\"skin\":{\"makeup_1\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes\":10,\"glasses_1\":5,\"eyebrows_4\":63,\"beard_2\":10,\"bags_1\":0,\"chain_1\":12,\"arms\":20,\"hair_1\":21,\"bags_2\":0,\"shoes_1\":10,\"bproof_1\":0,\"torso_2\":0,\"makeup_2\":0,\"makeup_4\":0,\"eyebrows_3\":0,\"tshirt_2\":0,\"ears_2\":0,\"sex\":0,\"pants_1\":25,\"shoes_2\":0,\"hair_2\":0,\"tshirt_1\":31,\"beard_1\":10,\"beard_3\":0,\"mask_2\":0,\"ears_1\":-1,\"pants_2\":0,\"face\":10,\"hair_color_1\":27,\"lipstick_4\":0,\"chain_2\":2,\"skin\":4,\"eyebrows_2\":10,\"makeup_3\":0,\"torso_1\":29,\"age_1\":0,\"decals_1\":0,\"decals_2\":0,\"bproof_2\":0,\"beard_4\":0,\"lipstick_2\":0,\"helmet_2\":0,\"glasses_2\":1,\"hair_color_2\":0,\"eyebrows_1\":0,\"glasses\":0,\"mask_1\":0,\"lipstick_1\":0,\"age_2\":0}}],\"weapons\":[{\"name\":\"WEAPON_FLASHLIGHT\",\"ammo\":0},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":250},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":130},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_ASSAULTSMG\",\"ammo\":0},{\"name\":\"WEAPON_NIGHTSTICK\",\"ammo\":0},{\"name\":\"WEAPON_PISTOL50\",\"ammo\":52}]}'),
(14, 'society_bahama', NULL, '{}'),
(15, 'society_mafia', NULL, '{}'),
(16, 'society_cartel', NULL, '{\"weapons\":[{\"count\":0,\"name\":\"WEAPON_KNIFE\"},{\"count\":22,\"name\":\"WEAPON_NIGHTSTICK\"},{\"count\":13,\"name\":\"WEAPON_HAMMER\"},{\"count\":60,\"name\":\"WEAPON_BAT\"},{\"count\":26,\"name\":\"WEAPON_GOLFCLUB\"},{\"count\":6,\"name\":\"WEAPON_CROWBAR\"},{\"count\":24,\"name\":\"WEAPON_PISTOL\"},{\"count\":27,\"name\":\"WEAPON_COMBATPISTOL\"},{\"count\":20,\"name\":\"WEAPON_APPISTOL\"},{\"count\":0,\"name\":\"WEAPON_PISTOL50\"},{\"count\":23,\"name\":\"WEAPON_MICROSMG\"},{\"count\":32,\"name\":\"WEAPON_SMG\"},{\"count\":32,\"name\":\"WEAPON_ASSAULTSMG\"},{\"count\":31,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"count\":17,\"name\":\"WEAPON_CARBINERIFLE\"},{\"count\":27,\"name\":\"WEAPON_ADVANCEDRIFLE\"},{\"count\":27,\"name\":\"WEAPON_MG\"},{\"count\":23,\"name\":\"WEAPON_COMBATMG\"},{\"count\":30,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"count\":30,\"name\":\"WEAPON_SAWNOFFSHOTGUN\"},{\"count\":28,\"name\":\"WEAPON_ASSAULTSHOTGUN\"},{\"count\":29,\"name\":\"WEAPON_BULLPUPSHOTGUN\"},{\"count\":26,\"name\":\"WEAPON_STUNGUN\"},{\"count\":29,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"count\":26,\"name\":\"WEAPON_HEAVYSNIPER\"},{\"count\":25,\"name\":\"WEAPON_GRENADELAUNCHER\"},{\"count\":24,\"name\":\"WEAPON_RPG\"},{\"count\":31,\"name\":\"WEAPON_STINGER\"},{\"count\":23,\"name\":\"WEAPON_MINIGUN\"},{\"count\":29,\"name\":\"WEAPON_GRENADE\"},{\"count\":24,\"name\":\"WEAPON_STICKYBOMB\"},{\"count\":28,\"name\":\"WEAPON_SMOKEGRENADE\"},{\"count\":26,\"name\":\"WEAPON_BZGAS\"},{\"count\":30,\"name\":\"WEAPON_MOLOTOV\"},{\"count\":36,\"name\":\"WEAPON_FIREEXTINGUISHER\"},{\"count\":28,\"name\":\"WEAPON_PETROLCAN\"},{\"count\":39,\"name\":\"WEAPON_BALL\"},{\"count\":40,\"name\":\"WEAPON_SNSPISTOL\"},{\"count\":33,\"name\":\"WEAPON_BOTTLE\"},{\"count\":24,\"name\":\"WEAPON_GUSENBERG\"},{\"count\":31,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"count\":30,\"name\":\"WEAPON_HEAVYPISTOL\"},{\"count\":31,\"name\":\"WEAPON_BULLPUPRIFLE\"},{\"count\":18,\"name\":\"WEAPON_DAGGER\"},{\"count\":32,\"name\":\"WEAPON_VINTAGEPISTOL\"},{\"count\":30,\"name\":\"WEAPON_FIREWORK\"},{\"count\":31,\"name\":\"WEAPON_MUSKET\"},{\"count\":29,\"name\":\"WEAPON_HEAVYSHOTGUN\"},{\"count\":33,\"name\":\"WEAPON_MARKSMANRIFLE\"},{\"count\":30,\"name\":\"WEAPON_HOMINGLAUNCHER\"},{\"count\":27,\"name\":\"WEAPON_PROXMINE\"},{\"count\":30,\"name\":\"WEAPON_SNOWBALL\"},{\"count\":31,\"name\":\"WEAPON_FLAREGUN\"},{\"count\":31,\"name\":\"WEAPON_COMBATPDW\"},{\"count\":18,\"name\":\"WEAPON_MARKSMANPISTOL\"},{\"count\":23,\"name\":\"WEAPON_KNUCKLE\"},{\"count\":28,\"name\":\"WEAPON_HATCHET\"},{\"count\":28,\"name\":\"WEAPON_RAILGUN\"},{\"count\":29,\"name\":\"WEAPON_MACHETE\"},{\"count\":22,\"name\":\"WEAPON_MACHINEPISTOL\"},{\"count\":13,\"name\":\"WEAPON_SWITCHBLADE\"},{\"count\":14,\"name\":\"WEAPON_REVOLVER\"},{\"count\":4,\"name\":\"WEAPON_DBSHOTGUN\"},{\"count\":22,\"name\":\"WEAPON_COMPACTRIFLE\"},{\"count\":87,\"name\":\"WEAPON_FLASHLIGHT\"},{\"count\":24,\"name\":\"WEAPON_FLARE\"},{\"count\":7,\"name\":\"WEAPON_ASSAULTRIFLE_MK2\"},{\"count\":9,\"name\":\"WEAPON_CARBINERIFLE_MK2\"},{\"count\":20,\"name\":\"WEAPON_COMBATMG_MK2\"},{\"count\":0,\"name\":\"WEAPON_HEAVYSNIPER_MK2\"},{\"count\":16,\"name\":\"WEAPON_PISTOL_MK2\"},{\"count\":18,\"name\":\"WEAPON_SMG_MK2\"},{\"count\":0,\"name\":\"WEAPON_PUMPSHOTGUN_MK2\"},{\"count\":1,\"name\":\"GADGET_PARACHUTE\"},{\"count\":8,\"name\":\"WEAPON_BULLPUPRIFLE_MK2\"},{\"count\":0,\"name\":\"WEAPON_MARKSMANRIFLE_MK2\"},{\"count\":19,\"name\":\"WEAPON_DOUBLEACTION\"},{\"count\":7,\"name\":\"WEAPON_BATTLEAXE\"},{\"count\":9,\"name\":\"WEAPON_POOLCUE\"},{\"count\":0,\"name\":\"WEAPON_WRENCH\"},{\"count\":7,\"name\":\"WEAPON_REVOLVER_MK2\"},{\"count\":0,\"name\":\"WEAPON_SNSPISTOL_MK2\"}]}'),
(37, 'society_gang', NULL, '{\"weapons\":[{\"count\":0,\"name\":\"WEAPON_APPISTOL\"},{\"count\":2,\"name\":\"WEAPON_MICROSMG\"},{\"count\":0,\"name\":\"WEAPON_HEAVYPISTOL\"},{\"count\":0,\"name\":\"WEAPON_BULLPUPSHOTGUN\"},{\"count\":0,\"name\":\"WEAPON_ASSAULTSMG\"},{\"count\":0,\"name\":\"WEAPON_HEAVYSNIPER\"},{\"count\":0,\"name\":\"WEAPON_SWITCHBLADE\"},{\"count\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"count\":1,\"name\":\"WEAPON_ASSAULTRIFLE_MK2\"},{\"count\":0,\"name\":\"WEAPON_PUMPSHOTGUN\"}]}'),
(94, 'society_police', NULL, '{\"weapons\":[{\"name\":\"WEAPON_NIGHTSTICK\",\"count\":12},{\"name\":\"WEAPON_COMBATPISTOL\",\"count\":7},{\"name\":\"GADGET_PARACHUTE\",\"count\":0},{\"name\":\"WEAPON_FLAREGUN\",\"count\":0},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"count\":0},{\"name\":\"WEAPON_FLASHLIGHT\",\"count\":0},{\"name\":\"WEAPON_STUNGUN\",\"count\":4},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"count\":5},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"count\":5},{\"name\":\"WEAPON_ASSAULTSMG\",\"count\":5},{\"name\":\"WEAPON_CARBINERIFLE_MK2\",\"count\":0},{\"name\":\"WEAPON_APPISTOL\",\"count\":0},{\"name\":\"WEAPON_PISTOL50\",\"count\":0},{\"name\":\"WEAPON_BULLPUPRIFLE_MK2\",\"count\":0},{\"name\":\"WEAPON_HEAVYSNIPER_MK2\",\"count\":0},{\"name\":\"WEAPON_PISTOL_MK2\",\"count\":0},{\"name\":\"WEAPON_KNIFE\",\"count\":0},{\"name\":\"WEAPON_BAT\",\"count\":0},{\"name\":\"WEAPON_STICKYBOMB\",\"count\":0},{\"name\":\"WEAPON_MARKSMANRIFLE_MK2\",\"count\":0},{\"name\":\"WEAPON_DBSHOTGUN\",\"count\":0},{\"name\":\"WEAPON_PETROLCAN\",\"count\":0},{\"name\":\"WEAPON_BZGAS\",\"count\":0},{\"name\":\"WEAPON_SWITCHBLADE\",\"count\":0}]}'),
(95, 'society_fib', NULL, '{\"weapons\":[{\"name\":\"WEAPON_STUNGUN\",\"count\":47},{\"name\":\"WEAPON_HEAVYPISTOL\",\"count\":0},{\"name\":\"WEAPON_ASSAULTSMG\",\"count\":0},{\"name\":\"WEAPON_BAT\",\"count\":0},{\"name\":\"WEAPON_FLASHLIGHT\",\"count\":47},{\"name\":\"WEAPON_BZGAS\",\"count\":48},{\"name\":\"WEAPON_FLAREGUN\",\"count\":0},{\"name\":\"WEAPON_NIGHTSTICK\",\"count\":50},{\"name\":\"WEAPON_CARBINERIFLE_MK2\",\"count\":0},{\"name\":\"GADGET_PARACHUTE\",\"count\":51},{\"name\":\"WEAPON_SMG\",\"count\":0},{\"name\":\"WEAPON_STICKYBOMB\",\"count\":47},{\"name\":\"WEAPON_KNIFE\",\"count\":0},{\"name\":\"WEAPON_MICROSMG\",\"count\":0},{\"name\":\"WEAPON_SPECIALCARBINE\",\"count\":0},{\"name\":\"WEAPON_PISTOL_MK2\",\"count\":0},{\"name\":\"WEAPON_FLARE\",\"count\":50},{\"name\":\"WEAPON_HEAVYSNIPER\",\"count\":47},{\"name\":\"WEAPON_SNIPERRIFLE\",\"count\":0},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"count\":0},{\"name\":\"WEAPON_RAILGUN\",\"count\":0},{\"name\":\"WEAPON_HEAVYSNIPER_MK2\",\"count\":0},{\"name\":\"WEAPON_SMOKEGRENADE\",\"count\":47},{\"name\":\"WEAPON_PROXMINE\",\"count\":47},{\"name\":\"WEAPON_BULLPUPSHOTGUN\",\"count\":0},{\"name\":\"WEAPON_ADVANCEDRIFLE\",\"count\":0},{\"name\":\"WEAPON_MOLOTOV\",\"count\":47},{\"name\":\"WEAPON_SNOWBALL\",\"count\":47},{\"name\":\"WEAPON_APPISTOL\",\"count\":47},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"count\":0},{\"name\":\"WEAPON_CARBINERIFLE\",\"count\":0},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"count\":0},{\"name\":\"WEAPON_COMBATPISTOL\",\"count\":0}]}'),
(223, 'society_digilux', NULL, '{\"weapons\":[{\"name\":\"WEAPON_FLASHLIGHT\",\"count\":0}]}');
-- --------------------------------------------------------

--
-- Structure de la table `fine_types`
--

DROP TABLE IF EXISTS `fine_types`;
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Usage abusif du klaxon', 135, 0),
(2, 'Franchir une ligne continue', 200, 0),
(3, 'Circulation à contresens', 250, 0),
(4, 'Demi-tour non autorisé', 135, 0),
(5, 'Circulation hors-route', 350, 0),
(6, 'Non-respect des distances de sécurité', 135, 0),
(7, 'Arrêt dangereux / interdit', 135, 0),
(8, 'Stationnement gênant / interdit', 135, 0),
(9, 'Non respect  de la priorité à droite', 70, 0),
(10, 'Non-respect à un véhicule prioritaire', 200, 0),
(11, 'Non-respect d\'un stop', 135, 0),
(12, 'Non-respect d\'un feu rouge', 200, 0),
(13, 'Dépassement dangereux', 135, 0),
(14, 'Véhicule non en état', 250, 0),
(15, 'Conduite sans permis', 1500, 0),
(16, 'Délit de fuite', 800, 0),
(17, 'Excès de vitesse < 5 kmh', 90, 0),
(18, 'Excès de vitesse 5-15 kmh', 135, 0),
(19, 'Excès de vitesse 15-30 kmh', 180, 0),
(20, 'Excès de vitesse > 30 kmh', 350, 0),
(21, 'Entrave de la circulation', 135, 1),
(22, 'Dégradation de la voie publique', 250, 1),
(23, 'Trouble à l\'ordre publique', 200, 1),
(24, 'Entrave opération de police', 500, 1),
(25, 'Insulte envers / entre civils', 200, 1),
(26, 'Outrage à agent de police', 400, 1),
(27, 'Menace verbale ou intimidation envers civil', 250, 1),
(28, 'Menace verbale ou intimidation envers policier', 500, 1),
(29, 'Manifestation illégale', 500, 1),
(30, 'Tentative de corruption', 1500, 1),
(31, 'Arme blanche sortie en ville', 500, 2),
(32, 'Arme léthale sortie en ville', 1500, 2),
(33, 'Port d\'arme non autorisé (défaut de license)', 20000, 2),
(34, 'Port d\'arme illégal', 35000, 2),
(35, 'Pris en flag lockpick', 300, 2),
(36, 'Vol de voiture', 5000, 2),
(37, 'Vente de drogue', 3500, 2),
(38, 'Fabriquation de drogue', 5500, 2),
(39, 'Possession de drogue', 6000, 2),
(40, 'Prise d\'ôtage civil', 1500, 2),
(41, 'Prise d\'ôtage agent de l\'état', 2000, 2),
(42, 'Braquage particulier', 2500, 2),
(43, 'Braquage magasin', 6000, 2),
(44, 'Braquage de banque', 25000, 2),
(45, 'Tir sur civil', 2000, 3),
(46, 'Tir sur agent de l\'état', 15000, 3),
(47, 'Tentative de meurtre sur civil', 3000, 3),
(48, 'Tentative de meurtre sur agent de l\'état', 5000, 3),
(49, 'Meurtre sur civil', 10000, 3),
(50, 'Meurte sur agent de l\'état', 30000, 3),
(51, 'Meurtre involontaire', 18000, 3),
(52, 'Escroquerie à l\'entreprise', 2000, 2),
(53, 'caution 1 ', 5000, 3),
(54, 'caution 2', 10000, 3),
(55, 'caution 3', 20000, 3),
(56, 'caution 4', 25000, 3),
(57, 'caution 5', 45000, 3),
(58, 'caution 6', 65000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_ambulance`
--

DROP TABLE IF EXISTS `fine_types_ambulance`;
CREATE TABLE IF NOT EXISTS `fine_types_ambulance` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fine_types_ambulance`
--

INSERT INTO `fine_types_ambulance` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Soin pour membre de la police', 200, 0),
(2, ' Soin de base', 250, 0),
(3, 'Soin longue distance', 600, 0),
(4, 'Soin patient inconscient', 400, 0);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_biker`
--

DROP TABLE IF EXISTS `fine_types_biker`;
CREATE TABLE IF NOT EXISTS `fine_types_biker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `fine_types_biker`
--

INSERT INTO `fine_types_biker` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_cartel`
--

DROP TABLE IF EXISTS `fine_types_cartel`;
CREATE TABLE IF NOT EXISTS `fine_types_cartel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `fine_types_cartel`
--

INSERT INTO `fine_types_cartel` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 30000, 2),
(6, 'Raket', 40000, 3),
(7, 'Raket', 50000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_gang`
--

DROP TABLE IF EXISTS `fine_types_gang`;
CREATE TABLE IF NOT EXISTS `fine_types_gang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `fine_types_gang`
--

INSERT INTO `fine_types_gang` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(255) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '-1',
  `rare` int(11) NOT NULL DEFAULT '0',
  `can_remove` int(11) NOT NULL DEFAULT '1',
  `can_steal` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `can_steal`) VALUES
('alive_chicken', 'Poulet vivant', 20, 0, 1, 1),
('slaughtered_chicken', 'Poulet abattu', 20, 0, 1, 1),
('packaged_chicken', 'Poulet en barquette', 100, 0, 1, 1),
('fish', 'Poisson', 75, 0, 1, 1),
('stone', 'Pierre', 7, 0, 1, 1),
('washed_stone', 'Pierre Lavée', 7, 0, 1, 1),
('copper', 'Cuivre', 30, 0, 1, 1),
('iron', 'Fer', 30, 0, 1, 1),
('gold', 'Or', 21, 0, 1, 1),
('diamond', 'Diamant', 35, 0, 1, 1),
('wood', 'Bois', 20, 0, 1, 1),
('cutted_wood', 'Bois coupé', 20, 0, 1, 1),
('packaged_plank', 'Paquet de planches', 70, 0, 1, 1),
('petrol', 'Pétrole', 75, 0, 1, 1),
('petrol_raffin', 'Pétrole Raffiné', 75, 0, 1, 1),
('essence', 'Essence', 75, 0, 1, 1),
('whool', 'Laine', 40, 0, 1, 1),
('fabric', 'Tissu', 45, 0, 1, 1),
('clothe', 'Vêtement', 40, 0, 1, 1),
('bandage', 'Bandage', 50, 0, 1, 1),
('medikit', 'Medikit', 50, 0, 1, 1),
('bread', 'Sandwich', -1, 0, 1, 1),
('water', 'Eau', -1, 0, 1, 1),
('weed', 'Weed', 50, 0, 1, 1),
('weed_pooch', 'Pochon de weed', 10, 0, 1, 1),
('coke', 'Coke', 50, 0, 1, 1),
('coke_pooch', 'Pochon de coke', 10, 0, 1, 1),
('meth', 'Meth', 50, 0, 1, 1),
('meth_pooch', 'Pochon de meth', 10, 0, 1, 1),
('opium', 'Opium', 50, 0, 1, 1),
('opium_pooch', 'Pochon de opium', 10, 0, 1, 1),
('gazbottle', 'bouteille de gaz', 11, 0, 1, 1),
('fixtool', 'outils réparation', 6, 0, 1, 1),
('carotool', 'outils carosserie', 4, 0, 1, 1),
('blowpipe', 'Chalumeaux', 10, 0, 1, 1),
('fixkit', 'Kit réparation', 5, 0, 1, 1),
('carokit', 'Kit carosserie', 3, 0, 1, 1),
('jager', 'Jägermeister', 5, 0, 1, 1),
('vodka', 'Vodka', 5, 0, 1, 1),
('rhum', 'Rhum', 5, 0, 1, 1),
('whisky', 'Whisky', 5, 0, 1, 1),
('tequila', 'Tequila', 5, 0, 1, 1),
('martini', 'Martini blanc', 5, 0, 1, 1),
('soda', 'Soda', 5, 0, 1, 1),
('jusfruit', 'Jus de fruits', 5, 0, 1, 1),
('icetea', 'Ice Tea', 5, 0, 1, 1),
('energy', 'Energy Drink', 5, 0, 1, 1),
('drpepper', 'Dr. Pepper', 5, 0, 1, 1),
('limonade', 'Limonade', 5, 0, 1, 1),
('bolcacahuetes', 'Bol de cacahuètes', 5, 0, 1, 1),
('bolnoixcajou', 'Bol de noix de cajou', 5, 0, 1, 1),
('bolpistache', 'Bol de pistaches', 5, 0, 1, 1),
('bolchips', 'Bol de chips', 5, 0, 1, 1),
('saucisson', 'Saucisson', 5, 0, 1, 1),
('grapperaisin', 'Grappe de raisin', 5, 0, 1, 1),
('jagerbomb', 'Jägerbomb', 5, 0, 1, 1),
('golem', 'Golem', 5, 0, 1, 1),
('whiskycoca', 'Whisky-coca', 5, 0, 1, 1),
('vodkaenergy', 'Vodka-energy', 5, 0, 1, 1),
('vodkafruit', 'Vodka-jus de fruits', 5, 0, 1, 1),
('rhumfruit', 'Rhum-jus de fruits', 5, 0, 1, 1),
('teqpaf', 'Teq\'paf', 5, 0, 1, 1),
('rhumcoca', 'Rhum-coca', 5, 0, 1, 1),
('mojito', 'Mojito', 5, 0, 1, 1),
('ice', 'Glaçon', 5, 0, 1, 1),
('mixapero', 'Mix Apéritif', 3, 0, 1, 1),
('metreshooter', 'Mètre de shooter', 3, 0, 1, 1),
('jagercerbere', 'Jäger Cerbère', 3, 0, 1, 1),
('menthe', 'Feuille de menthe', 10, 0, 1, 1),
('raisin', 'Raisin', 100, 0, 1, 1),
('jus_raisin', 'Jus de raisin', 100, 0, 1, 1),
('grand_cru', 'Grand cru', 100, 0, 1, 1),
('ingredientsbeer', 'Ingrédients', 100, 0, 1, 1),
('beer', 'Bière', -1, 0, 1, 1),
('composant', 'Composant', 10, 0, 1, 1),
('PcComplet', 'Ordinateur', 50, 0, 1, 1),
('digiluxenergy', 'Digilux Energy', 20, 0, 1, 1),
('croquettes', 'Croquettes', -1, 0, 1, 1),
('keyarmory', 'Clé de l\'armurerie', 1, 0, 1, 1),
('phone', 'Téléphone', 1, 0, 1, 1),
('chocolatebardigilux', 'Tablette de chocolat Digilux', 20, 0, 1, 1),
('gpsdigilux', 'GPS Digilux', 10, 0, 1, 1),
('motherboard', 'carte mère', 10, 0, 1, 1),
('processor', 'processeur', 10, 0, 1, 1),
('powersupply', 'alimentation', 10, 0, 1, 1),
('ram', 'barrette de ram', 10, 0, 1, 1),
('case', 'boîtier', 10, 0, 1, 1),
('ssd', 'SSD', 10, 0, 1, 1),
('graphiccard', 'carte graphique', 10, 0, 1, 1),
('computer', 'Ordinateur', 10, 0, 1, 1),
('laptop', 'pc portable', 10, 0, 1, 1),
('armor', 'Gilet par balle', -1, 0, 1, 1),
('jumelles', 'Jumelles', -1, 0, 1, 1),
('cerveau', 'Cerveau', 10, 0, 1, 1),
('coeur', 'Coeur', 10, 0, 1, 1),
('moelle', 'grammes de Moelle', 10, 0, 1, 1),
('intestin', 'Intestin', 10, 0, 1, 1),
('os', 'Os', 10, 0, 1, 1),
('organ_pooch', 'Corps humain', 50, 0, 1, 1),
('lsd', 'Lsd', 50, 0, 1, 1),
('lsd_pooch', 'Pochon de LSD', 10, 0, 1, 1),
('Toxine', 'Toxine', 25, 0, 1, 1),
('Toxine_pooch', 'Pochon de Toxine', 20, 0, 1, 1),
('Kevlar', 'Kevlar', 25, 0, 1, 1),
('Kevlar_pooch', 'Pochon de Kevlar', 50, 0, 1, 1),
('féve-de-cacao', 'féve-de-cacao', 50, 0, 1, 1),
('choco_féve-de-cacao', 'choco de féve-de-cacao', 20, 0, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('unemployed', 'Chômeur', 0),
('slaughterer', 'Abatteur', 0),
('fisherman', 'Pêcheur', 0),
('miner', 'Mineur', 0),
('lumberjack', 'Bûcheron', 0),
('fueler', 'Raffineur', 0),
('reporter', 'Journaliste', 1),
('tailor', 'Couturier', 0),
('ambulance', 'Ambulancier', 1),
('banker', 'Banquier', 1),
('cardealer', 'Concessionnaire', 1),
('taxi', 'Taxi', 1),
('realestateagent', 'Agent immobilier', 1),
('police', 'Police', 1),
('mecano', 'Mécano', 1),
('unicorn', 'Unicorn', 1),
('vigne', 'Vigneron', 1),
('conveyor', 'Brinks', 1),
('brewer', 'Brasseur', 1),
('lawyer', '???? & Associés', 1),
('ordinateur', 'Informaticien', 1),
('gouvernor', 'Gouvernement', 1),
('tequilala', 'tequilala', 1),
('fib', 'Wayne Tech', 1),
('bahama', 'Bahama Mamas', 1),
('gang', 'Rebels', 1),
('cartel', 'Suicide Squad', 1),
('digilux', 'Digilux', 1),
('biker', 'Biker', 1),
('armurier', ' Armurier', 1),
('tabac', 'tabac', 1),
('Ligues Des Ombres', 'Ligues Des Ombres', 1),
('choco-donpa', 'chocolatier', 0);

-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

DROP TABLE IF EXISTS `job_grades`;
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=189 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Bénévole', 200, '{}', '{}'),
(2, 'lumberjack', 0, 'interim', 'Intérimaire', 225, '{\"bags_1\":0,\"chain_1\":0,\"pants_1\":46,\"bproof_2\":0,\"pants_2\":1,\"bags_2\":0,\"torso_2\":0,\"decals_2\":0,\"helmet_2\":0,\"shoes_1\":25\"chain_2\":0,\"torso_1\":48,\"arms\":1,\"tshirt_1\":15,\"tshirt_2\":0,\"helmet_1\":-1,\"shoes_2\":0,\"bproof_1\":0,\"decals_1\":0}', '{}'),
(3, 'fisherman', 0, 'interim', 'Intérimaire', 225, '{\"bags_1\":0,\"chain_1\":0,\"pants_1\":59,\"bproof_2\":0,\"pants_2\":4,\"bags_2\":0,\"torso_2\":0,\"decals_2\":0,\"helmet_2\":0,\"shoes_1\":25\"chain_2\":0,\"torso_1\":50,\"arms\":31,\"tshirt_1\":55,\"tshirt_2\":0,\"helmet_1\":-1,\"shoes_2\":0,\"bproof_1\":0,\"decals_1\":0}', '{}'),
(4, 'fueler', 0, 'interim', 'Intérimaire', 225, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(5, 'reporter', 0, 'employee', 'Intérimaire', 225, '{}', '{}'),
(6, 'tailor', 0, 'interim', 'Intérimaire', 225, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(7, 'miner', 0, 'interim', 'Intérimaire', 225, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(8, 'slaughterer', 0, 'interim', 'Intérimaire', 225, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(9, 'ambulance', 0, 'ambulance', 'Ambulancier', 300, '{\"torso_1\":250,\"arms\":85,\"pants_1\":31,\"pants_2\":0,\"tshirt_1\":129,\"helmet_1\":122,\"helmet_2\":0,\"shoes_2\":0,\"tshirt_2\":0,\"decals_1\":58,\"shoes_1\":24,\"torso_2\":0}', '{\"torso_1\":250,\"arms\":85,\"pants_1\":31,\"pants_2\":0,\"tshirt_1\":129,\"helmet_1\":122,\"helmet_2\":0,\"shoes_2\":0,\"tshirt_2\":0,\"decals_1\":58,\"shoes_1\":24,\"torso_2\":0}'),
(186, 'choco-donpa', 1, 'novice', 'chocolatier', 750, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(10, 'ambulance', 1, 'doctor', 'Medecin', 325, '{\"torso_1\":250,\"arms\":85,\"pants_1\":31,\"pants_2\":0,\"tshirt_1\":129,\"helmet_1\":122,\"helmet_2\":0,\"shoes_2\":0,\"tshirt_2\":0,\"decals_1\":58,\"shoes_1\":24,\"torso_2\":0}', '{\"torso_1\":250,\"arms\":85,\"pants_1\":31,\"pants_2\":0,\"tshirt_1\":129,\"helmet_1\":122,\"helmet_2\":0,\"shoes_2\":0,\"tshirt_2\":0,\"decals_1\":58,\"shoes_1\":24,\"torso_2\":0}'),
(11, 'ambulance', 2, 'chief_doctor', 'Docteur', 350, '{\"torso_1\":250,\"arms\":85,\"pants_1\":31,\"pants_2\":0,\"tshirt_1\":129,\"helmet_1\":122,\"helmet_2\":0,\"shoes_2\":0,\"tshirt_2\":0,\"decals_1\":58,\"shoes_1\":24,\"torso_2\":0}', '{\"torso_1\":250,\"arms\":85,\"pants_1\":31,\"pants_2\":0,\"tshirt_1\":129,\"helmet_1\":122,\"helmet_2\":0,\"shoes_2\":0,\"tshirt_2\":0,\"decals_1\":58,\"shoes_1\":24,\"torso_2\":0}'),
(12, 'ambulance', 3, 'boss', 'Chirurgien', 500, '{\"torso_1\":250,\"arms\":85,\"pants_1\":31,\"pants_2\":0,\"tshirt_1\":129,\"helmet_1\":122,\"helmet_2\":0,\"shoes_2\":0,\"tshirt_2\":0,\"decals_1\":58,\"shoes_1\":24,\"torso_2\":0}', '{\"torso_1\":250,\"arms\":85,\"pants_1\":31,\"pants_2\":0,\"tshirt_1\":129,\"helmet_1\":122,\"helmet_2\":0,\"shoes_2\":0,\"tshirt_2\":0,\"decals_1\":58,\"shoes_1\":24,\"torso_2\":0}'),
(185, 'choco-donpa', 0, 'recrue', 'Intérimaire', 500, '{\"torso_1\":40,\"arms\":1,\"pants_1\":28,\"pants_2\":7,\"tshirt_1\":40,\"helmet_1\":83,\"helmet_2\":0,\"shoes_2\":3,\"tshirt_2\":0,\"decals_1\":0,\"shoes_1\":72,\"torso_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(13, 'banker', 0, 'advisor', 'Conseiller', 350, '{}', '{}'),
(14, 'banker', 1, 'banker', 'Banquier', 385, '{}', '{}'),
(15, 'banker', 2, 'business_banker', 'Banquier d\'affaire', 425, '{}', '{}'),
(16, 'banker', 3, 'trader', 'Trader', 465, '{}', '{}'),
(17, 'banker', 4, 'boss', 'Patron', 525, '{}', '{}'),
(18, 'cardealer', 0, 'recruit', 'Recrue', 300, '{}', '{}'),
(19, 'cardealer', 1, 'novice', 'Novice', 325, '{}', '{}'),
(20, 'cardealer', 2, 'experienced', 'Experimente', 400, '{}', '{}'),
(21, 'cardealer', 3, 'boss', 'Patron', 500, '{}', '{}'),
(22, 'taxi', 0, 'recrue', 'Recrue', 250, '{}', '{}'),
(23, 'taxi', 1, 'novice', 'Novice', 300, '{}', '{}'),
(24, 'taxi', 2, 'experimente', 'Experimente', 360, '{}', '{}'),
(25, 'taxi', 3, 'uber', 'Uber', 450, '{}', '{}'),
(26, 'taxi', 4, 'boss', 'Patron', 510, '{}', '{}'),
(27, 'realestateagent', 0, 'location', 'Location', 320, '{}', '{}'),
(28, 'realestateagent', 1, 'vendeur', 'Vendeur', 350, '{}', '{}'),
(29, 'realestateagent', 2, 'gestion', 'Gestion', 400, '{}', '{}'),
(30, 'realestateagent', 3, 'boss', 'Patron', 500, '{}', '{}'),
(31, 'police', 0, 'recruit', 'Cadet', 300, '{\"glasses_\":8,\"bags_1\":0,\"chain_1\":13,\"pants_1\":87,\"bproof_2\":0,\"pants_2\":15,\"bags_2\":0,\"torso_2\":0,\"glasses_2\":1,\"decals_2\":0,\"helmet_2\":16,\"shoes_1\":27,\"chain_2\":0,\"torso_1\"221,\"arms\":11,\"tshirt_1\":15,\"tshirt_2\":0,\"helmet_1\":106,\"shoes_2\":0,\"bproof_1\":0,\"decals_1\":0,}', '{}'),
(32, 'police', 1, 'officer', 'Sous-Officier', 350, '{\"bags_1\":0,\"chain_1\":0,\"pants_1\":31,\"bproof_2\":2,\"pants_2\":0,\"bags_2\":0,\"torso_2\":1,\"glasses_2\":2,\"decals_2\":2,\"helmet_2\":3,\"shoes_1\":24,\"chain_2\":0,\"torso_1\":22,\"arms\":30,\"tshirt_1\":59,\"tshirt_2\":0,\"helmet_1\":114,\"shoes_2\":0,\"bproof_1\":29,\"decals_1\":1,}', '{}'),
(36, 'mecano', 0, 'recrue', 'Recrue', 300, '{\"torso_1\":251,\"arms\":53,\"pants_1\":98,\"pants_2\":23,\"tshirt_1\":15,\"helmet_1\":77,\"helmet_2\":5,\"shoes_2\":0,\"tshirt_2\":17,\"decals_1\":0,\"shoes_1\":24,\"torso_2\":0}', '{}'),
(37, 'mecano', 1, 'novice', 'Novice', 400, '{\"torso_1\":251,\"arms\":53,\"pants_1\":98,\"pants_2\":23,\"tshirt_1\":15,\"helmet_1\":77,\"helmet_2\":5,\"shoes_2\":0,\"tshirt_2\":17,\"decals_1\":0,\"shoes_1\":24,\"torso_2\":0}', '{}'),
(38, 'mecano', 2, 'experimente', 'Experimente', 500, '{\"torso_1\":251,\"arms\":53,\"pants_1\":98,\"pants_2\":23,\"tshirt_1\":15,\"helmet_1\":77,\"helmet_2\":5,\"shoes_2\":0,\"tshirt_2\":0,\"decals_1\":0,\"shoes_1\":24,\"torso_2\":17}', '{}'),
(39, 'mecano', 3, 'chief', 'Chef d\'équipe', 600, '{\"torso_1\":251,\"arms\":53,\"pants_1\":98,\"pants_2\":23,\"tshirt_1\":15,\"helmet_1\":77,\"helmet_2\":5,\"shoes_2\":0,\"tshirt_2\":0,\"decals_1\":0,\"shoes_1\":24,\"torso_2\":17}', '{}'),
(40, 'mecano', 4, 'boss', 'Patron', 800, '{\"torso_1\":251,\"arms\":53,\"pants_1\":98,\"pants_2\":23,\"tshirt_1\":15,\"helmet_1\":77,\"helmet_2\":5,\"shoes_2\":0,\"tshirt_2\":0,\"decals_1\":0,\"shoes_1\":24,\"torso_2\":17}', '{}'),
(41, 'unicorn', 0, 'barman', 'Barman', 265, '{}', '{}'),
(42, 'unicorn', 1, 'dancer', 'Danseur', 300, '{}', '{}'),
(43, 'unicorn', 2, 'viceboss', 'Co-gérant', 400, '{}', '{}'),
(44, 'unicorn', 3, 'boss', 'Gérant', 480, '{}', '{}'),
(45, 'vigne', 0, 'recrue', 'Intérimaire', 250, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(46, 'vigne', 1, 'novice', 'Vigneron', 280, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(47, 'vigne', 2, 'cdisenior', 'Chef de chai', 300, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(48, 'vigne', 3, 'boss', 'Patron', 400, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(49, 'conveyor', 0, 'employee', 'Livreur', 225, '{\"glasses_1\":4,\"bags_1\":0,\"chain_1\":0,\"pants_1\":9,\"bproof_2\":0,\"pants_2\":7,\"bags_2\":0,\"torso_2\":0,\"glasses_2\":0,\"decals_2\":0,\"helmet_2\":0,\"shoes_1\":12,\"chain_2\":0,\"torso_1\":129,\"arms\":0,\"tshirt_1\":15,\"tshirt_2\":0,\"helmet_1\":-1,\"shoes_2\":6,\"bproof_1\":0,\"decals_1\":0}', ''),
(50, 'brewer', 0, 'recrue', 'Intérimaire', 250, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(51, 'brewer', 1, 'brewer', 'Brasseur', 280, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(52, 'brewer', 2, 'masterbrewer', 'Maître brasseur', 350, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(53, 'brewer', 3, 'boss', 'Patron', 500, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(93, 'ordinateur', 0, 'recrue', 'Intérimaire', 500, '{}', '{}'),
(94, 'ordinateur', 1, 'boss', 'Patron', 900, '{}', '{}'),
(56, 'gouvernor', 0, 'security_gouvernor', 'Garde du Corps', 350, '{\"bags_1\":0,\"chain_1\":0,\"pants_1\":59,\"bproof_2\":0,\"pants_2\":1,\"bags_2\":0,\"torso_2\":0,\"decals_2\":0,\"helmet_2\":6,\"shoes_1\":25\"chain_2\":0,\"torso_1\":122,\"arms\":17,\"tshirt_1\":21,\"tshirt_2\":0,\"helmet_1\":18,\"shoes_2\":0,\"bproof_1\":0,\"decals_1\":0}', '{}'),
(57, 'gouvernor', 1, 'juge', 'Juge', 480, '{\"bags_1\":0,\"chain_1\":0,\"pants_1\":10,\"bproof_2\":0,\"pants_2\":1,\"bags_2\":0,\"torso_2\":0,\"decals_2\":0,\"helmet_2\":6,\"shoes_1\":10\"chain_2\":0,\"torso_1\":35,\"arms\":1,\"tshirt_1\":13,\"tshirt_2\":0,\"helmet_1\":18,\"shoes_2\":0,\"bproof_1\":0,\"decals_1\":0}', '{}'),
(58, 'gouvernor', 2, 'officier', 'Officier ministère publique', 460, '{\"bags_1\":0,\"chain_1\":0,\"pants_1\":10,\"bproof_2\":0,\"pants_2\":1,\"bags_2\":0,\"torso_2\":0,\"decals_2\":0,\"helmet_2\":6,\"shoes_1\":10\"chain_2\":0,\"torso_1\":35,\"arms\":1,\"tshirt_1\":13,\"tshirt_2\":0,\"helmet_1\":18,\"shoes_2\":0,\"bproof_1\":0,\"decals_1\":0}', '{}'),
(59, 'gouvernor', 3, 'boss', 'Président', 800, '{\"glasses_1\":17,\"bags_1\":0,\"chain_1\":12,\"pants_1\":24,\"bproof_2\":0,\"pants_2\":0,\"bags_2\":0,\"torso_2\":0,\"glasses_2\":9,\"decals_2\":0,\"shoes_1\":10,\"chain_2\":2,\"torso_1\":27,\"makeup_1\":0,\"arms\":1,\"tshirt_1\":13,\"tshirt_2\":0,\"skin\":0,\"helmet_1\":-1,\"shoes_2\":0,\"bproof_1\":0,\"decals_1\":0}', '{}'),
(60, 'tequilala', 0, 'barman', 'Barman', 300, '{}', '{}'),
(61, 'tequilala', 1, 'dancer', 'Danseur', 350, '{}', '{}'),
(62, 'tequilala', 2, 'viceboss', 'Co-gérant', 400, '{}', '{}'),
(63, 'tequilala', 3, 'boss', 'Gérant', 450, '{}', '{}'),
(64, 'fib', 0, 'recruit', 'Alfred', 500, '{\"eyebrows_4\":27,\"beard_1\":18,\"hair_color_2\":0,\"torso_1\":13,\"hair_2\":0,\"glasses_2\":3,\"skin\":1,\"eyebrows_2\":10,\"glasses_1\":5,\"makeup_2\":1,\"mask_2\":0,\"beard_4\":7,\"hair_color_1\":2,\"mask_1\":0,\"beard_2\":10,\"bproof_1\":0,\"shoes_1\":21,\"face\":0,\"bags_1\":0,\"pants_1\":10,\"helmet_1\":8,\"pants_2\":0,\"makeup_4\":1,\"chain_1\":38,\"sex\":0,\"tshirt_1\":15,\"makeup_3\":0,\"tshirt_2\":0,\"shoes\":10,\"bproof_2\":0,\"arms\":11,\"decals_2\":0,\"ears_2\":0,\"helmet_2\":0,\"ears_1\":2,\"lipstick_4\":0,\"glasses\":0,\"torso_2\":0,\"lipstick_1\":0,\"decals_1\":0,\"beard_3\":2,\"makeup_1\":0,\"shoes_2\":0,\"chain_2\":0,\"eyebrows_3\":27,\"bags_2\":0,\"age_2\":2,\"hair_1\":39,\"age_1\":4,\"lipstick_3\":0,\"lipstick_2\":0,\"eyebrows_1\":12}', '{\"eyebrows_4\":27,\"beard_1\":18,\"hair_color_2\":0,\"torso_1\":27,\"hair_2\":0,\"glasses_2\":0,\"skin\":0,\"eyebrows_2\":10,\"glasses_1\":19,\"makeup_2\":1,\"mask_2\":0,\"beard_4\":4,\"hair_color_1\":2,\"mask_1\":0,\"beard_2\":0,\"bproof_1\":0,\"shoes_1\":13,\"face\":6,\"bags_1\":0,\"pants_1\":6,\"helmet_1\":57,\"pants_2\":0,\"makeup_4\":1,\"chain_1\":0,\"sex\":1,\"tshirt_1\":3,\"makeup_3\":0,\"tshirt_2\":0,\"shoes\":10,\"bproof_2\":0,\"arms\":0,\"decals_2\":0,\"ears_2\":0,\"helmet_2\":0,\"ears_1\":-1,\"lipstick_4\":0,\"glasses\":0,\"torso_2\":0,\"lipstick_1\":0,\"decals_1\":1,\"beard_3\":0,\"makeup_1\":0,\"shoes_2\":0,\"chain_2\":0,\"eyebrows_3\":27,\"bags_2\":0,\"age_2\":2,\"hair_1\":73,\"age_1\":4,\"lipstick_3\":0,\"lipstick_2\":0,\"eyebrows_1\":13}'),
(65, 'fib', 1, 'agent', 'Robin', 500, '{\"eyebrows_1\":10,\"beard_1\":0,\"hair_color_2\":0,\"torso_1\":28,\"hair_2\":0,\"glasses_2\":6,\"skin\":0,\"eyebrows_2\":10,\"hair_1\":10,\"makeup_2\":0,\"mask_2\":0,\"beard_4\":0,\"hair_color_1\":3,\"sex\":0,\"beard_2\":0,\"bproof_1\":0,\"mask_1\":0,\"face\":44,\"decals_1\":0,\"bags_1\":0,\"helmet_1\":-1,\"pants_2\":0,\"lipstick_1\":0,\"chain_1\":10,\"decals_2\":0,\"tshirt_1\":10,\"makeup_3\":0,\"tshirt_2\":0,\"shoes\":24,\"bproof_2\":0,\"arms\":1,\"age_2\":0,\"ears_2\":0,\"helmet_2\":0,\"ears_1\":-1,\"lipstick_4\":0,\"pants_1\":10,\"shoes_1\":21,\"beard_3\":0,\"lipstick_2\":0,\"eyebrows_4\":0,\"makeup_1\":0,\"shoes_2\":0,\"chain_2\":2,\"eyebrows_3\":1,\"bags_2\":0,\"glasses\":0,\"torso_2\":0,\"age_1\":0,\"lipstick_3\":0,\"makeup_4\":0,\"glasses_1\":17}', '{\"eyebrows_1\":13,\"beard_1\":18,\"hair_color_2\":0,\"torso_1\":7,\"hair_2\":0,\"glasses_2\":0,\"skin\":0,\"makeup_4\":1,\"hair_1\":73,\"makeup_2\":1,\"mask_2\":0,\"beard_4\":4,\"hair_color_1\":2,\"mask_1\":0,\"torso_2\":0,\"bproof_1\":0,\"decals_1\":1,\"glasses\":0,\"sex\":1,\"bags_1\":0,\"helmet_1\":57,\"pants_2\":0,\"face\":6,\"chain_1\":0,\"beard_2\":0,\"tshirt_1\":39,\"makeup_3\":0,\"tshirt_2\":0,\"shoes\":10,\"bproof_2\":0,\"arms\":7,\"eyebrows_2\":10,\"ears_2\":0,\"helmet_2\":0,\"ears_1\":-1,\"lipstick_4\":0,\"beard_3\":0,\"chain_2\":0,\"pants_1\":6,\"lipstick_2\":0,\"eyebrows_4\":27,\"makeup_1\":0,\"shoes_2\":0,\"decals_2\":0,\"shoes_1\":13,\"bags_2\":0,\"age_2\":2,\"glasses_1\":19,\"age_1\":4,\"lipstick_3\":0,\"lipstick_1\":0,\"eyebrows_3\":27}'),
(66, 'fib', 2, 'specialagent', 'Nightwing', 500, '{\"eyebrows_1\":10,\"beard_1\":0,\"hair_color_2\":0,\"torso_1\":28,\"hair_2\":0,\"glasses_2\":6,\"skin\":0,\"eyebrows_2\":10,\"hair_1\":10,\"makeup_2\":0,\"mask_2\":0,\"beard_4\":0,\"hair_color_1\":3,\"sex\":0,\"beard_2\":0,\"bproof_1\":0,\"mask_1\":0,\"face\":44,\"decals_1\":0,\"bags_1\":0,\"helmet_1\":-1,\"pants_2\":0,\"lipstick_1\":0,\"chain_1\":10,\"decals_2\":0,\"tshirt_1\":10,\"makeup_3\":0,\"tshirt_2\":0,\"shoes\":24,\"bproof_2\":0,\"arms\":1,\"age_2\":0,\"ears_2\":0,\"helmet_2\":0,\"ears_1\":-1,\"lipstick_4\":0,\"pants_1\":10,\"shoes_1\":21,\"beard_3\":0,\"lipstick_2\":0,\"eyebrows_4\":0,\"makeup_1\":0,\"shoes_2\":0,\"chain_2\":2,\"eyebrows_3\":1,\"bags_2\":0,\"glasses\":0,\"torso_2\":0,\"age_1\":0,\"lipstick_3\":0,\"makeup_4\":0,\"glasses_1\":17}', '{\"eyebrows_1\":13,\"beard_1\":18,\"hair_color_2\":0,\"torso_1\":7,\"hair_2\":0,\"glasses_2\":0,\"skin\":0,\"makeup_4\":1,\"hair_1\":73,\"makeup_2\":1,\"mask_2\":0,\"beard_4\":4,\"hair_color_1\":2,\"mask_1\":0,\"torso_2\":0,\"bproof_1\":0,\"decals_1\":1,\"glasses\":0,\"sex\":1,\"bags_1\":0,\"helmet_1\":57,\"pants_2\":0,\"face\":6,\"chain_1\":0,\"beard_2\":0,\"tshirt_1\":39,\"makeup_3\":0,\"tshirt_2\":0,\"shoes\":10,\"bproof_2\":0,\"arms\":7,\"eyebrows_2\":10,\"ears_2\":0,\"helmet_2\":0,\"ears_1\":-1,\"lipstick_4\":0,\"beard_3\":0,\"chain_2\":0,\"pants_1\":6,\"lipstick_2\":0,\"eyebrows_4\":27,\"makeup_1\":0,\"shoes_2\":0,\"decals_2\":0,\"shoes_1\":13,\"bags_2\":0,\"age_2\":2,\"glasses_1\":19,\"age_1\":4,\"lipstick_3\":0,\"lipstick_1\":0,\"eyebrows_3\":27}'),
(67, 'fib', 3, 'boss', 'Batman', 500, '{\"eyebrows_1\":10,\"beard_1\":0,\"hair_color_2\":0,\"torso_1\":4,\"hair_2\":0,\"glasses_2\":6,\"skin\":0,\"eyebrows_2\":10,\"hair_1\":10,\"makeup_2\":0,\"mask_2\":0,\"beard_4\":0,\"hair_color_1\":3,\"sex\":0,\"beard_2\":0,\"bproof_1\":0,\"mask_1\":0,\"face\":44,\"decals_1\":0,\"bags_1\":0,\"helmet_1\":-1,\"pants_2\":0,\"lipstick_1\":0,\"chain_1\":10,\"decals_2\":0,\"tshirt_1\":10,\"makeup_3\":0,\"tshirt_2\":0,\"shoes\":24,\"bproof_2\":0,\"arms\":4,\"age_2\":0,\"ears_2\":0,\"helmet_2\":0,\"ears_1\":-1,\"lipstick_4\":0,\"pants_1\":10,\"shoes_1\":21,\"beard_3\":0,\"lipstick_2\":0,\"eyebrows_4\":0,\"makeup_1\":0,\"shoes_2\":0,\"chain_2\":2,\"eyebrows_3\":1,\"bags_2\":0,\"glasses\":0,\"torso_2\":0,\"age_1\":0,\"lipstick_3\":0,\"makeup_4\":0,\"glasses_1\":17}', '{\"eyebrows_1\":13,\"beard_1\":18,\"hair_color_2\":0,\"torso_1\":7,\"hair_2\":0,\"glasses_2\":0,\"skin\":0,\"makeup_4\":1,\"hair_1\":73,\"makeup_2\":1,\"mask_2\":0,\"beard_4\":4,\"hair_color_1\":2,\"mask_1\":0,\"torso_2\":0,\"bproof_1\":0,\"decals_1\":1,\"glasses\":0,\"sex\":1,\"bags_1\":0,\"helmet_1\":57,\"pants_2\":0,\"face\":6,\"chain_1\":0,\"beard_2\":0,\"tshirt_1\":39,\"makeup_3\":0,\"tshirt_2\":0,\"shoes\":10,\"bproof_2\":0,\"arms\":7,\"eyebrows_2\":10,\"ears_2\":0,\"helmet_2\":0,\"ears_1\":-1,\"lipstick_4\":0,\"beard_3\":0,\"chain_2\":0,\"pants_1\":6,\"lipstick_2\":0,\"eyebrows_4\":27,\"makeup_1\":0,\"shoes_2\":0,\"decals_2\":0,\"shoes_1\":13,\"bags_2\":0,\"age_2\":2,\"glasses_1\":19,\"age_1\":4,\"lipstick_3\":0,\"lipstick_1\":0,\"eyebrows_3\":27}'),
(68, 'bahama', 0, 'barman', 'Barman', 300, '{\"glasses_1\":3,\"bags_1\":0,\"chain_1\":0,\"pants_1\":9,\"bproof_2\":0,\"pants_2\":7,\"bags_2\":0,\"torso_2\":14,\"glasses_2\":1,\"decals_2\":0,\"helmet_2\":6,\"shoes_1\":71,\"chain_2\":0,\"torso_1\":251,\"arms\":4,\"tshirt_1\":74,\"tshirt_2\":0,\"helmet_1\":18,\"shoes_2\":2,\"bproof_1\":0,\"decals_1\":0}', '{}'),
(69, 'bahama', 1, 'dancer', 'Danseur', 350, '{\"glasses_\":0,\"bags_1\":0,\"chain_1\":0,\"pants_1\":25,\"bproof_2\":0,\"pants_2\":0,\"bags_2\":0,\"torso_2\":7,\"glasses_2\":0,\"decals_2\":0,\"helmet_2\":0,\"shoes_1\":21,\"chain_2\":0,\"torso_1\":25,\"arms\":4,\"tshirt_1\":22,\"tshirt_2\":0,\"helmet_1\":0,\"shoes_2\":0,\"bproof_1\":0,\"decals_1\":0}', '{}'),
(70, 'bahama', 2, 'viceboss', 'Co-gérant', 400, '{\"glasses_\":0,\"bags_1\":0,\"chain_1\":0,\"pants_1\":25,\"bproof_2\":0,\"pants_2\":0,\"bags_2\":0,\"torso_2\":7,\"glasses_2\":0,\"decals_2\":0,\"helmet_2\":0,\"shoes_1\":21,\"chain_2\":0,\"torso_1\":25,\"arms\":4,\"tshirt_1\":22,\"tshirt_2\":0,\"helmet_1\":0,\"shoes_2\":0,\"bproof_1\":0,\"decals_1\":0}', '{}'),
(71, 'bahama', 3, 'boss', 'Gérant', 450, '{\"glasses_\":0,\"bags_1\":0,\"chain_1\":0,\"pants_1\":25,\"bproof_2\":0,\"pants_2\":0,\"bags_2\":0,\"torso_2\":7,\"glasses_2\":0,\"decals_2\":0,\"helmet_2\":0,\"shoes_1\":21,\"chain_2\":0,\"torso_1\":25,\"arms\":4,\"tshirt_1\":22,\"tshirt_2\":0,\"helmet_1\":0,\"shoes_2\":0,\"bproof_1\":0,\"decals_1\":0}', '{}'),
(83, 'gang', 0, 'soldato', 'Nourrisson', 150, '{\"tshirt_1\":15,\"torso_1\":42,\"shoes\":8,\"pants_1\":24,\"pants_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":8,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":-1}', '{\"tshirt_1\":0,\"torso_1\":78,\"shoes\":8,\"pants_1\":45,\"pants_2\":1,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":1,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":5,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":2,\"helmet_1\":-1}'),
(76, 'cartel', 0, 'sbire', 'Sbire', 800, '{}', '{}'),
(77, 'cartel', 1, 'capo', 'scarecrow', 800, '{}', '{}'),
(78, 'cartel', 2, 'consigliere', 'Deadshot', 800, '{}', '{}'),
(79, 'cartel', 3, 'soldato', 'DeathStroke', 800, '{}', '{}'),
(80, 'cartel', 5, 'boss', 'Joker', 800, '{\"tshirt_1\":15,\"torso_1\":42,\"shoes\":8,\"pants_1\":24,\"pants_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":8,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":-1}', '{}'),
(81, 'lawyer', 0, 'lawyer', 'Avocat', 1, '{}', '{}'),
(82, 'lawyer', 1, 'boss', 'Patron', 600, '{}', '{}'),
(84, 'gang', 1, 'capo', 'Soldat', 250, '{\"tshirt_1\":15,\"torso_1\":42,\"shoes\":8,\"pants_1\":24,\"pants_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":8,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":-1}', '{\"tshirt_1\":0,\"torso_1\":78,\"shoes\":8,\"pants_1\":45,\"pants_2\":1,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":1,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":5,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":2,\"helmet_1\":-1}'),
(85, 'gang', 2, 'consigliere', 'Bras Droit', 300, '{\"tshirt_1\":15,\"torso_1\":42,\"shoes\":8,\"pants_1\":24,\"pants_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":8,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":-1}', '{\"tshirt_1\":0,\"torso_1\":78,\"shoes\":8,\"pants_1\":45,\"pants_2\":1,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":1,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":5,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":2,\"helmet_1\":-1}'),
(86, 'gang', 3, 'boss', 'Père Fonda', 400, '{\"tshirt_1\":0,\"torso_1\":7,\"shoes\":7,\"pants_1\":9,\"pants_2\":7,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":1,\"torso_2\":2,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":2,\"helmet_1\":-1}', '{\"tshirt_1\":0,\"torso_1\":78,\"shoes\":8,\"pants_1\":45,\"pants_2\":1,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":1,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":5,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":2,\"helmet_1\":-1}'),
(87, 'digilux', 0, 'employee', 'Intérimaire digilux', 300, '{\"glasses_1\":3,\"bags_1\":0,\"chain_1\":0,\"pants_1\":26,\"bproof_2\":0,\"pants_2\":0,\"bags_2\":0,\"torso_2\":7,\"glasses_2\":0,\"decals_2\":0,\"helmet_2\":0,\"shoes_1\":26,\"chain_2\":0,\"torso_1\":7,\"arms\":4,\"tshirt_1\":76,\"tshirt_2\":0,\"helmet_1\":-1,\"shoes_2\":6,\"bproof_1\":0,\"decals_1\":0}', '{}'),
(88, 'digilux', 1, 'boss', 'Patron', 600, '{\"torso_1\":20,\"arms\":1,\"pants_1\":20,\"pants_2\":0,\"tshirt_1\":0,\"helmet_2\":0,\"shoes_2\":4,\"tshirt_2\":2,\"decals_1\":0,\"shoes_1\":3,\"torso_2\":0}', '{}'),
(89, 'biker', 0, 'soldato', 'Ptite-Frappe', 250, '{}', '{}'),
(90, 'biker', 1, 'capo', 'capo', 350, '{}', '{}'),
(91, 'biker', 2, 'consigliere', 'Chef-Capo', 450, '{}', '{}'),
(92, 'biker', 3, 'boss', 'Patron', 550, '{}', '{}'),
(99, 'police', 2, 'sergeant', 'Officier', 400, '{\"bags_1\":0,\"chain_1\":22,\"pants_1\":83,\"bproof_2\":0,\"pants_2\":0,\"bags_2\":0,\"torso_2\":1,\"glasses_2\":0,\"decals_2\":0,\"helmet_2\":0,\"shoes_1\":15,\"chain_2\":1,\"torso_1\":13,\"arms\":11,\"tshirt_1\":122,\"tshirt_2\":0,\"helmet_1\":0\"shoes_2\":0,\"bproof_1\":0,\"decals_1\":0,} }', '{}'),
(165, 'police', 3, 'intendent', 'Sergent', 450, '{\"bags_1\":0,\"chain_1\":22,\"pants_1\":83,\"bproof_2\":0,\"pants_2\":0,\"bags_2\":0,\"torso_2\":1,\"glasses_2\":0,\"decals_2\":0,\"helmet_2\":0,\"shoes_1\":15,\"chain_2\":1,\"torso_1\":13,\"arms\":11,\"tshirt_1\":122,\"tshirt_2\":0,\"helmet_1\":0\"shoes_2\":0,\"bproof_1\":0,\"decals_1\":0,} }', '{}'),
(167, 'police', 6, 'boss', 'Capitaine', 600, '{\"bags_1\":0,\"chain_1\":22,\"pants_1\":83,\"bproof_2\":0,\"pants_2\":0,\"bags_2\":0,\"torso_2\":1,\"glasses_2\":0,\"decals_2\":0,\"helmet_2\":0,\"shoes_1\":15,\"chain_2\":1,\"torso_1\":13,\"arms\":11,\"tshirt_1\":122,\"tshirt_2\":0,\"helmet_1\":0\"shoes_2\":0,\"bproof_1\":0,\"decals_1\":0,} }', '{}'),
(166, 'police', 5, 'chef', 'commissaire', 550, '{\"bags_1\":0,\"chain_1\":22,\"pants_1\":83,\"bproof_2\":0,\"pants_2\":0,\"bags_2\":0,\"torso_2\":1,\"glasses_2\":0,\"decals_2\":0,\"helmet_2\":0,\"shoes_1\":15,\"chain_2\":1,\"torso_1\":13,\"arms\":11,\"tshirt_1\":122,\"tshirt_2\":0,\"helmet_1\":0\"shoes_2\":0,\"bproof_1\":0,\"decals_1\":0,} }', '{}'),
(162, 'armurier', 1, 'boss', 'Patron', 1000, '{}', '{}'),
(163, 'armurier', 0, 'employe', 'Employé', 600, '{}', '{}'),
(164, 'police', 4, 'lieutenant', 'lieutenant', 500, '{\"bags_1\":0,\"chain_1\":22,\"pants_1\":83,\"bproof_2\":0,\"pants_2\":0,\"bags_2\":0,\"torso_2\":1,\"glasses_2\":0,\"decals_2\":0,\"helmet_2\":0,\"shoes_1\":15,\"chain_2\":1,\"torso_1\":13,\"arms\":11,\"tshirt_1\":122,\"tshirt_2\":0,\"helmet_1\":0\"shoes_2\":0,\"bproof_1\":0,\"decals_1\":0,} }', '{}'),
(168, 'cartel', 4, 'righthand', 'Sbire', 800, '{}', '{}'),
(169, 'police', 4, 'lieutenant', 'Lieutenant', 600, '{}', '{}'),
(170, 'police', 3, 'sergeantchief', 'Sergent Chef', 500, '{}', '{}'),
(171, 'police', 6, 'boss', 'Capitaine', 700, '{}', '{}'),
(172, 'police', 5, 'fbi', 'FBI', 1150, '{}', '{}'),
(173, 'police', 1, 'officier', 'Officier', 750, '{}', '{}'),
(174, 'police', 2, 'sergeant', 'Sergent', 950, '{}', '{}'),
(175, 'police', 0, 'recruit', 'Cadet', 650, '{}', '{}'),
(176, 'Ligues Des Ombres', 0, 'recrue', 'Intérimaire', 500, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(177, 'Ligues Des Ombres', 1, 'novice', 'Ligues Des Ombres', 750, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(178, 'Ligues Des Ombres', 2, 'cdisenior', 'Chef de chai', 1200, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(179, 'Ligues Des Ombres', 3, 'boss', 'Patron', 1600, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(180, 'fib', 4, 'boss', 'Directeur', 500, '{\"sex\":0,\"tshirt_1\":10,\"hair_2\":0,\"bproof_1\":0,\"tshirt_2\":6,\"lipstick_4\":0,\"beard_1\":2,\"makeup_4\":0,\"bproof_2\":0,\"lipstick_1\":0,\"lipstick_2\":0,\"torso_1\":28,\"eyebrows_3\":0,\"chain_1\":12,\"makeup_3\":0,\"chain_2\":2,\"bags_2\":0,\"glasses_1\":6,\"eyebrows_1\":0,\"arms\":1,\"eyebrows_4\":0,\"mask_1\":0,\"glasses_2\":0,\"lipstick_3\":0,\"pants_1\":10,\"shoes_1\":10,\"beard_2\":10,\"ears_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"bags_1\":0,\"hair_color_2\":0,\"face\":2,\"decals_1\":0,\"mask_2\":0,\"makeup_2\":0,\"decals_2\":0,\"torso_2\":0,\"helmet_1\":-1,\"pants_2\":0,\"beard_3\":1,\"hair_1\":1,\"skin\":15,\"age_2\":7,\"ears_1\":-1,\"shoes_2\":0,\"eyebrows_2\":10,\"beard_4\":0,\"age_1\":9,\"makeup_1\":0}', '{\"sex\":0,\"tshirt_1\":10,\"hair_2\":0,\"bproof_1\":0,\"tshirt_2\":6,\"lipstick_4\":0,\"beard_1\":2,\"makeup_4\":0,\"bproof_2\":0,\"lipstick_1\":0,\"lipstick_2\":0,\"torso_1\":28,\"eyebrows_3\":0,\"chain_1\":12,\"makeup_3\":0,\"chain_2\":2,\"bags_2\":0,\"glasses_1\":6,\"eyebrows_1\":0,\"arms\":1,\"eyebrows_4\":0,\"mask_1\":0,\"glasses_2\":0,\"lipstick_3\":0,\"pants_1\":10,\"shoes_1\":10,\"beard_2\":10,\"ears_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"bags_1\":0,\"hair_color_2\":0,\"face\":2,\"decals_1\":0,\"mask_2\":0,\"makeup_2\":0,\"decals_2\":0,\"torso_2\":0,\"helmet_1\":-1,\"pants_2\":0,\"beard_3\":1,\"hair_1\":1,\"skin\":15,\"age_2\":7,\"ears_1\":-1,\"shoes_2\":0,\"eyebrows_2\":10,\"beard_4\":0,\"age_1\":9,\"makeup_1\":0}'),
(181, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(182, 'ambulance', 1, 'doctor', 'Medecin', 40, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(183, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 60, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(184, 'ambulance', 3, 'boss', 'Chirurgien', 80, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(187, 'choco-donpa', 2, 'cdisenior', 'Chef de chai', 1200, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(188, 'choco-donpa', 3, 'boss', 'Patron', 1600, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');

-- --------------------------------------------------------

--
-- Structure de la table `licenses`
--

DROP TABLE IF EXISTS `licenses`;
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('weapon', 'Permis de port d\'arme'),
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion');

-- --------------------------------------------------------

--
-- Structure de la table `owned_properties`
--

DROP TABLE IF EXISTS `owned_properties`;
CREATE TABLE IF NOT EXISTS `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `owned_properties`
--

INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
(13, 'TinselTowersApt12', 1, 0, 'steam:11000010c80c4b5'),
(16, 'LowEndApartment', 1, 0, 'steam:11000010b7bdbea'),
(17, 'LowEndApartment', 100, 0, 'steam:110000105425f2a'),
(20, 'LowEndApartment', 100, 0, 'steam:11000011abb8938'),
(19, 'LowEndApartment', 100, 0, 'steam:110000114fe032c'),
(28, 'LowEndApartment', 90, 0, 'steam:1100001074ec59b'),
(22, 'LowEndApartment', 1, 0, 'steam:110000106e52e79'),
(23, 'LowEndApartment', 100, 0, 'steam:11000011b2b3644'),
(24, 'HillcrestAvenue2862', 702, 0, 'steam:11000011bb09fc5'),
(25, 'MadWayneThunder', 324, 0, 'steam:11000011776e37b'),
(26, 'LowEndApartment', 100, 0, 'steam:11000010eb69039'),
(27, 'LowEndApartment', 100, 0, 'steam:11000011108491e'),
(29, 'WildOatsDrive', 1, 0, 'steam:110000107214191'),
(30, 'WildOatsDrive', 150, 0, 'steam:11000010891ebf2'),
(32, 'LowEndApartment', 160, 0, 'steam:1100001175c7fe4'),
(33, 'RichardMajesticApt2', 2160, 0, 'steam:11000010c0e2149'),
(34, 'MadWayneThunder', 1690, 0, 'steam:11000010d6da093'),
(35, 'LowEndApartment', 1000, 0, 'steam:1100001097a8474'),
(36, 'MadWayneThunder', 1700, 0, 'steam:1100001155ce62c'),
(37, 'WildOatsDrive', 2225, 0, 'steam:11000011522959f'),
(65, 'LowEndApartment', 2812.5, 1, 'steam:11000010adb7315'),
(49, 'LowEndApartment', 2812.5, 1, 'steam:110000100db1a28'),
(69, 'LowEndApartment', 2812.5, 1, 'steam:110000111365654'),
(68, 'LowEndApartment', 2812.5, 1, 'steam:11000010d17d505'),
(60, 'HillcrestAvenue2874', 7500, 1, 'steam:110000103363ad3'),
(58, 'LowEndApartment', 2812.5, 1, 'steam:110000103363ad3');

-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

DROP TABLE IF EXISTS `owned_vehicles`;
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` longtext NOT NULL,
  `owner` varchar(60) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Etat de la voiture',
  `plate` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=197 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`id`, `vehicle`, `owner`, `state`, `plate`) VALUES
(170, '{\"modTank\":-1,\"modTrimA\":-1,\"modFrontWheels\":-1,\"model\":0,\"neonColor\":[0,0,0],\"modSeats\":-1,\"tyreSmokeColor\":[0,0,0],\"modTurbo\":false,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modStruts\":-1,\"modWindows\":-1,\"modXenon\":false,\"modAPlate\":-1,\"modDoorSpeaker\":-1,\"modAirFilter\":-1,\"modDial\":-1,\"health\":0,\"modTrunk\":-1,\"wheelColor\":0,\"modSteeringWheel\":-1,\"modArmor\":-1,\"pearlescentColor\":0,\"modFender\":-1,\"modHorns\":-1,\"modBrakes\":-1,\"modSpeakers\":-1,\"modSmokeEnabled\":false,\"color2\":0,\"neonEnabled\":[false,false,false,false],\"modSideSkirt\":-1,\"modRoof\":-1,\"modAerials\":-1,\"modRightFender\":-1,\"color1\":0,\"modTransmission\":-1,\"modFrame\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modBackWheels\":-1,\"modVanityPlate\":-1,\"modRearBumper\":-1,\"modEngineBlock\":-1,\"modExhaust\":-1,\"modDashboard\":-1,\"modHood\":-1,\"modSuspension\":-1,\"modLivery\":-1,\"plateIndex\":-1,\"modTrimB\":-1,\"wheels\":0,\"modEngine\":-1,\"modOrnaments\":-1,\"modGrille\":-1,\"modSpoilers\":-1,\"dirtLevel\":0.0,\"modHydrolic\":-1,\"modPlateHolder\":-1}', 'steam:110000114328283', 1, NULL),
(171, '{\"modHood\":-1,\"modOrnaments\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modSpoilers\":-1,\"modDashboard\":-1,\"modRightFender\":-1,\"modArchCover\":-1,\"model\":-1721911377,\"modFrame\":-1,\"modExhaust\":-1,\"modFrontBumper\":-1,\"modTrimA\":-1,\"modWindows\":-1,\"modShifterLeavers\":-1,\"modTransmission\":-1,\"color2\":62,\"wheelColor\":62,\"modBrakes\":-1,\"modRearBumper\":-1,\"modStruts\":-1,\"modDial\":-1,\"modTurbo\":false,\"tyreSmokeColor\":[255,255,255],\"modTank\":-1,\"wheels\":0,\"modEngineBlock\":-1,\"windowTint\":-1,\"modXenon\":false,\"dirtLevel\":11.621648788452,\"health\":845,\"modBackWheels\":-1,\"pearlescentColor\":62,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modVanityPlate\":-1,\"neonColor\":[255,0,255],\"plate\":\"QQX8XOTS\",\"modArmor\":-1,\"color1\":62,\"modSideSkirt\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modRoof\":-1,\"modSmokeEnabled\":1,\"modDoorSpeaker\":-1,\"modSpeakers\":-1,\"modHorns\":-1,\"modAerials\":-1,\"modGrille\":-1,\"modSuspension\":-1,\"modAirFilter\":-1,\"modEngine\":-1,\"plateIndex\":4,\"modFender\":-1,\"modHydrolic\":-1,\"modTrimB\":-1,\"modSteeringWheel\":-1,\"modFrontWheels\":-1}', 'steam:110000114328283', 1, NULL),
(172, '{\"modVanityPlate\":-1,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"health\":996,\"modTransmission\":-1,\"modShifterLeavers\":-1,\"modFrame\":-1,\"modSpeakers\":-1,\"modFrontBumper\":-1,\"modStruts\":-1,\"modHorns\":-1,\"pearlescentColor\":7,\"modGrille\":-1,\"modXenon\":false,\"modHood\":-1,\"dirtLevel\":8.1522979736328,\"modBrakes\":-1,\"modFender\":-1,\"modOrnaments\":-1,\"modPlateHolder\":-1,\"windowTint\":-1,\"modRearBumper\":-1,\"modAerials\":-1,\"modEngine\":1,\"modAirFilter\":-1,\"modArmor\":-1,\"modSpoilers\":-1,\"modBackWheels\":-1,\"neonColor\":[255,0,255],\"modFrontWheels\":-1,\"modSeats\":-1,\"modExhaust\":-1,\"modWindows\":-1,\"modTank\":-1,\"modSmokeEnabled\":1,\"wheels\":7,\"color2\":1,\"color1\":1,\"plate\":\"4ZHWHCYZ\",\"modTrimB\":-1,\"modTrimA\":-1,\"modTrunk\":-1,\"modAPlate\":-1,\"model\":1123216662,\"modLivery\":-1,\"modEngineBlock\":-1,\"modSuspension\":-1,\"modRightFender\":-1,\"modDashboard\":-1,\"modDial\":-1,\"modRoof\":-1,\"wheelColor\":156,\"neonEnabled\":[false,false,false,false],\"tyreSmokeColor\":[255,255,255],\"modDoorSpeaker\":-1,\"modSideSkirt\":-1,\"modArchCover\":-1,\"modTurbo\":false,\"plateIndex\":0}', 'steam:110000111365654', 1, NULL),
(180, '{\"modHood\":-1,\"neonColor\":[255,0,255],\"modTrimB\":-1,\"modAirFilter\":-1,\"tyreSmokeColor\":[255,255,255],\"modExhaust\":-1,\"modVanityPlate\":-1,\"modRearBumper\":-1,\"modOrnaments\":-1,\"modFrame\":-1,\"modDashboard\":-1,\"plate\":\"ZIWUERHE\",\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modEngine\":3,\"modRoof\":-1,\"modXenon\":false,\"wheels\":7,\"modRightFender\":-1,\"windowTint\":1,\"modDial\":-1,\"modTank\":-1,\"health\":990,\"modSeats\":-1,\"modDoorSpeaker\":-1,\"modLivery\":-1,\"modGrille\":-1,\"modArmor\":4,\"modSpoilers\":-1,\"pearlescentColor\":37,\"modBrakes\":2,\"plateIndex\":3,\"modArchCover\":-1,\"modPlateHolder\":-1,\"modStruts\":-1,\"modEngineBlock\":-1,\"modHorns\":-1,\"modSideSkirt\":-1,\"color1\":12,\"modHydrolic\":-1,\"modSuspension\":3,\"model\":1813965170,\"modTurbo\":1,\"modSpeakers\":-1,\"modWindows\":-1,\"wheelColor\":156,\"modAPlate\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modAerials\":-1,\"modBackWheels\":-1,\"modTrunk\":-1,\"modFrontWheels\":-1,\"neonEnabled\":[false,false,false,false],\"color2\":12,\"dirtLevel\":0.71865570545197,\"modSmokeEnabled\":1,\"modFrontBumper\":-1,\"modTransmission\":2}', 'steam:1100001165b855a', 1, NULL),
(185, '{\"modHood\":-1,\"modOrnaments\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modSpoilers\":-1,\"modDashboard\":-1,\"modRightFender\":-1,\"modArchCover\":-1,\"modTransmission\":-1,\"plateIndex\":4,\"neonEnabled\":[false,false,false,false],\"modFrontBumper\":-1,\"modTrimA\":-1,\"model\":-85371949,\"modShifterLeavers\":-1,\"color2\":32,\"modHydrolic\":-1,\"modSmokeEnabled\":1,\"modRearBumper\":-1,\"modDial\":-1,\"modStruts\":-1,\"modTurbo\":1,\"tyreSmokeColor\":[255,255,255],\"windowTint\":1,\"modTank\":-1,\"wheels\":6,\"modEngineBlock\":-1,\"modSpeakers\":-1,\"wheelColor\":0,\"dirtLevel\":0.48520243167877,\"health\":993,\"modBackWheels\":-1,\"pearlescentColor\":12,\"modTrunk\":-1,\"color1\":192,\"modVanityPlate\":-1,\"modExhaust\":-1,\"plate\":\"05MQJ592\",\"modFrame\":-1,\"modArmor\":-1,\"modSideSkirt\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modRoof\":-1,\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"modAerials\":-1,\"modHorns\":-1,\"modFrontWheels\":-1,\"modGrille\":-1,\"modSuspension\":-1,\"neonColor\":[255,0,255],\"modEngine\":-1,\"modBrakes\":-1,\"modFender\":-1,\"modWindows\":-1,\"modTrimB\":-1,\"modSteeringWheel\":-1,\"modXenon\":false}', 'steam:1100001165b855a', 1, NULL),
(186, '{\"modHood\":-1,\"modOrnaments\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modSpoilers\":-1,\"modDashboard\":-1,\"modRightFender\":-1,\"modArchCover\":-1,\"modTransmission\":-1,\"plateIndex\":4,\"neonEnabled\":[false,false,false,false],\"modFrontBumper\":-1,\"modTrimA\":-1,\"model\":1671178289,\"modShifterLeavers\":-1,\"color2\":224,\"modHydrolic\":-1,\"modSmokeEnabled\":1,\"modRearBumper\":-1,\"modDial\":-1,\"modStruts\":-1,\"modTurbo\":false,\"tyreSmokeColor\":[255,255,255],\"windowTint\":-1,\"modTank\":-1,\"wheels\":6,\"modEngineBlock\":-1,\"modSpeakers\":-1,\"wheelColor\":160,\"dirtLevel\":0.46308591961861,\"health\":995,\"modBackWheels\":-1,\"pearlescentColor\":0,\"modTrunk\":-1,\"color1\":224,\"modVanityPlate\":-1,\"modExhaust\":-1,\"plate\":\"43CVY021\",\"modFrame\":-1,\"modArmor\":-1,\"modSideSkirt\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modRoof\":-1,\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"modAerials\":-1,\"modHorns\":-1,\"modFrontWheels\":-1,\"modGrille\":-1,\"modSuspension\":-1,\"neonColor\":[255,0,255],\"modEngine\":-1,\"modBrakes\":-1,\"modFender\":-1,\"modWindows\":-1,\"modTrimB\":-1,\"modSteeringWheel\":-1,\"modXenon\":false}', 'steam:1100001165b855a', 1, NULL),
(187, '{\"modHood\":-1,\"modOrnaments\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modSpoilers\":-1,\"modDashboard\":-1,\"modRightFender\":-1,\"modArchCover\":-1,\"modTransmission\":-1,\"plateIndex\":4,\"neonEnabled\":[false,false,false,false],\"modFrontBumper\":-1,\"modTrimA\":-1,\"model\":1474015055,\"modShifterLeavers\":-1,\"color2\":32,\"modHydrolic\":-1,\"modSmokeEnabled\":1,\"modRearBumper\":-1,\"modDial\":-1,\"modStruts\":-1,\"modTurbo\":false,\"tyreSmokeColor\":[255,255,255],\"windowTint\":-1,\"modTank\":-1,\"wheels\":6,\"modEngineBlock\":-1,\"modSpeakers\":-1,\"wheelColor\":112,\"dirtLevel\":0.47508829832077,\"health\":996,\"modBackWheels\":-1,\"pearlescentColor\":39,\"modTrunk\":-1,\"color1\":12,\"modVanityPlate\":-1,\"modExhaust\":-1,\"plate\":\"45LZC822\",\"modFrame\":-1,\"modArmor\":-1,\"modSideSkirt\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modRoof\":-1,\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"modAerials\":-1,\"modHorns\":-1,\"modFrontWheels\":-1,\"modGrille\":-1,\"modSuspension\":-1,\"neonColor\":[255,0,255],\"modEngine\":-1,\"modBrakes\":-1,\"modFender\":-1,\"modWindows\":-1,\"modTrimB\":-1,\"modSteeringWheel\":-1,\"modXenon\":false}', 'steam:1100001165b855a', 1, NULL),
(188, '{\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"color1\":32,\"modSpeakers\":-1,\"modFrontBumper\":-1,\"modDial\":-1,\"modAPlate\":-1,\"modStruts\":-1,\"modTrunk\":-1,\"pearlescentColor\":0,\"modRearBumper\":-1,\"plateIndex\":4,\"modVanityPlate\":-1,\"modXenon\":false,\"modTransmission\":-1,\"model\":-1667727259,\"windowTint\":-1,\"modOrnaments\":-1,\"modFrontWheels\":-1,\"modSeats\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"modShifterLeavers\":-1,\"modHood\":-1,\"modSpoilers\":-1,\"color2\":12,\"modExhaust\":-1,\"neonColor\":[255,0,255],\"modGrille\":-1,\"modSuspension\":-1,\"tyreSmokeColor\":[255,255,255],\"neonEnabled\":[false,false,false,false],\"modRoof\":-1,\"modAerials\":-1,\"modPlateHolder\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modSmokeEnabled\":1,\"plate\":\"69VTD952\",\"modHorns\":-1,\"dirtLevel\":0.4727863073349,\"modSideSkirt\":-1,\"modEngine\":-1,\"modTank\":-1,\"wheels\":6,\"modRightFender\":-1,\"modDashboard\":-1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"modWindows\":-1,\"health\":995,\"modBackWheels\":-1,\"modFender\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modTurbo\":false,\"wheelColor\":16,\"modHydrolic\":-1,\"modTrimA\":-1}', 'steam:1100001165b855a', 1, NULL),
(189, '{\"modHood\":-1,\"modOrnaments\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modSpoilers\":-1,\"modDashboard\":-1,\"modRightFender\":-1,\"modArchCover\":-1,\"modTransmission\":-1,\"plateIndex\":1,\"neonEnabled\":[false,false,false,false],\"modFrontBumper\":-1,\"modTrimA\":-1,\"model\":-1474280704,\"modShifterLeavers\":-1,\"color2\":12,\"modHydrolic\":-1,\"modSmokeEnabled\":1,\"modRearBumper\":-1,\"modDial\":-1,\"modStruts\":-1,\"modTurbo\":false,\"tyreSmokeColor\":[255,255,255],\"windowTint\":1,\"modTank\":-1,\"wheels\":6,\"modEngineBlock\":-1,\"modSpeakers\":-1,\"wheelColor\":64,\"dirtLevel\":0.47619986534119,\"health\":942,\"modBackWheels\":-1,\"pearlescentColor\":39,\"modTrunk\":-1,\"color1\":12,\"modVanityPlate\":-1,\"modExhaust\":-1,\"plate\":\"28XLO674\",\"modFrame\":-1,\"modArmor\":-1,\"modSideSkirt\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modRoof\":-1,\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"modAerials\":-1,\"modHorns\":-1,\"modFrontWheels\":-1,\"modGrille\":-1,\"modSuspension\":-1,\"neonColor\":[255,0,255],\"modEngine\":-1,\"modBrakes\":-1,\"modFender\":-1,\"modWindows\":-1,\"modTrimB\":-1,\"modSteeringWheel\":-1,\"modXenon\":1}', 'steam:1100001165b855a', 1, NULL),
(190, '{\"modHood\":-1,\"modOrnaments\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modSpoilers\":-1,\"modDashboard\":-1,\"modRightFender\":-1,\"modArchCover\":-1,\"modTransmission\":2,\"plateIndex\":0,\"neonEnabled\":[false,false,false,false],\"modFrontBumper\":-1,\"modTrimA\":-1,\"model\":457850242,\"modShifterLeavers\":-1,\"color2\":12,\"modHydrolic\":-1,\"modSmokeEnabled\":1,\"modRearBumper\":-1,\"modDial\":-1,\"modStruts\":-1,\"modTurbo\":1,\"tyreSmokeColor\":[255,255,255],\"windowTint\":1,\"modTank\":-1,\"wheels\":3,\"modEngineBlock\":-1,\"modSpeakers\":-1,\"wheelColor\":158,\"dirtLevel\":0.24017338454723,\"health\":995,\"modBackWheels\":-1,\"pearlescentColor\":39,\"modTrunk\":-1,\"color1\":12,\"modVanityPlate\":-1,\"modExhaust\":-1,\"plate\":\"85LRA649\",\"modFrame\":-1,\"modArmor\":4,\"modSideSkirt\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modRoof\":-1,\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"modAerials\":-1,\"modHorns\":-1,\"modFrontWheels\":-1,\"modGrille\":-1,\"modSuspension\":3,\"neonColor\":[255,0,255],\"modEngine\":3,\"modBrakes\":2,\"modFender\":-1,\"modWindows\":-1,\"modTrimB\":-1,\"modSteeringWheel\":-1,\"modXenon\":false}', 'steam:1100001165b855a', 1, NULL),
(191, '{\"modHood\":-1,\"modOrnaments\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modSpoilers\":-1,\"modDashboard\":-1,\"modRightFender\":-1,\"modArchCover\":-1,\"modTransmission\":-1,\"plateIndex\":4,\"neonEnabled\":[false,false,false,false],\"modFrontBumper\":-1,\"modTrimA\":-1,\"model\":-1296077726,\"modShifterLeavers\":-1,\"color2\":12,\"modHydrolic\":-1,\"modSmokeEnabled\":1,\"modRearBumper\":-1,\"modDial\":-1,\"modStruts\":-1,\"modTurbo\":false,\"tyreSmokeColor\":[255,255,255],\"windowTint\":1,\"modTank\":-1,\"wheels\":0,\"modEngineBlock\":-1,\"modSpeakers\":-1,\"wheelColor\":0,\"dirtLevel\":0.46456331014633,\"health\":999,\"modBackWheels\":-1,\"pearlescentColor\":12,\"modTrunk\":-1,\"color1\":12,\"modVanityPlate\":-1,\"modExhaust\":-1,\"plate\":\"68YFX590\",\"modFrame\":-1,\"modArmor\":-1,\"modSideSkirt\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modRoof\":-1,\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"modAerials\":-1,\"modHorns\":-1,\"modFrontWheels\":-1,\"modGrille\":-1,\"modSuspension\":-1,\"neonColor\":[255,0,255],\"modEngine\":-1,\"modBrakes\":-1,\"modFender\":-1,\"modWindows\":-1,\"modTrimB\":-1,\"modSteeringWheel\":-1,\"modXenon\":false}', 'steam:1100001165b855a', 1, NULL),
(192, '{\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"color1\":12,\"modSpeakers\":-1,\"modFrontBumper\":-1,\"modDial\":-1,\"modAPlate\":-1,\"modStruts\":-1,\"modTrunk\":-1,\"pearlescentColor\":12,\"modRearBumper\":-1,\"plateIndex\":0,\"modVanityPlate\":-1,\"modXenon\":false,\"modTransmission\":2,\"model\":1291052933,\"windowTint\":1,\"modOrnaments\":-1,\"modFrontWheels\":-1,\"modSeats\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"modShifterLeavers\":-1,\"modHood\":-1,\"modSpoilers\":-1,\"color2\":12,\"modExhaust\":-1,\"neonColor\":[255,0,255],\"modGrille\":-1,\"modSuspension\":3,\"tyreSmokeColor\":[255,255,255],\"neonEnabled\":[false,false,false,false],\"modRoof\":-1,\"modAerials\":-1,\"modPlateHolder\":-1,\"modArmor\":4,\"modBrakes\":2,\"modSmokeEnabled\":1,\"plate\":\"60QPQ979\",\"modHorns\":-1,\"dirtLevel\":1.0323944091797,\"modSideSkirt\":-1,\"modEngine\":3,\"modTank\":-1,\"wheels\":0,\"modRightFender\":-1,\"modDashboard\":-1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"modWindows\":-1,\"health\":931,\"modBackWheels\":-1,\"modFender\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modTurbo\":1,\"wheelColor\":156,\"modHydrolic\":-1,\"modTrimA\":-1}', 'steam:1100001165b855a', 1, NULL),
(193, '{\"modHood\":-1,\"modOrnaments\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modSpoilers\":-1,\"modDashboard\":-1,\"modRightFender\":-1,\"modArchCover\":-1,\"modTransmission\":-1,\"plateIndex\":4,\"neonEnabled\":[false,false,false,false],\"modFrontBumper\":-1,\"modTrimA\":-1,\"model\":936060004,\"modShifterLeavers\":-1,\"color2\":121,\"modHydrolic\":-1,\"modSmokeEnabled\":1,\"modRearBumper\":-1,\"modDial\":-1,\"modStruts\":-1,\"modTurbo\":false,\"tyreSmokeColor\":[255,255,255],\"windowTint\":1,\"modTank\":-1,\"wheels\":0,\"modEngineBlock\":-1,\"modSpeakers\":-1,\"wheelColor\":208,\"dirtLevel\":0.22909411787987,\"health\":1000,\"modBackWheels\":-1,\"pearlescentColor\":0,\"modTrunk\":-1,\"color1\":0,\"modVanityPlate\":-1,\"modExhaust\":-1,\"plate\":\"61NAK350\",\"modFrame\":-1,\"modArmor\":-1,\"modSideSkirt\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modRoof\":-1,\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"modAerials\":-1,\"modHorns\":-1,\"modFrontWheels\":-1,\"modGrille\":-1,\"modSuspension\":-1,\"neonColor\":[255,0,255],\"modEngine\":-1,\"modBrakes\":-1,\"modFender\":-1,\"modWindows\":-1,\"modTrimB\":-1,\"modSteeringWheel\":-1,\"modXenon\":false}', 'steam:1100001165b855a', 1, NULL),
(194, '{\"modHood\":-1,\"modOrnaments\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modSpoilers\":-1,\"modDashboard\":-1,\"modRightFender\":-1,\"modArchCover\":-1,\"modTransmission\":2,\"plateIndex\":0,\"neonEnabled\":[false,false,false,false],\"modFrontBumper\":-1,\"modTrimA\":-1,\"model\":1897898727,\"modShifterLeavers\":-1,\"color2\":12,\"modHydrolic\":-1,\"modSmokeEnabled\":1,\"modRearBumper\":-1,\"modDial\":-1,\"modStruts\":-1,\"modTurbo\":1,\"tyreSmokeColor\":[255,255,255],\"windowTint\":1,\"modTank\":-1,\"wheels\":0,\"modEngineBlock\":-1,\"modSpeakers\":-1,\"wheelColor\":156,\"dirtLevel\":0.46853548288345,\"health\":999,\"modBackWheels\":-1,\"pearlescentColor\":160,\"modTrunk\":-1,\"color1\":12,\"modVanityPlate\":-1,\"modExhaust\":-1,\"plate\":\"02ZES337\",\"modFrame\":-1,\"modArmor\":4,\"modSideSkirt\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modRoof\":-1,\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"modAerials\":-1,\"modHorns\":-1,\"modFrontWheels\":-1,\"modGrille\":-1,\"modSuspension\":3,\"neonColor\":[255,0,255],\"modEngine\":3,\"modBrakes\":2,\"modFender\":-1,\"modWindows\":-1,\"modTrimB\":-1,\"modSteeringWheel\":-1,\"modXenon\":false}', 'steam:1100001165b855a', 1, NULL),
(195, '{\"modRoof\":-1,\"modTurbo\":false,\"pearlescentColor\":0,\"modFrame\":-1,\"modFrontWheels\":-1,\"modTrimA\":-1,\"modEngine\":-1,\"modWindows\":-1,\"modRightFender\":-1,\"modSmokeEnabled\":false,\"modBackWheels\":-1,\"modStruts\":-1,\"modRearBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modTransmission\":-1,\"modSteeringWheel\":-1,\"modSideSkirt\":-1,\"modGrille\":-1,\"modAirFilter\":-1,\"modEngineBlock\":-1,\"modSpoilers\":-1,\"wheelColor\":208,\"modBrakes\":-1,\"dirtLevel\":10.0,\"modAerials\":-1,\"modLivery\":-1,\"modVanityPlate\":-1,\"modDial\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modHydrolic\":-1,\"color2\":240,\"modTrunk\":-1,\"color1\":0,\"modSuspension\":-1,\"modAPlate\":-1,\"modXenon\":false,\"neonEnabled\":[false,false,false,false],\"modHood\":-1,\"modShifterLeavers\":-1,\"modFrontBumper\":-1,\"modFender\":-1,\"modSpeakers\":-1,\"windowTint\":-1,\"wheels\":0,\"plate\":\"64LPN993\",\"modArmor\":-1,\"modArchCover\":-1,\"modTrimB\":-1,\"neonColor\":[255,0,255],\"modExhaust\":-1,\"health\":1000,\"plateIndex\":4,\"modSeats\":-1,\"modPlateHolder\":-1,\"modOrnaments\":-1,\"model\":936060004,\"modDashboard\":-1}', 'steam:1100001165b855a', 1, NULL),
(196, '{\"modDoorSpeaker\":-1,\"neonColor\":[255,0,255],\"modBackWheels\":-1,\"modTransmission\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":4,\"modSmokeEnabled\":false,\"modEngine\":-1,\"modFender\":-1,\"modWindows\":-1,\"modSteeringWheel\":-1,\"modStruts\":-1,\"modGrille\":-1,\"tyreSmokeColor\":[255,255,255],\"modVanityPlate\":-1,\"modRearBumper\":-1,\"modBrakes\":-1,\"color1\":0,\"color2\":41,\"model\":-1606187161,\"modRightFender\":-1,\"modFrame\":-1,\"modArchCover\":-1,\"modFrontWheels\":-1,\"wheelColor\":38,\"modArmor\":-1,\"modTrimA\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modTurbo\":false,\"health\":1000,\"windowTint\":-1,\"modSpoilers\":-1,\"modHydrolic\":-1,\"modRoof\":-1,\"modAirFilter\":-1,\"modSuspension\":-1,\"neonEnabled\":[false,false,false,false],\"modSpeakers\":-1,\"modExhaust\":-1,\"wheels\":6,\"modShifterLeavers\":-1,\"modDashboard\":-1,\"modTrimB\":-1,\"modHorns\":-1,\"modDial\":-1,\"modXenon\":false,\"modOrnaments\":-1,\"plateIndex\":0,\"plate\":\"85QNR397\",\"modAPlate\":-1,\"dirtLevel\":1.0,\"modTank\":-1,\"modSideSkirt\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"modTrunk\":-1,\"modHood\":-1,\"modAerials\":-1}', 'steam:1100001165b855a', 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `phone_app_chat`
--

DROP TABLE IF EXISTS `phone_app_chat`;
CREATE TABLE IF NOT EXISTS `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `phone_app_chat`
--

INSERT INTO `phone_app_chat` (`id`, `channel`, `message`, `time`) VALUES
(30, 'night', 'Gotham et a moi', '2018-10-08 12:43:48'),
(31, 'night', 'Non c\'est pas vrai euh !', '2018-10-08 21:35:44'),
(32, 'night', '8=====D', '2018-10-08 21:35:50'),
(33, 'night', 'Deathstroke : bite', '2018-10-08 21:35:56'),
(34, 'night', 'Shadow', '2018-10-08 21:36:12'),
(35, 'night', 'Deathstroke : j\'aime la bite.', '2018-10-08 21:36:33'),
(36, 'lesclowns', 'El jokereni : salut.', '2018-10-10 19:41:09'),
(37, 'lesclowns', 'DeathStroke: j\'ai réfléchis et ton histoire de gang m\'intéresse', '2018-10-10 19:53:59'),
(38, 'lesclowns', 'El Jokereni : Attend je braque.', '2018-10-10 19:54:26'),
(39, 'lesclowns', 'El Jokereni : Rendez-vous à l\'usine des cartes a jouer.', '2018-10-10 20:00:39');

-- --------------------------------------------------------

--
-- Structure de la table `phone_calls`
--

DROP TABLE IF EXISTS `phone_calls`;
CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `phone_calls`
--

INSERT INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
(122, '84053', '87302', 0, '2018-09-16 12:15:48', 1),
(123, '87302', '84053', 1, '2018-09-16 12:15:48', 1),
(124, '87302', '84053', 0, '2018-09-16 12:16:19', 1),
(125, '84053', '87302', 1, '2018-09-16 12:16:19', 1),
(126, '84053', '87302', 0, '2018-09-16 12:31:17', 1),
(127, '87302', '84053', 1, '2018-09-16 12:31:17', 1),
(128, '84053', '87302', 0, '2018-09-16 12:32:13', 0),
(129, '87302', '84053', 1, '2018-09-16 12:32:13', 0),
(130, '87302', '71484', 1, '2018-09-16 12:47:17', 1),
(131, '71484', '87302', 0, '2018-09-16 12:47:17', 1),
(132, '71484', 'ghh', 1, '2018-09-16 12:56:55', 0),
(133, '71484', 'f', 1, '2018-09-16 12:57:03', 0),
(134, '71484', 'Jeremiah', 1, '2018-09-16 12:57:36', 0),
(135, '71484', '3', 1, '2018-09-16 12:57:48', 0),
(136, '82232', '84053', 0, '2018-09-16 16:04:07', 0),
(137, '84053', '82232', 1, '2018-09-16 16:04:07', 0),
(138, '71484', '87302', 0, '2018-09-16 17:30:18', 0),
(139, '87302', '71484', 1, '2018-09-16 17:30:18', 0),
(140, '87302', '31178', 1, '2018-09-16 17:31:41', 0),
(141, '31178', '87302', 0, '2018-09-16 17:31:41', 0),
(142, '82232', '87302', 0, '2018-09-16 17:31:51', 0),
(143, '87302', '82232', 1, '2018-09-16 17:31:51', 0),
(144, '53187', 'capitaine ', 1, '2018-09-16 17:48:48', 0),
(145, '53187', 'zoulou', 1, '2018-09-16 17:49:04', 0),
(146, '31178', '18226', 1, '2018-09-16 18:08:07', 1),
(147, '18226', '31178', 0, '2018-09-16 18:08:07', 1),
(148, '41525', '84053', 0, '2018-09-16 18:39:52', 1),
(149, '84053', '41525', 1, '2018-09-16 18:39:52', 1),
(150, '82784', '87302', 0, '2018-09-16 19:22:53', 0),
(151, '87302', '82784', 1, '2018-09-16 19:22:53', 0),
(152, '82784', '87302', 0, '2018-09-16 19:23:00', 1),
(153, '87302', '82784', 1, '2018-09-16 19:23:00', 1),
(154, '82784', '911', 1, '2018-09-16 19:55:22', 0),
(155, '87302', '12136', 1, '2018-09-16 20:44:50', 0),
(156, '12136', '87302', 0, '2018-09-16 20:44:50', 0),
(157, '87302', '12136', 1, '2018-09-16 20:44:55', 1),
(158, '12136', '87302', 0, '2018-09-16 20:44:55', 1),
(159, '87302', '12136', 1, '2018-09-16 20:47:23', 0),
(160, '12136', '87302', 0, '2018-09-16 20:47:23', 0),
(161, '12136', '87302', 1, '2018-09-16 20:47:32', 1),
(162, '87302', '12136', 0, '2018-09-16 20:47:32', 1),
(163, '82784', '87302', 0, '2018-09-16 21:04:25', 1),
(164, '87302', '82784', 1, '2018-09-16 21:04:25', 1),
(165, '12136', '87302', 1, '2018-09-16 21:24:24', 0),
(166, '87302', '12136', 0, '2018-09-16 21:24:24', 0),
(167, '87302', '12136', 0, '2018-09-16 21:24:47', 0),
(168, '12136', '87302', 1, '2018-09-16 21:24:47', 0),
(169, '771-1741', '906-8228', 1, '2018-09-17 00:33:29', 1),
(170, '906-8228', '771-1741', 0, '2018-09-17 00:33:29', 1),
(171, '771-1741', '906-8228', 1, '2018-09-17 00:35:26', 1),
(172, '906-8228', '771-1741', 0, '2018-09-17 00:35:26', 1),
(173, '906-8228', '771-1741', 1, '2018-09-17 00:39:32', 1),
(174, '771-1741', '906-8228', 0, '2018-09-17 00:39:32', 1),
(175, '906-8228', '771-1741', 1, '2018-09-17 00:40:29', 0),
(176, '771-1741', '906-8228', 0, '2018-09-17 00:40:29', 0),
(177, '771-1741', '906-8228', 1, '2018-09-17 00:42:35', 1),
(178, '906-8228', '771-1741', 0, '2018-09-17 00:42:35', 1),
(179, '906-8228', '771-1741', 0, '2018-09-17 00:53:37', 1),
(180, '771-1741', '906-8228', 1, '2018-09-17 00:53:37', 1),
(181, '771-1741', '466-5936', 0, '2018-09-17 00:57:52', 0),
(182, '466-5936', '771-1741', 1, '2018-09-17 00:57:52', 0),
(183, '466-5936', '427-1473', 1, '2018-09-17 18:36:30', 0),
(184, '427-1473', '466-5936', 0, '2018-09-17 18:36:30', 0),
(185, '906-8228', '466-5936', 0, '2018-09-17 20:07:17', 1),
(186, '466-5936', '906-8228', 1, '2018-09-17 20:07:17', 1),
(187, '427-1473', '466-5936', 0, '2018-09-17 20:17:31', 0),
(188, '466-5936', '427-1473', 1, '2018-09-17 20:17:31', 0),
(189, '906-8228', '771-1741', 0, '2018-09-17 20:26:16', 1),
(190, '771-1741', '906-8228', 1, '2018-09-17 20:26:16', 1),
(191, '466-5936', '771-1741', 0, '2018-09-17 20:33:20', 0),
(192, '771-1741', '466-5936', 1, '2018-09-17 20:33:20', 0),
(193, '771-1741', '466-5936', 0, '2018-09-17 20:34:02', 0),
(194, '466-5936', '771-1741', 1, '2018-09-17 20:34:02', 0),
(195, '771-1741', '466-5936', 0, '2018-09-17 20:34:25', 0),
(196, '466-5936', '771-1741', 1, '2018-09-17 20:34:25', 0),
(197, '466-5936', '771-1741', 0, '2018-09-17 20:34:30', 1),
(198, '771-1741', '466-5936', 1, '2018-09-17 20:34:30', 1),
(199, '906-8228', '771-1741', 0, '2018-09-17 21:28:17', 1),
(200, '771-1741', '906-8228', 1, '2018-09-17 21:28:17', 1),
(201, '614-6017', '82232', 1, '2018-09-17 21:58:47', 0),
(202, '614-6017', '911', 1, '2018-09-17 22:04:04', 0),
(203, '466-5936', '614-6017', 0, '2018-09-17 22:04:23', 1),
(204, '614-6017', '466-5936', 1, '2018-09-17 22:04:23', 1),
(205, '466-5936', '771-1741', 1, '2018-09-17 22:06:04', 1),
(206, '771-1741', '466-5936', 0, '2018-09-17 22:06:04', 1),
(207, '466-5936', '614-6017', 0, '2018-09-17 22:08:53', 1),
(208, '614-6017', '466-5936', 1, '2018-09-17 22:08:53', 1),
(209, '466-5936', '12136', 1, '2018-09-17 22:18:57', 0),
(210, '906-8228', '771-1741', 0, '2018-09-17 22:29:59', 0),
(211, '771-1741', '906-8228', 1, '2018-09-17 22:29:59', 0),
(212, '466-5936', '82232', 1, '2018-09-17 22:37:20', 0),
(213, '771-1741', '531-350', 1, '2018-09-17 22:41:42', 0),
(214, '771-1741', '531-350', 1, '2018-09-17 22:43:41', 0),
(215, '531-3502', '906-8228', 0, '2018-09-17 22:44:22', 1),
(216, '906-8228', '531-3502', 1, '2018-09-17 22:44:22', 1),
(217, '531-3502', '906-8228', 1, '2018-09-17 22:47:42', 1),
(218, '906-8228', '531-3502', 0, '2018-09-17 22:47:42', 1),
(219, '531-3502', '906-8228', 1, '2018-09-17 22:53:42', 1),
(220, '906-8228', '531-3502', 0, '2018-09-17 22:53:42', 1),
(221, '906-8228', '771-1741', 0, '2018-09-17 23:09:56', 1),
(222, '771-1741', '906-8228', 1, '2018-09-17 23:09:56', 1),
(223, '466-5936', '771-1741', 0, '2018-09-17 23:11:10', 1),
(224, '771-1741', '466-5936', 1, '2018-09-17 23:11:10', 1),
(225, '906-8228', '531-3502', 0, '2018-09-17 23:14:34', 1),
(226, '531-3502', '906-8228', 1, '2018-09-17 23:14:34', 1),
(227, '531-3502', '466-5936', 0, '2018-09-17 23:18:23', 1),
(228, '466-5936', '531-3502', 1, '2018-09-17 23:18:23', 1),
(229, '771-1741', '906-8228', 0, '2018-09-17 23:20:29', 1),
(230, '906-8228', '771-1741', 1, '2018-09-17 23:20:29', 1),
(231, '906-8228', '771-1741', 0, '2018-09-17 23:21:22', 1),
(232, '771-1741', '906-8228', 1, '2018-09-17 23:21:22', 1),
(233, '466-5936', '531-3502', 0, '2018-09-17 23:25:59', 1),
(234, '531-3502', '466-5936', 1, '2018-09-17 23:25:59', 1),
(235, '906-8228', '531-3502', 0, '2018-09-17 23:27:20', 1),
(236, '531-3502', '906-8228', 1, '2018-09-17 23:27:20', 1),
(237, '906-8228', '531-3502', 0, '2018-09-17 23:28:40', 1),
(238, '531-3502', '906-8228', 1, '2018-09-17 23:28:40', 1),
(239, '906-8228', '466-5936', 0, '2018-09-17 23:29:09', 0),
(240, '466-5936', '906-8228', 1, '2018-09-17 23:29:09', 0),
(241, '771-1741', '466-5936', 0, '2018-09-17 23:29:16', 1),
(242, '466-5936', '771-1741', 1, '2018-09-17 23:29:16', 1),
(243, '906-8228', '771-1741', 0, '2018-09-17 23:30:15', 1),
(244, '771-1741', '906-8228', 1, '2018-09-17 23:30:15', 1),
(245, '466-5936', '771-1741', 0, '2018-09-17 23:31:11', 1),
(246, '771-1741', '466-5936', 1, '2018-09-17 23:31:11', 1),
(247, '562-3039', '466-5936', 0, '2018-09-18 14:55:44', 0),
(248, '466-5936', '562-3039', 1, '2018-09-18 14:55:44', 0),
(249, '562-3039', '466-5936', 0, '2018-09-18 14:57:35', 0),
(250, '466-5936', '562-3039', 1, '2018-09-18 14:57:35', 0),
(251, '466-5936', '562-3039', 0, '2018-09-18 14:57:43', 1),
(252, '562-3039', '466-5936', 1, '2018-09-18 14:57:43', 1),
(253, '466-5936', '562-3039', 0, '2018-09-18 14:57:51', 1),
(254, '562-3039', '466-5936', 1, '2018-09-18 14:57:51', 1),
(258, '562-3039', '827-5849', 0, '2018-09-18 21:13:54', 1),
(259, '562-3039', '466-5936', 0, '2018-09-18 21:19:06', 0),
(260, '466-5936', '562-3039', 1, '2018-09-18 21:19:06', 0),
(261, '771-1741', '466-5936', 0, '2018-09-18 21:19:30', 1),
(262, '466-5936', '771-1741', 1, '2018-09-18 21:19:30', 1),
(263, '771-1741', '531-350', 1, '2018-09-18 21:20:23', 0),
(264, '906-8228', '771-1741', 0, '2018-09-18 21:20:48', 1),
(265, '771-1741', '906-8228', 1, '2018-09-18 21:20:48', 1),
(266, '531-3502', '466-5936', 0, '2018-09-18 21:20:50', 1),
(267, '466-5936', '531-3502', 1, '2018-09-18 21:20:50', 1),
(268, '466-5936', '906-8228', 1, '2018-09-18 21:21:56', 0),
(269, '906-8228', '466-5936', 0, '2018-09-18 21:21:56', 0),
(270, '466-5936', '906-8228', 1, '2018-09-18 21:22:36', 0),
(271, '906-8228', '466-5936', 0, '2018-09-18 21:22:36', 0),
(272, '614-6017', '531-3502', 0, '2018-09-18 21:33:08', 1),
(273, '531-3502', '614-6017', 1, '2018-09-18 21:33:08', 1),
(274, '614-6017', '531-3502', 0, '2018-09-18 21:33:16', 1),
(275, '531-3502', '614-6017', 1, '2018-09-18 21:33:16', 1),
(276, '531-3502', '614-6017', 0, '2018-09-18 21:34:00', 1),
(277, '614-6017', '531-3502', 1, '2018-09-18 21:34:00', 1),
(278, '771-1741', '466-5936', 0, '2018-09-18 21:38:46', 1),
(279, '466-5936', '771-1741', 1, '2018-09-18 21:38:46', 1),
(280, '466-5936', '562-3039', 1, '2018-09-18 21:45:54', 1),
(281, '562-3039', '466-5936', 0, '2018-09-18 21:45:54', 1),
(282, '466-5936', '911', 1, '2018-09-18 21:48:36', 0),
(283, '531-3502', '614-6017', 0, '2018-09-18 22:00:58', 0),
(284, '614-6017', '531-3502', 1, '2018-09-18 22:00:58', 0),
(285, '562-3039', '466-5936', 0, '2018-09-18 22:07:12', 1),
(286, '466-5936', '562-3039', 1, '2018-09-18 22:07:12', 1),
(288, '562-3039', '827-5849', 0, '2018-09-18 22:08:46', 1),
(289, '562-3039', '827-5849', 1, '2018-09-18 22:09:11', 0),
(292, '614-6017', '827-5849', 0, '2018-09-18 22:10:49', 0),
(293, '562-3039', '614-6017', 0, '2018-09-18 22:43:32', 1),
(294, '614-6017', '562-3039', 1, '2018-09-18 22:43:32', 1),
(295, '562-3039', '614-6017', 0, '2018-09-18 22:43:57', 1),
(296, '614-6017', '562-3039', 1, '2018-09-18 22:43:57', 1),
(297, '562-3039', '614-6017', 0, '2018-09-18 22:45:18', 1),
(298, '614-6017', '562-3039', 1, '2018-09-18 22:45:18', 1),
(299, '562-3039', '614-6017', 0, '2018-09-18 22:45:42', 1),
(300, '614-6017', '562-3039', 1, '2018-09-18 22:45:42', 1),
(301, '562-3039', '466-5936', 0, '2018-09-18 22:46:05', 0),
(302, '466-5936', '562-3039', 1, '2018-09-18 22:46:05', 0),
(303, '562-3039', '466-5936', 0, '2018-09-18 22:47:21', 1),
(304, '466-5936', '562-3039', 1, '2018-09-18 22:47:21', 1),
(305, '614-6017', '562-3039', 0, '2018-09-18 23:18:44', 0),
(306, '562-3039', '614-6017', 1, '2018-09-18 23:18:44', 0),
(307, '771-1741', '466-5936', 0, '2018-09-18 23:39:48', 1),
(308, '466-5936', '771-1741', 1, '2018-09-18 23:39:48', 1),
(309, '440-5316', '466-5936', 0, '2018-09-19 12:03:13', 0),
(310, '466-5936', '440-5316', 1, '2018-09-19 12:03:13', 0),
(311, '466-5936', '440-5316', 0, '2018-09-19 12:03:22', 1),
(312, '440-5316', '466-5936', 1, '2018-09-19 12:03:22', 1),
(313, '562-3039', '466-5936', 0, '2018-09-19 21:22:48', 1),
(314, '466-5936', '562-3039', 1, '2018-09-19 21:22:48', 1),
(315, '771-1741', '466-5936', 0, '2018-09-19 21:27:47', 0),
(316, '466-5936', '771-1741', 1, '2018-09-19 21:27:47', 0),
(317, '614-6017', '466-5936', 0, '2018-09-19 21:31:57', 1),
(318, '466-5936', '614-6017', 1, '2018-09-19 21:31:57', 1),
(319, '531-3502', 'dent', 1, '2018-09-19 21:35:11', 0),
(320, '531-3502', 'harvey ', 1, '2018-09-19 21:35:45', 0),
(321, '614-6017', '466-5936', 0, '2018-09-19 22:10:51', 1),
(322, '466-5936', '614-6017', 1, '2018-09-19 22:10:51', 1),
(323, '771-1741', '466-5936', 1, '2018-09-19 22:31:02', 1),
(324, '466-5936', '771-1741', 0, '2018-09-19 22:31:02', 1),
(325, '466-5936', '771-1741', 0, '2018-09-19 22:33:10', 1),
(326, '771-1741', '466-5936', 1, '2018-09-19 22:33:10', 1),
(327, '466-5936', '771-1741', 0, '2018-09-19 22:59:33', 1),
(328, '771-1741', '466-5936', 1, '2018-09-19 22:59:33', 1),
(329, '466-5936', '771-1741', 0, '2018-09-19 23:02:15', 1),
(330, '771-1741', '466-5936', 1, '2018-09-19 23:02:15', 1),
(331, '466-5936', '771-1741', 0, '2018-09-19 23:30:00', 0),
(332, '771-1741', '466-5936', 1, '2018-09-19 23:30:00', 0),
(333, '771-1741', '466-5936', 0, '2018-09-20 00:47:32', 1),
(334, '466-5936', '771-1741', 1, '2018-09-20 00:47:32', 1),
(335, '906-8228', '771-1741', 0, '2018-09-20 01:01:01', 1),
(336, '771-1741', '906-8228', 1, '2018-09-20 01:01:01', 1),
(337, '771-1741', '906-8228', 1, '2018-09-20 01:05:55', 1),
(338, '906-8228', '771-1741', 0, '2018-09-20 01:05:55', 1),
(339, '906-8228', '771-1741', 0, '2018-09-20 01:11:48', 1),
(340, '771-1741', '906-8228', 1, '2018-09-20 01:11:48', 1),
(341, '906-8228', '771-1741', 1, '2018-09-20 01:20:14', 1),
(342, '771-1741', '906-8228', 0, '2018-09-20 01:20:14', 1),
(343, '771-1741', '906-8228', 0, '2018-09-20 01:33:56', 1),
(344, '906-8228', '771-1741', 1, '2018-09-20 01:33:56', 1),
(345, '906-8228', '771-1741', 0, '2018-09-20 01:37:00', 1),
(346, '771-1741', '906-8228', 1, '2018-09-20 01:37:00', 1),
(347, '906-8228', '771-1741', 0, '2018-09-20 01:41:34', 0),
(348, '771-1741', '906-8228', 1, '2018-09-20 01:41:34', 0),
(349, '614-6017', '827-5849', 0, '2018-09-21 20:23:34', 1),
(351, '771-1741', '466-5936', 0, '2018-09-21 21:19:29', 1),
(352, '466-5936', '771-1741', 1, '2018-09-21 21:19:29', 1),
(353, '771-1741', '531-3502', 0, '2018-09-21 21:49:00', 1),
(354, '531-3502', '771-1741', 1, '2018-09-21 21:49:00', 1),
(355, '771-1741', '466-5936', 0, '2018-09-21 21:51:53', 0),
(356, '466-5936', '771-1741', 1, '2018-09-21 21:51:53', 0),
(357, '466-5936', '771-1741', 1, '2018-09-21 22:00:32', 1),
(358, '771-1741', '466-5936', 0, '2018-09-21 22:00:32', 1),
(359, '562-3039', '614-6017', 1, '2018-09-21 22:02:53', 1),
(360, '614-6017', '562-3039', 0, '2018-09-21 22:02:53', 1),
(361, '614-6017', '562-3039', 0, '2018-09-21 22:05:45', 1),
(362, '562-3039', '614-6017', 1, '2018-09-21 22:05:45', 1),
(363, '466-5936', '771-1741', 0, '2018-09-21 22:06:29', 1),
(364, '771-1741', '466-5936', 1, '2018-09-21 22:06:29', 1),
(365, '466-5936', '771-1741', 1, '2018-09-23 19:02:30', 1),
(366, '771-1741', '466-5936', 0, '2018-09-23 19:02:30', 1),
(367, '771-1741', '466-5936', 0, '2018-09-23 19:44:08', 1),
(368, '466-5936', '771-1741', 1, '2018-09-23 19:44:08', 1),
(369, '531-3502', '771-1741', 1, '2018-09-23 20:44:21', 1),
(370, '771-1741', '531-3502', 0, '2018-09-23 20:44:21', 1),
(371, '531-3502', '466-5936', 1, '2018-09-23 21:05:19', 1),
(372, '466-5936', '531-3502', 0, '2018-09-23 21:05:19', 1),
(373, '531-3502', '466-5936', 1, '2018-09-23 21:07:49', 1),
(374, '466-5936', '531-3502', 0, '2018-09-23 21:07:49', 1),
(375, '466-5936', '531-3502', 1, '2018-09-23 21:11:22', 1),
(376, '531-3502', '466-5936', 0, '2018-09-23 21:11:22', 1),
(377, '466-5936', '531-3502', 0, '2018-09-23 21:16:58', 1),
(378, '531-3502', '466-5936', 1, '2018-09-23 21:16:58', 1),
(379, '466-5936', '531-3502', 0, '2018-09-23 21:22:14', 1),
(380, '531-3502', '466-5936', 1, '2018-09-23 21:22:14', 1),
(381, '466-5936', '531-3502', 0, '2018-09-23 21:22:52', 0),
(382, '531-3502', '466-5936', 1, '2018-09-23 21:22:52', 0),
(383, '531-3502', '466-5936', 0, '2018-09-23 21:29:08', 0),
(384, '466-5936', '531-3502', 1, '2018-09-23 21:29:08', 0),
(385, '531-3502', '466-5936', 1, '2018-09-23 21:34:52', 0),
(386, '466-5936', '531-3502', 0, '2018-09-23 21:34:52', 0),
(387, '440-5316', '466-5936', 0, '2018-09-23 21:44:58', 0),
(388, '466-5936', '440-5316', 1, '2018-09-23 21:44:58', 0),
(389, '466-5936', '531-3502', 0, '2018-09-23 22:09:16', 0),
(390, '531-3502', '466-5936', 1, '2018-09-23 22:09:16', 0),
(391, '466-5936', '771-1741', 0, '2018-09-23 22:14:45', 1),
(392, '771-1741', '466-5936', 1, '2018-09-23 22:14:45', 1),
(393, '466-5936', '531-3502', 1, '2018-09-27 18:50:48', 0),
(394, '531-3502', '466-5936', 0, '2018-09-27 18:50:48', 0),
(395, '466-5936', '771-1741', 1, '2018-09-27 18:50:56', 1),
(396, '771-1741', '466-5936', 0, '2018-09-27 18:50:56', 1),
(397, '466-5936', '531-3502', 0, '2018-09-27 19:14:37', 1),
(398, '531-3502', '466-5936', 1, '2018-09-27 19:14:37', 1),
(399, '531-3502', '466-5936', 0, '2018-09-27 19:15:23', 1),
(400, '466-5936', '531-3502', 1, '2018-09-27 19:15:23', 1),
(401, '531-3502', '466-5936', 0, '2018-09-27 19:16:55', 1),
(402, '466-5936', '531-3502', 1, '2018-09-27 19:16:55', 1),
(403, '531-3502', '771-1741', 1, '2018-09-27 19:20:25', 1),
(404, '771-1741', '531-3502', 0, '2018-09-27 19:20:25', 1),
(405, '771-1741', '466-5936', 1, '2018-09-27 19:22:20', 1),
(406, '466-5936', '771-1741', 0, '2018-09-27 19:22:20', 1),
(407, '771-1741', '466-5936', 0, '2018-09-27 19:57:41', 1),
(408, '466-5936', '771-1741', 1, '2018-09-27 19:57:41', 1),
(409, '859-9967', 'Monbue', 1, '2018-09-28 19:50:12', 0),
(410, '859-9967', 'Doriab mon', 1, '2018-09-28 20:04:09', 0),
(411, '859-9967', 'Doriab mon', 1, '2018-09-28 20:11:13', 0),
(412, '771-1741', '466-5936', 0, '2018-09-29 16:59:49', 0),
(413, '466-5936', '771-1741', 1, '2018-09-29 16:59:49', 0),
(414, '466-5936', '771-1741', 0, '2018-09-29 16:59:53', 1),
(415, '771-1741', '466-5936', 1, '2018-09-29 16:59:53', 1),
(416, '771-1741', '466-5936', 0, '2018-09-29 21:04:45', 1),
(417, '466-5936', '771-1741', 1, '2018-09-29 21:04:45', 1),
(418, '466-5936', '771-1741', 1, '2018-09-29 21:27:16', 1),
(419, '771-1741', '466-5936', 0, '2018-09-29 21:27:16', 1),
(420, '531-3502', 'dent', 1, '2018-09-29 23:09:23', 0),
(421, '771-1741', '466-5936', 0, '2018-09-30 13:30:35', 1),
(422, '466-5936', '771-1741', 1, '2018-09-30 13:30:35', 1),
(423, '646-7832', '466-5936', 0, '2018-09-30 13:32:12', 0),
(424, '466-5936', '646-7832', 1, '2018-09-30 13:32:12', 0),
(425, '646-7832', '466-5936', 0, '2018-09-30 13:32:33', 1),
(426, '466-5936', '646-7832', 1, '2018-09-30 13:32:33', 1),
(427, '646-7832', '466-5936', 0, '2018-09-30 13:32:41', 1),
(428, '466-5936', '646-7832', 1, '2018-09-30 13:32:41', 1),
(429, '427-1473', 'pute pute', 1, '2018-09-30 14:14:55', 0),
(430, '427-1473', 'joker', 1, '2018-09-30 14:15:13', 0),
(431, '466-5936', 'Oui', 1, '2018-10-01 10:42:23', 0),
(432, '466-5936', '562-3039', 1, '2018-10-01 14:08:37', 0),
(433, '562-3039', '466-5936', 0, '2018-10-01 14:08:37', 0),
(434, '771-1741', '466-5936', 0, '2018-10-01 19:25:02', 0),
(435, '466-5936', '771-1741', 1, '2018-10-01 19:25:02', 0),
(436, '466-5936', '614-6017', 0, '2018-10-01 20:11:06', 1),
(437, '614-6017', '466-5936', 1, '2018-10-01 20:11:06', 1),
(438, '562-3039', '466-5936', 1, '2018-10-01 20:47:02', 1),
(439, '466-5936', '562-3039', 0, '2018-10-01 20:47:02', 1),
(440, '562-3039', '466-5936', 1, '2018-10-01 20:59:55', 1),
(441, '466-5936', '562-3039', 0, '2018-10-01 20:59:55', 1),
(442, '466-5936', '562-3039', 1, '2018-10-01 21:14:59', 0),
(443, '562-3039', '466-5936', 0, '2018-10-01 21:14:59', 0),
(444, '466-5936', '531-3502', 0, '2018-10-01 21:18:47', 1),
(445, '531-3502', '466-5936', 1, '2018-10-01 21:18:47', 1),
(446, '562-3039', '466-5936', 1, '2018-10-01 21:32:52', 0),
(447, '466-5936', '562-3039', 0, '2018-10-01 21:32:52', 0),
(448, '416-0570', '771-1741', 1, '2018-10-01 21:34:44', 1),
(449, '771-1741', '416-0570', 0, '2018-10-01 21:34:44', 1),
(450, '614-6017', '562-3039', 0, '2018-10-01 21:37:36', 1),
(451, '562-3039', '614-6017', 1, '2018-10-01 21:37:36', 1),
(452, '531-3502', '771-1741', 1, '2018-10-01 22:13:23', 1),
(453, '771-1741', '531-3502', 0, '2018-10-01 22:13:23', 1),
(454, '771-1741', '531-3502', 0, '2018-10-01 22:14:44', 1),
(455, '531-3502', '771-1741', 1, '2018-10-01 22:14:44', 1),
(456, '771-1741', '531-3502', 0, '2018-10-01 22:15:58', 1),
(457, '531-3502', '771-1741', 1, '2018-10-01 22:15:58', 1),
(458, '771-1741', '416-0570', 0, '2018-10-01 22:20:30', 1),
(459, '416-0570', '771-1741', 1, '2018-10-01 22:20:30', 1),
(460, '771-1741', '416-0570', 0, '2018-10-01 22:27:37', 1),
(461, '416-0570', '771-1741', 1, '2018-10-01 22:27:37', 1),
(462, '771-1741', '531-3502', 0, '2018-10-01 22:27:52', 1),
(463, '531-3502', '771-1741', 1, '2018-10-01 22:27:52', 1),
(464, '771-1741', '416-0570', 0, '2018-10-03 22:44:04', 1),
(465, '416-0570', '771-1741', 1, '2018-10-03 22:44:04', 1),
(466, '639-3852', '911', 1, '2018-10-07 13:12:07', 0),
(467, '859-9967', 'ricardo', 1, '2018-10-07 13:30:08', 0),
(468, '466-5936', '562-3039', 0, '2018-10-07 13:42:20', 0),
(469, '562-3039', '466-5936', 1, '2018-10-07 13:42:20', 0),
(470, '466-5936', '562-3039', 0, '2018-10-07 14:48:33', 1),
(471, '562-3039', '466-5936', 1, '2018-10-07 14:48:33', 1),
(472, '466-5936', '562-3039', 0, '2018-10-07 14:52:55', 1),
(473, '562-3039', '466-5936', 1, '2018-10-07 14:52:55', 1),
(474, '427-1473', 'joker', 1, '2018-10-07 15:02:05', 0),
(475, '562-3039', '466-5936', 0, '2018-10-07 15:46:22', 0),
(476, '466-5936', '562-3039', 1, '2018-10-07 15:46:22', 0),
(477, '562-3039', '466-5936', 0, '2018-10-07 15:47:07', 0),
(478, '466-5936', '562-3039', 1, '2018-10-07 15:47:07', 0),
(479, '722-8375', '911', 1, '2018-10-07 15:50:49', 0),
(480, '722-8375', '639-3852', 0, '2018-10-07 17:23:58', 0),
(481, '639-3852', '722-8375', 1, '2018-10-07 17:23:58', 0),
(482, '722-8375', '639-3852', 0, '2018-10-07 17:24:39', 0),
(483, '639-3852', '722-8375', 1, '2018-10-07 17:24:39', 0),
(484, '722-8375', '639-3852', 0, '2018-10-07 17:44:18', 1),
(485, '639-3852', '722-8375', 1, '2018-10-07 17:44:18', 1),
(486, '771-1741', '466-5936', 1, '2018-10-08 11:52:38', 1),
(487, '466-5936', '771-1741', 0, '2018-10-08 11:52:38', 1),
(489, '427-1473', 'joker', 1, '2018-10-08 17:12:42', 0),
(490, '466-5936', '827-5849', 0, '2018-10-08 21:36:34', 1),
(493, '427-1473', '911', 1, '2018-10-09 15:58:40', 0),
(495, '639-3852', '827-5849', 1, '2018-10-09 18:59:17', 1),
(497, '639-3852', '827-5849', 1, '2018-10-09 19:18:43', 1),
(499, '639-3852', '827-5849', 1, '2018-10-09 19:38:09', 1),
(500, '562-3039', '466-5936', 0, '2018-10-09 19:53:24', 1),
(501, '466-5936', '562-3039', 1, '2018-10-09 19:53:24', 1),
(502, '466-5936', '827-5849', 0, '2018-10-09 20:24:16', 1),
(503, '827-5849', '466-5936', 1, '2018-10-09 20:24:16', 1),
(504, '827-5849', '562-3039', 1, '2018-10-09 20:24:51', 0),
(505, '562-3039', '827-5849', 0, '2018-10-09 20:24:51', 0),
(506, '427-1473', '911', 1, '2018-10-10 15:36:15', 1),
(507, '827-5849', '466-5936', 0, '2018-10-10 15:36:53', 0),
(508, '466-5936', '827-5849', 1, '2018-10-10 15:36:53', 0),
(509, '562-3039', '827-5849', 1, '2018-10-10 16:03:11', 0),
(510, '827-5849', '562-3039', 0, '2018-10-10 16:03:11', 0),
(511, '562-3039', '427-1473', 1, '2018-10-10 16:10:52', 1),
(512, '427-1473', '562-3039', 0, '2018-10-10 16:10:52', 1),
(513, '427-1473', '562-3039', 1, '2018-10-10 16:11:29', 1),
(514, '562-3039', '427-1473', 0, '2018-10-10 16:11:29', 1),
(515, '614-6017', '562-3039', 0, '2018-10-10 16:15:04', 1),
(516, '562-3039', '614-6017', 1, '2018-10-10 16:15:04', 1),
(517, '466-5936', '562-3039', 0, '2018-10-10 16:39:58', 1),
(518, '562-3039', '466-5936', 1, '2018-10-10 16:39:58', 1),
(519, '562-3039', '827-5849', 0, '2018-10-10 20:50:32', 1),
(520, '827-5849', '562-3039', 1, '2018-10-10 20:50:32', 1),
(521, '466-5936', '562-3039', 0, '2018-10-13 19:19:41', 1),
(522, '562-3039', '466-5936', 1, '2018-10-13 19:19:41', 1),
(523, '562-3039', '466-5936', 1, '2018-10-13 19:59:31', 0),
(524, '466-5936', '562-3039', 0, '2018-10-13 19:59:31', 0),
(525, '562-3039', '466-5936', 1, '2018-10-13 19:59:44', 0),
(526, '466-5936', '562-3039', 0, '2018-10-13 19:59:44', 0),
(527, '827-5847', 'bruce wayn', 1, '2018-10-13 21:52:53', 0),
(528, '827-5847', 'lucious', 1, '2018-10-13 21:53:27', 0),
(529, '827-5847', '8', 1, '2018-10-13 21:53:39', 0),
(530, '827-5847', '911', 1, '2018-10-13 21:54:57', 0),
(531, '562-3039', '614-6017', 1, '2018-10-14 19:37:10', 0),
(532, '614-6017', '562-3039', 0, '2018-10-14 19:37:10', 0),
(533, '562-3039', '911', 1, '2018-10-14 19:48:56', 0),
(534, '562-3039', '466-5936', 0, '2018-10-14 19:49:16', 1),
(535, '466-5936', '562-3039', 1, '2018-10-14 19:49:16', 1),
(536, '614-6017', '827-5849', 1, '2018-10-14 20:18:27', 0),
(537, '614-6017', 'THOMAS', 1, '2018-10-15 20:09:25', 0),
(538, '466-5936', '562-3039', 0, '2018-10-18 19:16:26', 0),
(539, '562-3039', '466-5936', 1, '2018-10-18 19:16:26', 0),
(540, '466-5936', '562-3039', 0, '2018-10-18 19:16:33', 1),
(541, '562-3039', '466-5936', 1, '2018-10-18 19:16:33', 1),
(542, '562-3039', '614-6017', 0, '2018-10-18 19:55:36', 0),
(543, '614-6017', '562-3039', 1, '2018-10-18 19:55:36', 0),
(544, '562-3039', '614-6017', 1, '2018-10-18 20:28:12', 1),
(545, '614-6017', '562-3039', 0, '2018-10-18 20:28:12', 1);

-- --------------------------------------------------------

--
-- Structure de la table `phone_messages`
--

DROP TABLE IF EXISTS `phone_messages`;
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1672 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `phone_messages`
--

INSERT INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
(1600, 'police', '753-4849', 'GPS: 407.62615966797, -983.93518066406', '2018-10-14 19:50:20', 0, 0),
(1601, 'police', '466-5936', 'De #466-5936 : viens ici', '2018-10-14 20:11:22', 1, 0),
(1602, 'police', '466-5936', 'GPS: -111.74359893799, -1110.7237548828', '2018-10-14 20:11:22', 1, 0),
(1603, 'police', '753-4849', 'De #466-5936 : viens ici', '2018-10-14 20:11:22', 0, 0),
(1604, 'police', '753-4849', 'GPS: -111.74359893799, -1110.7237548828', '2018-10-14 20:11:22', 0, 0),
(1605, 'ambulance', '827-5847', 'De #466-5936 : blesse ici', '2018-10-14 20:14:18', 0, 0),
(1606, 'ambulance', '827-5847', 'GPS: 415.48306274414, -982.35791015625', '2018-10-14 20:14:18', 0, 0),
(1607, 'ambulance', '614-6017', 'De #466-5936 : blesse ici', '2018-10-14 20:14:18', 1, 0),
(1608, 'ambulance', '614-6017', 'GPS: 415.48306274414, -982.35791015625', '2018-10-14 20:14:18', 1, 0),
(1609, 'ambulance', '827-5847', 'De #753-4849 : alerte coma', '2018-10-14 20:15:47', 0, 0),
(1610, 'ambulance', '827-5847', 'GPS: 415.69757080078, -979.43969726563', '2018-10-14 20:15:47', 0, 0),
(1611, 'ambulance', '614-6017', 'De #753-4849 : alerte coma', '2018-10-14 20:15:47', 1, 0),
(1612, 'ambulance', '614-6017', 'GPS: 415.69757080078, -979.43969726563', '2018-10-14 20:15:47', 1, 0),
(1613, 'ambulance', '827-5847', 'De #466-5936 : Vous avez deux minutes pour récuperer votre ambulance ici ou ça seras l\'amande.', '2018-10-14 20:24:59', 0, 0),
(1647, 'police', '466-5936', 'De #827-5898 : besoin de concess merci', '2018-10-18 19:53:41', 1, 0),
(1639, '827-5898', '614-6017', 't\'es qui wesh?', '2018-10-15 22:13:45', 1, 1),
(1637, 'ambulance', '614-6017', 'GPS: -936.91967773438, 418.99176025391', '2018-10-15 22:13:20', 1, 0),
(1636, 'ambulance', '614-6017', 'De #827-5898 : vite', '2018-10-15 22:13:20', 1, 0),
(1634, 'ambulance', '614-6017', 'De #827-5898 : help', '2018-10-15 22:12:15', 1, 0),
(1635, 'ambulance', '614-6017', 'GPS: -957.73492431641, 416.7626953125', '2018-10-15 22:12:15', 1, 0),
(1633, '753-4849', '466-5936', 'GPS: 719.28692626953, -981.25103759766', '2018-10-15 20:56:59', 1, 1),
(1631, '466-5936', '562-3039', 'GPS: 717.37762451172, -979.88067626953', '2018-10-15 20:51:05', 1, 1),
(1632, '466-5936', '753-4849', 'GPS: 719.28692626953, -981.25103759766', '2018-10-15 20:56:59', 1, 0),
(1625, 'ambulance', '614-6017', 'De #753-4849 : alerte coma', '2018-10-15 19:26:23', 1, 0),
(1626, 'ambulance', '614-6017', 'GPS: 1478.7941894531, -1880.9957275391', '2018-10-15 19:26:23', 1, 0),
(1627, 'ambulance', '614-6017', 'De #753-4849 : alerte coma', '2018-10-15 19:27:45', 1, 0),
(1628, 'ambulance', '614-6017', 'GPS: 1476.4982910156, -1880.8564453125', '2018-10-15 19:27:45', 1, 0),
(1629, 'ambulance', '614-6017', 'oui', '2018-10-15 19:28:03', 1, 1),
(1630, '562-3039', '466-5936', 'GPS: 717.37762451172, -979.88067626953', '2018-10-15 20:51:04', 0, 0),
(1624, 'ambulance', '614-6017', 'GPS: 1478.7941894531, -1880.9957275391', '2018-10-15 19:25:55', 1, 0),
(1623, 'ambulance', '614-6017', 'De #753-4849 : alerte coma', '2018-10-15 19:25:55', 1, 0),
(1622, 'mecano', '827-5847', 'GPS: 498.36465454102, -1312.8999023438', '2018-10-14 20:47:00', 0, 0),
(1621, 'mecano', '827-5847', 'De #466-5936 : Il y a un véhicule de ambulancier au concess, c\'est le concessionnaire qui paye la facture. ', '2018-10-14 20:47:00', 0, 0),
(1619, 'ambulance', '614-6017', 'De #827-5847 : help', '2018-10-14 20:36:49', 1, 0),
(1620, 'ambulance', '614-6017', 'GPS: -77.772483825684, -1088.9005126953', '2018-10-14 20:36:49', 1, 0),
(1618, 'ambulance', '827-5847', 'GPS: -77.772483825684, -1088.9005126953', '2018-10-14 20:36:49', 0, 0),
(1617, 'ambulance', '827-5847', 'De #827-5847 : help', '2018-10-14 20:36:49', 0, 0),
(1616, 'ambulance', '614-6017', 'GPS: -49.197158813477, -1113.1383056641', '2018-10-14 20:24:59', 1, 0),
(1615, 'ambulance', '614-6017', 'De #466-5936 : Vous avez deux minutes pour récuperer votre ambulance ici ou ça seras l\'amande.', '2018-10-14 20:24:59', 1, 0),
(1614, 'ambulance', '827-5847', 'GPS: -49.197158813477, -1113.1383056641', '2018-10-14 20:24:59', 0, 0),
(1530, '427-1473', '639-3852', 'puteuh', '2018-10-13 11:46:02', 0, 0),
(1531, '639-3852', '427-1473', 'puteuh', '2018-10-13 11:46:02', 1, 1),
(1532, '466-5936', '427-1473', 'GPS: -32.475151062012, -1583.5061035156', '2018-10-13 13:46:36', 1, 0),
(1533, '427-1473', '466-5936', 'GPS: -32.475151062012, -1583.5061035156', '2018-10-13 13:46:36', 1, 1),
(1534, '466-5936', '562-3039', 'bite', '2018-10-13 20:00:13', 1, 0),
(1535, '562-3039', '466-5936', 'bite', '2018-10-13 20:00:13', 1, 1),
(1536, '562-3039', '466-5936', 'GPS: -2166.4287109375, 5197.796875', '2018-10-13 20:00:25', 1, 0),
(1537, '466-5936', '562-3039', 'GPS: -2166.4287109375, 5197.796875', '2018-10-13 20:00:25', 1, 1),
(1538, '562-3039', '466-5936', 'GPS: -852.96490478516, -127.4884185791', '2018-10-13 20:06:12', 1, 0),
(1539, '466-5936', '562-3039', 'GPS: -852.96490478516, -127.4884185791', '2018-10-13 20:06:12', 1, 1),
(1558, 'police', '753-4849', 'GPS: 460.73779296875, -994.96984863281', '2018-10-13 22:22:22', 1, 0),
(1557, 'police', '753-4849', 'De #827-5847 : venez me liberer s\' il vous plait', '2018-10-13 22:22:22', 1, 0),
(1542, 'ambulance', '614-6017', 'De #753-4849 : alerte coma', '2018-10-13 21:10:15', 1, 0),
(1543, 'ambulance', '614-6017', 'GPS: 329.37973022461, -1028.9632568359', '2018-10-13 21:10:15', 1, 0),
(1544, 'ambulance', '614-6017', 'GPS: 259.20651245117, -947.8037109375', '2018-10-13 21:10:23', 1, 1),
(1556, '562-3039', '466-5936', 'viens en animal', '2018-10-13 22:20:33', 1, 1),
(1582, '466-5936', '562-3039', 'fou plein de batman dans la charcuterie', '2018-10-13 22:36:24', 1, 1),
(1555, '466-5936', '562-3039', 'viens en animal', '2018-10-13 22:20:33', 1, 0),
(1547, 'ambulance', '614-6017', 'De #753-4849 : alerte coma', '2018-10-13 21:12:03', 1, 0),
(1548, 'ambulance', '614-6017', 'GPS: 337.06369018555, -1014.7736206055', '2018-10-13 21:12:03', 1, 0),
(1581, '562-3039', '466-5936', 'fou plein de batman dans la charcuterie', '2018-10-13 22:36:24', 1, 0),
(1551, 'ambulance', '614-6017', 'De #827-5847 : vite ', '2018-10-13 21:54:28', 1, 0),
(1552, 'ambulance', '614-6017', 'GPS: 441.51693725586, -984.76336669922', '2018-10-13 21:54:28', 1, 0),
(1559, 'police', '466-5936', 'De #827-5847 : venez me liberer s\' il vous plait', '2018-10-13 22:22:22', 1, 0),
(1560, 'police', '466-5936', 'GPS: 460.73779296875, -994.96984863281', '2018-10-13 22:22:22', 1, 0),
(1561, 'police', '753-4849', 'De #827-5847 : je szuis toujour en celule', '2018-10-13 22:22:59', 1, 0),
(1562, 'police', '753-4849', 'GPS: 460.83673095703, -994.03283691406', '2018-10-13 22:22:59', 1, 0),
(1563, 'police', '466-5936', 'De #827-5847 : je szuis toujour en celule', '2018-10-13 22:22:59', 1, 0),
(1564, 'police', '466-5936', 'GPS: 460.83673095703, -994.03283691406', '2018-10-13 22:22:59', 1, 0),
(1565, 'police', '466-5936', 'De #827-5847 : Mr youl', '2018-10-13 22:23:26', 1, 0),
(1566, 'police', '466-5936', 'GPS: 460.25183105469, -994.35485839844', '2018-10-13 22:23:26', 1, 0),
(1567, 'police', '753-4849', 'De #827-5847 : Mr youl', '2018-10-13 22:23:26', 1, 0),
(1568, 'police', '753-4849', 'GPS: 460.25183105469, -994.35485839844', '2018-10-13 22:23:26', 1, 0),
(1569, 'police', '753-4849', 'De #827-5847 : ????', '2018-10-13 22:23:56', 1, 0),
(1570, 'police', '753-4849', 'GPS: 460.25183105469, -994.35485839844', '2018-10-13 22:23:56', 1, 0),
(1571, 'police', '466-5936', 'De #827-5847 : ????', '2018-10-13 22:23:56', 1, 0),
(1572, 'police', '466-5936', 'GPS: 460.25183105469, -994.35485839844', '2018-10-13 22:23:56', 1, 0),
(1573, 'police', '466-5936', 'De #827-5847 : ou ou', '2018-10-13 22:24:43', 1, 0),
(1574, 'police', '466-5936', 'GPS: 461.40621948242, -993.90289306641', '2018-10-13 22:24:43', 1, 0),
(1575, 'police', '753-4849', 'De #827-5847 : ou ou', '2018-10-13 22:24:43', 1, 0),
(1576, 'police', '753-4849', 'GPS: 461.40621948242, -993.90289306641', '2018-10-13 22:24:43', 1, 0),
(1577, 'police', '466-5936', 'De #827-5847 : Mr youl', '2018-10-13 22:24:56', 1, 0),
(1578, 'police', '466-5936', 'GPS: 461.40621948242, -993.90289306641', '2018-10-13 22:24:56', 1, 0),
(1579, 'police', '753-4849', 'De #827-5847 : Mr youl', '2018-10-13 22:24:56', 1, 0),
(1580, 'police', '753-4849', 'GPS: 461.40621948242, -993.90289306641', '2018-10-13 22:24:56', 1, 0),
(1583, '466-5936', '562-3039', 'GPS: -846.32751464844, -160.67420959473', '2018-10-13 23:55:18', 1, 0),
(1584, '562-3039', '466-5936', 'GPS: -846.32751464844, -160.67420959473', '2018-10-13 23:55:18', 1, 1),
(1585, 'cardealer', '562-3039', 'De #827-5847 : Bonjour', '2018-10-14 19:17:01', 1, 0),
(1586, 'cardealer', '562-3039', 'GPS: -37.906150817871, -1103.0482177734', '2018-10-14 19:17:01', 1, 0),
(1587, 'ambulance', '827-5847', 'De #466-5936 : bite dans ta chatte', '2018-10-14 19:36:53', 1, 0),
(1588, 'ambulance', '827-5847', 'GPS: -35.729846954346, -1093.0914306641', '2018-10-14 19:36:53', 1, 0),
(1589, 'ambulance', '614-6017', 'De #466-5936 : bite dans ta chatte', '2018-10-14 19:36:53', 1, 0),
(1590, 'ambulance', '614-6017', 'GPS: -35.729846954346, -1093.0914306641', '2018-10-14 19:36:53', 1, 0),
(1591, 'ambulance', '614-6017', 'De #753-4849 : alerte coma', '2018-10-14 19:37:21', 1, 0),
(1592, 'ambulance', '614-6017', 'GPS: -33.857849121094, -1097.8419189453', '2018-10-14 19:37:21', 1, 0),
(1593, 'ambulance', '827-5847', 'De #753-4849 : alerte coma', '2018-10-14 19:37:21', 0, 0),
(1594, 'ambulance', '827-5847', 'GPS: -33.857849121094, -1097.8419189453', '2018-10-14 19:37:21', 0, 0),
(1595, '562-3039', '614-6017', 'GPS: -33.496849060059, -1100.3443603516', '2018-10-14 19:37:29', 1, 0),
(1596, '614-6017', '562-3039', 'GPS: -33.496849060059, -1100.3443603516', '2018-10-14 19:37:29', 1, 1),
(1597, 'police', '466-5936', 'De #753-4849 : chef vener je ces qui vous a tirer dessue', '2018-10-14 19:50:20', 1, 0),
(1598, 'police', '466-5936', 'GPS: 407.62615966797, -983.93518066406', '2018-10-14 19:50:20', 1, 0),
(1599, 'police', '753-4849', 'De #753-4849 : chef vener je ces qui vous a tirer dessue', '2018-10-14 19:50:20', 0, 0),
(1671, 'mecano', '827-5898', 'GPS: -101.64333343506, -721.34631347656', '2018-10-19 18:59:41', 1, 0),
(1670, 'mecano', '827-5898', 'De #466-5936 : Voiture a mettre a la fouriere ici', '2018-10-19 18:59:41', 1, 0),
(1669, '466-5936', '696-4507', 'jarrive monsieur', '2018-10-19 16:14:31', 1, 1),
(1668, '696-4507', '466-5936', 'jarrive monsieur', '2018-10-19 16:14:31', 0, 0),
(1667, '696-4507', '466-5936', 'besoin d\'un gps ici', '2018-10-19 16:14:06', 1, 1),
(1666, '466-5936', '696-4507', 'besoin d\'un gps ici', '2018-10-19 16:14:06', 1, 0),
(1665, '696-4507', '466-5936', 'GPS: 141.95137023926, -2203.1616210938', '2018-10-19 16:14:01', 1, 1),
(1664, '466-5936', '696-4507', 'GPS: 141.95137023926, -2203.1616210938', '2018-10-19 16:14:01', 1, 0),
(1663, '696-4527', '466-5936', 'GPS: 131.44953918457, -2195.8037109375', '2018-10-19 16:12:25', 1, 1),
(1658, 'police', '466-5936', 'GPS: -212.73020935059, -1326.9060058594', '2018-10-18 20:03:18', 1, 0),
(1657, 'police', '466-5936', 'De #696-4507 : JOKER AU GARAGE TUNING URGENT MERCI ', '2018-10-18 20:03:18', 1, 0),
(1656, 'ambulance', '614-6017', 'GPS: -210.40078735352, -1337.1578369141', '2018-10-18 19:59:41', 1, 0),
(1655, 'ambulance', '614-6017', 'De #466-5936 : blesser ici', '2018-10-18 19:59:41', 1, 0),
(1659, '696-4507', '466-5936', 'inconue dangeureux', '2018-10-18 20:30:46', 1, 0),
(1653, '696-4507', '466-5936', 'jarrive desuite monsieur', '2018-10-18 19:54:42', 1, 0),
(1652, '696-4507', '466-5936', 'besoin d\'un gps ici', '2018-10-18 19:54:02', 1, 1),
(1662, '696-4527', '466-5936', 'GPS: 143.84335327148, -2203.2216796875', '2018-10-19 16:06:23', 1, 1),
(1646, '696-4527', '466-5936', 'GPS: 132.32998657227, -2196.4807128906', '2018-10-18 19:49:32', 1, 1),
(1650, '696-4507', '466-5936', 'GPS: -208.18054199219, -1328.0357666016', '2018-10-18 19:53:56', 1, 1),
(1644, '696-4527', '466-5936', 'besoin gps ici', '2018-10-18 19:45:35', 1, 1),
(1661, '696-4527', '466-5936', 'Besoin d\'une livraison de gps ici.', '2018-10-19 16:06:20', 1, 1),
(1643, '696-4527', '466-5936', 'GPS: 95.220909118652, -2228.828125', '2018-10-18 19:45:31', 1, 1),
(1648, 'police', '466-5936', 'GPS: -37.298179626465, -1101.3474121094', '2018-10-18 19:53:41', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `phone_users_contacts`
--

DROP TABLE IF EXISTS `phone_users_contacts`;
CREATE TABLE IF NOT EXISTS `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `phone_users_contacts`
--

INSERT INTO `phone_users_contacts` (`id`, `identifier`, `number`, `display`) VALUES
(7, 'steam:11000010adb7315', '614-6017', 'Lucius Fox'),
(8, 'steam:1100001075e32e8', '466-5936', 'Jeremiah Valeska'),
(10, 'steam:110000103363ad3', '466-5936', 'Joker'),
(11, 'steam:11000010adb7315', '531-3502', 'Deadshot'),
(12, 'steam:11000010adb7315', '906-8228', 'Red Hood'),
(13, 'steam:11000010adb7315', '562-3039', 'Batman'),
(14, 'steam:1100001075e32e8', '562-3039', 'Bruce Wayne'),
(15, 'steam:110000103363ad3', '906-8228', 'Bryan'),
(16, 'steam:11000010ab4cd8a', '531-3502', 'Jack '),
(18, 'steam:1100001075e32e8', '41525', 'Damian Wayne'),
(19, 'steam:11000011ca16ad3', '84053', 'lucius fox'),
(20, 'steam:11000010adb7315', '827-5849', 'John Doe j\'vais te baiser'),
(66, 'steam:1100001349f2f84', '562-3039', 'Bruce Wayne'),
(22, 'steam:11000010adb7315', '12136', 'Deathstroke je te baise '),
(23, 'steam:110000107450056', '87302', 'Joker'),
(24, 'steam:11000010ab4cd8a', '466-5936', 'Joker'),
(46, 'steam:11000010adb7315', '440-5316', 'Nightwing'),
(26, 'steam:11000010cdf8a05', '906-8228', 'Red Hood'),
(27, 'steam:11000010cdf8a05', '466-5936', 'Joker'),
(28, 'steam:11000010adb7315', '427-1473', 'Harvey Dent'),
(30, 'steam:110000104b00232', '104-0089', 'jeje'),
(31, 'steam:110000107e7bba6', '104-0089', 'Jeje Montana'),
(32, 'steam:110000104b00232', '249-9884', 'tony'),
(33, 'steam:110000107d2abb5', '501-1190', 'dim'),
(34, 'steam:110000107e7bba6', '501-1190', 'Jean Montana'),
(35, 'steam:110000107d2abb5', '249-9884', 'tony'),
(36, 'steam:11000010cdf8a05', '104-0089', 'Gégé Montana'),
(37, 'steam:110000107d2abb5', '771-1741', 'masque noire'),
(38, 'steam:11000010cdf8a05', '531-3502', 'Deadshot'),
(39, 'steam:11000010e8d0f59', '466-5936', 'Joker'),
(40, 'steam:110000103363ad3', '614-6017', 'fox'),
(41, 'steam:1100001075e32e8', '531-3502', 'Jack Mushroom'),
(42, 'steam:11000010adb7315', '906-8228', 'Deathstroke'),
(43, 'steam:11000010b3332ad', '562-3039', 'Bruce'),
(44, 'steam:1100001075e32e8', '827-5849', 'John Doe'),
(45, 'steam:11000010e8d0f59', '614-6017', 'Lucius Fox'),
(47, 'steam:110000111365654', '466-5936', 'Joker'),
(65, 'steam:1100001349f2f84', '466-5936', 'Joker'),
(50, 'steam:110000103363ad3', '771-1741', 'GUS'),
(51, 'steam:11000010cdf8a05', '822-5198', 'ScareCrow'),
(53, 'steam:110000132c02bc7', '859-9967', 'Jacque Miller'),
(54, 'steam:11000010cd35bcb', '416-0570', 'Chef Dorian monbue '),
(55, 'steam:11000010adb7315', '646-7832', 'Andrew le mort'),
(56, 'steam:11000011076aa12', '466-5936', 'Jok'),
(57, 'steam:11000010cdf8a05', '207-0046', 'Black Mask'),
(58, 'steam:11000010adb7315', '207-0046', 'Black mask'),
(59, 'steam:11000011076aa12', '207-0046', 'BLACK'),
(60, 'steam:11000010adb7315', '', 'Nouveau Contact'),
(61, 'steam:11000010aea0a4b', '771-1741', 'Gus'),
(62, 'steam:11000010cdf8a05', '416-0570', 'Jaryn'),
(63, 'steam:11000010adb7315', '777', 'deathstroke'),
(64, 'steam:11000011a1d87c9', '562-3039', 'BRUCE WAYNE'),
(67, 'steam:110000111365654', '562-3039', 'Bruce wayne'),
(68, 'steam:11000010e8d0f59', '427-1473', 'Harvey Dent'),
(69, 'steam:11000010adb7315', '753-4849', 'Moujib'),
(70, 'steam:11000010adb7315', '696-4507', 'Digilux'),
(71, 'steam:1100001165b855a', '614-6017', 'Lucious Fox'),
(72, 'steam:1100001165b855a', '696-4507', 'Patron Digilux'),
(75, 'steam:110000114328283', '562-3039', 'bruce wayne concesse');

-- --------------------------------------------------------

--
-- Structure de la table `properties`
--

DROP TABLE IF EXISTS `properties`;
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000);

-- --------------------------------------------------------

--
-- Structure de la table `qalle_brottsregister`
--

DROP TABLE IF EXISTS `qalle_brottsregister`;
CREATE TABLE IF NOT EXISTS `qalle_brottsregister` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofcrime` varchar(255) NOT NULL,
  `crime` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rented_vehicles`
--

DROP TABLE IF EXISTS `rented_vehicles`;
CREATE TABLE IF NOT EXISTS `rented_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rented_vehicles_pub`
--

DROP TABLE IF EXISTS `rented_vehicles_pub`;
CREATE TABLE IF NOT EXISTS `rented_vehicles_pub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `plate` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `player_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `shops`
--

DROP TABLE IF EXISTS `shops`;
CREATE TABLE IF NOT EXISTS `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `shops`
--

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
(1, 'TwentyFourSeven', 'bread', 6),
(2, 'TwentyFourSeven', 'water', 5),
(3, 'RobsLiquor', 'bread', 4),
(4, 'RobsLiquor', 'water', 4),
(5, 'LTDgasoline', 'bread', 6),
(6, 'LTDgasoline', 'water', 5),
(8, 'TwentyFourSeven', 'digiluxenergy', 10),
(9, 'RobsLiquor', 'digiluxenergy', 10),
(10, 'LTDgasoline', 'digiluxenergy', 10),
(11, 'LTDgasoline', 'croquettes', 45),
(12, 'Digilux', 'digiluxenergy', 8),
(13, 'Digilux', 'phone', 1000),
(14, 'Digilux', 'chocolatebardigilux', 15),
(15, 'LTDgasoline', 'chocolatebardigilux', 19),
(16, 'TwentyFourSeven', 'chocolatebardigilux', 18),
(17, 'RobsLiquor', 'chocolatebardigilux', 19),
(18, 'Digilux', 'gpsdigilux', 450);

-- --------------------------------------------------------

--
-- Structure de la table `society_moneywash`
--

DROP TABLE IF EXISTS `society_moneywash`;
CREATE TABLE IF NOT EXISTS `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `truck_inventory`
--

DROP TABLE IF EXISTS `truck_inventory`;
CREATE TABLE IF NOT EXISTS `truck_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `itemt` varchar(50) DEFAULT NULL,
  `owned` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item` (`item`,`plate`)
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin,
  `job` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT '0',
  `loadout` longtext COLLATE utf8mb4_bin,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_bin,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `animal` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `vote` varchar(254) COLLATE utf8mb4_bin DEFAULT NULL,
  `isalife` int(2) DEFAULT '1',
  `isDead` bit(1) DEFAULT b'0',
  `tattoos` varchar(255) COLLATE utf8mb4_bin DEFAULT '{}',
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `status`, `last_property`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `animal`, `vote`, `isalife`, `isDead`, `tattoos`, `phone_number`) VALUES
('steam:1100001024e2439', 'license:df02fbab525f96d3af6386104f805ec6d401c713', 3090, 'John White', '{\"chain_2\":0,\"torso_2\":3,\"eyebrows_4\":0,\"mask_1\":0,\"makeup_1\":0,\"hair_1\":0,\"eyebrows_2\":10,\"pants_2\":1,\"makeup_3\":0,\"lipstick_4\":0,\"hair_color_1\":0,\"glasses_2\":0,\"beard_3\":0,\"beard_2\":10,\"hair_color_2\":0,\"eyebrows_1\":0,\"tshirt_1\":122,\"lipstick_2\":0,\"bproof_1\":0,\"hair_2\":0,\"pants_1\":67,\"decals_1\":0,\"ears_2\":0,\"helmet_2\":0,\"torso_1\":243,\"bags_1\":0,\"beard_1\":10,\"bags_2\":0,\"beard_4\":0,\"arms\":38,\"eyebrows_3\":0,\"lipstick_1\":0,\"mask_2\":0,\"makeup_4\":0,\"tshirt_2\":0,\"bproof_2\":0,\"sex\":0,\"face\":0,\"age_2\":0,\"helmet_1\":-1,\"age_1\":2,\"shoes_2\":12,\"lipstick_3\":0,\"ears_1\":-1,\"makeup_2\":0,\"decals_2\":0,\"shoes_1\":32,\"chain_1\":0,\"skin\":10,\"glasses_1\":0}', 'unemployed', 0, '[]', '{\"x\":-34.768939971924,\"y\":-1103.6839599609,\"z\":26.422348022461}', 4150, 0, 'user', '[{\"name\":\"hunger\",\"percent\":89.2,\"val\":892000},{\"name\":\"thirst\",\"percent\":78.8,\"val\":788000},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0},{\"name\":\"drug\",\"percent\":0.0,\"val\":0}]', NULL, 'John', 'White', '16/06/1987', 'm', '185', NULL, NULL, 1, b'0', '[{\"collection\":\"mpimportexport_overlays\",\"texture\":4},{\"collection\":\"mpimportexport_overlays\",\"texture\":4},{\"collection\":\"mpimportexport_overlays\",\"texture\":9}]', '733-9416'),
('steam:110000103363ad3', 'license:6297248281813a8696a5db8860c1d4c8c986afe2', 35815, 'Jack Mushroom', '{\"beard_1\":7,\"makeup_2\":0,\"hair_2\":0,\"chain_1\":0,\"bags_2\":0,\"ears_2\":0,\"mask_1\":0,\"age_1\":2,\"eyebrows_1\":0,\"eyebrows_3\":0,\"tshirt_2\":0,\"lipstick_1\":0,\"lipstick_3\":0,\"pants_2\":0,\"eyebrows_4\":0,\"torso_2\":0,\"tshirt_1\":22,\"bags_1\":0,\"shoes_2\":0,\"pants_1\":25,\"bproof_1\":0,\"makeup_3\":0,\"chain_2\":0,\"hair_color_2\":0,\"decals_2\":0,\"beard_4\":0,\"lipstick_4\":0,\"glasses_1\":0,\"face\":44,\"decals_1\":0,\"makeup_1\":0,\"age_2\":0,\"ears_1\":-1,\"beard_3\":0,\"helmet_1\":-1,\"sex\":0,\"makeup_4\":0,\"hair_1\":2,\"bproof_2\":0,\"torso_1\":11,\"arms\":4,\"shoes_1\":19,\"skin\":0,\"lipstick_2\":0,\"helmet_2\":0,\"hair_color_1\":28,\"eyebrows_2\":8,\"beard_2\":10,\"mask_2\":0,\"glasses_2\":0}', 'police', 5, '[{\"name\":\"WEAPON_NIGHTSTICK\",\"ammo\":0,\"label\":\"Matraque\"},{\"name\":\"WEAPON_PISTOL50\",\"ammo\":248,\"label\":\"Pistolet calibre 50\"},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":121,\"label\":\"Fusil d\'assaut\"},{\"name\":\"WEAPON_ASSAULTSHOTGUN\",\"ammo\":250,\"label\":\"Carabine d\'assaut\"},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":250,\"label\":\"Tazer\"},{\"name\":\"WEAPON_HEAVYSNIPER\",\"ammo\":250,\"label\":\"Fusil de sniper lourd\"},{\"name\":\"WEAPON_PETROLCAN\",\"ammo\":3964,\"label\":\"Jerrican d\'essence\"},{\"name\":\"WEAPON_MUSKET\",\"ammo\":250,\"label\":\"Mousquet\"},{\"name\":\"WEAPON_HEAVYSNIPER_MK2\",\"ammo\":250,\"label\":\"Heavy Sniper Mk II\"}]', '{\"z\":30.687189102173,\"y\":-993.115234375,\"x\":452.18157958984}', 521268, 4, 'superadmin', '[{\"val\":962200,\"percent\":96.22,\"name\":\"hunger\"},{\"val\":942850,\"percent\":94.285,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"},{\"val\":0,\"percent\":0.0,\"name\":\"drug\"}]', NULL, 'Jack', 'Mushroom', '10071986', 'm', '180', NULL, NULL, 1, b'0', '[{\"texture\":3,\"collection\":\"mpbusiness_overlays\"},{\"texture\":21,\"collection\":\"mpbusiness_overlays\"},{\"texture\":12,\"collection\":\"mpbiker_overlays\"},{\"texture\":15,\"collection\":\"mpbiker_overlays\"},{\"texture\":19,\"collection\":\"mpbiker_overlays\"}]', '531-3502'),
('steam:1100001075e32e8', 'license:982b378292ea601abb82e72096358d740dc6f4f0', 100, 'Victor Stone', '{\"sex\":0,\"tshirt_1\":10,\"hair_2\":0,\"bproof_1\":0,\"tshirt_2\":6,\"lipstick_4\":0,\"beard_1\":2,\"makeup_4\":0,\"bproof_2\":0,\"lipstick_1\":0,\"lipstick_2\":0,\"torso_1\":28,\"eyebrows_3\":0,\"chain_1\":12,\"makeup_3\":0,\"chain_2\":2,\"bags_2\":0,\"glasses_1\":6,\"eyebrows_1\":0,\"arms\":1,\"eyebrows_4\":0,\"mask_1\":0,\"glasses_2\":0,\"lipstick_3\":0,\"pants_1\":10,\"shoes_1\":10,\"beard_2\":10,\"ears_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"bags_1\":0,\"hair_color_2\":0,\"face\":2,\"decals_1\":0,\"mask_2\":0,\"makeup_2\":0,\"decals_2\":0,\"torso_2\":0,\"helmet_1\":-1,\"pants_2\":0,\"beard_3\":1,\"hair_1\":1,\"skin\":15,\"age_2\":7,\"ears_1\":-1,\"shoes_2\":0,\"eyebrows_2\":10,\"beard_4\":0,\"age_1\":9,\"makeup_1\":0}', 'ambulance', 3, '[{\"ammo\":250,\"name\":\"WEAPON_ASSAULTSMG\",\"label\":\"Smg d\'assaut\"},{\"ammo\":250,\"name\":\"WEAPON_ADVANCEDRIFLE\",\"label\":\"Fusil avancé\"},{\"ammo\":250,\"name\":\"WEAPON_BULLPUPSHOTGUN\",\"label\":\"Carabine bullpup\"},{\"ammo\":239,\"name\":\"WEAPON_HEAVYSNIPER\",\"label\":\"Fusil de sniper lourd\"},{\"ammo\":250,\"name\":\"WEAPON_SPECIALCARBINE\",\"label\":\"Carabine spéciale\"},{\"ammo\":250,\"name\":\"WEAPON_MUSKET\",\"label\":\"Mousquet\"},{\"ammo\":250,\"name\":\"WEAPON_COMBATPDW\",\"label\":\"Arme de défense personnelle\"},{\"ammo\":0,\"name\":\"WEAPON_HATCHET\",\"label\":\"Hachette\"},{\"ammo\":0,\"name\":\"WEAPON_SWITCHBLADE\",\"label\":\"Couteau à cran d\'arrêt\"},{\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\",\"label\":\"Lampe torche\"},{\"ammo\":0,\"name\":\"GADGET_PARACHUTE\",\"label\":\"Parachute\"},{\"ammo\":250,\"name\":\"WEAPON_COMBATMG_MK2\",\"label\":\"Combat MG Mk II\"},{\"ammo\":249,\"name\":\"WEAPON_PISTOL_MK2\",\"label\":\"Pistol Mk II\"}]', '{\"x\":245.69613647461,\"z\":29.647994995117,\"y\":-1366.0562744141}', 406929, 4, 'superadmin', '[{\"percent\":37.54,\"val\":375400,\"name\":\"hunger\"},{\"percent\":31.31,\"val\":313100,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"},{\"percent\":0.0,\"val\":0,\"name\":\"drug\"}]', NULL, 'Lucius', 'Fox', '06-06-1995', 'm', '189', NULL, NULL, 1, b'0', '{}', '614-6017'),
('steam:11000010a9fabe8', 'license:f3c31adec95906ce7edb863e84943f2c9dd5e566', 1500, 'John Knight', '{\"tshirt_2\":1,\"ears_1\":-1,\"glasses_1\":17,\"makeup_3\":0,\"face\":0,\"bproof_2\":0,\"age_2\":0,\"helmet_1\":-1,\"beard_2\":10,\"arms\":4,\"eyebrows_1\":32,\"makeup_4\":0,\"beard_3\":0,\"shoes_2\":15,\"hair_2\":0,\"pants_2\":0,\"makeup_2\":0,\"hair_1\":3,\"bags_2\":0,\"eyebrows_3\":0,\"hair_color_1\":0,\"beard_1\":2,\"lipstick_4\":0,\"lipstick_3\":0,\"pants_1\":10,\"skin\":0,\"shoes_1\":11,\"helmet_2\":0,\"ears_2\":0,\"chain_2\":0,\"lipstick_2\":0,\"bags_1\":0,\"mask_1\":0,\"sex\":0,\"mask_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"lipstick_1\":0,\"torso_1\":101,\"tshirt_1\":31,\"decals_1\":0,\"makeup_1\":0,\"bproof_1\":0,\"torso_2\":2,\"eyebrows_4\":0,\"beard_4\":0,\"chain_1\":20,\"eyebrows_2\":10,\"age_1\":0,\"glasses_2\":0}', 'unemployed', 0, '[]', '{\"x\":220.8858795166,\"y\":-790.65295410156,\"z\":30.753271102905}', 16000, 0, 'user', '[{\"name\":\"hunger\",\"val\":447300,\"percent\":44.73},{\"name\":\"thirst\",\"val\":420950,\"percent\":42.095},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"drug\",\"val\":0,\"percent\":0.0}]', NULL, 'John', 'Knight', '18/02/1995', 'm', '169', NULL, NULL, 1, b'0', '{}', '425-1515'),
('steam:11000010adb7315', 'license:4dab0969f0b1e0c19bd389bf43906278f6b3ba01', 499999, 'Arthur Fleck', '{\"lipstick_1\":8,\"mask_1\":0,\"makeup_2\":0,\"hair_color_1\":0,\"torso_1\":230,\"tshirt_2\":0,\"beard_1\":2,\"ears_1\":2,\"ears_2\":0,\"helmet_1\":46,\"pants_1\":96,\"chain_2\":0,\"tshirt_1\":90,\"bags_2\":0,\"bproof_2\":1,\"lipstick_3\":53,\"eyebrows_3\":0,\"helmet_2\":0,\"makeup_4\":29,\"bproof_1\":0,\"shoes_1\":24,\"beard_2\":0,\"makeup_3\":36,\"sex\":0,\"face\":44,\"mask_2\":3,\"makeup_1\":45,\"beard_3\":19,\"glasses_1\":0,\"hair_2\":2,\"glasses_2\":2,\"eyebrows_4\":21,\"lipstick_2\":0,\"skin\":4,\"decals_1\":0,\"beard_4\":0,\"eyebrows_1\":0,\"shoes_2\":0,\"hair_color_2\":3,\"bags_1\":0,\"eyebrows_2\":10,\"arms\":1,\"age_2\":0,\"glasses_\":0,\"hair_1\":4,\"torso_2\":6,\"lipstick_4\":0,\"decals_2\":0,\"pants_2\":0,\"age_1\":10,\"chain_1\":38}', 'police', 6, '[{\"ammo\":0,\"label\":\"Matraque\",\"name\":\"WEAPON_NIGHTSTICK\"},{\"ammo\":250,\"label\":\"Tazer\",\"name\":\"WEAPON_STUNGUN\"},{\"ammo\":154,\"label\":\"Pistol Mk II\",\"name\":\"WEAPON_PISTOL_MK2\"}]', '{\"x\":-90.660194396973,\"z\":25.797180175781,\"y\":-1121.3596191406}', 379025, 4, 'superadmin', '[{\"percent\":10.43,\"val\":104300,\"name\":\"hunger\"},{\"percent\":50.645,\"val\":506450,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"},{\"percent\":0.0,\"val\":0,\"name\":\"drug\"}]', NULL, 'Jeremiah', 'Valeska', '06/05/1989', 'm', '190', NULL, NULL, 1, b'0', '[{\"collection\":\"mpbusiness_overlays\",\"texture\":4},{\"collection\":\"mpbusiness_overlays\",\"texture\":21},{\"collection\":\"mpbusiness_overlays\",\"texture\":21},{\"collection\":\"mphipster_overlays\",\"texture\":40},{\"collection\":\"mpbiker_overlays\",\"texture\":25}]', '466-5936'),
('steam:11000010d17d505', 'license:aacb871f7392cb16cc60f43829937c7f841b3175', 690, 'Ricardo Rocha', '{\"pants_1\":67,\"beard_2\":10,\"ears_1\":-1,\"beard_3\":0,\"hair_color_2\":0,\"tshirt_2\":0,\"makeup_2\":0,\"face\":0,\"hair_2\":0,\"torso_1\":50,\"glasses_1\":0,\"age_1\":0,\"decals_2\":0,\"chain_1\":0,\"beard_4\":0,\"glasses_2\":0,\"decals_1\":0,\"helmet_2\":0,\"mask_1\":0,\"age_2\":0,\"helmet_1\":-1,\"lipstick_1\":0,\"hair_color_1\":0,\"beard_1\":10,\"eyebrows_2\":0,\"eyebrows_1\":0,\"chain_2\":0,\"tshirt_1\":15,\"makeup_4\":0,\"arms\":17,\"lipstick_4\":0,\"shoes_2\":1,\"pants_2\":3,\"makeup_1\":0,\"lipstick_3\":0,\"ears_2\":0,\"bproof_1\":0,\"lipstick_2\":0,\"bags_1\":0,\"eyebrows_4\":0,\"hair_1\":19,\"makeup_3\":0,\"skin\":19,\"mask_2\":0,\"torso_2\":0,\"bags_2\":0,\"shoes_1\":26,\"sex\":0,\"eyebrows_3\":0,\"bproof_2\":0}', 'police', 4, '[{\"label\":\"Matraque\",\"ammo\":0,\"name\":\"WEAPON_NIGHTSTICK\"},{\"label\":\"Pistolet de combat\",\"ammo\":227,\"name\":\"WEAPON_COMBATPISTOL\"},{\"label\":\"Smg d\'assaut\",\"ammo\":231,\"name\":\"WEAPON_ASSAULTSMG\"},{\"label\":\"Fusil d\'assaut\",\"ammo\":51,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"label\":\"Fusil à pompe\",\"ammo\":247,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"label\":\"Tazer\",\"ammo\":250,\"name\":\"WEAPON_STUNGUN\"},{\"label\":\"Grenade à gaz bz\",\"ammo\":21,\"name\":\"WEAPON_BZGAS\"},{\"label\":\"Extincteur\",\"ammo\":500,\"name\":\"WEAPON_FIREEXTINGUISHER\"},{\"label\":\"Jerrican d\'essence\",\"ammo\":500,\"name\":\"WEAPON_PETROLCAN\"},{\"label\":\"Couteau à cran d\'arrêt\",\"ammo\":0,\"name\":\"WEAPON_SWITCHBLADE\"},{\"label\":\"Lampe torche\",\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\"}]', '{\"z\":29.26721572876,\"y\":-982.85913085938,\"x\":409.75650024414}', 1616, 0, 'user', '[{\"percent\":97.57,\"name\":\"hunger\",\"val\":975700},{\"percent\":96.325,\"name\":\"thirst\",\"val\":963250},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0},{\"percent\":0.0,\"name\":\"drug\",\"val\":0}]', NULL, 'Ricardo', 'Rocha', '10/06/1998', 'm', '195', NULL, NULL, 1, b'0', '{}', '639-3852'),
('steam:11000010e8d0f59', 'license:ebd1998dadb166a4183d61790000853736177648', 0, 'Batman / Bruce Wayne', '{\"makeup_1\":0,\"bproof_1\":0,\"eyebrows_1\":1,\"bags_2\":0,\"glasses_2\":0,\"beard_3\":0,\"torso_2\":0,\"chain_1\":38,\"chain_2\":15,\"beard_4\":2,\"pants_2\":0,\"hair_1\":55,\"lipstick_2\":0,\"eyebrows_3\":63,\"pants_1\":10,\"arms\":12,\"helmet_1\":-1,\"glasses_1\":0,\"skin\":0,\"eyebrows_4\":63,\"tshirt_2\":0,\"beard_2\":0,\"hair_2\":0,\"mask_2\":0,\"age_1\":0,\"face\":0,\"sex\":0,\"bproof_2\":0,\"shoes_2\":0,\"helmet_2\":0,\"mask_1\":0,\"lipstick_3\":0,\"ears_1\":-1,\"hair_color_2\":0,\"beard_1\":0,\"ears_2\":0,\"makeup_3\":0,\"decals_2\":0,\"tshirt_1\":10,\"age_2\":0,\"eyebrows_2\":10,\"decals_1\":0,\"lipstick_4\":0,\"makeup_2\":0,\"makeup_4\":0,\"lipstick_1\":0,\"shoes_1\":10,\"hair_color_1\":0,\"torso_1\":28,\"bags_1\":0}', 'cardealer', 1, '[{\"ammo\":250,\"name\":\"WEAPON_APPISTOL\",\"label\":\"Pistolet automatique\"},{\"ammo\":250,\"name\":\"WEAPON_STUNGUN\",\"label\":\"Tazer\"},{\"ammo\":250,\"name\":\"WEAPON_HEAVYSNIPER\",\"label\":\"Fusil de sniper lourd\"},{\"ammo\":25,\"name\":\"WEAPON_STICKYBOMB\",\"label\":\"Bombe collante\"},{\"ammo\":25,\"name\":\"WEAPON_SMOKEGRENADE\",\"label\":\"Grenade fumigène\"},{\"ammo\":25,\"name\":\"WEAPON_BZGAS\",\"label\":\"Grenade à gaz bz\"},{\"ammo\":25,\"name\":\"WEAPON_MOLOTOV\",\"label\":\"Cocktail molotov\"},{\"ammo\":5,\"name\":\"WEAPON_PROXMINE\",\"label\":\"Mine de proximité\"},{\"ammo\":10,\"name\":\"WEAPON_SNOWBALL\",\"label\":\"Boule de neige\"},{\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\",\"label\":\"Lampe torche\"}]', '{\"x\":456.4853515625,\"z\":26.67423248291,\"y\":-985.02819824219}', 219690, 4, 'superadmin', '[{\"percent\":45.56,\"val\":455600,\"name\":\"hunger\"},{\"percent\":43.34,\"val\":433400,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"},{\"percent\":0.0,\"val\":0,\"name\":\"drug\"}]', NULL, 'Bruce', 'Wayne', '30/03/1939', 'm', '188', NULL, NULL, 1, b'0', '{}', '562-3039'),
('steam:110000111365654', 'license:7b03e158366bbce01651b78995ce802996e0f5cc', 7148, 'Harvey Dent', '{\"eyebrows_3\":0,\"eyebrows_1\":5,\"chain_1\":12,\"tshirt_1\":4,\"lipstick_2\":0,\"hair_color_1\":0,\"hair_1\":18,\"age_2\":0,\"pants_1\":10,\"ears_1\":-1,\"mask_2\":0,\"pants_2\":0,\"decals_2\":0,\"arms\":77,\"age_1\":0,\"shoes_2\":0,\"hair_color_2\":0,\"decals_1\":0,\"makeup_1\":53,\"ears_2\":0,\"helmet_2\":0,\"bags_2\":0,\"bproof_2\":0,\"helmet_1\":-1,\"eyebrows_4\":0,\"beard_1\":0,\"sex\":0,\"makeup_4\":26,\"glasses_1\":0,\"eyebrows_2\":5,\"lipstick_1\":0,\"tshirt_2\":1,\"mask_1\":0,\"beard_4\":0,\"hair_2\":0,\"skin\":0,\"makeup_2\":0,\"chain_2\":2,\"bags_1\":0,\"shoes_1\":10,\"face\":0,\"beard_3\":0,\"lipstick_3\":0,\"torso_2\":0,\"glasses_2\":0,\"beard_2\":0,\"lipstick_4\":0,\"bproof_1\":0,\"makeup_3\":19,\"torso_1\":10}', 'unemployed', 0, '[]', '{\"x\":221.48924255371,\"z\":30.737516403198,\"y\":-791.87817382813}', 17, 0, 'user', '[{\"percent\":26.75,\"val\":267500,\"name\":\"hunger\"},{\"percent\":15.125,\"val\":151250,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"},{\"percent\":0.0,\"val\":0,\"name\":\"drug\"}]', NULL, 'Harvey', 'Dent', '28/05/1992', 'm', '181', NULL, NULL, 1, b'0', '{}', '427-1473'),
('steam:110000114328283', 'license:9f0e9e27ec8f547a2c2095bc791cfd7aa3000db9', -1530, 'marcussalvator', '{\"pants_1\":13,\"bags_1\":0,\"shoes_2\":1,\"eyebrows_3\":0,\"lipstick_1\":0,\"pants_2\":0,\"beard_1\":15,\"shoes_1\":31,\"makeup_1\":0,\"chain_1\":0,\"lipstick_3\":0,\"hair_color_2\":0,\"age_2\":0,\"hair_1\":3,\"face\":0,\"bags_2\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"torso_2\":2,\"makeup_4\":0,\"tshirt_2\":0,\"bproof_2\":0,\"beard_2\":10,\"helmet_2\":0,\"mask_1\":0,\"hair_2\":0,\"lipstick_4\":0,\"age_1\":0,\"lipstick_2\":0,\"arms\":0,\"beard_4\":0,\"hair_color_1\":0,\"tshirt_1\":0,\"makeup_2\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"sex\":0,\"ears_2\":0,\"skin\":0,\"chain_2\":0,\"bproof_1\":0,\"helmet_1\":-1,\"mask_2\":0,\"decals_2\":0,\"beard_3\":0,\"torso_1\":0,\"ears_1\":-1,\"eyebrows_2\":0,\"decals_1\":0}', 'digilux', 1, '[]', '{\"y\":-786.576171875,\"z\":30.650394439697,\"x\":232.1201171875}', 22622, 0, 'user', '[{\"name\":\"hunger\",\"val\":914200,\"percent\":91.42},{\"name\":\"thirst\",\"val\":870550,\"percent\":87.055},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"drug\",\"val\":0,\"percent\":0.0}]', NULL, 'Marcus', 'Salvator', '16/06/1988', 'm', '160', NULL, NULL, 1, b'0', '{}', '696-4507'),
('steam:1100001165b855a', 'license:4c46a48a2221aa8065e068f4ce9765b2d8c90344', 36754970, 'Clark Kent', '{\"sex\":0,\"mask_1\":0,\"makeup_1\":0,\"bags_2\":0,\"chain_2\":0,\"beard_4\":0,\"age_2\":0,\"eyebrows_3\":0,\"tshirt_1\":16,\"hair_color_1\":15,\"decals_1\":0,\"arms\":1,\"lipstick_3\":0,\"eyebrows_4\":0,\"face\":2,\"beard_1\":3,\"beard_3\":14,\"hair_1\":10,\"hair_2\":5,\"decals_2\":0,\"helmet_2\":0,\"tshirt_2\":0,\"pants_2\":0,\"makeup_2\":0,\"age_1\":0,\"shoes_1\":12,\"torso_1\":122,\"skin\":5,\"lipstick_2\":0,\"glasses_2\":4,\"eyebrows_2\":10,\"bproof_2\":0,\"torso_2\":0,\"shoes_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"mask_2\":0,\"ears_2\":0,\"pants_1\":63,\"makeup_4\":0,\"chain_1\":0,\"bags_1\":0,\"bproof_1\":0,\"glasses_\":0,\"makeup_3\":0,\"lipstick_1\":0,\"hair_color_2\":14,\"helmet_1\":-1,\"lipstick_4\":0,\"eyebrows_1\":0,\"beard_2\":10}', 'cardealer', 3, '[]', '{\"x\":2898.0346679688,\"y\":3817.6726074219,\"z\":52.660530090332}', 50900, 4, 'superadmin', '[{\"name\":\"hunger\",\"percent\":67.04,\"val\":670400},{\"name\":\"thirst\",\"percent\":50.515,\"val\":505150},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0},{\"name\":\"drug\",\"percent\":0.0,\"val\":0}]', NULL, 'Oliver', 'Queen', '26/04/1988', 'm', '200', NULL, NULL, 1, b'0', '{}', '827-5898'),
('steam:11000011b3331ff', 'license:cb4e24bc9d79fd0730aad895b6071c444aa53f77', 190, 'Kevin Facon', '{\"torso_1\":74,\"makeup_3\":0,\"eyebrows_2\":0,\"eyebrows_1\":0,\"bproof_2\":0,\"lipstick_4\":0,\"decals_1\":0,\"tshirt_2\":0,\"beard_4\":0,\"hair_1\":3,\"eyebrows_3\":0,\"eyebrows_4\":0,\"pants_2\":0,\"beard_3\":0,\"lipstick_1\":0,\"hair_2\":0,\"mask_1\":0,\"helmet_1\":-1,\"age_2\":0,\"decals_2\":0,\"sex\":0,\"chain_2\":0,\"mask_2\":0,\"tshirt_1\":0,\"ears_2\":0,\"ears_1\":-1,\"shoes_2\":0,\"age_1\":0,\"lipstick_2\":0,\"chain_1\":0,\"lipstick_3\":0,\"shoes_1\":9,\"bproof_1\":0,\"helmet_2\":0,\"glasses_1\":1,\"bags_1\":0,\"beard_2\":9,\"hair_color_1\":0,\"pants_1\":0,\"makeup_4\":0,\"glasses_2\":1,\"face\":0,\"skin\":0,\"makeup_2\":0,\"makeup_1\":0,\"beard_1\":6,\"arms\":0,\"torso_2\":0,\"hair_color_2\":0,\"bags_2\":0}', 'choco-donpa', 0, '[]', '{\"z\":30.70983505249,\"y\":-982.11743164063,\"x\":425.94024658203}', 6400, 0, 'user', '[{\"val\":864000,\"name\":\"hunger\",\"percent\":86.4},{\"val\":796000,\"name\":\"thirst\",\"percent\":79.6},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0},{\"val\":0,\"name\":\"drug\",\"percent\":0.0}]', NULL, 'Kevin', 'Facon', '22-02-1992', 'm', '180', NULL, NULL, 1, b'0', '{}', '753-9558'),
('steam:11000011ca16ad3', 'license:cf6fa262e06e264b8b2aeb53650d532b9a2d772c', 57, 'cerder brock', '{\"decals_2\":0,\"age_2\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"skin\":0,\"arms\":0,\"hair_color_1\":0,\"shoes_2\":0,\"face\":0,\"helmet_2\":0,\"ears_2\":0,\"glasses_1\":0,\"pants_1\":0,\"lipstick_3\":0,\"tshirt_1\":0,\"hair_color_2\":0,\"beard_1\":1,\"hair_2\":0,\"shoes_1\":0,\"torso_2\":0,\"torso_1\":0,\"lipstick_1\":0,\"beard_3\":0,\"helmet_1\":-1,\"eyebrows_3\":0,\"lipstick_2\":0,\"beard_4\":0,\"makeup_2\":0,\"lipstick_4\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"chain_1\":0,\"makeup_4\":0,\"bproof_2\":0,\"bags_2\":0,\"hair_1\":3,\"age_1\":0,\"pants_2\":0,\"makeup_3\":0,\"mask_2\":0,\"bags_1\":0,\"ears_1\":-1,\"tshirt_2\":0,\"eyebrows_2\":0,\"chain_2\":0,\"makeup_1\":0,\"sex\":0,\"beard_2\":10,\"eyebrows_4\":0}', 'police', 1, '[{\"name\":\"WEAPON_NIGHTSTICK\",\"label\":\"Matraque\",\"ammo\":0},{\"name\":\"WEAPON_COMBATPISTOL\",\"label\":\"Pistolet de combat\",\"ammo\":250},{\"name\":\"WEAPON_ASSAULTSMG\",\"label\":\"Smg d\'assaut\",\"ammo\":248},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"label\":\"Fusil d\'assaut\",\"ammo\":250},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"label\":\"Fusil à pompe\",\"ammo\":250},{\"name\":\"WEAPON_STUNGUN\",\"label\":\"Tazer\",\"ammo\":250},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"label\":\"Extincteur\",\"ammo\":500},{\"name\":\"WEAPON_FLAREGUN\",\"label\":\"Lance fusée de détresse\",\"ammo\":20},{\"name\":\"WEAPON_FLASHLIGHT\",\"label\":\"Lampe torche\",\"ammo\":0}]', '{\"x\":1139.1641845703,\"y\":-3197.6926269531,\"z\":-39.665718078613}', 19950, 0, 'user', '[{\"val\":955400,\"name\":\"hunger\",\"percent\":95.54},{\"val\":975700,\"name\":\"thirst\",\"percent\":97.57},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0},{\"val\":0,\"name\":\"drug\",\"percent\":0.0}]', NULL, 'Damian', 'Wayne', '17101984', 'm', '175', NULL, NULL, 1, b'0', '{}', '926-2758'),
('steam:110000132b0c711', 'license:f6bfba4bcd8c9d82f5b65ab1ea359f4cab3848fd', 3440, 'Daniels Pochard', '{\"beard_4\":0,\"decals_2\":0,\"torso_1\":13,\"bags_1\":0,\"age_2\":0,\"glasses_2\":0,\"lipstick_4\":0,\"bags_2\":0,\"torso_2\":5,\"pants_2\":0,\"glasses_1\":5,\"tshirt_2\":0,\"helmet_1\":-1,\"beard_3\":0,\"lipstick_3\":0,\"eyebrows_2\":0,\"sex\":0,\"bproof_2\":0,\"ears_2\":0,\"bproof_1\":0,\"hair_color_2\":0,\"beard_1\":0,\"mask_2\":0,\"shoes_2\":4,\"eyebrows_3\":0,\"chain_2\":0,\"lipstick_2\":0,\"tshirt_1\":15,\"pants_1\":8,\"eyebrows_4\":0,\"arms\":11,\"decals_1\":0,\"skin\":5,\"face\":0,\"age_1\":0,\"eyebrows_1\":0,\"makeup_2\":0,\"hair_2\":0,\"shoes_1\":9,\"hair_color_1\":0,\"makeup_4\":0,\"hair_1\":13,\"makeup_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":0,\"beard_2\":10,\"chain_1\":0,\"makeup_3\":0,\"lipstick_1\":0}', 'fueler', 0, '[]', '{\"z\":5.9436407089233,\"y\":-2133.0725097656,\"x\":513.72528076172}', 225, 0, 'user', '[{\"val\":947300,\"percent\":94.73,\"name\":\"hunger\"},{\"val\":920950,\"percent\":92.095,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"},{\"val\":0,\"percent\":0.0,\"name\":\"drug\"}]', NULL, 'Daniels', 'Pochard', '22/05/1991', 'm', '191', NULL, NULL, 1, b'0', '{}', '232-1658'),
('steam:110000135847752', 'license:6938f5ae03bc37d1f06a6d29560fc58e102dc06e', 2220, 'moujib youl', '{\"beard_4\":4,\"decals_2\":0,\"torso_1\":206,\"bags_1\":0,\"age_2\":0,\"glasses_2\":0,\"lipstick_4\":0,\"bags_2\":0,\"torso_2\":0,\"pants_2\":4,\"glasses_1\":0,\"tshirt_2\":0,\"chain_1\":0,\"beard_3\":24,\"lipstick_3\":0,\"eyebrows_2\":0,\"sex\":0,\"bproof_2\":0,\"ears_2\":0,\"makeup_4\":0,\"bproof_1\":0,\"beard_1\":7,\"decals_1\":0,\"shoes_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"face\":0,\"tshirt_1\":22,\"pants_1\":31,\"eyebrows_4\":0,\"hair_color_2\":0,\"lipstick_1\":0,\"makeup_3\":0,\"mask_2\":0,\"age_1\":0,\"eyebrows_1\":0,\"makeup_2\":0,\"hair_2\":0,\"shoes_1\":28,\"hair_color_1\":0,\"skin\":0,\"hair_1\":47,\"helmet_1\":2,\"mask_1\":0,\"arms\":33,\"helmet_2\":0,\"beard_2\":10,\"makeup_1\":43,\"ears_1\":-1,\"lipstick_2\":0}', 'cartel', 2, '[{\"ammo\":0,\"name\":\"WEAPON_CROWBAR\",\"label\":\"Pied de biche\"},{\"ammo\":250,\"name\":\"WEAPON_COMBATPISTOL\",\"label\":\"Pistolet de combat\"},{\"ammo\":250,\"name\":\"WEAPON_APPISTOL\",\"label\":\"Pistolet automatique\"},{\"ammo\":250,\"name\":\"WEAPON_ASSAULTRIFLE\",\"label\":\"Fusil d\'assaut\"},{\"ammo\":250,\"name\":\"WEAPON_CARBINERIFLE\",\"label\":\"Carabine d\'assaut\"},{\"ammo\":250,\"name\":\"WEAPON_STUNGUN\",\"label\":\"Tazer\"},{\"ammo\":248,\"name\":\"WEAPON_SNIPERRIFLE\",\"label\":\"Fusil de sniper\"},{\"ammo\":24,\"name\":\"WEAPON_GRENADE\",\"label\":\"Grenade\"},{\"ammo\":25,\"name\":\"WEAPON_STICKYBOMB\",\"label\":\"Bombe collante\"},{\"ammo\":25,\"name\":\"WEAPON_SMOKEGRENADE\",\"label\":\"Grenade fumigène\"},{\"ammo\":25,\"name\":\"WEAPON_BZGAS\",\"label\":\"Grenade à gaz bz\"},{\"ammo\":0,\"name\":\"WEAPON_DAGGER\",\"label\":\"Poignard\"},{\"ammo\":5,\"name\":\"WEAPON_PROXMINE\",\"label\":\"Mine de proximité\"},{\"ammo\":0,\"name\":\"WEAPON_HATCHET\",\"label\":\"Hachette\"},{\"ammo\":0,\"name\":\"WEAPON_MACHETE\",\"label\":\"Machette\"},{\"ammo\":0,\"name\":\"WEAPON_MACHINEPISTOL\",\"label\":\"Pistolet mitrailleur\"},{\"ammo\":0,\"name\":\"WEAPON_SWITCHBLADE\",\"label\":\"Couteau à cran d\'arrêt\"},{\"ammo\":250,\"name\":\"WEAPON_REVOLVER\",\"label\":\"Revolver\"},{\"ammo\":250,\"name\":\"WEAPON_COMPACTRIFLE\",\"label\":\"Fusil compact\"},{\"ammo\":0,\"name\":\"WEAPON_BATTLEAXE\",\"label\":\"Hache de combat\"},{\"ammo\":0,\"name\":\"WEAPON_POOLCUE\",\"label\":\"Queue de billard\"},{\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\",\"label\":\"Lampe torche\"},{\"ammo\":0,\"name\":\"GADGET_PARACHUTE\",\"label\":\"Parachute\"},{\"ammo\":25,\"name\":\"WEAPON_FLARE\",\"label\":\"Fusée Détresse\"},{\"ammo\":250,\"name\":\"WEAPON_SNSPISTOL_MK2\",\"label\":\"SNS Pistol Mk II\"},{\"ammo\":250,\"name\":\"WEAPON_DOUBLEACTION\",\"label\":\"Double-Action Revolver\"},{\"ammo\":250,\"name\":\"WEAPON_BULLPUPRIFLE_MK2\",\"label\":\"Bullpup Rifle Mk II\"},{\"ammo\":0,\"name\":\"WEAPON_PUMPSHOTGUN_MK2\",\"label\":\"Pump Shotgun Mk II\"},{\"ammo\":250,\"name\":\"WEAPON_ASSAULTRIFLE_MK2\",\"label\":\"Assault Rifle Mk II \"},{\"ammo\":250,\"name\":\"WEAPON_CARBINERIFLE_MK2\",\"label\":\"Carbine Rifle Mk II \"},{\"ammo\":250,\"name\":\"WEAPON_COMBATMG_MK2\",\"label\":\"Combat MG Mk II\"},{\"ammo\":250,\"name\":\"WEAPON_PISTOL_MK2\",\"label\":\"Pistol Mk II\"},{\"ammo\":0,\"name\":\"WEAPON_SMG_MK2\",\"label\":\"SMG Mk II\"}]', '{\"x\":293.73300170898,\"z\":20.123405456543,\"y\":-1990.3510742188}', 27708, 0, 'user', '[{\"percent\":94.39,\"val\":943900,\"name\":\"hunger\"},{\"percent\":91.72,\"val\":917200,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"},{\"percent\":0.0,\"val\":0,\"name\":\"drug\"}]', NULL, 'Moujib', 'Youl', '1999', 'm', '180', NULL, NULL, 1, b'1', '{}', '753-4849');

-- --------------------------------------------------------

--
-- Structure de la table `user_accounts`
--

DROP TABLE IF EXISTS `user_accounts`;
CREATE TABLE IF NOT EXISTS `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=224 DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Structure de la table `user_inventory`
--

DROP TABLE IF EXISTS `user_inventory`;
CREATE TABLE IF NOT EXISTS `user_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22368 DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Structure de la table `user_licenses`
--

DROP TABLE IF EXISTS `user_licenses`;
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_parkings`
--

DROP TABLE IF EXISTS `user_parkings`;
CREATE TABLE IF NOT EXISTS `user_parkings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) DEFAULT NULL,
  `garage` varchar(60) DEFAULT NULL,
  `zone` int(11) NOT NULL,
  `vehicle` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('760i', '17m760i', 12600, 'Import'),
('c63s Sport', 'rmodamgc63', 140000, 'Import2'),
('M2', 'rmodm3e36', 14700, 'Import'),
('92 BI', 'E36a', 14700, 'Import'),
('M4', 'rmodm4', 16100, 'Import'),
('M4Gts', 'rmodm4gts', 245000, 'Import'),
('MSI', 'bmci', 287000, 'Import'),
('m6', 'm6f13', 252000, 'Import'),
('c63s', ' c63s', 121100, 'Import2'),
('AMG Gts 2016', 'amggts2016', 238000, 'Import2'),
('AMG Gts', 'g65amg', 147000, 'Import2'),
('S3', '2015s3', 245000, 'Import3'),
('RS5', 'rs5', 357000, 'Import3'),
('RS7', 'rs7', 448000, 'Import3'),
('Camaro', 'camaro70', 357000, 'Import4'),
('Camaro ZL1', 'czl1', 245000, 'Import4'),
('Clio 2017', '17cliofl', 122500, 'Import5'),
('Clio', 'clio', 15400, 'Import5'),
('Polo', 'polo2018', 31500, 'Import6'),
('Crafter', 'crafter17', 52500, 'Import6'),
('Mustang GT', 'rmodmustang', 63000, 'Import7'),
('GT', 'rmodfordgt', 840000, 'Import7'),
('Challenger', '16challenger', 154000, 'Import8'),
('GTX', 'gtx', 252000, 'Import8'),
('911Gtrs', '911gtrs', 170100, 'Import9'),
('Panamera T', 'pturismo', 1750000, 'Import9'),
('California T', 'fc15', 3220000, 'Import10'),
('ACRS', 'acsr', 3570000, 'Import10'),
('Berlinetta', 'berlinetta', 840000, 'Import10'),
('LP 570', 'rmodlp570', 1820000, 'Import11'),
('LP 750', 'rmodlp750', 2310000, 'Import11'),
('Veneno', 'rmodveneno', 2800000, 'Import11'),
('LP 770', 'rmodlp770', 2870000, 'Import11'),
('Huayra', 'rmodpagani', 1610000, 'Import12'),
('Giulia', 'giulia', 17500, 'Import13'),
('700G', 'brabus700', 175000, 'Import14'),
('ZX10', 'zx10', 126000, 'Import15'),
('Camaro SS', 'camaro_ss', 245000, 'Import4'),
('NSX', 'filthynsx', 1750000, 'Import17'),
('Continental GT', 'Contgt13', 2100000, 'Import16'),
('Phantom', 'rrphantom', 1890000, 'Import16'),
('T Max', 'tmax', 84000, 'Import15'),
('X6', 'x6m', 560000, 'Import'),
('Joker', 'royale', 1, 'admin'),
('Fox', 'hondacivictr', 1, 'admin'),
('Dante', 'gt17', 1, 'admin'),
('Wayne', 'mvisiongt', 1, 'admin'),
('D 99', 'd99', 146000, 'Import15'),
('R1', 'r1', 190000, 'Import15'),
('NH2R', 'nh2r', 200000, 'Import15'),
('Harley Davidson', 'hvrod', 110000, 'Import15');

-- --------------------------------------------------------

--
-- Structure de la table `vehicles_pub`
--

DROP TABLE IF EXISTS `vehicles_pub`;
CREATE TABLE IF NOT EXISTS `vehicles_pub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=212 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `vehicles_pub`
--

INSERT INTO `vehicles_pub` (`id`, `name`, `model`, `price`, `category`) VALUES
(1, 'Blade', 'blade', 15000, 'muscle'),
(2, 'Buccaneer', 'buccaneer', 18000, 'muscle'),
(3, 'Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
(4, 'Chino', 'chino', 15000, 'muscle'),
(5, 'Chino Luxe', 'chino2', 19000, 'muscle'),
(6, 'Coquette BlackFin', 'coquette3', 55000, 'muscle'),
(7, 'Dominator', 'dominator', 35000, 'muscle'),
(8, 'Dukes', 'dukes', 28000, 'muscle'),
(9, 'Gauntlet', 'gauntlet', 30000, 'muscle'),
(10, 'Hotknife', 'hotknife', 125000, 'muscle'),
(11, 'Faction', 'faction', 20000, 'muscle'),
(12, 'Faction Rider', 'faction2', 30000, 'muscle'),
(13, 'Faction XL', 'faction3', 40000, 'muscle'),
(14, 'Nightshade', 'nightshade', 65000, 'muscle'),
(15, 'Phoenix', 'phoenix', 12500, 'muscle'),
(16, 'Picador', 'picador', 18000, 'muscle'),
(17, 'Sabre Turbo', 'sabregt', 20000, 'muscle'),
(18, 'Sabre GT', 'sabregt2', 25000, 'muscle'),
(19, 'Slam Van', 'slamvan3', 11500, 'muscle'),
(20, 'Tampa', 'tampa', 16000, 'muscle'),
(21, 'Virgo', 'virgo', 14000, 'muscle'),
(22, 'Vigero', 'vigero', 12500, 'muscle'),
(23, 'Voodoo', 'voodoo', 7200, 'muscle'),
(24, 'Blista', 'blista', 8000, 'compacts'),
(25, 'Brioso R/A', 'brioso', 18000, 'compacts'),
(26, 'Issi', 'issi2', 10000, 'compacts'),
(27, 'Panto', 'panto', 10000, 'compacts'),
(28, 'Prairie', 'prairie', 12000, 'compacts'),
(29, 'Bison', 'bison', 45000, 'vans'),
(30, 'Bobcat XL', 'bobcatxl', 32000, 'vans'),
(31, 'Burrito', 'burrito3', 19000, 'vans'),
(32, 'Burrito', 'gburrito2', 29000, 'vans'),
(33, 'Camper', 'camper', 42000, 'vans'),
(34, 'Gang Burrito', 'gburrito', 45000, 'vans'),
(35, 'Journey', 'journey', 6500, 'vans'),
(36, 'Minivan', 'minivan', 13000, 'vans'),
(37, 'Moonbeam', 'moonbeam', 18000, 'vans'),
(38, 'Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
(39, 'Paradise', 'paradise', 19000, 'vans'),
(40, 'Rumpo', 'rumpo', 15000, 'vans'),
(41, 'Rumpo Trail', 'rumpo3', 19500, 'vans'),
(42, 'Surfer', 'surfer', 12000, 'vans'),
(43, 'Youga', 'youga', 10800, 'vans'),
(44, 'Youga Luxuary', 'youga2', 14500, 'vans'),
(45, 'Asea', 'asea', 5500, 'sedans'),
(46, 'Cognoscenti', 'cognoscenti', 55000, 'sedans'),
(47, 'Emperor', 'emperor', 8500, 'sedans'),
(48, 'Fugitive', 'fugitive', 12000, 'sedans'),
(49, 'Glendale', 'glendale', 6500, 'sedans'),
(50, 'Intruder', 'intruder', 7500, 'sedans'),
(51, 'Premier', 'premier', 8000, 'sedans'),
(52, 'Primo Custom', 'primo2', 14000, 'sedans'),
(53, 'Regina', 'regina', 5000, 'sedans'),
(54, 'Schafter', 'schafter2', 25000, 'sedans'),
(55, 'Stretch', 'stretch', 90000, 'sedans'),
(56, 'Super Diamond', 'superd', 130000, 'sedans'),
(57, 'Tailgater', 'tailgater', 30000, 'sedans'),
(58, 'Warrener', 'warrener', 4000, 'sedans'),
(59, 'Washington', 'washington', 9000, 'sedans'),
(60, 'Baller', 'baller2', 40000, 'suvs'),
(61, 'Baller Sport', 'baller3', 60000, 'suvs'),
(62, 'Cavalcade', 'cavalcade2', 55000, 'suvs'),
(63, 'Contender', 'contender', 70000, 'suvs'),
(64, 'Dubsta', 'dubsta', 45000, 'suvs'),
(65, 'Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
(66, 'Fhantom', 'fq2', 17000, 'suvs'),
(67, 'Grabger', 'granger', 50000, 'suvs'),
(68, 'Gresley', 'gresley', 47500, 'suvs'),
(69, 'Huntley S', 'huntley', 40000, 'suvs'),
(70, 'Landstalker', 'landstalker', 35000, 'suvs'),
(71, 'Mesa', 'mesa', 16000, 'suvs'),
(72, 'Mesa Trail', 'mesa3', 40000, 'suvs'),
(73, 'Patriot', 'patriot', 55000, 'suvs'),
(74, 'Radius', 'radi', 29000, 'suvs'),
(75, 'Rocoto', 'rocoto', 45000, 'suvs'),
(76, 'Seminole', 'seminole', 25000, 'suvs'),
(77, 'XLS', 'xls', 32000, 'suvs'),
(78, 'Btype', 'btype', 62000, 'sportsclassics'),
(79, 'Btype Luxe', 'btype3', 85000, 'sportsclassics'),
(80, 'Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
(81, 'Casco', 'casco', 30000, 'sportsclassics'),
(82, 'Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
(83, 'Manana', 'manana', 12800, 'sportsclassics'),
(84, 'Monroe', 'monroe', 55000, 'sportsclassics'),
(85, 'Pigalle', 'pigalle', 20000, 'sportsclassics'),
(86, 'Stinger', 'stinger', 80000, 'sportsclassics'),
(87, 'Stinger GT', 'stingergt', 75000, 'sportsclassics'),
(88, 'Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
(89, 'Z-Type', 'ztype', 220000, 'sportsclassics'),
(90, 'Bifta', 'bifta', 12000, 'offroad'),
(91, 'Bf Injection', 'bfinjection', 16000, 'offroad'),
(92, 'Blazer', 'blazer', 6500, 'offroad'),
(93, 'Blazer Sport', 'blazer4', 8500, 'offroad'),
(94, 'Brawler', 'brawler', 45000, 'offroad'),
(95, 'Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
(96, 'Dune Buggy', 'dune', 8000, 'offroad'),
(97, 'Guardian', 'guardian', 45000, 'offroad'),
(98, 'Rebel', 'rebel2', 35000, 'offroad'),
(99, 'Sandking', 'sandking', 55000, 'offroad'),
(100, 'The Liberator', 'monster', 210000, 'offroad'),
(101, 'Trophy Truck', 'trophytruck', 60000, 'offroad'),
(102, 'Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
(103, 'Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
(104, 'Exemplar', 'exemplar', 32000, 'coupes'),
(105, 'F620', 'f620', 40000, 'coupes'),
(106, 'Felon', 'felon', 42000, 'coupes'),
(107, 'Felon GT', 'felon2', 55000, 'coupes'),
(108, 'Jackal', 'jackal', 38000, 'coupes'),
(109, 'Oracle XS', 'oracle2', 35000, 'coupes'),
(110, 'Sentinel', 'sentinel', 32000, 'coupes'),
(111, 'Sentinel XS', 'sentinel2', 40000, 'coupes'),
(112, 'Windsor', 'windsor', 95000, 'coupes'),
(113, 'Windsor Drop', 'windsor2', 125000, 'coupes'),
(114, 'Zion', 'zion', 36000, 'coupes'),
(115, 'Zion Cabrio', 'zion2', 45000, 'coupes'),
(116, '9F', 'ninef', 65000, 'sports'),
(117, '9F Cabrio', 'ninef2', 80000, 'sports'),
(118, 'Alpha', 'alpha', 60000, 'sports'),
(119, 'Banshee', 'banshee', 70000, 'sports'),
(120, 'Bestia GTS', 'bestiagts', 55000, 'sports'),
(121, 'Buffalo', 'buffalo', 12000, 'sports'),
(122, 'Buffalo S', 'buffalo2', 20000, 'sports'),
(123, 'Carbonizzare', 'carbonizzare', 75000, 'sports'),
(124, 'Comet', 'comet2', 65000, 'sports'),
(125, 'Coquette', 'coquette', 65000, 'sports'),
(126, 'Drift Tampa', 'tampa2', 80000, 'sports'),
(127, 'Elegy', 'elegy2', 38500, 'sports'),
(128, 'Feltzer', 'feltzer2', 55000, 'sports'),
(129, 'Furore GT', 'furoregt', 45000, 'sports'),
(130, 'Fusilade', 'fusilade', 40000, 'sports'),
(131, 'Jester', 'jester', 65000, 'sports'),
(132, 'Jester(Racecar)', 'jester2', 135000, 'sports'),
(133, 'Khamelion', 'khamelion', 38000, 'sports'),
(134, 'Kuruma', 'kuruma', 30000, 'sports'),
(135, 'Lynx', 'lynx', 40000, 'sports'),
(136, 'Mamba', 'mamba', 70000, 'sports'),
(137, 'Massacro', 'massacro', 65000, 'sports'),
(138, 'Massacro(Racecar)', 'massacro2', 130000, 'sports'),
(139, 'Omnis', 'omnis', 35000, 'sports'),
(140, 'Penumbra', 'penumbra', 28000, 'sports'),
(141, 'Rapid GT', 'rapidgt', 35000, 'sports'),
(142, 'Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
(143, 'Schafter V12', 'schafter3', 50000, 'sports'),
(144, 'Seven 70', 'seven70', 39500, 'sports'),
(145, 'Sultan', 'sultan', 15000, 'sports'),
(146, 'Surano', 'surano', 50000, 'sports'),
(147, 'Tropos', 'tropos', 40000, 'sports'),
(148, 'Verlierer', 'verlierer2', 70000, 'sports'),
(149, 'Adder', 'adder', 900000, 'super'),
(150, 'Banshee 900R', 'banshee2', 255000, 'super'),
(151, 'Bullet', 'bullet', 90000, 'super'),
(152, 'Cheetah', 'cheetah', 375000, 'super'),
(153, 'Entity XF', 'entityxf', 425000, 'super'),
(154, 'ETR1', 'sheava', 220000, 'super'),
(155, 'FMJ', 'fmj', 185000, 'super'),
(156, 'Infernus', 'infernus', 180000, 'super'),
(157, 'Osiris', 'osiris', 160000, 'super'),
(158, 'Pfister', 'pfister811', 85000, 'super'),
(159, 'RE-7B', 'le7b', 325000, 'super'),
(160, 'Reaper', 'reaper', 150000, 'super'),
(161, 'Sultan RS', 'sultanrs', 65000, 'super'),
(162, 'T20', 't20', 300000, 'super'),
(163, 'Turismo R', 'turismor', 350000, 'super'),
(164, 'Tyrus', 'tyrus', 600000, 'super'),
(165, 'Vacca', 'vacca', 120000, 'super'),
(166, 'Voltic', 'voltic', 90000, 'super'),
(167, 'X80 Proto', 'prototipo', 2500000, 'super'),
(168, 'Zentorno', 'zentorno', 1500000, 'super'),
(169, 'Akuma', 'AKUMA', 7500, 'motorcycles'),
(170, 'Avarus', 'avarus', 18000, 'motorcycles'),
(171, 'Bagger', 'bagger', 13500, 'motorcycles'),
(172, 'Bati 801', 'bati', 12000, 'motorcycles'),
(173, 'Bati 801RR', 'bati2', 19000, 'motorcycles'),
(174, 'BF400', 'bf400', 6500, 'motorcycles'),
(175, 'BMX (velo)', 'bmx', 160, 'motorcycles'),
(176, 'Carbon RS', 'carbonrs', 18000, 'motorcycles'),
(177, 'Chimera', 'chimera', 38000, 'motorcycles'),
(178, 'Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
(179, 'Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
(180, 'Daemon', 'daemon', 11500, 'motorcycles'),
(181, 'Daemon High', 'daemon2', 13500, 'motorcycles'),
(182, 'Defiler', 'defiler', 9800, 'motorcycles'),
(183, 'Double T', 'double', 28000, 'motorcycles'),
(184, 'Enduro', 'enduro', 5500, 'motorcycles'),
(185, 'Esskey', 'esskey', 4200, 'motorcycles'),
(186, 'Faggio', 'faggio', 1900, 'motorcycles'),
(187, 'Vespa', 'faggio2', 2800, 'motorcycles'),
(188, 'Fixter (velo)', 'fixter', 225, 'motorcycles'),
(189, 'Gargoyle', 'gargoyle', 16500, 'motorcycles'),
(190, 'Hakuchou', 'hakuchou', 31000, 'motorcycles'),
(191, 'Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
(192, 'Hexer', 'hexer', 12000, 'motorcycles'),
(193, 'Innovation', 'innovation', 23500, 'motorcycles'),
(194, 'Manchez', 'manchez', 5300, 'motorcycles'),
(195, 'Nemesis', 'nemesis', 5800, 'motorcycles'),
(196, 'Nightblade', 'nightblade', 35000, 'motorcycles'),
(197, 'PCJ-600', 'pcj', 6200, 'motorcycles'),
(198, 'Ruffian', 'ruffian', 6800, 'motorcycles'),
(199, 'Sanchez', 'sanchez', 5300, 'motorcycles'),
(200, 'Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
(201, 'Sanctus', 'sanctus', 25000, 'motorcycles'),
(202, 'Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
(203, 'Sovereign', 'sovereign', 22000, 'motorcycles'),
(204, 'Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
(205, 'Thrust', 'thrust', 24000, 'motorcycles'),
(206, 'Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
(207, 'Vader', 'vader', 7200, 'motorcycles'),
(208, 'Vortex', 'vortex', 9800, 'motorcycles'),
(209, 'Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
(210, 'Zombie', 'zombiea', 9500, 'motorcycles'),
(211, 'Zombie Luxuary', 'zombieb', 12000, 'motorcycles');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_categories`
--

DROP TABLE IF EXISTS `vehicle_categories`;
CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`id`, `name`, `label`) VALUES
(17, 'Import', 'BMW'),
(18, 'Import2', 'Mercedes'),
(19, 'Import3', 'AUDI'),
(20, 'Import4', 'Chevrolet'),
(21, 'Import5', 'Renault'),
(22, 'Import6', 'Volkswagen'),
(23, 'Import7', 'Ford'),
(24, 'Import8', 'Dodge'),
(25, 'Import9', 'Porche'),
(26, 'Import10', 'Ferrarie'),
(27, 'Import11', 'Lamborghini'),
(28, 'Import12', 'Pagani'),
(29, 'Import13', 'Alfa Romeo'),
(30, 'Import14', 'Brabus'),
(31, 'Import15', 'Moto Import'),
(32, 'Import17', 'NSX'),
(33, 'Import16', 'Bentley'),
(35, 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_categories_pub`
--

DROP TABLE IF EXISTS `vehicle_categories_pub`;
CREATE TABLE IF NOT EXISTS `vehicle_categories_pub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `vehicle_categories_pub`
--

INSERT INTO `vehicle_categories_pub` (`id`, `name`, `label`) VALUES
(1, 'compacts', 'Compacts'),
(2, 'coupes', 'Coupés'),
(3, 'sedans', 'Sedans'),
(4, 'sports', 'Sports'),
(5, 'sportsclassics', 'Sports Classics'),
(6, 'super', 'Super'),
(7, 'muscle', 'Muscle'),
(8, 'offroad', 'Off Road'),
(9, 'suvs', 'SUVs'),
(10, 'vans', 'Vans'),
(11, 'motorcycles', 'Motos');

-- --------------------------------------------------------

--
-- Structure de la table `weashops`
--

DROP TABLE IF EXISTS `weashops`;
CREATE TABLE IF NOT EXISTS `weashops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `weashops`
--

INSERT INTO `weashops` (`id`, `name`, `item`, `price`) VALUES
(90, 'BlackWeashop', 'WEAPON_REVOLVER', 120000),
(75, 'GunShop', 'WEAPON_FIREEXTINGUISHER', 100),
(70, 'BlackWeashop', 'WEAPON_FIREWORK', 2500),
(68, 'BlackWeashop', 'WEAPON_SNIPERRIFLE', 350000),
(88, 'BlackWeashop', 'WEAPON_STICKYBOMB', 50000),
(65, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 95000),
(64, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 290000),
(61, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 99000),
(60, 'BlackWeashop', 'WEAPON_MICROSMG', 80000),
(55, 'GunShop', 'WEAPON_BAT', 250),
(89, 'BlackWeashop', 'WEAPON_MOLOTOV', 15000),
(52, 'BlackWeashop', 'WEAPON_MACHETE', 35000),
(51, 'GunShop', 'WEAPON_MACHETE', 500),
(48, 'BlackWeashop', 'WEAPON_PISTOL', 40000),
(49, 'GunShop', 'WEAPON_FLASHLIGHT', 150),
(50, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 150),
(47, 'GunShop', 'WEAPON_PISTOL', 55000),
(77, 'GunShop', 'WEAPON_BALL', 50),
(80, 'BlackWeashop', 'WEAPON_SMOKEGRENADE', 75000),
(81, 'BlackWeashop', 'WEAPON_APPISTOL', 120000),
(82, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 95000);

-- --------------------------------------------------------

--
-- Structure de la table `whitelist`
--

DROP TABLE IF EXISTS `whitelist`;
CREATE TABLE IF NOT EXISTS `whitelist` (
  `identifier` varchar(70) NOT NULL,
  `last_connecion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ban_reason` text,
  `ban_until` timestamp NULL DEFAULT NULL,
  `vip` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`identifier`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
