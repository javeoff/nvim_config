local folders = {
	'themes',
	'plugins',
	'keybindings',
}

local disabled_plugins = {
	'sonokai',
	-- 'vimbrains'
}

require('utils/bind_options')(require('options'))

require('utils/loader').load(folders, disabled_plugins)

require('indexer')
