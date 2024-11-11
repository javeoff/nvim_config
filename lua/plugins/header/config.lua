-- vim.cmd('highlight TabLine guibg='.. colors.bg ..' guifg=' .. colors.fg .. '')
-- vim.cmd('highlight TabLineSel guibg=#ff5500 guifg=#ffffff')
-- vim.cmd('highlight TabLineFill guibg=default guifg=' .. colors.fg .. '')
 
vim.api.nvim_create_autocmd(
  { "VimEnter", "BufNew", "BufReadPost", "BufDelete", "BufWipeout" },
  {
    callback = function()
      vim.defer_fn(function()
        local getCount = function()
          local result =
              vim.api.nvim_exec2("ls", { output = true })

          local count = 1
          for _ in string.gmatch(result.output, "\n") do
            count = count + 1
          end

          return count
        end
        print(getCount())

        -- if getCount() <= 1 then
          vim.cmd("set showtabline=0")
        -- else
        --   vim.cmd("set showtabline=2")
        -- end
      end, 1)
    end,
  }
)
