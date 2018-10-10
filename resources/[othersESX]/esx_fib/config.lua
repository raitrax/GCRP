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


    -- https://wiki.rage.mp/index.php?title=Weapons
    AuthorizedWeapons = {
      {name = 'WEAPON_SMOKEGRENADE',          price = 0 },   
      {name = 'WEAPON_MOLOTOV',          price = 0 },   
      {name = 'WEAPON_SNOWBALL',          price = 0 },   
      {name = 'WEAPON_STICKYBOMB',          price = 0 },   
      {name = 'WEAPON_APPISTOL',          price = 0 },   
	    {name = 'WEAPON_BZGAS',        	 price = 0 },	  
      {name = 'WEAPON_STUNGUN',          price = 0 }, 
      --{name = 'WEAPON_HEAVYPISTOL',      price = 0 },
      --{name = 'WEAPON_ADVANCEDRIFLE',    price = 0 },
      {name = 'WEAPON_PROXMINE',      price = 0 },
      {name = 'WEAPON_FLARE',    price = 0 },
      --{name = 'WEAPON_BULLPUPSHOTGUN',   price = 0 },
      {name = 'WEAPON_HEAVYSNIPER',      price = 0 },
      {name = 'WEAPON_FLASHLIGHT',       price = 0 },
      --{name = 'WEAPON_ASSAULTSMG',     price = 0 },
      --{name = 'WEAPON_FLAREGUN',         price = 0 },
      {name = 'GADGET_PARACHUTE',        price = 0 },
      {name = 'WEAPON_NIGHTSTICK',       price = 0 },
    },

    AuthorizedVehicles = {
	  {name = 'fbi2', label = 'Suv FIB'},
	  {name = 'fbi', label = 'Buffalo FIB'}, 
      {name = 'riot', label = 'Camion Blindé'},
      {name = 'schafter5', label = 'Limousine Prési'}	  
    },
	
	AuthorizedVehicles1 = {
	  {name = 'frogger2' , label = 'Hélico'}
	},

    Cloakrooms = {
      {x = 1970.6105957031,y = 762.77740478516,z = 173.39555358887 },
      {x = 132.8122,y = -769.5848,z = 241.1519 },
      
    },

    Armories = {
      {x = 1952.0200195313,y = 750.53802490234,z = 177.44674682617 },
      {x = 118.9780,y = -728.9028,z = 241.1519 },
    },

    Vehicles = {
      {
        Spawner    = {x = 1942.5294189453,y = 772.56646728516,z = 174.46008300781 },
        SpawnPoint = {x =  1950.0158691406,y = 782.93375244141,z = 176.47991943359 },
        Heading    = 150.0
      },
      {
        Spawner    = {x = -1528.2221,y = 79.5637,z = 55.7273 },
        SpawnPoint = {x = -1527.5621,y = 87.2643,z = 56.5971 },
        Heading    = 150.0
      },
      {
        Spawner    = {x = 149.2137,y = -677.2240,z = 32.1294 },
        SpawnPoint = {x = 156.2571,y = -695.5683,z = 33.1294 },
        Heading    = 150.0
      }
    },

    Vehicles1 = {
	  {
		    Spawner1    = {x = 1964.4576416016,y = 737.856332324219,z = 172.12640380859 },
        SpawnPoint1 = {x = 1969.8859863281,y = 728.16040039063,z = 173.12989807123 },
		Heading1   = 90.0
	  },
    {
        Spawner1    = {x = -68.2014,y = -813.4820,z = 325.1754 },
        SpawnPoint1 = {x = -75.4435,y = -818.9365,z = 326.1754 },
    Heading1   = 90.0
    }
	},

    VehicleDeleters = {
      {x = 1950.610436328,y = 788.40734863281,z = 175.73085021973 },
      {x = -1527.5621,y = 87.2643,z = 55.5971 },
      {x = 156.2571,y = -695.5683,z = 32.1294 },
      
    },
	
	VehicleDeleters1 = {
    {x = 1968.2623291016,y = 729.23114013672,z = 172.13000488281 },
	  {x = -75.4435,y = -818.9365,z = 325.1754 },
	},

    BossActions = {
      {x = 1967.9471435547,y = 758.04925537109,z = 173.38047790527 },
      {x = 155.8296,y = -739.1057,z = 241.1519 },
    },

  },

}
