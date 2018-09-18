Config                            = {}
Config.DrawDistance               = 100.0

Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableVaultManagement      = true
Config.EnableHelicopters          = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.MissCraft                  = 10 -- %


Config.AuthorizedVehicles = {
    { name = 'mule',       label = 'Véhicule de fonction' },
    { name = 'baller3',    label = 'Suv de luxe' },
}

Config.Blips = {
    
    Blip = {
      Pos     = { x = -1388.15, y = -586.807, z = 30.217 },
      Sprite  = 106,
      Display = 4,
      Scale   = 1.0,
      Colour  = 27,
    },

}

Config.Zones = {

    Cloakrooms = {
        Pos   = { x = -1389.475, y = -591.974, z = 29.319 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 204, g = 204, b = 0 },
        Type  = 1,
    },

    Vaults = {
        Pos   = { x = 997.4961, y = -3091.9567, z = -40.1006 },
        Size  = { x = 1.3, y = 1.3, z = 1.0 },
        Color = { r = 0, g = 155, b = 255 },
        Type  = 1,
    },

    Fridge = {
        Pos   = { x = -1386.6848, y = -608.7020, z = 29.3012 },
        Size  = { x = 1.3, y = 1.3, z = 1.0 },
        Color = { r = 0, g = 155, b = 255 },
        Type  = 1,
    },

    Vehicles = {
        Pos          = { x = -1399.6301, y = -638.8583, z = 27.5971 },
        SpawnPoint   = { x = -1405.5892, y = -641.8823, z = 28.6733 },
        Size         = { x = 1.8, y = 1.8, z = 1.0 },
        Color        = { r = 0, g = 155, b = 255 },
        Type         = 1,
        Heading      = 207.43,
    },

    VehicleDeleters = {
        Pos   = { x = -1397.9001, y = -651.3595, z = 27.6218 },
        Size  = { x = 3.0, y = 3.0, z = 1.0 },
        Color = { r = 166, g = 0, b = 0 },
        Type  = 1,
    },

--[[
    Helicopters = {
        Pos          = { x = 137.177, y = -1278.757, z = 28.371 },
        SpawnPoint   = { x = 138.436, y = -1263.095, z = 28.626 },
        Size         = { x = 1.8, y = 1.8, z = 1.0 },
        Color        = { r = 255, g = 255, b = 0 },
        Type         = 23,
        Heading      = 207.43,
    },

    HelicopterDeleters = {
        Pos   = { x = 133.203, y = -1265.573, z = 28.396 },
        Size  = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 255, g = 255, b = 0 },
        Type  = 1,
    },
]]--

    BossActions = {
        Pos   = { x = 993.8271, y = -3100.7646, z = -39.9893 },
        Size  = { x = 1.2, y = 1.2, z = 0.8 },
        Color = { r = 0, g = 200, b = 255 },
        Type  = 1,
    },

-----------------------
-------- SHOPS --------

    Flacons = {
        Pos   = { x = -2955.242, y = 385.897, z = 14.041 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 238, g = 0, b = 0 },
        Type  = 1,
        Items = {
            { name = 'jager',      label = _U('jager'),   price = 3 },
            { name = 'vodka',      label = _U('vodka'),   price = 4 },
            { name = 'rhum',       label = _U('rhum'),    price = 2 },
            { name = 'whisky',     label = _U('whisky'),  price = 7 },
            { name = 'tequila',    label = _U('tequila'), price = 2 },
            { name = 'martini',    label = _U('martini'), price = 5 }
        },
    },

    NoAlcool = {
        Pos   = { x = 178.028, y = 307.467, z = 104.392 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 238, g = 110, b = 0 },
        Type  = 1,
        Items = {
            { name = 'soda',        label = _U('soda'),     price = 4 },
            { name = 'jusfruit',    label = _U('jusfruit'), price = 3 },
            { name = 'icetea',      label = _U('icetea'),   price = 4 },
            { name = 'energy',      label = _U('energy'),   price = 7 },
            { name = 'drpepper',    label = _U('drpepper'), price = 2 },
            { name = 'limonade',    label = _U('limonade'), price = 1 }
        },
    },

    Apero = {
        Pos   = { x = 98.675, y = -1809.498, z = 26.095 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 142, g = 125, b = 76 },
        Type  = 1,
        Items = {
            { name = 'bolcacahuetes',   label = _U('bolcacahuetes'),    price = 7 },
            { name = 'bolnoixcajou',    label = _U('bolnoixcajou'),     price = 10 },
            { name = 'bolpistache',     label = _U('bolpistache'),      price = 15 },
            { name = 'bolchips',        label = _U('bolchips'),         price = 5 },
            { name = 'saucisson',       label = _U('saucisson'),        price = 25 },
            { name = 'grapperaisin',    label = _U('grapperaisin'),     price = 15 }
        },
    },

    Ice = {
        Pos   = { x = 26.979, y = -1343.457, z = 28.517 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 255, g = 255, b = 255 },
        Type  = 1,
        Items = {
            { name = 'ice',     label = _U('ice'),      price = 1 },
            { name = 'menthe',  label = _U('menthe'),   price = 2 }
        },
    },

}


-----------------------
----- TELEPORTERS -----

Config.TeleportZones = {
  EnterBuilding = {
    Pos       = { x = -1385.0627, y = -606.3906, z = 29.3020 },
    Size      = { x = 1.2, y = 1.2, z = 0.5 },
    Color     = { r = 200, g = 200, b = 200 },
    Marker    = 1,
    Hint      = _U('e_to_enter_1'),
    Teleport  = { x = 993.7139, y = -3097.8559, z = -38.9958 }
  },

  ExitBuilding = {
    Pos       = { x = 992.2869, y = -3097.7858, z = -40.1216 },
    Size      = { x = 1.2, y = 1.2, z = 0.5 },
    Color     = { r = 200, g = 200, b = 200 },
    Marker    = 1,
    Hint      = _U('e_to_exit_1'),
    Teleport  = { x = -1385.0712, y = -606.3679, z = 30.3195 },
  },

  EnterHeliport = {
    Pos       = { x = -1391.1696, y = -597.7009, z = 29.2685 },
    Size      = { x = 1.2, y = 1.2, z = 0.5 },
    Color     = { r = 200, g = 200, b = 200 },
    Marker    = 1,
    Hint      = _U('e_to_enter_2'),
    Teleport  = { x = -1390.4757, y = -600.3284, z = 30.3195 }
  },

  ExitHeliport = {
    Pos       = { x = -1391.3098, y = -600.7614, z = 29.2686 },
    Size      = { x = 1.2, y = 1.2, z = 0.5 },
    Color     = { r = 200, g = 200, b = 200 },
    Marker    = 1,
    Hint      = _U('e_to_exit_2'),
    Teleport  = { x = -1391.1589, y = -597.6850, z = 30.3194 },
  },
}
