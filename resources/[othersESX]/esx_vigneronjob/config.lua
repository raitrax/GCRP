Config                            = {}
Config.DrawDistance               = 100.0
Config.nameJob                    = "vigne"
Config.nameJobLabel               = "Vigneron"
Config.MaxInService               = -1
Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.Locale                     = 'fr'

Config.Zones = {
  RaisinFarm = {
    Pos   = {x = -1809.662, y = 2210.119, z = 90.681},
    Size  = {x = 3.5, y = 3.5, z = 2.0},
    Color = {r = 136, g = 243, b = 216},
    Type  = 1,
    BlipSprite = 85,
    BlipColor = 21,
    BlipName = Config.nameJobLabel.." : Récolte",
  },

  TraitementVin = {
    Pos   = {x = -53.116, y = 1903.248, z = 194.361},
    Size  = {x = 3.5, y = 3.5, z = 2.0},
    Color = {r = 136, g = 243, b = 216},
    Type  = 1,
    BlipSprite = 85,
    BlipColor = 21,
    BlipName = Config.nameJobLabel.." : Traitement du Vin",
  },

  TraitementJus = {
    Pos   = {x = 811.337, y = 2179.402, z = 51.388},
    Size  = {x = 3.5, y = 3.5, z = 2.0},
    Color = {r = 136, g = 243, b = 216},
    Type  = 1,
    BlipSprite = 85,
    BlipColor = 21,
    BlipName = Config.nameJobLabel.." : Traitement du Jus de raisin",
  },

  SellVin = {
    Pos   = {x = -143.457, y = -65.354, z = 53.681},
    Size  = {x = 2.0, y = 2.0, z = 1.0},
    Color = {r = 136, g = 243, b = 216},
    Type  = 1,
    BlipSprite = 85,
    BlipColor = 21,
    BlipName = Config.nameJobLabel.." : Vente - vin",
  },

  SellJus = {
    Pos   = {x = -147.551, y = -64.614, z = 53.391},
    Size  = {x = 2.0, y = 2.0, z = 1.0},
    Color = {r = 136, g = 243, b = 216},
    Type  = 1,
    BlipSprite = 85,
    BlipColor = 21,
    BlipName = Config.nameJobLabel.." : Vente - jus de raisin",
  },

  VigneronActions = {
  Pos = {x = -1912.372, y = 2072.8010, z = 139.387},
  Size = {x = 1.5, y = 1.5, z = 1.0},
  Color = {r = 136, g = 243, b = 216},
  Type  = 0,
  BlipSprite = 85,
  BlipColor = 21,
  BlipName = Config.nameJobLabel.." : Entreprise",
  },

  VehicleSpawner = {
  Pos = {x = -1889.653, y = 2050.071, z = 139.985},
  Size = {x = 1.5, y = 1.5, z = 1.0},
  Color = {r = 136, g = 243, b = 216},
  Type = 0,
  BlipSprite = 85,
  BlipColor = 21,
  BlipName = Config.nameJobLabel.." : Garage",
  },

  VehicleSpawnPoint = {
  Pos = {x = -1903.984, y = 2058.367, z = 139.722},
  Size = {x = 1.5, y = 1.5, z = 1.0},
  Color = {r = 136, g = 243, b = 216},
  Type = -1,
  },

  VehicleDeleter = {
  Pos = {x = -1913.550, y = 2030.590, z = 139.738},
  Size = {x = 3.0, y = 3.0, z = 1.0},
  Color = {r = 136, g = 243, b = 216},
  Type = 0,
  BlipSprite = 85,
  BlipColor = 21,
  BlipName = Config.nameJobLabel.." : Retour véhicule",
  },

}