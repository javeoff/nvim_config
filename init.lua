local folders = {
	'themes',
	'plugins',
	'keybindings',
}

local disabled_plugins = {
	'sonokai',
	'vimbrains',
	-- 'matrix',
}


require('utils/loader').load(folders, disabled_plugins)

require('indexer')

require('utils/bind_options')(require('options'))

vim.defer_fn(function()
	vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
	vim.cmd("highlight NonText guibg=NONE ctermbg=NONE")
	require('utils/bind_options')(require('options'))
end, 100)

