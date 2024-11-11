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

require('utils/bind_options')(require('options'))

require('utils/loader').load(folders, disabled_plugins)

require('indexer')

vim.defer_fn(function()
	vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
	vim.cmd("highlight NonText guibg=NONE ctermbg=NONE")
end, 100)
