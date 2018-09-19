INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('society_armurier', 'Armurier', 1);

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('society_armurier', 'Armurier', 1),
('society_armurier_coffre', 'Armurier (patron)', 1);

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('society_armurier', 'Armurier', 1),
('society_armurier_coffre', 'Armurier', 1);

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('armurier', ' Armurier', 1);

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('armurier', 1, 'boss', 'Patron', 600, '{}', '{}'),
('armurier', 0, 'employe', 'Employé', 500, '{}', '{}');
