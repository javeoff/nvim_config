local colors = require('colors')

local lualine_vista = {
  sections = { lualine_a = {
    function()
      return vim.g.vista.provider
    end,
  } },
  filetypes = {
    'vista',
  },
}

vim.g.vista_default_executive = 'nvim_lsp'

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = {
        normal = {
            a = { fg = colors.fg, bg = colors.default },
            c = { fg = colors.fg, bg = colors.bg },
            x = { fg = colors.fg, bg = colors.bg },
            y = { fg = colors.fg, bg = colors.default },
        },
        inactive = { c = { fg = colors.fg, bg = colors.bg } },
        insert = { a = { fg = colors.fg, bg = colors.default, gui = 'bold' } },
        visual = { a = { fg = colors.fg, bg = colors.red } },
        replace = { a = { fg = colors.fg, bg = colors.orange } },
    },
    component_separators = '',
    section_separators = '',
    disabled_filetypes = {},
    always_divide_middle = true,
--     buffer_min_count = 2,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {},
    lualine_c = {
        'branch',
        'filename',
        require('plugins/lualine/widgets/lsp'),
        require('plugins/lualine/widgets/gps'),
--         'windows',
--         'b:vista_nearest_method_or_function',
--         vim.g.vista.provider,
    },
    lualine_x = {
        require('plugins/lualine/widgets/color'),
        require('plugins/lualine/widgets/diagnostics'),
    },
    lualine_y = {
        'location',
    },
    lualine_z = {}
  },
  inactive_sections = {},
  extensions = {},
  tabline = {},
}
