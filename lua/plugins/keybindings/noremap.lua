local map = vim.api.nvim_set_keymap
map('v', 'Y', '$y', {noremap = true, silent = false})
map('v', 'C', '$"*yy<CR>', {noremap = true, silent = false})
map('n', 'YY', '"*yy<CR>yy', {noremap = true, silent = false})

require("which-key").register({
    -- Settings
    ['<M-c>'] = {':set cursorline!<CR>', 'Toggle cursor highlight mode'},

		-- Buffer navigation
    ['<M-p>'] = {':bnext<CR>', 'Open next buffer'},
    ['<M-o>'] = {':bprev<CR>', 'Open previous buffer'},

    -- History navigation
    -- ['<C-]>'] = {'<C-I>', 'Go to the prev recent file'},
    -- ['<C-[>'] = {'<C-O>', 'Go to the next recent file'},

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
    ['gt'] = {':tabnext<CR>', 'Open next tab'},
    ['gn'] = {':tabnew<CR>', 'Open new tab'},
    ['gc'] = {':tabclose<CR>', 'Close tab'},
    ['g<Tab>'] = {':tabs<CR>', 'Tabs list'},
    ['gf'] = {':tabfirst<CR>', 'Open first tab'},
    ['gl'] = {':tablast<CR>', 'Open last tab'},
    ['gs'] = {':source ~/.config/nvim/init.lua<CR>', 'Source nvim configuration'},
    ['go'] = {':tabonly<CR>', 'Close no active tabs'},

    -- Buffers
    ['bn'] = {':bnext<CR>', 'Open next buffer'},
    ['bv'] = {':bprev<CR>', 'Open previous buffer'},
	['bd'] = {':bd<CR>', 'Delete current buffer'},
    ['bD'] = {':BDelete! hidden<CR>', 'Delete all buffers but current'},
    ['bc'] = {':BDelete nameless<CR>', 'Clear no-name buffers'},
    ['bm'] = {':tab sb<CR>', 'Move buffer to new tab'},

    ['<C-w>q'] = {'Close current window'},
    ['<C-w>Q'] = {':q!<CR>', 'Close current window permanently'},
    ['<C-w>a'] = {':qa<CR>', 'Close all windows'},
    ['<C-w>A'] = {':qa!<CR>', 'Close all windows permanently'},
    ['<C-w>w'] = {':w<CR>', 'Save current file'},
    ['<C-w>W'] = {':wa<CR>', 'Save all buffers files'},
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
