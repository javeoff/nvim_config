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
            ":AiderSilentSendPromptByCommandline /model openrouter/anthropic/claude-3-haiku",
            ":AiderSilentSendPromptByCommandline /model openrouter/openai/chatgpt-4o-latest",
        }

        vim.keymap.set('n', '§.', function()
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
