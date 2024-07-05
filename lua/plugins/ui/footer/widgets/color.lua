local colors = vim.g.colors

return {
  function()
    if (vim.g.lualine_show_color == true) then
          return vim.api.nvim_exec([[
              for i1 in synstack(line("."), col("."))
                  let i2 = synIDtrans(i1)
                  let n1 = synIDattr(i1, "name")
                  let n2 = synIDattr(i2, "name")
                  echo n1 "->" n2 " "
              endfor
          ]], true)
    end

    return ''
  end,
  color = { fg = colors.fg, gui = 'italic' },
}
