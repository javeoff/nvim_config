return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    prpriority = 100,
    dependencies = {
        "nvim-lua/plenary.nvim",
        -- "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    keys = {
        { "so",    ":Neotree current git_status<CR>" },
        { "<M-m>", ":Neotree toggle<CR>" },
        { "<M-e>", ":Neotree current<CR>" },
        { "sm",    ":Neotree reveal<CR>" },
        { "sb",    ":Neotree position=current buffers<CR><CR>" },
        { "se",    ":Neotree reveal current<CR>" },
        { "se",    ":Neotree reveal current<CR>" },
        { "ss",    ":Neotree position=current dir=%:p:h:h reveal_file=%:p<CR><CR>" },
        { "sh",    ":Neotree git_status dir=%:p:h<CR>" },
        { "sH",    ":Neotree dir=%:p:h:h reveal_file=%:p git_status<CR>" },
    },
    opts = {
        close_if_last_window = false,
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = true,
        sort_case_insensitive = false,
        sort_function = nil,
        default_component_configs = {
            container = {
                enable_character_fade = true
            },
            indent = {
                indent_size = 2,
                padding = 1,
                with_markers = true,
                indent_marker = "│",
                last_indent_marker = "└",
                highlight = "NeoTreeIndentMarker",
                with_expanders = nil,
                expander_collapsed = "f",
                expander_expanded = "F",
                expander_highlight = "NeoTreeExpander",
            },
            icon = {
                folder_closed = "F",
                folder_open = "f",
                folder_empty = "_f",
                default = "*",
            },
            modified = {
                symbol = "[+]",
                highlight = "NeoTreeModified",
            },
            name = {
                trailing_slash = false,
                use_git_status_colors = true,
                highlight = "NeoTreeFileName",
            },
            git_status = {
                symbols = {
                    added = "",
                    modified = "",
                    deleted = "DE",
                    renamed = "RE",
                    untracked = "UT",
                    ignored = "I",
                    unstaged = "US",
                    staged = "S",
                    conflict = "CF",
                }
            },
            file_size = {
                enabled = true,
            },
            type = {
                enabled = true,
                required_width = 122,
            },
            last_modified = {
                enabled = true,
                required_width = 88,
            },
            created = {
                enabled = true,
                required_width = 110,
            },
            symlink_target = {
                enabled = true,
            },
        },
        window = {
            position = "left",
            width = 30,
            mapping_options = {
                noremap = true,
                nowait = true,
            },
            mappings = {
                ["<space>"] = {
                    "toggle_node",
                    nowait = false,
                },
                ["<2-LeftMouse>"] = "open",
                ["l"] = "open",
                ["<C-h>"] = "navigate_up",
                ["<esc>"] = "revert_preview",
                ["P"] = { "toggle_preview", config = { use_float = true } },
                ["sk"] = "open_split",
                ["sl"] = "open_vsplit",
                [";"] = "set_root",
                ["<C-l>"] = "set_root",
                ["t"] = "open_tabnew",
                ["w"] = "open_with_window_picker",
                ["h"] = "close_node",
                ["z"] = "close_all_nodes",
                ["a"] = {
                    "add",
                    config = {
                        show_path = "none"
                    }
                },
                ["A"] = "add_directory",
                ["d"] = "delete",
                ["r"] = "rename",
                ["y"] = "copy_to_clipboard",
                ["x"] = "cut_to_clipboard",
                ["p"] = "paste_from_clipboard",
                ["c"] = "copy",
                ["m"] = "move",
                ["n"] = "close_window",
                ["R"] = "refresh",
                ["?"] = "show_help",
                ["<"] = "prev_source",
                [">"] = "next_source",
                ["/"] = "noop"

            }
        },
        nesting_rules = {},
        filesystem = {
            filtered_items = {
                visible = false,
                hide_dotfiles = true,
                hide_gitignored = true,
                hide_hidden = true,
                hide_by_name = {
                    --"node_modules"
                },
                hide_by_pattern = {
                },
                always_show = {
                    ".config",
                },
                never_show = {
                    ".DS_Store",
                },
                never_show_by_pattern = {
                },
            },
	    components = {
		icon = function(config, node, state)
		    if node.type == 'file' then return {} end
		    return require('neo-tree.sources.common.components').icon(config, node, state)
		end,
	    },
            group_empty_dirs = false,
            hijack_netrw_behavior = "open_default",
            use_libuv_file_watcher = false,
            window = {
                mappings = {
                    ["<bs>"] = "navigate_up",
                    ["."] = "set_root",
                    ["H"] = "toggle_hidden",
                    ["/"] = "fuzzy_finder",
                    ["D"] = "fuzzy_finder_directory",
                    ["f"] = "filter_on_submit",
                    ["<c-x>"] = "clear_filter",
                    ["[g"] = "prev_git_modified",
                    ["]g"] = "next_git_modified",
                }
            }
        },
        buffers = {
            group_empty_dirs = true,
            show_unloaded = true,
            window = {
                mappings = {
                    ["bd"] = "buffer_delete",
                    ["<bs>"] = "navigate_up",
                    ["."] = "set_root",
                }
            },
        },
        git_status = {
            window = {
                position = "float",
                mappings = {
                    ["A"] = "git_add_all",
                    ["gu"] = "git_unstage_file",
                    ["ga"] = "git_add_file",
                    ["gr"] = "git_revert_file",
                    ["gc"] = "git_commit",
                    ["gp"] = "git_push",
                    ["gg"] = "git_commit_and_push",
                }
            }
        }
    },
}
