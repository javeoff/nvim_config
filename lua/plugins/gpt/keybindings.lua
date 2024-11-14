local wk = require("which-key")

wk.add({
    { "§n", ":GpChatNew<cr>:GpAgent ChatGPT4<cr>", desc = "Create GPT-4 chat" },
    { "§3", ":GpChatNew<cr>", desc = "Create GPT-4 chat" },
    { "§4", ":GpChatNew<cr>:GpAgent ChatGPT4<cr>", desc = "Start GPT chat" },
    { "§=", ":GpAppend<cr>", desc = "Append to GPT prompt" },
    { "§p", ":GpPopup<cr>", desc = "Append to GPT prompt" },
    { "§m", ":GpChatRespond<cr>", desc = "" },
    { "§c", "ggVG:GpRewrite remove comments<cr>", desc = "Rewrite by GPT" },
    { "§e", ":GpCodeReview<cr>", desc = "Rewrite by GPT" },
    { "§f", ":GpRewrite fix current code<cr>", desc = "Rewrite by GPT" },
    { "§t", ":GpUnitTests<cr>", desc = "Generate tests" },
    { "§h", ":GpChatPaste<cr>i", desc = "Generate tests" },
    
    { "§r", ":GpRewrite<cr>", desc = "Rewrite by GPT", mode = "v" },
})
