require("which-key").register({
    ['<C-s>'] = {':FloatermNew vifm<CR>', 'Open file manager popup'},

    TH = {':FloatermNew htop<CR>', 'Open process manager popup'},
    TT = {':FloatermNew top<CR>', 'Open memory manager popup'},

    MM = {':FloatermNew tig<CR>', 'Open git manager popup'},
    ML = {':FloatermNew tig log<CR>', 'Open git log popup'},
    ME = {':FloatermNew tig --author=da<CR>', 'Open git commits by me popup'},
    MR = {':FloatermNew tig reflog<CR>', 'Open git local actions popup'},
    MS = {':FloatermNew tig stash<CR>', 'Open git stash popup'},
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
