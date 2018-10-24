Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 102, g = 0, b = 102 }
Config.NPCJobEarnings             = {min = 10, max = 50}
Config.EnablePlayerManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
local second = 1000
local minute = 60 * second
-- How much time before auto respawn at hospital
Config.RespawnDelayAfterRPDeath   = 10 * minute
-- How much time before a menu opens to ask the player if he wants to respawn at hospital now
-- The player is not obliged to select YES, but he will be auto respawn
-- at the end of RespawnDelayAfterRPDeath just above.
Config.RespawnToHospitalMenuTimer   = true
Config.MenuRespawnToHospitalDelay   = 3 * minute
Config.EnableSocietyOwnedVehicles = false
Config.RemoveWeaponsAfterRPDeath  = false
Config.RemoveCashAfterRPDeath     = true
Config.RemoveItemsAfterRPDeath    = true

-- Will display a timer that shows RespawnDelayAfterRPDeath time remaining
Config.ShowDeathTimer             = true
-- Will allow to respawn at any time, don't use RespawnToHospitalMenuTimer at the same time !
Config.EarlyRespawn               = true
-- The player can have a fine (on bank account)
Config.EarlyRespawnFine           = true
Config.EarlyRespawnFineAmount     = 300
Config.Locale                     = 'fr'

Config.JobLocations = {
	{x = 295.44149780273,y = -1439.6423339844,z = 28.803928375244 },
	{x = 1165.1629638672,y = -1536.8948974609,z = 38.400791168213 },
	{x = 1827.8881835938,y = 3693.8835449219,z = 33.224269866943 },
}

Config.Blip = {
  Pos     = {x = 289.33529663086,y = -610.91461181641,z = 42.377620697021 },
  Sprite  = 61,
  Display = 4,
  Scale   = 1.2,
  Colour  = 2,
}

Config.HelicopterSpawner = {
  SpawnPoint  = { x = 1151.447, y = -1529.491, z = 34.375 },
  Heading     = 0.0
}


Config.Zones = {


  HospitalInteriorEntering1 = { ------------------ entrer dans l'hopital coté civil
    Pos  = {x = 355.53274536133,y = -596.26574707031,z = 27.773900985718 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = 1
  },

  HospitalInteriorInside1 = {
    Pos  = { x = 251.464, y = -1369.770, z = 28.648 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = -1
  },

  HospitalInteriorOutside1 = { --------------------- sorti hopital vers entree hopital
    Pos  = {x = 360.15405273438,y = -584.91723632813,z = 27.821113586426 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = -1
  },

  HospitalInteriorExit1 = {
    Pos  = { x = 253.612, y = -1371.66, z = 28.647 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = 1
  },

  HospitalInteriorEntering2 = {-------------- entrer dans l'hopital coté camion
    Pos  = {x = 299.00369262695,y = -584.41784667969,z = 42.260848999023 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = 1
  },

  HospitalInteriorInside2 = {
    Pos  = { x = 240.508,  y = -1360.565, z = 28.647 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = -1
  },

  HospitalInteriorOutside2 = {-------------- sortir hopital vers voiture de service
    Pos  = {x = 296.82888793945,y = -583.78625488281,z = 42.133781433105 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = -1
  },

  HospitalInteriorExit2 = {
    Pos  = { x = 238.587,  y = -1359.113, z = 28.647 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = 1
  },

  AmbulanceActions = {
    Pos  = { x = 244.048, y = -1366.330, z = 28.647 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = 1
  },

  VehicleSpawner = {
    Pos  = {x = 299.60278320313,y = -578.91680908203,z = 42.260848999023 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = 1
  },

  VehicleSpawnPoint = {
    Pos  = {x = 282.10607910156,y = -607.35223388672,z = 42.117553710938 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = -1
  },

  VehicleDeleter = {
    Pos  = {x = 289.33529663086,y = -610.91461181641,z = 42.377620697021 },
    Size = { x = 3.0, y = 3.0, z = 2.0 },
    Type = 1
  },
  
  Pharmacy = {
    Pos  = {x = 230.38511657715,y = -1366.3583984375,z = 38.534370422363 },

    Size = { x = 1.5, y = 1.5, z = 0.4 },
    Type = 1
  },

}
