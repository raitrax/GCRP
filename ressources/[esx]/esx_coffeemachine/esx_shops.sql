USE `essentialmode`;

CREATE TABLE `coffeemachine` (
  
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  
  PRIMARY KEY (`id`)
);

INSERT INTO `coffeemachine` (name, item, price) VALUES
	('coffeemachine','cafe',10)
;