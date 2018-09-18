Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.LawyerStations = {

  LAWYER = {

    Blip = {
      Pos     = {x = -1913.7734375,y = -574.34735107422,z = 10.435150146484 },
      Sprite  = 408,
      Display = 4,
      Scale   = 1.2,
      Colour  = 5,
    },

    AuthorizedVehicles = {
	 -- {name = 'surge' , label = 'Voiture de fonction'},
	  {name = 'Blista2' , label = 'Voiture de fonction'},
    },	

    Cloakrooms = {
      {x = -1905.6109619141,y = -570.30017089844,z = 18.097215652466 },
    },

    Vehicles = {
      { 
        Spawner    = {x = -1901.116,y = -563.806,z = 10.816 },
        SpawnPoint = {x = -1899.217,y = -561.830,z = 10.200 },
        Heading    = 320.1076
      }
    },

    VehicleDeleters = {
      {x = -1901.659,y = -559.5477,z = 10.816 },
    },
	
    BossActions = {
      {x = -1911.9284667969,y = -569.62390136719,z = 18.097215652466 },
    },

  },

}
