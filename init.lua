local folders = {
	'themes',
	'plugins',
}

local disabled_plugins = {
}

require('utils/loader').load(folders, disabled_plugins)
