require("which-key").register({
    name = "FZF Mappings",
    D = {':Definitions<CR>', 'Show definition for the symbols under the cursor'},
    d = {':Declarations<CR>', '*Show the declaration for the symbols under the cursor'},
    ['<leader>'] = {':TypeDefinitions<CR>', '*Show the type definition for the symbols under the cursor'},
    I = {':Implementations<CR>', '*Show the implementation for the symbols under the cursor'},
    R = {':References<CR>', 'Show the references for the symbol under the cursor'},
    S = {':DocumentSymbols<CR>', 'Show all the symbols in the current buffer'},
    s = {':WorkspaceSymbols<CR>', 'Show all the symbols in the workspace'},
    ic = {':IncomingCalls<CR>', 'Show the incoming calls'},
    oc = {':OutgoingCalls<CR>', 'Show the outgoing calls'},
    a = {':CodeActions<CR>', 'Show the list of available code actions'},
    f = {':Diagnostics<CR>', 'Show the available diagnostic informations'},
}, {
    prefix = 'F',
    silent = true,
    noremap = true,
    nowait = false,
})
