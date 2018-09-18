Config                            = {}
Config.DrawDistance               = 100.0
Config.nameJob                    = "unicorn"
Config.nameJobLabel               = "Vanilla Unicorn"
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
    { name = 'mule3',  label = 'Camion' },
}

Config.Blips = {

    Blip = {
      Pos     = { x = 129.246, y = -1299.363, z = 29.501 },
      Sprite  = 121,
      Display = 4,
      Scale   = 1.2,
      Colour  = 27,
    },

}

Config.Zones = {

    Cloakrooms = {
        Pos   = { x = 105.111, y = -1303.221, z = 27.788 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 255, g = 187, b = 255 },
        Type  = 27,
    },

    Vaults = {
        Pos   = { x = 93.406, y = -1291.753, z = 28.288 },
        Size  = { x = 1.3, y = 1.3, z = 1.0 },
        Color = { r = 30, g = 144, b = 255 },
        Type  = 23,
    },

    Fridge = {
        Pos   = { x = 135.478, y = -1288.615, z = 28.289 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 248, g = 248, b = 255 },
        Type  = 23,
    },

    Vehicles = {
        Pos          = { x = 137.177, y = -1278.757, z = 28.371 },
        SpawnPoint   = { x = 138.436, y = -1263.095, z = 28.626 },
        Size         = { x = 1.8, y = 1.8, z = 1.0 },
        Color        = { r = 255, g = 255, b = 0 },
        Type         = 23,
        Heading      = 207.43,
    },

    VehicleDeleters = {
        Pos   = { x = 133.203, y = -1265.573, z = 28.396 },
        Size  = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 255, g = 255, b = 0 },
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
        Pos   = { x = 94.951, y = -1294.021, z = 28.268 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 0, g = 100, b = 0 },
        Type  = 1,
    },

-----------------------
-------- SHOPS --------

	Flacons = {
		Pos   = { x = -2955.242, y = 385.897, z = 14.041 },
		Size  = { x = 1.6, y = 1.6, z = 1.0 },
		Color = { r = 238, g = 0, b = 0 },
		Type  = 23,
		BlipSprite = 121,
		BlipColor = 27,
		BlipName = Config.nameJobLabel.." : Alcohol",
        Items = {
            { name = 'jager',      label = 'Jägermeister',  price = 3 },
            { name = 'vodka',      label = 'Vodka',         price = 4 },
            { name = 'rhum',       label = 'Rhum',          price = 2 },
            { name = 'whisky',     label = 'Whisky',        price = 7 },
            { name = 'tequila',    label = 'Tequila',       price = 2 },
            { name = 'martini',    label = 'Martini blanc', price = 5 }
        },
    },

    NoAlcool = {
        Pos   = { x = 178.028, y = 307.467, z = 104.392 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 238, g = 110, b = 0 },
        Type  = 23,
		BlipSprite = 121,
		BlipColor = 27,
		BlipName = Config.nameJobLabel.." : Sans alcohol",
        Items = {
            { name = 'soda',        label = 'Soda',         price = 4 },
            { name = 'jusfruit',    label = 'Jus de fruits',price = 3 },
            { name = 'icetea',      label = 'Ice Tea',      price = 4 },
            { name = 'energy',      label = 'Energy Drink', price = 7 },
            { name = 'drpepper',    label = 'Dr. Pepper',   price = 2 },
            { name = 'limonade',    label = 'Limonade',     price = 1 },
            { name = 'water',       label = 'eau',          price = 1 }
        },
    },

    Apero = {
        Pos   = { x = 98.675, y = -1809.498, z = 26.095 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 142, g = 125, b = 76 },
        Type  = 23,
		BlipSprite = 121,
		BlipColor = 27,
		BlipName = Config.nameJobLabel.." : Apéritif",
        Items = {
            { name = 'bolcacahuetes',   label = 'Bol de cacahuètes',    price = 7 },
            { name = 'bolnoixcajou',    label = 'Bol de noix de cajou', price = 10 },
            { name = 'bolpistache',     label = 'Bol de pistache',      price = 15 },
            { name = 'bolchips',        label = 'Bol de chips',         price = 5 },
            { name = 'saucisson',       label = 'Saucisson',            price = 25 },
            { name = 'grapperaisin',    label = 'Grappe de raisin',     price = 15 },
            { name = 'bread',           label = 'pain',                 price = 2 }

        },
    },

    Ice = {
        Pos   = { x = 26.979, y = -1343.457, z = 28.517 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 255, g = 255, b = 255 },
        Type  = 23,
		BlipSprite = 121,
		BlipColor = 27,
		BlipName = Config.nameJobLabel.." : Aggrémentation",
        Items = {
            { name = 'ice',     label = 'Glaçon',               price = 1 },
            { name = 'menthe',  label = 'Feuille de menthe',    price = 2 }
        },
    },

}


