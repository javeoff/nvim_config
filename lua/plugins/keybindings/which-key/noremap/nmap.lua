local map = vim.api.nvim_set_keymap
map('v', 'Y', '$y', {noremap = true, silent = false})
map('v', 'C', '$"*yy<CR>', {noremap = true, silent = false})
map('n', 'YY', '"*yy<CR>yy', {noremap = true, silent = false})

require("which-key").register({
    ['<Tab>;'] = {':Neotree reveal current ~/shared/shared-database<CR>q', 'Open shared-database'},
    ['<Tab>e'] = {':e .env<CR>q', 'Open .env'},
    ['<Tab>p'] = {':e package.json<CR>q', 'Open package.json'},
    ['<Tab>w'] = {':e .env.test<CR>q', 'Open .env.test'},
    ['<Tab>q'] = {':e .env.prod<CR>q', 'Open .env.prod'},
    -- Settings
    ['<M-s>'] = {':Lazy<CR>', 'Sync packages'},

    -- History navigation
    ['<C-]>'] = {'<C-I>', 'Go to the prev recent file'},
    ['<C-[>'] = {'<C-O>', 'Go to the next recent file'},
    ['s]'] = {'<C-I>', 'Go to the prev recent file'},
    ['s['] = {'<C-O>', 'Go to the next recent file'},

    -- Clipboard
    ['vaa'] = {'gg<S-v>G', 'Select all text'},
    ['Y'] = {'Copy selection to the system clipboard'},
    ['YY'] = {'Copy line to the system clipboard'},
    ['u'] = {'Undo last action'},
    ['U'] = {':redo<CR>', 'Redo last undo action'},
    ['dx'] = {'yydd', 'Cut line'},
    ['dd'] = {'Delete line'},
    ['yy'] = {'Copy line'},

    -- Macros
    ['q'] = {'<q-[key]> Start record macros'},
    ['@'] = {'<@-[key]> Play recorded macros'},
    ['@@'] = {'Play last recorded macros'},

    -- Empty Lines
    ['i'] = {'Insert text before caret'},
    ['I'] = {'Insert text before line'},
    ['a'] = {'Append text before caret'},
    ['A'] = {'Insert text after line'},
    ['o'] = {'Insert text on the line below'},
    ['O'] = {'Insert text on the line under'},
    ['dw'] = {'vb"_d', 'Delete a word backward'},
    ['<M-o>'] = {':call AddEmptyLineBelow()<CR>', 'Add empty line below cursor'},
    ['<M-O>'] = {':call AddEmptyLineAbove()<CR>', 'Add empty line above cursor'},
    ['<M-i>'] = {':call DelEmptyLineBelow()<CR>', 'Delete empty line below cursor'},
    ['<M-I>'] = {':call DelEmptyLineAbove()<CR>', 'Delete empty line above cursor'},

    -- Move cursor
    ['L'] = {'Move cursor to the bottom of the window'},
    ['H'] = {'Move cursor to the top of the window'},

    -- Scroll window
    ['zz'] = {'Scroll window to to the middle of cursor'},
    ['zt'] = {'Scroll window to to the top of cursor'},
    ['zb'] = {'Scroll window to to the bottom of cursor'},

    ['<C-k>'] = {'<C-y>', 'Scroll window top'},
    ['K'] = {'<C-y>k', 'Scroll window top with cursor'},
    ['<C-j>'] = {'<C-e>', 'Scroll window down'},
    ['J'] = {'<C-e>j', 'Scroll window down with cursor'},

    -- Tabs
    ['<Tab>'] = {':tabnext<CR>', 'Open next tab'},
    ['<S-Tab>'] = {':tabprev<CR>', 'Open previous tab'},
    -- ['gt'] = {':tabnext<CR>', 'Open next tab'},
    -- ['gn'] = {':tabnew<CR>', 'Open new tab'},
    -- ['gc'] = {':tabclose<CR>', 'Close tab'},
    -- ['g<Tab>'] = {':tabs<CR>', 'Tabs list'},
    -- ['gf'] = {':tabfirst<CR>', 'Open first tab'},
    -- ['gl'] = {':tablast<CR>', 'Open last tab'},
    -- ['gs'] = {':source ~/.config/nvim/init.lua<CR>', 'Source nvim configuration'},
    -- ['go'] = {':tabonly<CR>', 'Close no active tabs'},

    -- Windows
		['s='] = {'<C-w>=', 'Split window'},
		['sw'] = {':w<CR>', 'Save buffer'},
		['sq'] = {':q<CR>', 'Quit'},
		['sa'] = {':qa<CR>', 'Quit all'},
    ['<Tab>c'] = {':split<CR><C-w>j<C-w>K<C-w>j', 'Create new window'},
    ['<Tab>v'] = {':vsplit<CR><C-w>l<C-w>H<C-w>l', 'Create new vertical window'},
    ['<Tab>l'] = {'<C-w>l', 'Focus right window'},
    ['<Tab>h'] = {'<C-w>h', 'Focus left window'},
    ['<Tab>j'] = {'<C-w>j', 'Focus bottom window'},
    ['<Tab>k'] = {'<C-w>k', 'Focus top window'},
    ['<Tab>,'] = {'<C-w><', 'Stretch left window'},
    ['<Tab>.'] = {'<C-w>>', 'Stretch right window'},

    -- Buffers
    -- ['bn'] = {':bnext<CR>', 'Open next buffer'},
    -- ['bv'] = {':bprev<CR>', 'Open previous buffer'},
    -- ['bd'] = {':bd<CR>', 'Delete current buffer'},
    -- ['bD'] = {':BDelete! hidden<CR>', 'Delete all buffers but current'},
    -- ['bc'] = {':BDelete nameless<CR>', 'Clear no-name buffers'},
    -- ['bm'] = {':tab sb<CR>', 'Move buffer to new tab'},
    ['sN'] = {':tab sb<CR>', 'Move buffer to new tab'},
    ['sc'] = {':tabnew<CR>', 'Create tab'},

    ['<C-w>q'] = {'Close current window'},
    ['<C-w>Q'] = {':q!<CR>', 'Close current window permanently'},
    ['<C-w>a'] = {':qa<CR>', 'Close all windows'},
    ['<C-w>A'] = {':qa!<CR>', 'Close all windows permanently'},
    ['<C-w>w'] = {':w<CR>', 'Save current file'},
    ['<C-w>W'] = {':wa<CR>', 'Save all buffers files'},

    -- Paths
    ['vp'] = {':let @+=@%<CR>:echo @%<CR>', 'Show relative file path'},
    ['v<S-P>'] = {':let @+=expand("%:p")<CR>:echo expand(\'%:p\')<CR>', 'Show full file path'}
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
