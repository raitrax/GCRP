Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 102, g = 0, b = 102 }
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.ReviveReward               = 800 -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = false -- disable if you're using fivem-ipl or other IPL loaders
Config.Locale                     = 'fr'

local second = 1000
local minute = 60 * second

-- How much time before auto respawn at hospital
Config.RespawnDelayAfterRPDeath   = 10 * minute

-- How much time before a menu opens to ask the player if he wants to respawn at hospital now
-- The player is not obliged to select YES, but he will be auto respawn
-- at the end of RespawnDelayAfterRPDeath just above.
Config.RespawnToHospitalMenuTimer   = true
Config.MenuRespawnToHospitalDelay   = 5 * minute

Config.EnablePlayerManagement       = true
Config.EnableSocietyOwnedVehicles   = false

Config.RemoveWeaponsAfterRPDeath    = true
Config.RemoveCashAfterRPDeath       = true
Config.RemoveItemsAfterRPDeath      = true

-- Will display a timer that shows RespawnDelayAfterRPDeath time remaining
Config.ShowDeathTimer               = true

-- Will allow to respawn at any time, don't use with RespawnToHospitalMenuTimer enabled!
Config.EarlyRespawn                 = false
-- The player can have a fine (on bank account)
Config.RespawnFine                  = true
Config.RespawnFineAmount            = 1000

Config.Blip = {
  Pos     = {x = 289.33529663086,y = -610.91461181641,z = 42.377620697021 },
	Sprite  = 61,
	Display = 4,
	Scale   = 1.2,
	Colour  = 2,
}

Config.HelicopterSpawner = {
  SpawnPoint  = { x = 1151.447, y = -1529.491, z = 34.375 },
	Heading    = 0.0
}

-- https://wiki.fivem.net/wiki/Vehicles
Config.AuthorizedVehicles = {

	{
		model = 'ambulance',
		label = 'Ambulance'
	},
	{
		model = 'polmav',
		label = 'Hélicoptère'
	}

}

Config.Zones = {

	HospitalInteriorEntering1 = { -- Main entrance
    Pos  = {x = 355.53274536133,y = -596.26574707031,z = 27.773900985718 },
		Type = 1
	},

	HospitalInteriorInside1 = {
    Pos  = { x = 251.464, y = -1369.770, z = 28.648 },
		Type = -1
	},

	HospitalInteriorOutside1 = {
    Pos  = {x = 360.15405273438,y = -584.91723632813,z = 27.821113586426 },
		Type = -1
	},

	HospitalInteriorExit1 = {
    Pos  = { x = 253.612, y = -1371.66, z = 28.647 },
		Type = 1
	},

	HospitalInteriorEntering2 = { -- Lift go to the roof
    Pos  = {x = 299.00369262695,y = -584.41784667969,z = 42.260848999023 },
		Type = 1
	},

	HospitalInteriorInside2 = { -- Roof outlet
    Pos  = { x = 240.508,  y = -1360.565, z = 28.647 },
		Type = -1
	},

	HospitalInteriorOutside2 = { -- Lift back from roof
    Pos  = {x = 296.82888793945,y = -583.78625488281,z = 42.133781433105 },
		Type = -1
	},

	HospitalInteriorExit2 = { -- Roof entrance
    Pos  = { x = 238.587,  y = -1359.113, z = 28.647 },
		Type = 1
	},

	AmbulanceActions = { -- Cloakroom
    Pos  = { x = 244.048, y = -1366.330, z = 28.647 },
		Type = 1
	},

	VehicleSpawner = {
    Pos  = {x = 299.60278320313,y = -578.91680908203,z = 42.260848999023 },
		Type = 1
	},

	VehicleSpawnPoint = {
    Pos  = {x = 282.10607910156,y = -607.35223388672,z = 42.117553710938 },
		Type = -1
	},

	VehicleDeleter = {
    Pos  = {x = 289.33529663086,y = -610.91461181641,z = 42.377620697021 },
		Type = 1
	},

	Pharmacy = {
    Pos  = {x = 230.38511657715,y = -1366.3583984375,z = 38.534370422363 },
		Type = 1
	},

	ParkingDoorGoOutInside = {
		Pos	= { x = 234.56, y = -1373.77, z = 20.97 },
		Type = 1
	},

	ParkingDoorGoOutOutside = {
		Pos	= { x = 318.312, y = -557.297, z = 27.743 },
		Type = -1
	},

	ParkingDoorGoInInside = {
		Pos	= { x = 238.64, y = -1368.48, z = 23.53 },
		Type = -1
	},

	ParkingDoorGoInOutside = {
		Pos	= { x = 319.270, y = -558.911, z = 27.743 },
		Type = 1
	},

	StairsGoTopTop = {
		Pos	= { x = 251.91, y = -1363.3, z = 38.53 },
		Type = -1
	},

	StairsGoTopBottom = {
		Pos	= { x = 237.45, y = -1373.89, z = 26.30 },
		Type = -1
	},

	StairsGoBottomTop = {
		Pos	= { x = 256.58, y = -1357.7, z = 37.30 },
		Type = -1
	},

	StairsGoBottomBottom = {
		Pos	= { x = 235.45, y = -1372.89, z = 26.30 },
		Type = -1
	}

}