-----------------------
----- TELEPORTERS -----

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

--[[
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

}

-----------------------
--- Items Crafting ---
Config.craft = {
  jagerbomb={
    items={
      {name='energy',qte=2},
      {name='jager',qte=2},
    },
    status={hunger=0,thirst=30000,drunk=30000},
  },
  golem={
    items={
      {name='ice',qte=1},
      {name='vodka',qte=2},
      {name='limonade',qte=2},
    },
    status={hunger=0,thirst=30000,drunk=30000},
  },
  whiskycoca={
    items={
      {name='whisky',qte=2},
      {name='soda',qte=2},
    },
    status={hunger=0,thirst=30000,drunk=30000},
  },
  rhumcoca={
    items={
      {name='rhum',qte=2},
      {name='soda',qte=2},
    },
    status={hunger=0,thirst=30000,drunk=30000},
  },
  vodkaenergy={
    items={
      {name='ice',qte=1},
      {name='vodka',qte=2},
      {name='energy',qte=2},
    },
    status={hunger=0,thirst=30000,drunk=30000},
  },
  vodkafruit={
    items={
      {name='ice',qte=1},
      {name='vodka',qte=2},
      {name='jusfruit',qte=2},
    },
    status={hunger=0,thirst=30000,drunk=30000},
  },
  rhumfruit={
    items={
      {name='ice',qte=1},
      {name='rhum',qte=2},
      {name='jusfruit',qte=2},
    },
    status={hunger=0,thirst=30000,drunk=30000},
  },
  teqpaf={
    items={
      {name='limonade',qte=2},
      {name='tequila',qte=2},
    },
    status={hunger=0,thirst=30000,drunk=30000},
  },
  rhumfruit={
    items={
      {name='ice',qte=1},
      {name='rhum',qte=2},
      {name='limonade',qte=2},
      {name='menthe',qte=2},
    },
    status={hunger=0,thirst=30000,drunk=30000},
  },
  mixapero={
    items={
      {name='bolcacahuetes',qte=2},
      {name='bolnoixcajou',qte=2},
      {name='bolpistache',qte=2},
      {name='bolchips',qte=2},
    },
    status={hunger=20000,thirst=0,drunk=30000},
  },
  metreshooter={
    items={
      {name='jager',qte=2},
      {name='vodka',qte=2},
      {name='whisky',qte=2},
      {name='tequila',qte=2},
    },
    status={hunger=0,thirst=30000,drunk=30000},
  },
  s_poulet={
    items={
      {name='bread',qte=1},
      {name='packaged_chicken',qte=1},
    },
    status={hunger=50000,thirst=50000,drunk=0},
  },
  s_thon={
    items={
      {name='bread',qte=1},
      {name='fish',qte=1},
    },
    status={hunger=50000,thirst=50000,drunk=0},
  },
  mitraillette={
    items={
      {name='bread',qte=1},
      {name='viande',qte=1},
    },
    status={hunger=70000,thirst=70000,drunk=0},
  },
}
