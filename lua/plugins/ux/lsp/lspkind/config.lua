require('lspkind').init({
		-- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
		mode = 'symbol_text',

		-- options: 'default', 'codicons'
		preset = 'codicons',

		symbol_map = {
			Text = "Text ",
			Method = "Method ",
			Function = "Function ",
			Constructor = "Constructor ",
			Field = "Field ﰠ",
			Variable = "Variable ",
			Class = "Class ﴯ",
			Interface = "Interface ",
			Module = "Module ",
			Property = "Property ﰠ",
			Unit = "Unit 塞",
			Value = "Value ",
			Enum = "Enum ",
			Keyword = "Keyword ",
			Snippet = "Snippet ",
			Color = "Color ",
			File = "File ",
			Reference = "Reference ",
			Folder = "Folder ",
			EnumMember = "EnumMember ",
			Constant = "Constant ",
			Struct = "Struct פּ",
			Event = "Event ",
			Operator = "Operator ",
			TypeParameter = "TypeParameter ",
		},
})
