--Truck
Config	=	{}

 -- Limit, unit can be whatever you want. Originally grams (as average people can hold 25kg)
Config.Limit = 25000

-- Default weight for an item:
	-- weight == 0 : The item do not affect character inventory weight
	-- weight > 0 : The item cost place on inventory
	-- weight < 0 : The item add place on inventory. Smart people will love it.
Config.DefaultWeight = 0



-- If true, ignore rest of file
Config.WeightSqlBased = false

-- I Prefer to edit weight on the config.lua and I have switched Config.WeightSqlBased to false:

Config.localWeight = {
	black_money = 2,
	money = 1,
-- Supérettes
	bread = 800,
	water = 1000,
	drill = 3000,
	jumelles = 850,
-- Armureries
	WEAPON_COMBATPISTOL = 1000,
	grip = 200,
	flashlight = 300,
	silencieux = 277,
-- Vignerons
    raisin = 1111,
    jus_raisin = 1111,
    grand_cru = 1111,
    grandcru = 1111,
    vine = 1111,
-- Couturiers
    fabric = 2500,
    clothe = 5000,
    whool = 5000,
-- Mécanos
	fixkit = 2500,
	fixtool = 2500,
	gaz = 35000,
	gazbottle = 35000,
	carotool = 3250,
-- Ambulanciers
	medikit = 700,
--Raffineur
	petrol = 12000,
	f_fuel = 12000,
	petrol_raffin = 23076,
	f_fuel_refine = 23076,
	f_gas = 12000,
	essence = 12000,
--Bûcherons
	wood = 14758,
	cutted_wood = 14877, 
	packaged_plank = 2917,
--Mineurs
	stone = 2917,
	washed_stone = 2917,
	iron = 42357,
	gold = 42358,
	diamond = 42359,
	copper = 42353,
-- Drogues
	meth = 303,
	weed = 304,
	opium = 305,
	coke = 302,
	meth_pooch = 13,
	opium_pooch = 15,
	weed_pooch = 14,
	coke_pooch = 12,
	methamphetamine = 20,
-- Boûcher
	alive_chicken = 14890,
	slaughtered_chicken = 14790,
	packaged_chicken = 2958,
-- Digilux
	digiluxenergy = 500000,
	gpsdigilux = 500000,
	computer = 50000,
	chocolatebardigilux = 500000,
	phone = 500000,
	motherboard = 500000,
	processor = 500000,
	powersupply = 500000,
	ram = 500000,
	case = 500000,
	ssd = 500000,
	graphiccard = 500000,
	laptop = 500000,
	
	
-- Brasseur
	ingredientsbeer = 700,
	beer = 700,
-- Poissonnier
	fish = 3977	
}
     

Config.VehicleLimit = {
    [0] = 30000, --Compact
    [1] = 40000, --Sedan
    [2] = 70000, --SUV
    [3] = 25000, --Coupes
    [4] = 30000, --Muscle
    [5] = 10000, --Sports Classics
    [6] = 5000, --Sports
    [7] = 5000, --Super
    [8] = 5000, --Motorcycles
    [9] = 180000, --Off-road-
    [10] = 300000, --Industrial-
    [11] = 70000, --Utility
    [12] = 0, --200000, --Vans
    [13] = 0, --Cycles
    [14] = 5000, --Boats
    [15] = 20000, --Helicopters
    [16] = 0, --Planes
    [17] = 40000, --Service
    [18] = 40000, --Emergency
    [19] = 0, --Military
    [20] = 300000, --Commercial
    [21] = 0, --Trains
}
