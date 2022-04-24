vim.g.nvim_tree_width = 25
-- vim.g.nvim_tree_indent_markers = 1
local colors = vim.g.colors
vim.cmd("highlight NvimTreeFolderName guifg=".. colors.fg .." guibg=default gui=bold")
vim.cmd("highlight NvimTreeOpenedFolderName guifg=white guibg=default gui=bold")
vim.cmd("highlight NvimTreeEmptyFolderName guifg=".. colors.dark .." guibg=default")
vim.cmd("highlight NvimTreeRootFolder guifg=".. colors.dark .." guibg=default")

vim.g.nvim_tree_icons = {
    default = '',
    symlink = '',
    git = {
        unstaged = "U",
        staged = "S",
        unmerged = "",
        renamed = "➜",
        untracked = "+",
        deleted = "R",
        ignored = "◌"
    },
    folder = {
    arrow_open = "",
    arrow_closed = "",
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
    symlink_open = "",
    }
}

require'nvim-tree'.setup {
  disable_netrw        = false,
  hijack_netrw         = true,
  open_on_setup        = false,
  ignore_ft_on_setup   = {},
  auto_close           = false,
  auto_reload_on_write = true,
  open_on_tab          = false,
  hijack_cursor        = false,
  update_cwd           = false,
  hijack_unnamed_buffer_when_opening = false,
  hijack_directories   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "?",
      info = "i",
      warning = "!",
      error = "E",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    preserve_window_proportions = false,
    mappings = {
      custom_only = false,
      list = {
				{ key = {"<Tab>"}, action = "cd" }	
			}
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash -F",
    require_confirm = true
  },
  actions = {
    change_dir = {
      enable = true,
      global = false,
    },
    open_file = {
      quit_on_open = false,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = {
            "notify",
            "packer",
            "qf"
          }
        }
      }
    }
  }
}
