INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_gang','gang',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_gang','Gang',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_gang', 'Gang', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('gang', 'Rebels', 1);

--
-- Déchargement des données de la table `jobs_grades`
--

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('gang', 0, 'soldato', 'Springpojke', 1500, '{\"tshirt_1\":15,\"torso_1\":42,\"shoes\":8,\"pants_1\":24,\"pants_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":8,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":-1}', '{\"tshirt_1\":0,\"torso_1\":78,\"shoes\":8,\"pants_1\":45,\"pants_2\":1,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":1,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":5,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":2,\"helmet_1\":-1}'),
('gang', 1, 'capo', 'Soldat', 1800, '{\"tshirt_1\":15,\"torso_1\":42,\"shoes\":8,\"pants_1\":24,\"pants_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":8,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":-1}', '{\"tshirt_1\":0,\"torso_1\":78,\"shoes\":8,\"pants_1\":45,\"pants_2\":1,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":1,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":5,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":2,\"helmet_1\":-1}'),
('gang', 2, 'consigliere', 'Högerhand', 2100, '{\"tshirt_1\":15,\"torso_1\":42,\"shoes\":8,\"pants_1\":24,\"pants_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":8,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":-1}', '{\"tshirt_1\":0,\"torso_1\":78,\"shoes\":8,\"pants_1\":45,\"pants_2\":1,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":1,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":5,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":2,\"helmet_1\":-1}'),
('gang', 3, 'boss', 'Boss', 2700, '{\"tshirt_1\":0,\"torso_1\":7,\"shoes\":7,\"pants_1\":9,\"pants_2\":7,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":1,\"torso_2\":2,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":2,\"helmet_1\":-1}', '{\"tshirt_1\":0,\"torso_1\":78,\"shoes\":8,\"pants_1\":45,\"pants_2\":1,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":1,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":5,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":2,\"helmet_1\":-1}');

CREATE TABLE `fine_types_gang` (
  
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  
  PRIMARY KEY (`id`)
);

INSERT INTO `fine_types_gang` (label, amount, category) VALUES 
	('Raket',3000,0),
	('Raket',5000,0),
	('Raket',10000,1),
	('Raket',20000,1),
	('Raket',50000,2),
	('Raket',150000,3),
	('Raket',350000,3)
;