vim.api.nvim_set_hl(
    0,
    'Identifier',
    { 
        fg = '#ffc66d',
        ctermfg = 79,
        bold = false,
    }
)
vim.api.nvim_set_hl(0, 'TSVariable', { link = 'Identifier' })
vim.api.nvim_set_hl(
    0,
    'Constant',
    { 
        fg = '#ffc66d',
        ctermfg = 79,
        bold = false,
    }
)
vim.api.nvim_set_hl(0, 'TSConstant', { link = 'Constant' })

vim.api.nvim_set_hl(
    0,
    'Type',
    { 
        -- fg = '#9876aa', 
        fg = '#8c890d',
        ctermfg = 79,
        bold = false,
    }
)
vim.api.nvim_set_hl(0, '@type.qualifier', { link = 'Type' })
vim.api.nvim_set_hl(0, '@type.definition', { link = 'Typedef' })

vim.api.nvim_set_hl(
    0,
    'Keyword',
    { 
        fg = '#cc7832', 
        ctermfg = 79,
        bold = false,
    }
)
vim.api.nvim_set_hl(0, 'TSKeyword', { link = 'Keyword' })

vim.api.nvim_set_hl(
    0,
    'cssProp',
    { 
        fg = '#ffffff', 
        ctermfg = 79,
        bold = false,
    }
)
vim.api.nvim_set_hl(
    0,
    'cssAttr',
    { 
        fg = '#ffffff', 
        ctermfg = 79,
        bold = false,
    }
)
vim.api.nvim_set_hl(
    0,
    'cssTagName',
    { 
        fg = '#ffffff', 
        ctermfg = 79,
        bold = false,
    }
)
vim.api.nvim_set_hl(0, 'cssVendor', { link = 'cssTagName' })
vim.api.nvim_set_hl(0, 'cssAttrComma', { link = 'cssAttr' })
vim.api.nvim_set_hl(0, 'cssBackgroundProp', { link = 'cssProp' })
vim.api.nvim_set_hl(0, 'cssBorderProp', { link = 'cssProp' })
vim.api.nvim_set_hl(0, 'cssBoxProp', { link = 'SpellCap' })
vim.api.nvim_set_hl(0, 'cssDimensionProp', { link = 'SpellCap' })
vim.api.nvim_set_hl(0, 'cssFontProp', { link = 'cssProp' })
vim.api.nvim_set_hl(0, 'cssPositioningProp', { link = 'SpellCap' })
vim.api.nvim_set_hl(0, 'cssTextProp', { link = 'cssProp' })
vim.api.nvim_set_hl(0, 'cssValueLength', { link = 'cssAttr' })
vim.api.nvim_set_hl(0, 'cssValueInteger', { link = 'cssAttr' })
vim.api.nvim_set_hl(0, 'cssValueNumber', { link = 'cssAttr' })
vim.api.nvim_set_hl(0, 'cssIdentifier', { link = 'cssTagName' })
vim.api.nvim_set_hl(0, 'cssIncludeKeyword', { link = 'Keyword' })
vim.api.nvim_set_hl(0, 'cssClassNameDot', { link = 'cssAttr' })
vim.api.nvim_set_hl(0, 'cssUnitDecorators', { link = 'cssAttr' })
vim.api.nvim_set_hl(0, 'cssNoise', { link = 'cssImportant' })

vim.api.nvim_set_hl(0, 'DiagnosticHint', { fg = '#918175', ctermfg = 79, bold = false })
vim.api.nvim_set_hl(0, 'DiagnosticError', { fg = '#ff5900', ctermfg = 79, bold = false })
vim.api.nvim_set_hl(0, 'DiagnosticWarn', { fg = '#d7af5f', ctermfg = 79, bold = false })
vim.api.nvim_set_hl(0, 'DiagnosticInfo', { bg = '#fce9c3', fg = '#000000', ctermfg = 79, bold = false })
vim.api.nvim_set_hl(
    0,
    'Normal',
    { 
        bg = '#000000',
        ctermbg = 16,
    }
)

-- vim.cmd('highlight TabLine guibg=#000000 guifg=#ffffff')
vim.cmd('highlight TabLineSel guibg=#222222 guifg=#ffffff')
vim.cmd('highlight TabLineFill guibg=none ctermbg=NONE guifg=#ffffff')

--[[ vim.cmd('highlight Keyword guifg=#ff79c6')
vim.cmd('highlight Type guifg=#bd93f9')
vim.cmd('highlight Tag guifg=#ff79c6')
vim.cmd('highlight typescriptInterfaceName guifg=#8A8842')
vim.cmd('highlight typescriptInterfaceKeyword guifg=#8A8842')
vim.cmd('highlight @tstype guifg=#ff5500')
vim.cmd('highlight tstype guifg=#ff0000') ]]

