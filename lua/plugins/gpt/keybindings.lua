local wk = require("which-key")

wk.register({
    ["§§"] = { ":GpChatFinder<cr><Esc>", "Find GPT chat" },
    ["§n"] = { ":GpChatNew<cr>:GpAgent ChatGPT4<cr>", "Create GPT-4 chat" },
    ["§3"] = { ":GpChatNew<cr>", "Create GPT-4 chat" },
    ["§4"] = { ":GpChatNew<cr>:GpAgent ChatGPT4<cr>", "Start GPT chat" },
    ["§="] = { ":GpAppend<cr>", "Append to GPT prompt" },
    ["§p"] = { ":GpPopup<cr>", "Append to GPT prompt" },
    ["§m"] = { ":GpChatRespond<cr>", "" },
    ["§c"] = { "ggVG:GpRewrite remove comments<cr>", "Rewrite by GPT" },
    ["§r"] = {
        ["n"] = { "ggVG:GpRewrite<cr>", "Rewrite by GPT" },
        ["v"] = { ":GpRewrite<cr>", "Rewrite by GPT" },
    },
    ["§i"] = { ":GpVnew<cr>", "Rewrite by GPT" },
    ["§e"] = { ":GpCodeReview<cr>", "Rewrite by GPT" },
    ["§f"] = { ":GpRewrite fix current code<cr>", "Rewrite by GPT" },
    ["§t"] = { ":GpUnitTests<cr>", "Generate tests" },
    ["§h"] = { ":GpChatPaste<cr>i", "Generate tests" },
}, { mode = "n" })
