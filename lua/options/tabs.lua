-- specify different tab widths on certain files
-- https://github.com/ribru17/nvim/blob/550dc8e0c34c186d8399ec7264e20604a88a4456/lua/rileybruins/autocmds.lua#L150
--[[ create_autocmd('FileType', {
  pattern = SETTINGS.two_space_indents,
  callback = function()
    local setlocal = vim.opt_local
    setlocal.shiftwidth = 2
    setlocal.tabstop = 2
    setlocal.softtabstop = 2
  end,
}) ]]
