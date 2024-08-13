local folders = {
	'themes',
	'plugins',
	'keybindings',
}

local disabled_plugins = {
}

require('utils/loader').load(folders, disabled_plugins)
