local folders = {
	'themes',
	'plugins',
	'keybindings',
}

local disabled_plugins = {
	'sonokai'
}

require('utils/loader').load(folders, disabled_plugins)
