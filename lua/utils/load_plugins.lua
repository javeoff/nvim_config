local get_files_names_by_path = require('utils/get_files_names_by_path')

local F = {}

F.load = function(folders, themes)
    require('packer').startup(function(use)
        use 'wbthomason/packer.nvim'

        if folders == nil then
            return
        end

        if themes ~= nil then
            for _, theme in ipairs(themes) do
                local path =  'themes/' .. theme
                local config = require(path)

                if config.with_colors == true then
                    vim.g.colors = require(path .. '/colors')
                end

                config.load(use)

                if config.with_options == true then
                    require(path .. '/options')
                end

                if config.with_keybindings == true then
                    require(path .. '/keybindings')
                end
            end
        end


        for _, folder in ipairs(folders) do
            for _, plugin in get_files_names_by_path(folder) do
                local plugin_name = string.match(plugin, "[^/]*$")
                local path = folder .. '/' .. plugin_name
                local config = require(path)

                if config.plugins ~= nil then
                    for _, plug in ipairs(config.plugins) do
                        local p = require(path .. '/' .. plug)

                        if p.with_config == true then
                            p.config = require(path .. '/' .. plug .. '/config')
                            p.with_config = nil
                        end

                        if p.with_keybindings == true then
                            require(path .. '/' .. plug .. '/keybindings')
                            p.with_keybindings = nil
                        end

                        if p.with_options == true then
                            require(path .. '/' .. plug .. '/options')
                            p.with_options = nil
                        end

                        use(p)
                    end
                end

                if config.plugins == nil then
                    config.load(use)
                end

                if config.with_keybindings == true then
                    require(path .. '/keybindings')
                    config.with_keybindings = nil
                end

                if config.with_options == true then
                    require(path .. '/options')
                    config.with_options = nil
                end
            end
        end
    end)
end

return F
