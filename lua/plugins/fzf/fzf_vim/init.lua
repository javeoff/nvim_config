return {
    'junegunn/fzf.vim',
    dependencies = {
        'junegunn/fzf'
    },
    config = function()
        require('plugins/fzf/fzf_vim/config')
        require('plugins/fzf/fzf_vim/keybindings')

        -- Добавляем список команд с кастомными названиями
        local commands = {
            {
                name = "Отправить запрос в Anthropic",
                command = ":AiderSilentSendPromptByCommandline /model openrouter/anthropic/claude-3-haiku"
            },
            {
                name = "Отправить запрос в OpenAI",
                command = ":AiderSilentSendPromptByCommandline /model openrouter/openai/chatgpt-4o-latest"
            }
        }

        vim.keymap.set('n', '§.', function()
            vim.ui.select(commands, {
                prompt = "Выберите команду:",
                format_item = function(item)
                    return item.name
                end
            }, function(choice)
                if choice then
                    vim.cmd(choice.command)
                end
            end)
        end, { desc = "Выбрать команду" })
    end
}
