--local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
local signs = { Error = "E ", Warn = "W ", Hint = "? ", Info = "i " }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end
