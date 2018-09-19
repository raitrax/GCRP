
INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_tequilala', 'tequilala', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_tequilala', 'tequilala', 1),
  ('society_tequilala_fridge', 'tequilala (frigo)', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
    ('society_tequilala', 'tequilala', 1)
;

INSERT INTO `jobs` (name, label, whitelisted) VALUES
  ('tequilala', 'tequilala', 1)
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('tequilala', 0, 'barman', 'Barman', 600, '{}', '{}'),
  ('tequilala', 1, 'dancer', 'Danseur', 800, '{}', '{}'),
  ('tequilala', 2, 'viceboss', 'Co-gérant', 1000, '{}', '{}'),
  ('tequilala', 3, 'boss', 'Gérant', 1200, '{}', '{}')
;
