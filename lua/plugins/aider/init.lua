return {
    "nekowasabi/aider.vim",
    dependencies = "vim-denops/denops.vim",
    enabled = true,
    config = function()
        vim.g.aider_command = 'aider'
        vim.g.aider_buffer_open_type = 'vsplit'
        vim.g.aider_floatwin_width = 100
        vim.g.aider_floatwin_height = 50

        require('plugins.aider.keybindings')
    end
}
