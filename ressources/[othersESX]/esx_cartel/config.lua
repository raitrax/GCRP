Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale = 'fr'

Config.CartelStations = {

  Cartel = {

    Blip = {
--      Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
     -- { name = 'WEAPON_KNIFE',              price = 5000 },
	 -- { name = 'WEAPON_SWITCHBLADE',        price = 5000 },
     -- { name = 'WEAPON_PISTOL50',           price = 10000},
	 -- { name = 'WEAPON_APPISTOL',           price = 15000 },
	 -- { name = 'WEAPON_SAWNOFFSHOTGUN',     price = 15000 },
     -- { name = 'WEAPON_COMPACTRIFLE',       price = 20000 },
	 -- { name = 'WEAPON_ASSAULTRIFLE',       price = 25000 },
     -- { name = 'WEAPON_FLASHLIGHT',       price = 800 },
     -- { name = 'WEAPON_FIREEXTINGUISHER', price = 1200 },
     -- { name = 'WEAPON_FLAREGUN',         price = 6000 },
     -- { name = 'GADGET_PARACHUTE',        price = 3000 },
	 -- { name = 'WEAPON_BAT'		,        price = 3000 },
     -- { name = 'WEAPON_STICKYBOMB',       price = 200000 },
   --   { name = 'WEAPON_SNIPERRIFLE',      price = 2200000 },
     -- { name = 'WEAPON_FIREWORK',         price = 30000 },
     -- { name = 'WEAPON_GRENADE',          price = 180000 },
     -- { name = 'WEAPON_BZGAS',            price = 120000 },
    --  { name = 'WEAPON_SMOKEGRENADE',     price = 100000 },
      --{ name = 'WEAPON_CARBINERIFLE',     price = 1100000 },
   --   { name = 'WEAPON_HEAVYSNIPER',      price = 2000000 },
    --  { name = 'WEAPON_MINIGUN',          price = 700000 },
     -- { name = 'WEAPON_RAILGUN',          price = 2500000 },
    },

	  AuthorizedVehicles = {
		  { name = 'cognoscenti2',  label = 'Armored Enus' },
		  { name = 'Manchez',    label = 'Manchez' },
		  { name = 'bf400',      label = 'BF400' },
		  { name = 'Contender',   label = 'Contender' },
	  },

    Armories = {
      { x = 1399.7705, y = 1139.6864, z = 113.3336},
    },

    Cloakrooms = {
   --   { x = 1172.7686767575, y = 2636.0771484375, z = 36.78857421875},
    },
	
	
    Vehicles = {
      {
        Spawner    = { x = 1407.7373, y = 1114.1317, z = 113.9377 },
        SpawnPoint = { x = 1392.8703, y = 1117.9619, z = 113.8376 },
        Heading    = 296.36,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = 113.30500793457, y = -3109.3337402344, z = 6.0060696601868 },
        SpawnPoint = { x = 112.94457244873, y = -3102.5942382813, z = 6.0050659179688 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = 1392.8703, y = 1117.9619, z = 113.8376 },
      
    },

    BossActions = {
      { x = 1397.7653, y = 1164.1705, z = 113.3335 },
    },

  },

}
