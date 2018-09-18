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
Config.Locale                     = 'fr'

Config.GangStations = {

  Gang = {

    Blip = {
    --  Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_SWITCHBLADE',        price = 10000 },
	 -- { name = 'WEAPON_APPISTOL',           price = 35000 },
	 -- { name = 'WEAPON_SAWNOFFSHOTGUN',     price = 40000 },
   --   { name = 'WEAPON_MICROSMG',           price = 50000 },
	 -- { name = 'WEAPON_CARBINERIFLE',       price = 70000 },
     -- { name = 'WEAPON_STUNGUN',          price = 50000 },
     -- { name = 'WEAPON_FLASHLIGHT',       price = 800 },
     -- { name = 'WEAPON_FIREEXTINGUISHER', price = 1200 },
     -- { name = 'WEAPON_FLAREGUN',         price = 6000 },
     -- { name = 'WEAPON_STICKYBOMB',       price = 200000 },
   --   { name = 'WEAPON_SNIPERRIFLE',      price = 2200000 },
     -- { name = 'WEAPON_FIREWORK',         price = 30000 },
     -- { name = 'WEAPON_GRENADE',          price = 180000 },
     -- { name = 'WEAPON_BZGAS',            price = 120000 },
    --  { name = 'WEAPON_SMOKEGRENADE',     price = 100000 },
   --   { name = 'WEAPON_HEAVYSNIPER',      price = 2000000 },
    --  { name = 'WEAPON_MINIGUN',          price = 700000 },
     -- { name = 'WEAPON_RAILGUN',          price = 2500000 },
    },

	  AuthorizedVehicles = {
		  { name = 'revolter',  label = 'revolter' },
		  { name = 'hakuchou', label = 'Hakuchou' },
	  },

    Cloakrooms = {
      { x = -800.220, y = 170.017, z = 71.628},
    },

    Armories = {
      { x = -801.870, y = 172.891, z = 71.628},
    },

    Vehicles = {
      {
        Spawner    = { x = -824.867, y = 181.534, z = 70.300 },
        SpawnPoint = { x = -835.410, y = 159.170, z = 67.266 },
        Heading    = 90.0,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = 113.30500793457, y = -3109.3337402344, z = 5.0060696601868 },
        SpawnPoint = { x = 1398.595, y = 1117.358, z = 114.100 },
        Heading    = 89.424,
      }
    },

    VehicleDeleters = {
      { x = -811.250, y = 187.579, z = 71.500 },
      
    },

    BossActions = {
      { x = -805.378, y = 169.833, z = 71.628 },
    },

  },

}
