return function()
    require('kommentary.config').configure_language('typescriptreact', {
      single_line_comment_string = 'auto',
      multi_line_comment_strings = 'auto',
      hook_function = function()
        require('ts_context_commentstring.internal').update_commentstring()
      end,
    })

    local map = vim.api.nvim_set_keymap

    map('n', './', '<Plug>kommentary_motion_default', {})
    map('n', './/', '<Plug>kommentary_line_default', {})
    map("v", "/", "<Plug>kommentary_visual_default<C-c>", {})

    require("which-key").register({
        ['.//'] = {'Toggle comment line'},
    })
end
