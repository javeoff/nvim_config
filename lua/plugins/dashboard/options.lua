local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

math.randomseed(os.time())

local function pick_color()
    local colors = {"String", "Identifier", "Keyword", "Number"}
    return colors[math.random(#colors)]
end

local header = {
    type = "text",
    val = {
        [[░░░░░██╗░█████╗░██╗░░░██╗███████╗░█████╗░███████╗███████╗]],
        [[░░░░░██║██╔══██╗██║░░░██║██╔════╝██╔══██╗██╔════╝██╔════╝]],
        [[░░░░░██║███████║╚██╗░██╔╝█████╗░░██║░░██║█████╗░░█████╗░░]],
        [[██╗░░██║██╔══██║░╚████╔╝░██╔══╝░░██║░░██║██╔══╝░░██╔══╝░░]],
        [[╚█████╔╝██║░░██║░░╚██╔╝░░███████╗╚█████╔╝██║░░░░░██║░░░░░]],
        [[░╚════╝░╚═╝░░╚═╝░░░╚═╝░░░╚══════╝░╚════╝░╚═╝░░░░░╚═╝░░░░░]],
    },
    opts = {
        position = "center",
        hl = "Tag",
    },
} 

local buttons = {
  type = "group",
  val = {
    { type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
    { type = "padding", val = 1 },
    dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
    dashboard.button("F", "  Find text", ":Telescope live_grep <CR>"),
    dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
    dashboard.button( "u", "  Update plugins" , ":PackerSync<CR>"),
    dashboard.button( "q", "  Quit" , ":qa<CR>"),
  },
  position = "center",
}

local footer = {
    type = "group",
    val = function()
        local total_plugins = #vim.tbl_keys(packer_plugins)
        local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
        local version = vim.version()
        local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

        return datetime .. "   " .. total_plugins .. " plugins" .. nvim_version_info
    end,
    position = "center",
}

local opts = {
    layout = {
        { type = "padding", val = 2 },
        header,
        { type = "padding", val = 2 },
        buttons,
        { type = "padding", val = 2 },
        -- footer,
    },
    opts = {
        noautocmd = true,
        margin = 5,
    },
}

alpha.setup(opts)

vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
