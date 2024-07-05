require("which-key").register({
    e = {':Files<CR>', 'Open files popup'},
    G = {':GFiles<CR>', 'Open Git files popup'},
    g = {':GFiles?<CR>', 'Open Git files popup'},
    B = {':Buffers<CR>', 'Open Buffers popup'},
    [')'] = {':Colors<CR>', 'Open colorschemes popup'},
    l = {':Lines<CR>', 'Open lines in loaded buffers popup'},
    L = {':BLines<CR>', 'Open lines in current buffer popup'},
    t = {':Tags<CR>', 'Open tags in the project popup'},
    T = {':BTags<CR>', 'Open tags in the buffer popup'},
    M = {':Marks<CR>', 'Open marks in the buffer popup'},
    W = {':Windows<CR>', 'Open windows popup'},
    hh = {':History<CR>', 'Open recent files popup'},
    hf = {':History:<CR>', 'Open command history popup'},
    hs = {':History/<CR>', 'Open search history popup'},
    P = {':Snippets<CR>', 'Open snippets popup'},
    C = {':Commits<CR>', 'Open commits popup'},
    c = {':BCommits<CR>', 'Open current buffer commits history popup'},
    [';'] = {':Commands<CR>', 'Open commands popup'},
    ['('] = {':Maps<CR>', 'Open mappings popup'},
    ['*'] = {':Helptags<CR>', 'Open helptags popup'},
    ['&'] = {':Filetypes<CR>', 'Open file types popup'},
}, {
    prefix = 's;',
    silent = true,
    noremap = true,
    nowait = false,
})

require("which-key").register({
   -- ['g'] = {':Rg<CR>', 'Open Ripgrep search popup'},
    ['i'] = {':BLines<CR>', 'Open lines in current buffer popup'},
    ['p'] = {':Snippets<CR>', 'Open snippets popup'},
}, {
   prefix = 's',
   silent = true,
   noremap = true,
   nowait = false,
})

require('which-key').register({
   [';'] = {':Commands<CR>', 'Commands'}, 
}, {
})
