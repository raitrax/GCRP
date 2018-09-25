description 'esx_Toxine'

version '1.0.0'

server_scripts {

  '@es_extended/locale.lua',
	'locales/fr.lua',
	'locales/en.lua',
  'server/esx_Toxine_sv.lua',
  'config.lua'

}

client_scripts {

  '@es_extended/locale.lua',
	'locales/fr.lua',
	'locales/en.lua',
  'config.lua',
  'client/esx_Toxine_cl.lua'

}
