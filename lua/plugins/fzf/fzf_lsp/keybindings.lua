require("which-key").add({
  { "ske", ":Definitions<CR>", desc = "Show definition for the symbols under the cursor", mode = "n" },
  { "skd", ":Declarations<CR>", desc = "Show the declaration for the symbols under the cursor", mode = "n" },
  { "sk<leader>", ":TypeDefinitions<CR>", desc = "Show the type definition for the symbols under the cursor", mode = "n" },
  { "skI", ":Implementations<CR>", desc = "Show the implementation for the symbols under the cursor", mode = "n" },
  { "skr", ":References<CR>", desc = "Show the references for the symbol under the cursor", mode = "n" },
  { "skd", ":DocumentSymbols<CR>", desc = "Show all the symbols in the current buffer", mode = "n" },
  { "sks", ":WorkspaceSymbols<CR>", desc = "Show all the symbols in the workspace", mode = "n" },
  { "ski", ":IncomingCalls<CR>", desc = "Show the incoming calls", mode = "n" },
  { "sko", ":OutgoingCalls<CR>", desc = "Show the outgoing calls", mode = "n" },
  { "ska", ":CodeActions<CR>", desc = "Show the list of available code actions", mode = "n" },
  { "skf", ":Diagnostics<CR>", desc = "Show the available diagnostic informations", mode = "n" },
  { "ss", ":GitFiles<CR>", desc = "Show git files", mode = "n" }
})

require("which-key").add({
  { "ss", ":GitFiles<CR>", desc = "Show git files", mode = "n" }
})
