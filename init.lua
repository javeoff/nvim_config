vim.g.mapleader = ' '
vim.map = vim.api.nvim_set_keymap

local folders = {
	'themes',
	'plugins',
	'functions',
}

require('options')

local disabled_plugins = {
	'onedark',
	'github-theme',
	'vimbrains',
	'miasma',
	'darcula',
	'green',
	-- 'sonokai',
}

require('utils/lazy-config').load(folders, disabled_plugins)
