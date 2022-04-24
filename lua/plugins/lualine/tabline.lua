local toys = require 'tabline_framework.toys'
local colors = require('colors')

vim.cmd('highlight TabLine guibg=default guifg='.. colors.fg ..'')
vim.cmd('highlight TabLineSel guibg='.. colors.bg ..' guifg='.. colors.fg ..'')
vim.cmd('highlight TabLineFill guibg=default guifg='.. colors.fg ..'')

toys.setup_tab_buffers()

local render = function(f)
  f.add '  '
  f.set_colors { 
    fg = colors.fg, 
    bg = '#000',
  }
  f.make_bufs(function(info)
    f.add({
        ' ' .. info.buf .. ' ',
        fg = info.modified and colors.dark
      })
    f.add({
        info.filename or '[no name]',
        fg = info.modified and colors.dark
    })
    f.add ' '
  end, toys.get_tab_buffers(0))

  f.add_spacer()

  f.make_tabs(function(info)
    f.add(' ' .. info.index .. ' ')
  end)
end

require('tabline_framework').setup {
  render = render,
}
