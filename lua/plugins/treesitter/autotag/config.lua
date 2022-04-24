local filetypes = {
  'html',
  'javascript',
  'javascriptreact',
  'typescriptreact',
  'svelte',
  'vue',
  'rescript'
}
local skip_tags = {
  'area', 'base', 'br', 'col', 'command', 'embed', 'hr', 'img', 'slot',
  'input', 'keygen', 'link', 'meta', 'param', 'source', 'track', 'wbr','menuitem'
}

return function()
    require('nvim-ts-autotag').setup({
        enable = true,
        filetypes = filetypes,
        skip_tags = skip_tags,
    })
end
