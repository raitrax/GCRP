resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
dependency 'essentialmode'

client_scripts {
	'@es_extended/locale.lua',
	'locales/fr.lua',
	'config.lua',
	'client/main.lua',
}

server_scripts {
	'@es_extended/locale.lua',
	'locales/fr.lua',
	'config.lua',
	'server/main.lua'
}

ui_page('client/html/index.html')

files {
    'client/html/index.html',
	'client/html/assets/app.css',
	'client/html/assets/app.js',
	'client/html/assets/img/policelogo.png',
}
