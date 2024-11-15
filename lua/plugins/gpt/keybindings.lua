local wk = require("which-key")

wk.add({
		{ "§§", ":GpChatFinder<cr><Esc>", desc = "Chat with GPT" },
    { "§n", ":GpChatNew<cr>:GpAgent ChatGPT4<cr>", desc = "Create GPT-4 chat" },
    { "§3", ":GpChatNew<cr>", desc = "Create GPT-4 chat" },
    { "§4", ":GpChatNew<cr>:GpAgent ChatGPT4<cr>", desc = "Start GPT chat" },
    { "§=", ":GpAppend<cr>", desc = "Append to GPT prompt" },
    { "§o", ":GpPopup<cr>", desc = "Append to GPT prompt" },
    { "§m", ":GpChatRespond<cr>", desc = "" },
    { "§e", ":GpCodeReview<cr>", desc = "Generate code review" },
    { "§t", ":GpUnitTests<cr>", desc = "Generate tests" },
    { "§w", ":GpWrong<cr>", desc = "Generate whats wrong in the code", mode = "v" },
    { "§r", ":GpRewrite<cr>", desc = "Rewrite by GPT", mode = "v" },
    { "§p", ":GpRepeat<cr>", desc = "Rewrite by GPT", mode = "v" },
    { "§u", ":GpUpdate<cr>", desc = "Rewrite by GPT", mode = "v" },
    { "§/", ":GpRemoveComments<cr>", desc = "Remove comments", mode = "v" },
})
