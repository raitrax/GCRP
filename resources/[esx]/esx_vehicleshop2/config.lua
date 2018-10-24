Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 120, g = 120, b = 240 }
Config.EnablePlayerManagement     = false -- If set to true, you need esx_addonaccount, esx_billing and esx_society
Config.EnablePvCommand            = false
Config.EnableOwnedVehicles        = true
Config.EnableSocietyOwnedVehicles = false
Config.ResellPercentage           = 50
Config.Locale                     = 'fr'

Config.Zones = {

  ShopEntering = {
    Pos   = { x = -248.73066711426, y = 6212.0942382813, z =  30.939144134521 },
    Size  = { x = 1.5, y = 1.5, z = 1.0 },
    Type  = 1,
  },

  ShopInside = {
    Pos     = { x = -211.43463134766, y = 6212.2631835938, z = 29.987197875977 },
    Size    = { x = 1.5, y = 1.5, z = 1.0 },
    Heading = 73.60,
    Type    = -1,
  },


  ShopOutside = {
    Pos     = { x = -203.62959289551, y = 6225.1206054688, z = 29.991558074951 },
    Size    = { x = 2.5, y = 2.5, z = 2.0 },
    Heading = 73.60,
    Type    = -1,
  },

  --BossActions = {
  --  Pos   = { x = -32.065, y = -1114.277, z = 25.422 },
  --  Size  = { x = 1.5, y = 1.5, z = 1.0 },
  --  Type  = -1,
  --},

  --GiveBackVehicle = {
  --  Pos   = { x = -177.165, y = -1179.974, z = 22.160 },
  --  Size  = { x = 3.0, y = 3.0, z = 1.0 },
  --  Type  = (Config.EnablePlayerManagement and 1 or -1),
  --},

  ResellVehicle = {
    Pos   = { x = -195.89753723154, y = 6230.830078125, z = 29.998943328857 },
    Size  = { x = 3.0, y = 3.0, z = 1.0 },
    Type  = 1,
  },

}

