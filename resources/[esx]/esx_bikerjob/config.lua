Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerSizeDel              = { x = 5.0, y = 5.0, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.MarkerColorDel             = { r = 204, g = 50, b = 50 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.FibStations = {

  FIB = {

    Blip = {
     -- Pos     = {x = 104.53714752197,y = -744.36810302734,z = 44.754749298096 },
      Sprite  = 88,
      Display = 4,
      Scale   = 1.0,
      Colour  = 5,
    },

     AuthorizedWeapons = {
      { name = 'WEAPON_PISTOL_MK2',       price = 1000 },
      { name = 'WEAPON_ASSAULTRIFLE',     price = 1000 },
      { name = 'WEAPON_SAWNOFFSHOTGUN',   price = 1000 },
      { name = 'WEAPON_BAT',              price = 1000 },
      { name = 'WEAPON_PUMPSHOTGUN',      price = 1000 },
      { name = 'WEAPON_KNIFE',            price = 1000 },
      { name = 'WEAPON_SNIPERRIFLE',      price = 1000 },
    },

    AuthorizedVehicles = {
	  {name = 'amv19', label = 'aston'},
	  {name = 'bs17', label = 'moto'}, 
      {name = 'granger', label = '4xx'},
      {name = 'schafter', label = 'schafter'}	  
    },
	
	AuthorizedVehicles1 = {
	  {name = 'frogger2' , label = 'Hélico'}
	},

     Cloakrooms = {
      { x = 986.94677734375, y = -92.968696594238, z = 73.84593963623 },
    },

    Armories = {
      { x = 977.17810058594, y = -104.06871795654, z = 73.845100402832 },
    },

    Vehicles = {
      {
        Spawner    = { x = 964.87175996094, y = -119.22956848145, z = 73.353042602539 },
        SpawnPoint = { x = 967.47393798828, y = -125.96086120605, z = 73.354141235352},
        Heading    = 331.298,
      }
    },

    Vehicles1 = {
     {
   	Spawner1    = {x = -71.661056518555,y = -811.02301025391,z = 325.083984375 },
   	SpawnPoint1 = {x = -75.194091796875,y = -818.81500244141,z = 325.17517089844 },
   	Heading1   = 90.0
     }
   },

   VehicleDeleters = {
      { x = 968.1618, y = -127.6460, z = 72.9831 },
    },

	VehicleDeleters1 = {
	  {x = -75.194091796875,y = -818.81500244141,z = 325.17517089844 },
	},

   BossActions = {
      { x = 983.81188964844, y = -92.333023071289, z = 73.851493835449 }
    },

  },

}
