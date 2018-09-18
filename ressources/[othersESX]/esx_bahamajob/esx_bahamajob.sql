
INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_bahama', 'Bahama', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_bahama', 'Bahama', 1),
  ('society_bahama_fridge', 'Bahama (frigo)', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
    ('society_bahama', 'Bahama', 1)
;

INSERT INTO `jobs` (name, label, whitelisted) VALUES
  ('bahama', 'Bahama Mamas', 1)
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('bahama', 0, 'barman', 'Barman', 600, '{}', '{}'),
  ('bahama', 1, 'dancer', 'Danseur', 800, '{}', '{}'),
  ('bahama', 2, 'viceboss', 'Co-gérant', 1000, '{}', '{}'),
  ('bahama', 3, 'boss', 'Gérant', 1200, '{}', '{}')
;
