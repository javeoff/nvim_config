local folders = {
	'themes',
	'plugins',
	'keybindings',
}

local disabled_plugins = {
	'sonokai',
	-- 'vimbrains'
}

require('utils/loader').load(folders, disabled_plugins)
