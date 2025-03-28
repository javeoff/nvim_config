local M = {}

local function get_project_files()
    local files = vim.fn.glob("**/*.md", true, true)  -- Ищем только Markdown файлы
    return files
end

local function index_words_in_files(files)
    local word_count = {}
    for _, file in ipairs(files) do
        local lines = vim.fn.readfile(file)
        for _, line in ipairs(lines) do
            -- Приводим строку к нижнему регистру для игнорирования регистра
            line = line:lower()

            -- Находим все слова, используя поддержку кириллицы и латиницы через utf8
            for word in line:gmatch("[%a%dа-яА-ЯёЁ]+") do
                word_count[word] = (word_count[word] or 0) + 1
            end

            -- Находим все пары слов
            local last_word = nil
            for word in line:gmatch("[%a%dа-яА-ЯёЁ]+") do
                if last_word then
                    local pair = last_word .. " " .. word
                    word_count[pair] = (word_count[pair] or 0) + 1
                end
                last_word = word
            end
        end
    end
    return word_count
end

local function display_results(word_count)
    -- Открываем новую панель справа
    vim.cmd("vsplit")
    vim.cmd("wincmd l") -- Переходим в правую панель
    vim.cmd("enew") -- Новый пустой буфер
    vim.bo.buftype = "nofile"
    vim.bo.bufhidden = "wipe"
    vim.bo.swapfile = false

    -- Записываем результаты в буфер
    local results = {}
    for word, count in pairs(word_count) do
        if count > 1 then -- Показываем только повторяющиеся слова/фразы
            table.insert(results, {word = word, count = count})
        end
    end
    
    -- Сортируем сначала по количеству слов в элементе, затем по количеству вхождений
    table.sort(results, function(a, b)
        local a_word_count = select(2, a.word:gsub(" ", "")) + 1
        local b_word_count = select(2, b.word:gsub(" ", "")) + 1
        
        if a_word_count == b_word_count then
            return a.count > b.count
        else
            return a_word_count > b_word_count
        end
    end)
    
    -- Преобразуем таблицу результатов для вывода
    local results_to_display = {}
    for _, result in ipairs(results) do
        table.insert(results_to_display, result.word .. ": " .. result.count)
    end

    vim.api.nvim_buf_set_lines(0, 0, -1, false, results_to_display)
end

-- Основная функция плагина
local function index_project()
    local files = get_project_files()
    local word_count = index_words_in_files(files)
    display_results(word_count)
    -- Переключаемся в левый pane
    vim.cmd("wincmd h")
		underline_words(word_count)
end

local function grep_current_word()
    local line = vim.api.nvim_get_current_line()
    local word = line:match("([^:]+)") 
    vim.cmd("FzfLua grep_cword " .. word)
end

-- Создаем команду для запуска плагина
vim.api.nvim_create_user_command("IndexWords", index_project, {})
vim.api.nvim_create_user_command("IndexWord", grep_current_word, {})

-- require('which-key').add({
-- 	{ ".", ":IndexWord<CR>", desc = "Search word in project" },
-- 	{ "s;", ":IndexWords<CR>", desc = "Search words in project" },
-- })

return M

