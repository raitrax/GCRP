INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
  ('ordinateur','Informaticien',1)
;

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
  ('society_ordinateur','Informaticien',1)
;

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
  ('society_ordinateur','Informaticien', 1)
;
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('society_ordinateur', 'Informaticien', 1)
;


INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('ordinateur',0,'recrue','Intérimaire', 500,'{}','{}'),
  ('ordinateur',1,'boss','Patron', 1600,'{}','{}')
;


INSERT INTO `items` (`name`, `label`) VALUES
('composant', 'Composant'),
('PcComplet', 'Ordinateur')
;

