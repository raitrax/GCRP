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
      { name = 'WEAPON_BAT',                  price = 0 },
	  { name = 'WEAPON_SWITCHBLADE',          price = 0 },
	  { name = 'WEAPON_KNIFE',                price = 0 },
	  { name = 'WEAPON_MACHETE',              price = 0 },
	  { name = 'WEAPON_FLASHLIGHT',           price = 0 }, 
	  { name = 'WEAPON_HAMMER',      	      price = 0 },
	  { name = 'WEAPON_GOLFCLUB',             price = 0 },
	  { name = 'WEAPON_CROWBAR',              price = 0 },
	  { name = 'WEAPON_BOTTLE',               price = 0 },
	  { name = 'WEAPON_DAGGER',       	      price = 0 },
	  { name = 'WEAPON_KNUCKLE',              price = 0 },
	  { name = 'WEAPON_BATTLEAXE',            price = 0 },
	  { name = 'WEAPON_POOLCUE',              price = 0 },
	  { name = 'WEAPON_WRENCH',               price = 0 },
      --{ name = 'WEAPON_NIGHTSTICK',           price = 0 },
      --{ name = 'WEAPON_STUNGUN',              price = 0 }, 	  
	  --{ name = 'WEAPON_PISTOL',               price = 0 },
	  --{ name = 'WEAPON_COMBATPISTOL',         price = 0 },
	  --{ name = 'WEAPON_PISTOL50',     	      price = 50 },
      --{ name = 'WEAPON_APPISTOL',             price = 50 },
	  --{ name = 'WEAPON_SNSPISTOL',            price = 0 },
	  --{ name = 'WEAPON_HEAVYPISTOL',          price = 50 },
	  --{ name = 'WEAPON_VINTAGEPISTOL',        price = 0 },
	  --{ name = 'WEAPON_MARKSMANPISTOL',       price = 50 }, 
	  --{ name = 'WEAPON_MACHINEPISTOL',        price = 50 },
	  --{ name = 'WEAPON_REVOLVER',             price = 50 },
	  --{ name = 'WEAPON_SNSPISTOL_MK2',        price = 150 },
	  { name = 'WEAPON_REVOLVER_MK2',         price = 1000 },
	  { name = 'WEAPON_PISTOL_MK2',       	  price = 1000 },	  
	  { name = 'WEAPON_FLAREGUN',      	      price = 300 },
	  --{ name = 'WEAPON_SNIPERRIFLE',          price = 0 },
	  --{ name = 'WEAPON_HEAVYSNIPER',          price = 0 },
	  --{ name = 'WEAPON_REMOTESNIPER',         price = 0 },
	  --{ name = 'WEAPON_MARKSMANRIFLE_MK2',    price = 150 },
      --{ name = 'WEAPON_HEAVYSNIPER_MK2',      price = 150 },
	  --{ name = 'WEAPON_ADVANCEDRIFLE',        price = 0 },  
	  { name = 'WEAPON_MINISMG',              price = 3000 },
      { name = 'WEAPON_MICROSMG',             price = 3000 },
	  { name = 'WEAPON_SMG',                  price = 3000 },
	  --{ name = 'WEAPON_ASSAULTSMG',           price = 50 },	  
	  --{ name = 'WEAPON_SMG_MK2',              price = 50 },	  
	  --{ name = 'WEAPON_ASSAULTRIFLE',         price = 0 }, 
	  --{ name = 'WEAPON_CARBINERIFLE',      	  price = 50 },
	  --{ name = 'WEAPON_SPECIALCARBINE',       price = 0 },
	  --{ name = 'WEAPON_SPECIALCARBINE_MK2',   price = 150 },
	  --{ name = 'WEAPON_ASSAULTRIFLE_MK2',     price = 150 },
	  --{ name = 'WEAPON_CARBINERIFLE_MK2',     price = 150 },	  
	  --{ name = 'WEAPON_PUMPSHOTGUN',          price = 0 },
	  --{ name = 'WEAPON_SAWNOFFSHOTGUN',       price = 50 },
	  --{ name = 'WEAPON_ASSAULTSHOTGUN',       price = 0 },
      { name = 'WEAPON_BULLPUPSHOTGUN',       price = 6000 },
      --{ name = 'WEAPON_BULLPUPRIFLE',         price = 50 },
      --{ name = 'WEAPON_BULLPUPRIFLE_MK2',     price = 150 },
	  --{ name = 'WEAPON_PUMPSHOTGUN_MK2',      price = 150 },	  
	  --{ name = 'WEAPON_STINGER',              price = 0 },
	  --{ name = 'WEAPON_GRENADE',              price = 0 },
	  { name = 'WEAPON_STICKYBOMB',           price = 20000 }, 
	  { name = 'WEAPON_SMOKEGRENADE',      	  price = 800 },
	  --{ name = 'WEAPON_BZGAS',                price = 0 },
	  { name = 'WEAPON_MOLOTOV',              price = 900 },
	  --{ name = 'WEAPON_FIREEXTINGUISHER',     price = 0 },
	  { name = 'WEAPON_PETROLCAN',       	  price = 50 },
	  --{ name = 'WEAPON_BALL',                 price = 0 },
	  { name = 'WEAPON_FIREWORK',             price = 50 },
	  --{ name = 'WEAPON_PROXMINE',             price = 0 },
      --{ name = 'WEAPON_HANDCUFFS',            price = 50 },
	  --{ name = 'WEAPON_PIPEBOMB',             price = 0 },
	  { name = 'WEAPON_FLARE',                price = 50 },
	  --{ name = 'WEAPON_DOUBLEACTION',         price = 50 },
    },

	  AuthorizedVehicles = {
		  { name = 'cognoscenti2',  label = 'Armored Enus' },
		  { name = 'Manchez',    label = 'Manchez' },
		  { name = 'bf400',      label = 'BF400' },
		  { name = 'royale',   label = 'royale' },
          { name = 'ztype',   label = 'ztype' },
	  },

    Armories = {
      { x = -599.53509521484, y = -1616.7631835938, z = 32.010540008545},
    },

    Cloakrooms = {
      { x = -592.78063964844, y = -1617.3233642578, z = 32.010540008545},
    },
	
	
    Vehicles = {
      {
        Spawner    = { x = -622.02563476563, y = -1626.6488037109, z = 32.010578155518 },
        SpawnPoint = { x = -585.87429199219, y = -1588.4279785156, z = 26.751146316528 },
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
      { x = -610.36248779297, y = -1597.6522216797, z = 25.751033782959 },
      
    },

    BossActions = {
      { x = -616.38177490234, y = -1622.8237304688, z = 32.010578155518 },
    },

  },

}
