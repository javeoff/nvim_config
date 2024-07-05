local colors = vim.g.colors

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = {
      normal = {
        a = { fg = colors.fg, bg = colors.dark },
        c = { fg = colors.fg, bg = colors.bg },
        x = { fg = colors.fg, bg = colors.bg },
        z = { fg = colors.fg, bg = colors.dark },
      },
      inactive = { c = { fg = colors.fg, bg = colors.bg } },
      insert = { a = { fg = colors.fg, bg = colors.default, gui = 'bold' } },
      visual = { a = { fg = colors.fg, bg = colors.dark_red } },
      replace = { a = { fg = colors.fg, bg = colors.dark_orange } },
    },
    component_separators = '',
    section_separators = '',
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = true,
    --     buffer_min_count = 2,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = {},
    lualine_c = {
      'branch',
      --'filename',
      require('plugins/ui/footer/widgets/lsp'),
      -- require('plugins/ui/footer/widgets/navic'),
      {
        "navic",
        color_correction = nil,
        navic_opts = nil
      },
      'windows',
    },
    lualine_x = {
      require('plugins/ui/footer/widgets/color'),
      require('plugins/ui/footer/widgets/diagnostics'),
    },
    lualine_y = {
      'filesize',
    },
    lualine_z = {
      'location',
    }
  },
  inactive_sections = {},
  extensions = {},
  tabline = {},
}

