require('which-key').register({
   ['tl'] = {':FzfLua git_stash', 'Git stash fzf menu'}, 
   ['b'] = {':FzfLua git_branches<CR>', 'Git branches fzf menu'}, 
   ['f'] = {':FzfLua git_status<CR>', 'Git files fzf menu'},
}, {
    prefix = 'g',
    silent = true,
    noremap = true,
    nowait = false,
})

require('which-key').register({
   ['f'] = {':FzfLua files<CR>', 'Files fzf menu'}, 
   ['g'] = {':FzfLua live_grep<CR>', 'Grep fzf menu'}, 
   ['u'] = {':FzfLua oldfiles<CR>', 'oldfiles fzf menu'}, 
   -- ['b'] = {':FzfLua buffers<CR><CR>', 'show buffers menu'}, 
   ['t'] = {':FzfLua tabs<CR><CR>', 'show tabs menu'}, 
   ['jk'] = {'<cmd>lua require("fzf-lua").changes({ winopts = { win_height = 0.8, win_width = 0.5, win_row = 0, win_col = 0.5 }, preview = { hidden = \"nohidden\", border = \"border\" }})<CR>', 'changes'},
   ['jj'] = {':FzfLua jumps<CR>', 'jumps'},
   -- ['lr'] = {':FzfLua lsp_references<CR>', 'lsp references'},
   ['lr'] = {'<cmd>lua require("fzf-lua").lsp_references({ winopts = { preview = { hidden = \"nohidden\", border = \"border\" } } })<CR>', 'lsp references'},
   ['ll'] = {':FzfLua resume<CR>', 'Resume fzf-lua filter'},
}, {
    prefix = 's',
    silent = true,
    noremap = true,
    nowait = false,
})

require('which-key').register({
   ['s;'] = {':FzfLua command_history<CR>', 'Command history'}, 
}, {
})
