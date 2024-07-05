require("which-key").register({
    ['so'] = {':Neotree current git_status<CR>', 'Neotree git status'},
    ['<M-m>'] = {':Neotree toggle<CR>', 'Open Neotree menu'},
    ['<M-e>'] = {':Neotree current<CR>', 'Open Neotree menu in tab'},
    ['sm'] = {':Neotree reveal<CR>', 'Find Neotree file in menu'},
    ['sb'] = {':Neotree position=current buffers<CR>', 'Open buffers in tab'},
    ['se'] = {':Neotree reveal current<CR>', 'Fin Neotree file in split tab'},
    ['sE'] = {':Neotree position=current dir=%:p:h:h reveal_file=%:p<CR>', 'Open neotree with parent from terminal'},
    ['sh'] = {':Neotree git_status dir=%:p:h<CR>', 'Open neotree git status from terminal'},
    ['sH'] = {':Neotree dir=%:p:h:h reveal_file=%:p git_status<CR>', 'Open neotree git status from terminal'},
}, {
    silent = true,
    noremap = true,
    nowait = true,
})
