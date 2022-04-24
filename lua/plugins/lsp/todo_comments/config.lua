return function()
    require("todo-comments").setup {
        signs = {
            enable = true,
            priority = 8
        },
        search = {
            command = "rg",
            args = {
              "--color=never",
              "--no-heading",
              "--with-filename",
              "--line-number",
              "--column",
            },
            pattern = [[\b(KEYWORDS):]],
        },
    }
end
