local F = {}

F.has_value = function(tab, val)
    for index, value in ipairs(tab) do
        if string.match(val, value) then
            return true
        end
    end

    return false
end

F.get_init_files = function(folder, ignore_names)
	local i, t, popen = 0, {}, io.popen
	local home = os.getenv("HOME")
	local p = popen('find ' .. home .. '/.config/nvim/lua/'.. folder ..' -path "*/init.lua" | sed "s|/[^/]*$||" | sed -e "s|^' .. home .. '/.config/nvim/lua/*||"')
	for file in p:lines() do
			i = i + 1
			if not F.has_value(ignore_names, file) then
				table.insert(t, require(file))
			end
	end

	 return t
end

F.join_tables = function(t1, t2)
	for i=1,#t2 do
			t1[#t1+1] = t2[i]
	end
	return t1
end

F.load = function(enabled_plugins, disabled_plugins)
  local lazypath = os.getenv('HOME') .. '/nvim/lazy/lazy.nvim'
	if not vim.loop.fs_stat(lazypath) then
		vim.fn.system({
			"git",
			"clone",
			"--filter=blob:none",
			"https://github.com/folke/lazy.nvim.git",
			"--branch=stable", -- latest stable release
			lazypath,
		})
	end
	vim.opt.rtp:prepend(lazypath)
	local plugins = {}
	
	for index, value in ipairs(enabled_plugins or {}) do
		plugins = F.join_tables(plugins, F.get_init_files(value, disabled_plugins or {}))
	end

	local opts = {
		root = os.getenv('HOME') .. "/nvim/plugins"
	}

	require("lazy").setup(plugins, opts)
end

return F;
