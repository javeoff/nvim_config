local lspkind = require('lspkind')
local source_mapping = {
	buffer = '[Buffer]',
	nvim_lsp = '[LSP]',
	nvim_lua = '[Lua]',
	nvim_cmp = '[CMP]',
	cmp_tabnine = ' [TabNine]',
	path = '[Path]',
	ultisnips = '[Snippet]',
  conventionalcommits = '[CC]',
  treesitter = '[TreeSitter]',
}

local formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol', -- show only symbol annotations
      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
      ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)

      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
      before = function (entry, vim_item)
        -- vim_item.kind = lspkind.presets.default[vim_item.kind]

        local menu = source_mapping[entry.source.name]

        if entry.source.name == 'cmp_tabnine' then
            if entry.completion_item.data ~= nil and entry.completion_item.data.detail ~= nil then
                menu = entry.completion_item.data.detail .. ' ' .. menu
            end
            vim_item.kind = ''
						--[[ local detail = (entry.completion_item.data or {}).detail
						vim_item.kind = ""
						if detail and detail:find('.*%%.*') then
							vim_item.kind = vim_item.kind .. ' ' .. detail
						end ]]
					
						if (entry.completion_item.data or {}).multiline then
							vim_item.kind = vim_item.kind .. ' ' .. '[ML]'
						end
        end

        vim_item.menu = menu
        return vim_item
      end
    })
}

return formatting
