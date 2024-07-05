function vim.g.ToggleLualineColor()
    if (vim.g.lualine_show_color == true) then
        vim.g.lualine_show_color = false;
        return ;
    end

    vim.g.lualine_show_color = true;
end
