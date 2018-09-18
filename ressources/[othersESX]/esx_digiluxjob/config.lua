Config                            = {}
Config.DrawDistance               = 100.0
Config.nameJob                    = "digilux"
Config.nameJobLabel               = "Digilux"
Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableVaultManagement      = true
Config.EnableHelicopters          = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'
Config.EnableMoneyWash            = false
Config.EnableGrades               = false
Config.MissCraft                  = 10 -- %


Config.AuthorizedVehicles = {
    { name = 'burrito2',  label = 'Camionnette' },
}

Config.Blips = {

    Blip = {
      Pos     = { x = -34.442, y = -1684.027, z = 30.000 },
      Sprite  = 521,
      Display = 4,
      Scale   = 1.2,
      Colour  = 46,
    },

}

Config.Zones = {

    Cloakrooms = {
        Pos   = { x = -15.550, y = -1678.414, z = 28.530 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 255, g = 187, b = 255 },
        Type  = 1,
    },

    Vaults = {
        Pos   = { x = -27.526, y = -1684.691, z = 28.530 },
        Size  = { x = 1.3, y = 1.3, z = 1.0 },
        Color = { r = 30, g = 144, b = 255 },
        Type  = 1,
    },

    Chest = {
        Pos   = { x = 135.478, y = -1288.615, z = 28.310 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 248, g = 248, b = 255 },
        Type  = 1,
    },

    Vehicles = {
        Pos          = { x = 6.640, y = -1674.082, z = 28.330 },
        SpawnPoint   = { x = 2.880, y = -1679.853, z = 29.443 },
        Size         = { x = 1.8, y = 1.8, z = 1.0 },
        Color        = { r = 255, g = 255, b = 0 },
        Type         = 25,
        Heading      = 207.43,
    },

    VehicleDeleters = {
        Pos   = { x = 3.011, y = -1678.622, z = 28.30 },
        Size  = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 255, g = 0, b = 0 },
        Type  = 1,
    },

    Sell = {
        Pos   = {x = 28.537, y = -1769.579, z = 28.580},
        Size  = {x = 2.0, y = 2.0, z = 1.0},
        Color = {r = 0, g = 255, b = 0},
        Type  = 1,
        BlipSprite = 521,
        BlipColor = 46,
        BlipName = Config.nameJobLabel.." : Vente",
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
        Pos   = { x = -25.346, y = -1682.153, z = 28.510 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 0, g = 100, b = 0 },
        Type  = 1,
    },

    Craft = {
        Pos   = { x = -23.715, y = -1681.142, z = 28.510 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 0, g = 100, b = 0 },
        Type  = 1,
        BlipSprite = 521,
        BlipColor = 46,
        BlipName = Config.nameJobLabel.." : Assemblage",
    },

-----------------------
-------- SHOPS --------
--Boîtier et alimentation électrique
	Case = {
		Pos   = { x = 2341.652, y = 3127.913, z = 47.208 },
		Size  = { x = 1.6, y = 1.6, z = 1.0 },
		Color = { r = 255, g = 255, b = 0 },
		Type  = 1,
		BlipSprite = 521,
		BlipColor = 46,
		BlipName = Config.nameJobLabel.." : Boîtier",
        Items = {
            { name = 'case',      label = 'boîtier',  price = 0 },
            { name = 'powersupply',      label = 'alimentation', price = 0 }
        },
    },
--Carte mère avec processeur et ram
    Motherboard = {
        Pos   = { x = 394.543, y = -834.095, z = 28.291 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 255, g = 255, b = 0 },
        Type  = 1,
		BlipSprite = 521,
		BlipColor = 46,
		BlipName = Config.nameJobLabel.." : Carte mère",
        Items = {
            { name = 'motherboard',         label = 'carte mère',price = 0 },
            { name = 'processor',           label = 'processeur',price = 0 },
            { name = 'ram',                 label = 'barrette de ram',price = 0 }
        },
    },
--SSD
    SSD = {
        Pos   = { x = -778.770, y = -596.990, z = 29.276 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 255, g = 255, b = 0 },
        Type  = 1,
		BlipSprite = 521,
		BlipColor = 46,
		BlipName = Config.nameJobLabel.." : SSD",
        Items = {
            { name = 'ssd',           label = 'SSD',                 price = 0 }

        },
    },
--Carte graphique
    Graphiccard = {
        Pos   = { x = -31.567, y = 6481.401, z = 30.498 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 255, g = 255, b = 0 },
        Type  = 1,
		BlipSprite = 521,
		BlipColor = 46,
		BlipName = Config.nameJobLabel.." : Carte graphique",
        Items = {
            { name = 'graphiccard',  label = 'Carte graphique',    price = 0 }
        },
    },

}


-----------------------
----- TELEPORTERS -----
--[[
Config.TeleportZones = {
  EnterBuilding = {
    Pos       = { x = 132.608, y = -1293.978, z = 28.269 },
    Size      = { x = 1.2, y = 1.2, z = 0.1 },
    Color     = { r = 128, g = 128, b = 128 },
    Marker    = 1,
    Blip      = false,
    Name      = "Bar : entrée",
    Type      = "teleport",
    Hint      = "Appuyez sur ~INPUT_PICKUP~ pour passer derrière le bar.",
    Teleport  = { x = 126.742, y = -1278.386, z = 28.569 }
  },

  ExitBuilding = {
    Pos       = { x = 132.517, y = -1290.901, z = 28.269 },
    Size      = { x = 1.2, y = 1.2, z = 0.1 },
    Color     = { r = 128, g = 128, b = 128 },
    Marker    = 1,
    Blip      = false,
    Name      = "Bar : sortie",
    Type      = "teleport",
    Hint      = "Appuyez sur ~INPUT_PICKUP~ pour passer devant le bar.",
    Teleport  = { x = 131.175, y = -1295.598, z = 28.569 },
  },


  EnterHeliport = {
    Pos       = { x = 126.843, y = -729.012, z = 241.201 },
    Size      = { x = 2.0, y = 2.0, z = 0.2 },
    Color     = { r = 204, g = 204, b = 0 },
    Marker    = 1,
    Blip      = false,
    Name      = "Héliport : entrée",
    Type      = "teleport",
    Hint      = "Appuyez sur ~INPUT_PICKUP~ pour monter sur le toit.",
    Teleport  = { x = -65.944, y = -818.589, z =  320.801 }
  },

  ExitHeliport = {
    Pos       = { x = -67.236, y = -821.702, z = 320.401 },
    Size      = { x = 2.0, y = 2.0, z = 0.2 },
    Color     = { r = 204, g = 204, b = 0 },
    Marker    = 1,
    Blip      = false,
    Name      = "Héliport : sortie",
    Type      = "teleport",
    Hint      = "Appuyez sur ~INPUT_PICKUP~ pour descendre dans les bureaux.",
    Teleport  = { x = 124.164, y = -728.231, z = 241.801 },
  },

]]--
-----------------------
--- Items Crafting ---
Config.craft = {
  computer={
    items={
      {name='motherboard',qte=1},
      {name='processor',qte=1},
      {name='powersupply',qte=1},
      {name='ram',qte=2},
      {name='case',qte=1},
      {name='ssd',qte=2},
      {name='graphiccard',qte=1},
    },
  },
  laptop={
    items={
      {name='motherboard',qte=1},
      {name='processor',qte=1},
      {name='powersupply',qte=1},
      {name='ram',qte=1},
      {name='case',qte=1},
      {name='ssd',qte=1},
      {name='graphiccard',qte=1},
    },
  },
}
