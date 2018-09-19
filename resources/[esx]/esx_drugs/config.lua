Config              = {}
Config.MarkerType   = 1
Config.DrawDistance = 100.0
Config.ZoneSize     = {x = 5.0, y = 5.0, z = 3.0}
-- Config.MarkerColor  = {r = 100, g = 204, b = 100}
-- Config.ShowBlips   = false  --markers visible on the map? (false to hide the markers on the map)

Config.RequiredCopsCoke  = 0
Config.RequiredCopsMeth  = 0
Config.RequiredCopsWeed  = 0
Config.RequiredCopsOpium = 0

Config.TimeToFarm    = 10 * 600
Config.TimeToProcess = 20 * 600
Config.TimeToSell    = 5  * 600

Config.Locale = 'fr'

Config.Zones = {
	CokeField =			{x = -131.51162719727, y = 868.43048095703, z = 232.69021606445,	name = _U('coke_field'),		sprite = 501,	color = 40},
	CokeProcessing =	{x = -458.13,	y = -2278.61,	z = 7.51,	name = _U('coke_processing'),	sprite = 478,	color = 40},
	CokeDealer =		{x = -1756.19,	y = 427.31,		z =126.68,	name = _U('coke_dealer'),		sprite = 500,	color = 75},
	MethField =			{x = 161.39637756348,	y = 7360.8266601563,	z = 12.259600639343,	name = _U('meth_field'),		sprite = 499,	color = 26},
	MethProcessing =	{x = -1001.41,	y = 4848.00,	z = 274.00,	name = _U('meth_processing'),	sprite = 499,	color = 26},
	MethDealer =		{x = -63.59,	y = -1224.07,	z = 27.76,	name = _U('meth_dealer'),		sprite = 500,	color = 75},
	WeedField =			{x = 2226.5231933594,	y = 5577.1547851563,	z = 53.841789245605,	name = _U('weed_field'),		sprite = 496,	color = 52},
	WeedProcessing =	{x = 2313.9528808594,		y = 2549.6857910156,	z = 47.710891723633,	name = _U('weed_processing'),	sprite = 496,	color = 52},
	WeedDealer =		{x = 1072.7465820313,	y = -2482.6579589844,	z = 29.022031784058,	name = _U('weed_dealer'),		sprite = 500,	color = 75},
	OpiumField =		{x = 206.62574768066,	y = 6814.14453125,	z = 24.364053726196,	name = _U('opium_field'),		sprite = 51,	color = 60},
	OpiumProcessing =	{x = 971.86,	y = -2157.00,	z = 28.47,	name = _U('opium_processing'),	sprite = 51,	color = 60},
	OpiumDealer =		{x = 2331.08,	y = 2570.22,	z = 45.30,	name = _U('opium_dealer'),		sprite = 500,	color = 75}
}
