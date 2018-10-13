Config = {}
Config.Locale = 'fr'
Config.Missions = {}
Config.Missions.prime = 150
Config.Missions.Calltimeout = 5000 --(4mn == 240000)

Config.Missions.available = {
	'stolensvehicle'
}

Config.TowtruckCentrals = { 
	{ x = 393.8458, y = -1156.5928, z = 29.2917 }, -- Comico centrale LSPD
	{ x = 408.7029, y = -1641.2277, z = 29.2919 }, -- Fourièrre de la ville
 }

Config.Missions.StolensVehicles = {}

Config.Missions.StolensVehicles.timeout = 240000 --(4mn == 240000)

Config.Missions.StolensVehicles.Spawns = {
	{ position = { x = 393.8458, y = -1156.5928, z = 29.2917, r1 = 40, r2 = 85 }, isemergencycar = false }, -- En ville
	{ position = { x = -1052.9990, y = -217.3038, z = 37.7691, r1 = 40, r2 = 85 }, isemergencycar = false }, -- En ville 2
	{ position = { x = 521.5003, y = 2666.1359, z = 42.4924, r1 = 40, r2 = 95 }, isemergencycar = false }, -- Blaine
	{ position = { x = -1498.6554, y = 4974.0834, z = 63.2585, r1 = 40, r2 = 95 }, isemergencycar = false }, -- Paleto

	-- { position = { x = 408.2211, y = -984.4396, z = 29.2661, r1 = 40, r2 = 85 }, isemergencycar = true } -- Vols de voiture d'urgences devant le comico (a revoir !)
}

Config.Missions.StolensVehicles.CarsList = {
	'blista',
	'dilettante',
	'issi2',
	'benson',
	'mule2',
	'brioso',
	'pounder',
	'sentinel2',
	'oracle',
	'bagger',
	'carbonrs',
	'cliffhanger',
	'buccaneer2',
	'Faction2',
	'blade',
	'faction3',
	'moonbeam',
	'slamVan3',
	'stalion',
	'virgo',
	'blazer',
	'rebel2',
	'bus',
	'trash2',
	'buffalo2',
	'infernus2',
	'lynx',
	'surano',
	'stingergt',
	'cheetah',
	'ruston',
	't20',
	'patriot'
}

Config.Missions.StolensVehicles.EmergencyCarsList = {
	'polcieb',
	'pranger',
	'ambulance'
}

Config.Missions.StolensVehicles.Roads = {
	{ { x = 401.0229, y = -957.8005, z = 29.4275 }, { x = -271.3934, y = -1135.1696, z = 23.1009 }, { x = -789.4973, y = -65.0761, z = 37.7809 }, { x = 30.7766, y = 250.7161, z = 109.5893 }, { x = 892.9272, y = -239.3467, z = 69.4727 } },
	{ { x = 837.7847, y = 2234.3510, z = 48.5524 }, { x = 2045.8253, y = 3075.6550, z = 46.7224 }, { x = 1855.1838, y = 3729.6772, z = 33.1495 }, { x = 2138.7331, y = 4938.6181, z = 40.9715 }, { x = 1530.6857, y = 4557.2841, z = 52.0315 } },
	{ { x = 1679.5891, y = 6405.5214, z = 31.1350 }, { x = 74.7240, y = 6609.7553, z = 31.5584 }, { x = -221.2082, y = 6414.0263, z = 31.5240 }, { x = -263.9522, y = 6190.9970, z = 31.4548 }, { x = -794.1683, y = 5553.6376, z = 32.8795 } }
}

Config.Missions.PedList = {
	fib = {
		's_m_m_fiboffice_01',
		's_m_m_fiboffice_02',
		'u_m_m_fibarchitect',
		's_m_m_highsec_01',
		's_m_m_highsec_02',
		's_m_m_ciasec_01',
		'ig_fbisuit_01'
	},
	police = {
		sheriffs = {
			'csb_cop',
			's_f_y_sheriff_01',
			's_m_y_hwaycop_01',
			's_m_y_sheriff_01'
		},
		normal = {
			's_f_y_cop_01',
			's_m_y_cop_01',
			's_m_y_hwaycop_01'
		},
		swat = 's_m_y_swat_01'
	},
	firefighter = {
		's_m_y_fireman_01'
	},
	ambulance = {
		's_m_m_paramedic_01',
		's_m_y_autopsy_01'
	},
	gangs = {
		ballas = {
			'g_m_y_ballaeast_01',
			'g_m_y_ballaorig_01',
			'g_m_y_ballasout_01'
		},
		famcas = {
			'g_m_y_famca_01',
			'g_m_y_famdnf_01',
			'g_m_y_famfor_01',
		},
		bikers = {
			'g_m_y_lost_01',
			'g_m_y_lost_02',
			'g_m_y_lost_03',
		},
		mexicans = {
			'g_m_y_mexgang_01',
			'g_m_y_mexgoon_01',
			'g_m_y_mexgoon_02',
			'g_m_y_mexgoon_03'
		}
	},
	normal = {
		'a_m_y_cyclist_01',
		'a_m_y_bevhills_02',
		'a_m_y_hiker_01',
		'a_m_y_hippy_01',
		'a_f_y_vinewood_02',
		'a_f_y_vinewood_01',
		'a_f_y_indian_01',
		'a_m_y_genstreet_02',
		'a_m_y_methhead_01',
		'csb_cletus',
		'csb_imran',
		'g_m_m_armlieut_01',
		'g_m_y_azteca_01',
		'g_m_y_strpunk_02',
		'ig_car3guy2',
		'ig_claypain'
	},
	towtrucker = {
		's_m_m_trucker_01',
		's_m_y_dockwork_01',
		's_m_y_dwservice_01',
		's_m_y_dwservice_02'
	}
}