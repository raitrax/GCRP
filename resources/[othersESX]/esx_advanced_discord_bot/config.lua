Config                        = {}
Config.Locale 				  = 'fr'
Config.green 				  = 56108
Config.grey 				  = 8421504
Config.red 					  = 16711680
Config.orange 				  = 16744192
Config.blue 				  = 2061822
Config.purple 				  = 11750815
Config.webhook                = "https://discordapp.com/api/webhooks/482729307693776911/2QNTPoa3JOs15zoNU31cEtvlMBLPJ6e3jSftBhswPmeCxQuZGxFFzA3uYqXfpuTK_NWW"


settings = {
	LogKills = true, -- Log when a player kill an other player.
	LogEnterPoliceVehicle = true, -- Log when an player enter in a police vehicle.
	LogEnterBlackListedVehicle = true, -- Log when a player enter in a blacklisted vehicle.
	LogPedJacking = true, -- Log when a player is jacking a car
	LogChatServer = true, -- Log when a player is talking in the chat , /command works too.
	LogLoginServer = true, -- Log when a player is connecting/disconnecting to the server.
	LogItemTransfer = true, -- Log when a player is giving an item.
	LogWeaponTransfer = true, -- Log when a player is giving a weapon.
	LogMoneyTransfer = true, -- Log when a player is giving money
	LogMoneyBankTransfert = true, -- Log when a player is giving money from bankaccount

}

Components = {
	Teleport = false,
	GodMode = true,
	Speedhack = false,
	WeaponBlacklist = true,
}



blacklistedModels = {
	"APC",
	"BARRACKS",
	"BARRACKS2",
	"RHINO",
	"CRUSADER",
	"CARGOBOB",
	"SAVAGE",
	"TITAN",
	"LAZER",
	"Hydra",
	"Ruiner2",
	"Opressor",
	"Buzzard",
	"Annihilator",
}

BlacklistedWeapons = { -- weapons that will get people banned
	"WEAPON_RAILGUN",
}