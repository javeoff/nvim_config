return {
    'junegunn/fzf.vim',
    dependencies = {
        'junegunn/fzf'
    },
    config = function()
        require('plugins/fzf/fzf_vim/config')
        require('plugins/fzf/fzf_vim/keybindings')

        -- Добавляем список команд
        local commands = {
            "Команда 1",
            "Команда 2",
            "Команда 3",
            "Команда 4",
            "Команда 5"
        }

        vim.keymap.set('n', '<leader>c', function()
            vim.ui.select(commands, {
                prompt = "Выберите команду:",
                format_item = function(item)
                    return item
                end
            }, function(choice)
                if choice then
                    vim.cmd(choice)
                end
            end)
        end, { desc = "Выбрать команду" })
    end
}
