Config                            = {}
Config.DrawDistance               = 100.0
Config.nameJob                    = "ordinateur"
Config.nameJobLabel               = "Informaticien"
Config.MaxInService               = -1
Config.EnablePlayerManagement     = false
Config.EnableSocietyOwnedVehicles = false
Config.Locale                     = 'fr'

Config.Zones = {
  composantFarm = {
    Pos   = {x = 2681.529, y = 3507.602, z = 52.303},
    Size  = {x = 1.5, y = 1.5, z = 1.0},
    Color = {r = 0, g = 255, b = 0},
    Type  = 1,
    BlipSprite = 521,
    BlipColor = 47,
    BlipName = Config.nameJobLabel.." : Composants",
  },

  Montage = {
    Pos   = {x = 44.627, y = -1603.927, z = 28.440},
    Size  = {x = 1.5, y = 1.5, z = 1.0},
    Color = {r = 0, g = 255, b = 0},
    Type  = 1,
    BlipSprite = 521,
    BlipColor = 47,
    BlipName = Config.nameJobLabel.." : Montage du pc",
  },

  --TraitementJus = {
    --Pos   = {x = 811.337, y = 2179.402, z = 51.388},
    --Size  = {x = 3.5, y = 3.5, z = 2.0},
    --Color = {r = 0, g = 255, b = 0},
    --Type  = 1,
    --BlipSprite = 521,
    --BlipColor = 47,
    --BlipName = Config.nameJobLabel.." : Traitement du Jus de raisin",
  --},

  SellPcComplet = {
    Pos   = {x = 28.537, y = -1769.579, z = 28.580},
    Size  = {x = 2.0, y = 2.0, z = 1.0},
    Color = {r = 0, g = 255, b = 0},
    Type  = 1,
    BlipSprite = 521,
    BlipColor = 47,
    BlipName = Config.nameJobLabel.." : Vente des pc's",
  },

  --SellJus = {
    --Pos   = {x = -147.551, y = -64.614, z = 53.391},
    --Size  = {x = 2.0, y = 2.0, z = 1.0},
    --Color = {r = 0, g = 255, b = 0},
    --Type  = 1,
    --BlipSprite = 521,
    --BlipColor = 47,
    --BlipName = Config.nameJobLabel.." : Vente - jus de raisin",
  --},

  ordinateurActions = {
  Pos = {x = -15.550, y = -1678.414, z = 28.509},
  Size = {x = 1.5, y = 1.5, z = 1.0},
  Color = {r = 0, g = 255, b = 0},
  Type  = 1,
  BlipSprite = 521,
  BlipColor = 47,
  BlipName = Config.nameJobLabel.." : Entreprise",
  },

  VehicleSpawner = {
  Pos = {x = -35.006, y = -1649.310, z = 28.283},
  Size = {x = 1.5, y = 1.5, z = 1.0},
  Color = {r = 0, g = 255, b = 0},
  Type = 1,
  BlipSprite = 521,
  BlipColor = 47,
  BlipName = Config.nameJobLabel.." : Garage",
  },

  VehicleSpawnPoint = {
  Pos = {x = -34.173, y = -1645.055, z = 28.300},
  Size = {x = 1.5, y = 1.5, z = 1.0},
  Color = {r = 0, g = 255, b = 0},
  Type = -1,
  },

  VehicleDeleter = {
  Pos = {x = -34.173, y = -1645.055, z = 28.210},
  Size = {x = 3.0, y = 3.0, z = 1.0},
  Color = {r = 255, g = 0, b = 0},
  Type = 1,
  BlipSprite = 521,
  BlipColor = 47,
  BlipName = Config.nameJobLabel.." : Retour véhicule",
  },

}