SET @job_name = 'digilux';
SET @society_name = 'society_digilux';
SET @job_Name_Caps = 'Digilux';



INSERT INTO `addon_account` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1),
  ('society_digilux_chest', 'Digilux (Coffre)', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
    (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `jobs` (name, label, whitelisted) VALUES
  (@job_name, @job_Name_Caps, 1)
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  (@job_name, 0, 'employee', 'Employé', 0, '{}', '{}'),
  (@job_name, 1, 'boss', 'Patron', 0, '{}', '{}')
;

INSERT INTO `items` (`name`, `label`, `limit`) VALUES  
    ('motherboard', 'carte mère', 5),
    ('processor', 'processeur', 5),
    ('powersupply', 'alimentation', 5),
    ('ram', 'barrette de ram', 10),
    ('case', 'boîtier', 5),
    ('ssd', 'SSD', 10),
    ('graphiccard', 'carte graphique', 5),
    ('computer', 'Ordinateur', 5),
    ('laptop', 'pc portable', 5);
