require("which-key").register({
    name = "FZF Mappings",
    e = {':Definitions<CR>', 'Show definition for the symbols under the cursor'},
    d = {':Declarations<CR>', '*Show the declaration for the symbols under the cursor'},
    ['<leader>'] = {':TypeDefinitions<CR>', '*Show the type definition for the symbols under the cursor'},
    I = {':Implementations<CR>', '*Show the implementation for the symbols under the cursor'},
    r = {':References<CR>', 'Show the references for the symbol under the cursor'},
    d = {':DocumentSymbols<CR>', 'Show all the symbols in the current buffer'},
    s = {':WorkspaceSymbols<CR>', 'Show all the symbols in the workspace'},
    i = {':IncomingCalls<CR>', 'Show the incoming calls'},
    o = {':OutgoingCalls<CR>', 'Show the outgoing calls'},
    a = {':CodeActions<CR>', 'Show the list of available code actions'},
    f = {':Diagnostics<CR>', 'Show the available diagnostic informations'},
}, {
    prefix = 'sk',
    silent = true,
    noremap = true,
    nowait = false,
})

require("which-key").register({
    s = {':GitFiles<CR>', 'Show git files'},
}, {
    prefix = 's',
    silent = true,
    noremap = true,
    nowait = false,
})
