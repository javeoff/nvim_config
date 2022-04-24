local cmp = require 'cmp'

local mappings = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-u>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping(
        function(fallback)
            if cmp.visible() then
                    cmp.select_next_item()
            else
                    fallback()
            end
        end, {
            "i",
            "s",
    }),
    ['<S-Tab>'] = cmp.mapping(
      function(fallback)
       	if (cmp.visible()) then
					cmp.select_prev_item()
				else
					fallback()
				end
      end, {
				"i",
				"s"
			}
    ),
}

return mappings
