----------------------------------------------------------------------
----------------------- Developped by AlphaKush ----------------------
----------------------------------------------------------------------

Config              = {}
Config.DrawDistance = 100.0
Config.MarkerColor  = {r = 120, g = 120, b = 240}
Config.EnableSocietyOwnedVehicles = false -- à tester
Config.EnablePlayerManagement     = true
Config.MaxInService               = -1
Config.Locale = 'fr'

Config.Zones = {

    CloakRoom = { --Vestaire
        Pos   = {x = 929.341796875, y = 1256.1413574219, z = 365.1194152832},
        Size  = {x = 1.5, y = 1.5, z = 1.0},
        Color = {r = 0, g = 204, b = 3},
        Type  = 1
    },

    OfficeEnter = { --entrée du batiement
        Pos   = {x = -429.0690612793, y = 1110.7834472656, z = 326.69631958008},
        Size  = {x = 1.5, y = 1.5, z = 1.0},
        Color = {r = 0, g = 204, b = 3},
        Type  = 1
    },

    OfficeExit = { -- sortie du batiment
        Pos   = {x = 128.62324523926, y = -730.74810793016, z = 257.15209960938},
        Size  = {x = 1.5, y = 1.5, z = 1.0},
        Color = {r = 204, g = 91, b = 0},
        Type  = 1
    },

    OfficeInside = { -- spawn interieur batiment
        Pos   = {x = 126.49541473389, y = -728.91430664063, z = 257.15209960938},
        Size  = {x = 1.5, y = 1.5, z = 1.0},
        Type  = -1
    },

    OfficeOutside = { --spawn exterieur batiment
        Pos   = {x = -428.12902832031, y = 1115.4178466797, z = 325.76840209961},
        Size  = {x = 1.5, y = 1.5, z = 1.0},
        Type  = -1
    },

    OfficeActions = { -- Marqueur action boss
        Pos   = {x = 943.70666503906, y = 1240.2282714844, z = 365.11959838867},
        Size  = {x = 1.5, y = 1.5, z = 1.0},
        Color = {r = 0, g = 204, b = 3},
        Type  = 1
    },

	--- Garage ----

	GarageEnter = { -- entrée garage
		Pos   = {x = -467.5237121582, y = 1128.8880615234, z = 324.85531616211},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 0, g = 204, b = 3},
		Type  = 1
	},

	GarageInside = { -- spawn interieur garage
		Pos   = {x = 234.87281799316, y = -1003.8368530273, z = -99.999954223633},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 0, g = 204, b = 3},
		Type  = -1
	},

	GarageExit = { -- exit le garage ascensseur
		Pos   = {x = 240.86296081543, y = -1004.7778930664, z = -99.999969482422},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 204, g = 91, b = 0},
		Type  = 1
	},

	GarageOutside = { -- spawn exterieur du garage
		Pos   = {x = -460.72052001953, y = 1127.3813476563, z = 324.85491943359},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 0, g = 204, b = 3},
		Type  = -1
	},

	VehicleSpawner = { -- Menu dans le garage pour les véhicules
		Pos   = {x = 904.80059814453, y = 1253.0959472656, z = 361.10955810547},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 242, g = 255, b = 0},
		Type  = 1
	},

	VehicleSpawnPoint = { --Spawn du véhicule dans le garage
		Pos   = {x = 914.10266113281, y = 1244.7375488281, z = 361.10952758789},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 0, g = 204, b = 3},
		Type  = -1
	},

	VehicleSpawnExterior = { --Spawn devant l'observatoir à la sorti du garage
			Pos = {x = -413.34255981445, y = 1177.6545410156, z = 325.64166259766},
			Size  = {x = 1.5, y = 1.5, z = 1.0},
			Color = {r = 0, g = 204, b = 3},
			Type  = -1,
			Heading = 250.0
	},

	GarageExitWithVehicle = { -- Marker pour sortir du garage avec la voiture
			Pos = {x = 227.85629272461, y = -1003.4248657227, z = -99.999954223633},
			Size  = {x = 1.5, y = 1.5, z = 1.0},
			Color = {r = 204, g = 91, b = 0},
			Type  = 1
	},

	VehicleDeleter = { -- Marker pour ranger la voiture
		Pos   = {x = 897.89752197266, y = 1239.9478759766, z = 361.10955810547},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 0, b = 0},
		Type  = 1
	},

	------------ TP hélico -----------
	HelicoEnter = { -- entrée helico
		Pos   = {x = -459.17309570313, y = -338.62091064453, z = 90.007537841797},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 0, g = 204, b = 3},
		Type  = 1
	},

	HelicoInside = { -- spawn interieur place helico
		Pos   = {x = -499.70416259766, y = -322.44952392578, z = 72.168121337891},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 0, g = 204, b = 3},
		Type  = -1
	},

	HelicoExit = { -- exit helico
		Pos   = {x = -499.54034423828, y = -324.3981628418, z = 72.168121337891},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 204, g = 91, b = 0},
		Type  = 1
	},

	HelicoOutside = { -- spawn interieur batiment president
		Pos   = {x = -461.71112060547, y = -338.32485961914, z = 90.007621765137},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 0, g = 204, b = 3},
		Type  = -1
	},

	HelicoSpawner = { -- Menu pour spawn l'hélico
		Pos   = {x = -499.01245117188, y = -317.38745117188, z = 72.168121337891},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 242, g = 255, b = 0},
		Type  = 1
	},

	HelicoSpawnPoint = { --Spawn de l'hélico sur la plateforme
		Pos   = {x = -506.28784179688, y = -307.75677490234, z = 75.047210693359}, --Heading = 291.4347
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 0, g = 204, b = 3},
		Type  = -1
	},

	HelicoDeleter = { -- Marker pour ranger l'hélico
		Pos   = {x = -506.3141784668, y = -307.77444458008, z = 74.047294616699},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 0, b = 0},
		Type  = 1
	},
}
