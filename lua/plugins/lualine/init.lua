local P = {}

function vim.g.ToggleLualineColor()
    if (vim.g.lualine_show_color == true) then
        vim.g.lualine_show_color = false;
        return;
    end

    vim.g.lualine_show_color = true;
end

function P.load(use)
    vim.api.nvim_exec([[
      function! NearestMethodOrFunction() abort
        return get(b:, 'vista_nearest_method_or_function', '')
      endfunction
      let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
      let g:vista#renderer#icons = { "function": "\uf794", "variable": "\uf71b" }
    ]], '')

    use {
      "SmiteshP/nvim-gps",
      after = "nvim-treesitter"
    }

--     use {
--         'nvim-lualine/lualine.nvim',
--         requires = {
--           'kyazdani42/nvim-web-devicons',
--           opt = true,
--         },
--         after = {'nvim-gps', 'vim-polyglot'},
--         config = function()
--           require('plugins/lualine/options')
--         end
--     }
    use {
      'zefei/vim-wintabs',
      config = function()
          local colors = require('colors')
          vim.cmd('highlight TabLine guibg=default guifg='.. colors.fg ..'')
          vim.cmd('highlight TabLineSel guibg='.. colors.bg ..' guifg='.. colors.fg ..'')
          vim.cmd('highlight TabLineFill guibg=default guifg='.. colors.fg ..'')
      end,
      requires = {'hoob3rt/lualine.nvim', 'kyazdani42/nvim-web-devicons'}
    }

    require('plugins/lualine/keybindings')
--     use {
--       "rafcamlet/tabline-framework.nvim",
--       requires = "kyazdani42/nvim-web-devicons",
--       config = function()
--         require('plugins/lualine/tabline')
--       end
--     }

end

return P
