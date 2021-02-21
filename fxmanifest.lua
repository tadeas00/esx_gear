fx_version 'adamant'

game 'gta5'

description 'ESX vybavení'

client_scripts {
    '@es_extended/locale.lua',
    'locales/cs.lua',
	'locales/en.lua',
	'config.lua',
	'client/main.lua'
}

server_scripts {
	"@mysql-async/lib/MySQL.lua",
    '@es_extended/locale.lua',
    'locales/cs.lua',
	'locales/en.lua',
	'config.lua',
	'server/main.lua'
}

dependencies {
	'es_extended',
	'esx_shops'
}