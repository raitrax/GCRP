version '1.0.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'../DBG_LesterJobs/config.lua',
	'../DBG_LesterJobs/locales/br.lua',
	'../DBG_LesterJobs/locales/en.lua',
	'../DBG_LesterJobs/locales/fr.lua',
	'../DBG_LesterJobs/server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'../DBG_LesterJobs/config.lua',
	'../DBG_LesterJobs/locales/br.lua',
	'../DBG_LesterJobs/locales/en.lua',
	'../DBG_LesterJobs/locales/fr.lua',
	'../DBG_LesterJobs/client/main.lua'
}
