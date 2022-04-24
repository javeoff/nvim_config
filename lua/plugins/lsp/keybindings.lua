local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

require("which-key").register({
    ['o'] = {':TSLspOrganize<CR>', 'Organize imports'},
    ['r'] = {':lua vim.lsp.buf.rename()<CR>', 'Rename selection under cursor'},
    ['R'] = {':TSLspRenameFile<CR>', 'Rename file'},
    ['I'] = {':TSLspImportAll<CR>', 'Import all'},
    ['A'] = {':lua vim.lsp.buf.code_action()<CR>', 'Show code actions list'},

    ['f'] = {':lua vim.lsp.buf.formatting()<CR>', 'Show formatting popup'},
    ['1'] = {':lua vim.lsp.buf.formatting()<CR>eslint', 'ESLint Formatting'},
    ['2'] = {':lua vim.lsp.buf.formatting()<CR>tsserver', 'TSServer Formatting'},
    ['3'] = {':lua vim.lsp.buf.formatting()<CR>diagnosticls', 'Diagnostic-LS Formatting'},
    ['4'] = {':lua vim.lsp.buf.formatting()<CR>null-ls', 'Null-LS Formatting'},

    ['h'] = {':lua vim.lsp.buf.hover()<CR>', 'Show Definition Preview popup'},
    ['s'] = {':lua vim.lsp.buf.signature_help()<CR>', 'Show signature help'},

    ['<Tab>'] = {':lua vim.diagnostic.open_float(0, {scope="line"})<CR>', 'Show diagnostic popup'},
    ['('] = {':lua vim.diagnostic.goto_prev({ float = false })<CR>', 'Go to prev diagnostic line'},
    [')'] = {':lua vim.diagnostic.goto_next({ float = false })<CR>', 'Go to next diagnostic line'},
    ['l'] = {':lua vim.lsp.codelens.run()<CR>', 'Show codelens popup'},

    [']'] = {':lua require"illuminate".next_reference{wrap=true}<CR>', 'Next highlighted reference'},
    ['['] = {':lua require"illuminate".next_reference{reverse=true,wrap=true}<CR>', 'Previous highlighted reference'},

    ['wa'] = {':lua vim.lsp.buf.add_workspace_folder()<CR>', 'Add new workspace folder'},
    ['wr'] = {':lua vim.lsp.buf.remove_workspace_folder()<CR>', 'Remove workspace folder'},
    ['ww'] = {':lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', 'List workspace folders'},

    ['co'] = {':lua vim.lsp.buf.outgoing_calls()<CR>', 'Show outgoing calls'},
    ['ci'] = {':lua vim.lsp.buf.incoming_calls()<CR>', 'Show incoming calls'},
}, {
    prefix = '<C-l>',
    silent = false,
    noremap = true,
    nowait = false,
})

require("which-key").register({
    ['g'] = {':lua vim.lsp.buf.hover()<CR>', 'Show Definition Preview popup'},
    ['gd'] = {':lua vim.lsp.buf.definition()<CR>', 'Go to Definition'},
    ['gD'] = {':lua vim.lsp.buf.declaration()<CR>', 'Go to Declaration'},
    ['gt'] = {':lua vim.lsp.buf.type_definition()<CR>', 'Go to type definition'},
    ['gi'] = {':lua vim.lsp.buf.implementation()<CR>', 'Go to implementation'},
}, {
    silent = false,
    noremap = true,
    nowait = false,
})
