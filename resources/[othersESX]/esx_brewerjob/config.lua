Config                            = {}
Config.DrawDistance               = 100.0
Config.nameJob                    = "brewer"
Config.nameJobLabel               = "Brasseur"
Config.MaxInService               = -1
Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.Locale                     = 'fr'

Config.Zones = {
  IngredientsBeer = {
    Pos   = {x = 363.849, y = 6485.442, z = 28.042},
    Size  = {x = 3.5, y = 3.5, z = 2.0},
    Color = {r = 0, g = 250, b = 0},
    Type  = 1,
    BlipSprite = 51,
    BlipColor = 75,
    BlipName = Config.nameJobLabel.." : Récolte",
  },

  TraitementBeer = {
    Pos   = {x = 2899.4875, y = 4398.353, z = 49.238},
    Size  = {x = 3.5, y = 3.5, z = 2.0},
    Color = {r = 0, g = 250, b = 0},
    Type  = 1,
    BlipSprite = 51,
    BlipColor = 75,
    BlipName = Config.nameJobLabel.." : Traitement",
  },

  SellBeer = {
    Pos   = {x = 460.448, y = -1870.301, z = 25.967},
    Size  = {x = 2.0, y = 2.0, z = 1.0},
    Color = {r = 0, g = 250, b = 0},
    Type  = 1,
    BlipSprite = 51,
    BlipColor = 75,
    BlipName = Config.nameJobLabel.." : Livraison",
  },

  brewerActions = {
  Pos = {x = 463.957, y = -1851.323, z = 26.819},
  Size = {x = 1.5, y = 1.5, z = 1.0},
  Color = {r = 0, g = 250, b = 0},
  Type  = 1,
  BlipSprite = 51,
  BlipColor = 75,
  BlipName = Config.nameJobLabel.." : Entreprise",
  },

  VehicleSpawner = {
  Pos = {x = 472.586, y = -1853.307, z = 26.537},
  Size = {x = 1.5, y = 1.5, z = 1.0},
  Color = {r = 0, g = 250, b = 0},
  Type = 1,
  BlipSprite = 51,
  BlipColor = 75,
  BlipName = Config.nameJobLabel.." : Garage",
  },

  VehicleSpawnPoint = {
  Pos = {x = 472.586, y = -1853.307, z = 26.323},
  Size = {x = 1.5, y = 1.5, z = 1.0},
  Color = {r = 0, g = 250, b = 0},
  Type = -1,
  },

  VehicleDeleter = {
  Pos = {x = 476.294, y = -1858.682, z = 26.226},
  Size = {x = 3.0, y = 3.0, z = 1.0},
  Color = {r = 250, g = 0, b = 0},
  Type = 1,
  BlipSprite = 51,
  BlipColor = 75,
  BlipName = Config.nameJobLabel.." : Retour véhicule",
  },

}