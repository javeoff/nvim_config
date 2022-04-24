-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/daniiljave/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/daniiljave/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/daniiljave/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/daniiljave/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/daniiljave/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  FavEx = {
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/FavEx",
    url = "https://github.com/vim-scripts/FavEx"
  },
  ["Nvim-Switch-Buffer"] = {
    config = { "\27LJ\2\nA\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0&plugins/switch-buffer/keybindings\frequire\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/Nvim-Switch-Buffer",
    url = "https://github.com/Yohannfra/Nvim-Switch-Buffer"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins/dashboard/options\frequire\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["bclose.vim"] = {
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/bclose.vim",
    url = "https://github.com/rbgrouleff/bclose.vim"
  },
  ["close-buffers.nvim"] = {
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/close-buffers.nvim",
    url = "https://github.com/kazhala/close-buffers.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-ultisnips"] = {
    config = { "\27LJ\2\n\27\0\1\2\0\1\0\0029\1\0\0L\1\2\0\16descriptionû\2\1\0\5\0\f\0\24'\0\0\0006\1\1\0009\1\2\0014\2\3\0\18\3\0\0'\4\4\0&\3\4\3>\3\1\2=\2\3\0016\1\1\0009\1\2\1\18\2\0\0'\3\4\0&\2\3\2=\2\5\0016\1\6\0'\3\a\0B\1\2\0029\1\b\0015\3\t\0003\4\n\0=\4\v\3B\1\2\1K\0\1\0\18documentation\0\1\0\2\18show_snippets\ball\20filetype_source\15treesitter\nsetup\23cmp_nvim_ultisnips\frequire\25UltiSnipsSnippetsDir\rsnippets UltiSnipsSnippetDirectories\6g\bvim\27plugins/cmp/ultisnips/\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/cmp-nvim-ultisnips",
    url = "https://github.com/quangnguyen30192/cmp-nvim-ultisnips"
  },
  ["diffview.nvim"] = {
    config = { "\27LJ\2\n°\15\0\0\t\0R\0Ì\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\0015\3\5\0005\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0005\5\v\0=\5\f\4=\4\r\0035\4\14\0005\5\15\0=\5\16\4=\4\17\0035\4\18\0004\5\0\0=\5\19\0044\5\0\0=\5\20\4=\4\21\0034\4\0\0=\4\22\0035\4\23\0005\5\25\0\18\6\0\0'\b\24\0B\6\2\2=\6\26\5\18\6\0\0'\b\27\0B\6\2\2=\6\28\5\18\6\0\0'\b\29\0B\6\2\2=\6\30\5\18\6\0\0'\b\31\0B\6\2\2=\6 \5\18\6\0\0'\b!\0B\6\2\2=\6\"\5\18\6\0\0'\b#\0B\6\2\2=\6$\5\18\6\0\0'\b%\0B\6\2\2=\6&\5=\5'\0045\5)\0\18\6\0\0'\b(\0B\6\2\2=\6*\5\18\6\0\0'\b(\0B\6\2\2=\6+\5\18\6\0\0'\b,\0B\6\2\2=\6-\5\18\6\0\0'\b,\0B\6\2\2=\6.\5\18\6\0\0'\b/\0B\6\2\2=\0060\5\18\6\0\0'\b/\0B\6\2\2=\0061\5\18\6\0\0'\b/\0B\6\2\2=\0062\5\18\6\0\0'\b3\0B\6\2\2=\0064\5\18\6\0\0'\b5\0B\6\2\2=\0066\5\18\6\0\0'\b7\0B\6\2\2=\0068\5\18\6\0\0'\b9\0B\6\2\2=\6:\5\18\6\0\0'\b;\0B\6\2\2=\6<\5\18\6\0\0'\b\24\0B\6\2\2=\6\26\5\18\6\0\0'\b\27\0B\6\2\2=\6\28\5\18\6\0\0'\b\29\0B\6\2\2=\6\30\5\18\6\0\0'\b\31\0B\6\2\2=\6 \5\18\6\0\0'\b!\0B\6\2\2=\6\"\5\18\6\0\0'\b=\0B\6\2\2=\6>\5\18\6\0\0'\b?\0B\6\2\2=\6@\5\18\6\0\0'\b#\0B\6\2\2=\6$\5\18\6\0\0'\b%\0B\6\2\2=\6&\5=\5\r\0045\5B\0\18\6\0\0'\bA\0B\6\2\2=\6C\5\18\6\0\0'\bD\0B\6\2\2=\6E\5\18\6\0\0'\bF\0B\6\2\2=\6G\5\18\6\0\0'\bH\0B\6\2\2=\6I\5\18\6\0\0'\bJ\0B\6\2\2=\6K\5\18\6\0\0'\b(\0B\6\2\2=\6*\5\18\6\0\0'\b(\0B\6\2\2=\6+\5\18\6\0\0'\b,\0B\6\2\2=\6-\5\18\6\0\0'\b,\0B\6\2\2=\6.\5\18\6\0\0'\b/\0B\6\2\2=\0060\5\18\6\0\0'\b/\0B\6\2\2=\0061\5\18\6\0\0'\b/\0B\6\2\2=\0062\5\18\6\0\0'\b\24\0B\6\2\2=\6\26\5\18\6\0\0'\b\27\0B\6\2\2=\6\28\5\18\6\0\0'\b\29\0B\6\2\2=\6\30\5\18\6\0\0'\b\31\0B\6\2\2=\6 \5\18\6\0\0'\b!\0B\6\2\2=\6\"\5\18\6\0\0'\b#\0B\6\2\2=\6$\5\18\6\0\0'\b%\0B\6\2\2=\6&\5=\5\17\0045\5M\0\18\6\0\0'\bL\0B\6\2\2=\6\26\5\18\6\0\0'\bN\0B\6\2\2=\6O\5=\5P\4=\4Q\3B\1\2\1K\0\1\0\17key_bindings\17option_panel\6q\nclose\1\0\0\vselect\azM\20close_all_folds\azR\19open_all_folds\6y\14copy_hash\f<C-A-d>\21open_in_diffview\ag!\1\0\0\foptions\6f\24toggle_flatten_dirs\6i\18listing_style\6R\18refresh_files\6X\18restore_entry\6U\16unstage_all\6S\14stage_all\6-\23toggle_stage_entry\18<2-LeftMouse>\6o\t<cr>\17select_entry\t<up>\6k\15prev_entry\v<down>\6j\1\0\0\15next_entry\tview\14<leader>b\17toggle_files\14<leader>e\16focus_files\f<C-w>gf\18goto_file_tab\15<C-w><C-f>\20goto_file_split\agf\14goto_file\f<s-tab>\22select_prev_entry\n<tab>\1\0\0\22select_next_entry\1\0\1\21disable_defaults\1\nhooks\17default_args\24DiffviewFileHistory\17DiffviewOpen\1\0\0\23file_history_panel\16log_options\1\0\6\vmerges\1\vfollow\1\14max_count\3Ä\2\ball\1\freverse\1\14no_merges\1\1\0\3\rposition\vbottom\nwidth\3#\vheight\3\16\15file_panel\17tree_options\1\0\2\20folder_statuses\16only_folded\17flatten_dirs\2\1\0\4\vheight\3\n\nwidth\3#\rposition\tleft\18listing_style\ttree\nsigns\1\0\2\16fold_closed\bÔë†\14fold_open\bÔëº\nicons\1\0\2\18folder_closed\bÓóø\16folder_open\bÓóæ\1\0\3\14use_icons\2\21enhanced_diff_hl\1\18diff_binaries\1\nsetup\rdiffview\22diffview_callback\20diffview.config\frequire\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  fzf = {
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf-lsp.nvim"] = {
    config = { "\27LJ\2\nf\0\0\3\0\a\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0005\1\6\0=\1\5\0K\0\1\0\1\0\1\tdown\b40%\19fzf_lsp_layout\6g\bvim\nsetup\ffzf_lsp\frequire\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/fzf-lsp.nvim",
    url = "https://github.com/gfanto/fzf-lsp.nvim"
  },
  ["fzf-lua"] = {
    config = { "\27LJ\2\n\29\0\1\4\0\1\0\0046\1\0\0:\3\2\0B\1\2\1K\0\1\0\nprint\29\0\1\4\0\1\0\0046\1\0\0:\3\2\0B\1\2\1K\0\1\0\nprint\29\0\1\4\0\1\0\0046\1\0\0:\3\2\0B\1\2\1K\0\1\0\nprint;\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\28set winhl=Normal:Normal\bcmd\bvim\v\0\0\1\0\0\0\1K\0\1\0\29\0\1\4\0\1\0\0046\1\0\0:\3\2\0B\1\2\1K\0\1\0\nprintá3\1\0\n\0¡\1\0∏\0036\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\a\0'\5\5\0'\6\b\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\t\0'\6\n\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\v\0'\6\f\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\15\0'\6\16\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\17\0'\6\18\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\19\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\a\0'\5\19\0'\6\20\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\21\0'\6\n\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\22\0'\6\f\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\23\0'\6\24\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\25\0'\6\26\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\27\0'\6\28\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\29\0'\6\16\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\30\0'\6\18\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\31\0'\6 \0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5!\0'\6\"\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5#\0'\6$\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5%\0'\6&\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5'\0'\6(\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5)\0'\6*\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5+\0'\6,\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5-\0'\6.\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5/\0'\0060\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\0051\0'\0062\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\0053\0'\0064\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\0055\0'\0066\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\0057\0'\0068\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\0059\0'\6:\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5;\0'\6(\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5<\0'\6*\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5=\0'\6,\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5>\0'\6.\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5?\0'\0060\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5@\0'\0062\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5A\0'\6B\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5C\0'\6D\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5E\0'\6F\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5G\0'\6H\0\18\a\1\0B\2\5\1\18\2\0\0'\4I\0'\5A\0'\6B\0\18\a\1\0B\2\5\1\18\2\0\0'\4I\0'\5C\0'\6D\0\18\a\1\0B\2\5\1\18\2\0\0'\4I\0'\5E\0'\6F\0\18\a\1\0B\2\5\1\18\2\0\0'\4I\0'\5G\0'\6H\0\18\a\1\0B\2\5\0016\2J\0'\4K\0B\2\2\0026\3J\0'\5L\0B\3\2\0029\3M\0035\5Q\0005\6N\0005\aO\0=\aP\6=\6R\0055\6T\0005\aS\0=\aU\0065\aV\0=\aW\6=\6X\0055\6Y\0=\6Z\0056\6\0\0009\6[\0069\6\\\6=\6]\0055\6a\0005\a^\0006\b\0\0009\b[\b9\b_\b=\b`\a=\ab\0065\ac\0=\aU\6=\6d\0055\6e\0005\ag\0009\bf\2=\bh\a9\bi\2=\bj\a9\bk\2=\bl\a9\bm\2=\bn\a9\bo\2=\bp\a3\bq\0=\br\a=\as\6'\at\0'\bu\0&\a\b\a=\av\6=\6w\0055\6y\0005\ax\0=\aw\0065\az\0=\a{\0065\a|\0005\b}\0=\bs\a=\a~\0065\a\0005\bÄ\0=\bs\a=\aÅ\0065\aÇ\0005\bÑ\0009\tÉ\2=\th\b=\bs\a=\aÖ\0065\aá\0005\bÜ\0=\bà\a5\bâ\0=\bä\a5\bã\0=\bå\a5\bç\0=\bé\a=\aè\6=\6ê\0055\6ë\0'\aí\0'\bì\0&\a\b\a=\aî\0065\aï\0009\bf\2=\bh\a9\bi\2=\bj\a9\bk\2=\bl\a9\bm\2=\bn\a9\bo\2=\bp\a3\bñ\0=\br\a=\as\6=\6ó\0055\6ò\0=\6ô\0055\6ö\0005\aú\0009\bõ\2=\bh\a9\bù\2=\bj\a9\bû\2=\bl\a9\bü\2=\bn\a9\b†\2=\b°\a=\as\6=\6¢\0055\6£\0005\a•\0009\b§\2=\bh\a3\b¶\0=\br\a=\as\0065\aß\0003\b®\0=\b©\a=\aR\0063\a™\0=\a´\6=\6¨\0055\6≠\0=\6Æ\0055\6Ø\0005\a±\0005\b∞\0=\b≤\a5\b≥\0=\b¥\a5\bµ\0=\b∂\a5\b∑\0=\b∏\a=\aè\0065\aπ\0009\bf\2=\bh\a9\bi\2=\bj\a9\bk\2=\bl\a9\bm\2=\bn\a9\bo\2=\bp\a3\b∫\0=\br\a=\as\6=\6ª\0054\6\0\0=\6º\0054\6\0\0=\6Ω\0054\6\0\0=\6æ\0055\6ø\0=\6¿\5B\3\2\1K\0\1\0\21file_icon_colors\1\0\1\blua\tblue\rmanpages\rhelptags\floclist\blsp\0\1\0\0\tHint\1\0\2\ticon\tüÑ∑\ncolor\fmagenta\16Information\1\0\2\ticon\tüÑ∏\ncolor\tblue\fWarning\1\0\2\ticon\nüÖÜ \ncolor\vyellow\nError\1\0\0\1\0\2\ticon\nüÑ¥ \ncolor\bred\1\0\a\rseverity\thint\15file_icons\1\vprompt\t‚ùØ \14lsp_icons\1\21async_or_timeout\2\rcwd_only\1\14git_icons\1\rquickfix\1\0\2\14git_icons\1\15file_icons\1\17colorschemes\18post_reset_cb\0\21window_on_create\0\1\0\2\15win_height\4ö≥ÊÃ\tô≥Üˇ\3\14win_width\4≥ÊÃô\3≥ÊÃ˛\3\0\1\0\0\16colorscheme\1\0\2\17live_preview\2\vprompt\21Colorschemes‚ùØ \fbuffers\vctrl-D\fbuf_del\16buf_tabedit\15buf_vsplit\14buf_split\1\0\0\rbuf_edit\1\0\4\16color_icons\1\15file_icons\1\18sort_lastused\2\vprompt\16Buffers‚ùØ \roldfiles\1\0\2\rcwd_only\1\vprompt\16History‚ùØ \tgrep\0\1\0\0\frg_opts<--color=always --smart-case -g '!{.git,node_modules}/*'2--hidden --column --line-number --no-heading \1\0\5\16color_icons\2\15file_icons\1\vprompt\vRg‚ùØ \17input_prompt\17Grep For‚ùØ \14git_icons\1\bgit\nicons\6?\1\0\2\ticon\6?\ncolor\fmagenta\6A\1\0\2\ticon\6A\ncolor\ngreen\6D\1\0\2\ticon\6D\ncolor\bred\6M\1\0\0\1\0\2\ticon\6M\ncolor\vyellow\rbranches\1\0\0\15git_switch\1\0\3\fpreviewAgit log --graph --pretty=oneline --abbrev-commit --color {1}\bcmd\29git branch --all --color\vprompt\17Branches‚ùØ \rbcommits\1\0\0\1\0\3\fpreviewBgit show --pretty='%Cred%H%n%Cblue%an%n%Cgreen%s' --color {1}\bcmd8git log --pretty=oneline --abbrev-commit --color --\vprompt\17BCommits‚ùØ \fcommits\1\0\0\1\0\3\fpreviewBgit show --pretty='%Cred%H%n%Cblue%an%n%Cgreen%s' --color {1}\bcmd5git log --pretty=oneline --abbrev-commit --color\vprompt\16Commits‚ùØ \vstatus\1\0\6\16color_icons\1\15file_icons\1\bcmd\18git status -s\vprompt\18GitStatus‚ùØ \14previewer\rgit_diff\14git_icons\1\1\0\0\1\0\5\16color_icons\1\15file_icons\1\bcmd$git ls-files --exclude-standard\vprompt\17GitFiles‚ùØ \14git_icons\1\nfiles\ffd_opts<--exclude .git --exclude node_modules --exclude '*.pyc'? --no-ignore-vcs --color never --type f --hidden --follow \factions\vctrl-y\0\vctrl-Q\19file_sel_to_qf\vctrl-T\17file_tabedit\vctrl-V\16file_vsplit\vctrl-S\15file_split\fdefault\1\0\0\14file_edit\1\0\5\16color_icons\2\15file_icons\2\bcmd\5\vprompt\14Files‚ùØ \14git_icons\1\15previewers\1\0\n\vsyntax\2\rhl_range\14IncSearch\vexpand\1\18hl_cursorline\vVisual\14hl_cursor\vCursor\19syntax_limit_b\3ÄÄ@\19syntax_limit_l\3\0\15scrollchar\b‚ñà\14scrollbar\2\ntitle\2\bbat\1\0\0\ntheme\14BAT_THEME\1\0\2\targs+--style=numbers,changes --color always\bcmd\bbat\rfzf_args\21FZF_DEFAULT_OPTS\benv\rfzf_opts\1\0\5\v--info\vinline\r--prompt\a >\v--ansi\5\r--layout\freverse\r--height\t100%\vkeymap\bfzf\1\0\n\vctrl-u\22unix-line-discard\vctrl-U\20preview-page-up\vctrl-D\22preview-page-down\af3\24toggle-preview-wrap\vctrl-p\19toggle-preview\vctrl-A\15toggle-all\vctrl-e\16end-of-line\vctrl-a\22beginning-of-line\vctrl-b\17half-page-up\vctrl-f\19half-page-down\fbuiltin\1\0\0\1\0\b\t<F4>\19toggle-preview\t<F6>\22toggle-preview-cw\t<F3>\24toggle-preview-wrap\n<C-d>\22preview-page-down\t<F2>\22toggle-fullscreen\n<C-u>\20preview-page-up\t<F5>\23toggle-preview-ccw\r<S-left>\23preview-page-reset\fwinopts\1\0\a\17flip_columns\3x\19preview_layout\15horizontal\17preview_wrap\vnowrap\23preview_horizontal\14right:60%\21preview_vertical\rdown:50%\19preview_border\vborder\22default_previewer\fbuiltin\15win_border\1\t\0\0\5\b‚îÄ\5\5\b‚îÇ\5\5\5\1\0\6\15win_height\4ö≥ÊÃ\tô≥Ê˛\3\fwin_col\4\0ÄÄÄˇ\3\fwin_row\3\1\14hl_border\fDefault\14hl_normal\vNormal\14win_width\3\1\nsetup\ffzf-lua\20fzf-lua.actions\frequire\6i2<cmd>lua require(\"fzf-lua\").git_commits()<CR>\v<C-g>C3<cmd>lua require(\"fzf-lua\").git_bcommits()<CR>\v<C-g>c3<cmd>lua require(\"fzf-lua\").git_branches()<CR>\v<C-g>b1<cmd>lua require(\"fzf-lua\").git_status()<CR>\f<C-g>ss\v<C-l>S\v<C-l>w\f<C-l>ee\v<C-l>e\v<C-l>u\v<C-l>a:<cmd>lua require(\"fzf-lua\").lsp_implementations()<CR>\f<C-l>ii3<Cmd>lua require(\"fzf-lua\").lsp_typedefs()<CR>\f<C-l>dd6<Cmd>lua require(\"fzf-lua\").lsp_definitions()<CR>\v<C-l>d7<Cmd>lua require(\"fzf-lua\").lsp_declarations()<CR>\v<C-l>D;<cmd>lua require(\"fzf-lua\").lsp_document_symbols()<CR>\r<space>SA<cmd>lua require(\"fzf-lua\").lsp_live_workspace_symbols()<CR>\14<space>SS@<cmd>lua require(\"fzf-lua\").lsp_workspace_diagnostics()<CR>\14<space>ee?<cmd>lua require(\"fzf-lua\").lsp_document_diagnostics()<CR>\r<space>e5<cmd>lua require(\"fzf-lua\").lsp_references()<CR>\14<leader>u7<cmd>lua require(\"fzf-lua\").lsp_code_actions()<CR>\14<leader>a/<cmd>lua require(\"fzf-lua\").commands()<CR>\v<C-f>c.<cmd>lua require(\"fzf-lua\").keymaps()<CR>\v<C-f>k0<cmd>lua require(\"fzf-lua\").registers()<CR>\v<C-f>r/<cmd>lua require(\"fzf-lua\").oldfiles()<CR>\v<C-f>h\v<C-f>t\v<C-f>m2<cmd>lua require(\"fzf-lua\").grep_resume()<CR>\f<C-f>GG+<cmd>lua require(\"fzf-lua\").grep()<CR>\v<C-f>G7<cmd>lua require(\"fzf-lua\").live_grep_resume()<CR>\f<C-f>gg\v<C-f>g\v<C-f>':<cmd>lua require(\"fzf-lua\").command_history()<CR><CR>\v<C-f>f+<cmd>lua require(\"fzf-lua\").tabs()<CR>\r<space>t,<cmd>lua require(\"fzf-lua\").marks()<CR>\r<space>m1<cmd>lua require(\"fzf-lua\").grep_cword()<CR>\14<space>gg0<cmd>lua require(\"fzf-lua\").live_grep()<CR>\r<space>g.<cmd>lua require(\"fzf-lua\").buffers()<CR>\6'6<cmd>lua require(\"fzf-lua\").command_history()<CR>\6c,<cmd>lua require(\"fzf-lua\").files()<CR>\n<C-f>\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/fzf-lua",
    url = "https://github.com/ibhagwan/fzf-lua"
  },
  ["fzf.vim"] = {
    config = { "\27LJ\2\nP\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\3\0\0\21right:40%:hidden\vctrl-/\23fzf_preview_window\6g\bvim\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nŸ\a\0\0\5\0\24\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\2B\0\2\1K\0\1\0\tyadm\1\0\1\venable\1\19preview_config\1\0\5\brow\3\0\bcol\3\1\vborder\vsingle\nstyle\fminimal\rrelative\vcursor\28current_line_blame_opts\1\0\4\ndelay\3d\22ignore_whitespace\1\14virt_text\2\18virt_text_pos\beol\17watch_gitdir\1\0\2\rinterval\3Ë\a\17follow_files\2\nsigns\1\0\n\nnumhl\1\14word_diff\1\20max_file_length\3¿∏\2\15signcolumn\2\18sign_priority\3\6\vlinehl\1\20update_debounce\3d!current_line_blame_formatter1<author>, <author_time:%Y-%m-%d> - <summary>\23current_line_blame\1\24attach_to_untracked\2\17changedelete\1\0\4\ahl\19GitSignsChange\ttext\6~\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\14topdelete\1\0\4\ahl\19GitSignsDelete\ttext\b‚Äæ\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\vdelete\1\0\4\ahl\19GitSignsDelete\ttext\6_\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\vchange\1\0\4\ahl\19GitSignsChange\ttext\b‚ñå\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\badd\1\0\0\1\0\4\ahl\16GitSignsAdd\ttext\b‚ñå\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  kommentary = {
    config = { "\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireË\3\1\0\a\0\22\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0005\3\4\0003\4\5\0=\4\6\3B\0\3\0016\0\a\0009\0\b\0009\0\t\0\18\1\0\0'\3\n\0'\4\v\0'\5\f\0004\6\0\0B\1\5\1\18\1\0\0'\3\n\0'\4\r\0'\5\14\0004\6\0\0B\1\5\1\18\1\0\0'\3\15\0'\4\16\0'\5\17\0004\6\0\0B\1\5\0016\1\0\0'\3\18\0B\1\2\0029\1\19\0015\3\21\0005\4\20\0=\4\r\3B\1\2\1K\0\1\0\1\0\0\1\2\0\0\24Toggle comment line\rregister\14which-key)<Plug>kommentary_visual_default<C-c>\6/\6v\"<Plug>kommentary_line_default\b.//$<Plug>kommentary_motion_default\a./\6n\20nvim_set_keymap\bapi\bvim\18hook_function\0\1\0\2\31multi_line_comment_strings\tauto\31single_line_comment_string\tauto\20typescriptreact\23configure_language\22kommentary.config\frequire\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/kommentary",
    url = "https://github.com/b3nj5m1n/kommentary"
  },
  ["lsp-colors.nvim"] = {
    config = { "\27LJ\2\n~\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\4\16Information\f#0db9d7\fWarning\f#e0af68\nError\f#db4b4b\tHint\f#10B981\nsetup\15lsp-colors\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/opt/lsp-colors.nvim",
    url = "https://github.com/folke/lsp-colors.nvim"
  },
  ["lspkind-nvim"] = {
    config = { "\27LJ\2\nó\3\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\15symbol_map\1\0\25\vStruct\bÔ≠Ñ\vMethod\bÔö¶\15EnumMember\bÔÖù\vModule\bÔíá\18TypeParameter\5\tFile\bÔúò\vFolder\bÔùä\14Reference\bÔúÜ\rOperator\bÔöî\rFunction\bÔûî\nColor\bÔ£ó\fSnippet\bÔëè\rVariable\bÔî™\nValue\bÔ¢ü\14Interface\bÔÉ®\tUnit\bÔ•¨\tEnum\bÔÖù\16Constructor\bÔê£\fKeyword\bÔ†ä\nField\bÔ∞†\rProperty\bÔ∞†\rConstant\bÔ£æ\tText\bÔùæ\nClass\bÔ¥Ø\nEvent\bÔÉß\1\0\2\vpreset\rcodicons\tmode\16symbol_text\tinit\flspkind\frequire\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  neogit = {
    config = { "\27LJ\2\n]\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\17integrations\1\0\0\1\0\1\rdiffview\2\nsetup\vneogit\frequire\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nä\2\0\0\t\0\15\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0026\1\0\0'\3\a\0B\1\2\0029\1\b\1\18\3\1\0009\1\t\1'\4\n\0009\5\v\0005\a\r\0005\b\f\0=\b\14\aB\5\2\0A\1\2\1K\0\1\0\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\21disable_filetype\1\2\0\0\bvim\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n:\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\19UltiSnips#Anon\afn\bvimË\4\1\0\v\0\31\0>'\0\0\0006\1\1\0'\3\2\0B\1\2\0026\2\1\0'\4\3\0B\2\2\0026\3\1\0\18\5\0\0'\6\4\0&\5\6\5B\3\2\0026\4\1\0\18\6\0\0'\a\5\0&\6\a\6B\4\2\0026\5\1\0'\a\6\0B\5\2\0019\5\a\0015\a\t\0005\b\b\0=\b\n\a4\b\4\0005\t\v\0>\t\1\b5\t\f\0>\t\2\b5\t\r\0>\t\3\b=\b\14\a5\b\16\0003\t\15\0=\t\17\b=\b\18\a5\b\19\0004\t\n\0006\n\20\0>\n\1\t9\n\21\2>\n\2\t9\n\22\2>\n\3\t9\n\23\2>\n\4\t9\n\24\2>\n\5\t9\n\25\2>\n\6\t9\n\26\2>\n\a\t9\n\27\2>\n\b\t9\n\28\2>\n\t\t=\t\29\b=\b\30\a=\3\4\a=\4\5\aB\5\2\1K\0\1\0\fsorting\16comparators\norder\vlength\14sort_text\tkind\18recently_used\nscore\nexact\voffset\20tabnine_compare\1\0\1\20priority_weight\3\2\fsnippet\vexpand\1\0\0\0\fsources\1\0\1\tname\14ultisnips\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\15completion\1\0\0\1\0\1\16completeopt#menu,menuone,noselect,noinsert\nsetup cmp_nvim_ultisnips.mappings\fmapping\15formatting\23cmp.config.compare\bcmp\frequire\26plugins/cmp/nvim_cmp/\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-gps"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/opt/nvim-gps",
    url = "https://github.com/SmiteshP/nvim-gps"
  },
  ["nvim-lsp-ts-utils"] = {
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/nvim-lsp-ts-utils",
    url = "https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    after = { "lsp-colors.nvim" },
    loaded = true,
    only_config = true
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27plugins/notify/options\frequire\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n=\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\"plugins/nvim-tree/keybindings\frequire\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-treesitter-textobjects", "playground", "nvim-gps" },
    config = { "\27LJ\2\nÑ\4\0\0\6\0\22\0\0306\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\1\0019\1\4\0016\3\0\0009\3\1\0039\3\5\0039\3\6\0035\4\a\0005\5\b\0=\5\t\4B\1\3\2=\1\3\0006\0\n\0'\2\v\0B\0\2\0029\0\f\0005\2\14\0005\3\r\0=\3\15\0025\3\16\0005\4\17\0=\4\18\3=\3\19\0025\3\20\0=\3\21\2B\0\2\1K\0\1\0\frainbow\1\0\2\venable\2\18extended_mode\1\14highlight\fdisable\1\4\0\0\nlatex\fhaskell\vpython\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\0\1\6\0\0\thtml\15javascript\15typescript\btsx\blua\nsetup\28nvim-treesitter.configs\frequire\17virtual_text\1\0\2\19severity_limit\fWarning\fspacing\3\5\1\0\2\14underline\2\21update_in_insert\2\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\blsp\bvim\0" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    config = { "\27LJ\2\nÃ\5\0\0\6\0\20\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\18\0005\3\f\0005\4\3\0005\5\4\0=\5\5\0045\5\6\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0=\5\v\4=\4\r\0035\4\14\0005\5\15\0=\5\16\4=\4\17\3=\3\19\2B\0\2\1K\0\1\0\16textobjects\1\0\0\vselect\fkeymaps\1\0\4\a[c\17@class.outer\a]c\17@class.inner\a[l\20@function.inner\a[k\20@function.outer\1\0\2\14lookahead\2\venable\2\tmove\1\0\0\22goto_previous_end\1\0\5\a[]\17@class.outer\a[M\20@function.outer\a[B\17@block.outer\a[F\16@call.outer\a[P\21@parameter.outer\24goto_previous_start\1\0\5\a[b\17@block.outer\a[f\16@call.outer\a[p\21@parameter.outer\a[[\17@class.outer\a[m\20@function.outer\18goto_next_end\1\0\5\a]F\16@call.outer\a]B\17@block.outer\a]P\21@parameter.outer\a][\17@class.outer\a]M\20@function.outer\20goto_next_start\1\0\5\a]m\20@function.outer\a]b\17@block.outer\a]f\16@call.outer\a]p\21@parameter.outer\a]]\17@class.outer\1\0\2\venable\2\14set_jumps\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\nt\0\0\4\2\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0-\3\0\0=\3\4\2-\3\1\0=\3\5\2B\0\2\1K\0\1\0\0¿\1¿\14skip_tags\14filetypes\1\0\1\venable\2\nsetup\20nvim-ts-autotag\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/opt/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/schemastore.nvim",
    url = "https://github.com/b0o/schemastore.nvim"
  },
  ["symbols-outline.nvim"] = {
    config = { "\27LJ\2\n€\v\0\0\4\0@\0C6\0\0\0009\0\1\0005\1\3\0005\2\5\0005\3\4\0=\3\6\2=\2\a\0014\2\0\0=\2\b\0014\2\0\0=\2\t\0015\2\v\0005\3\n\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\0025\3\19\0=\3\20\0025\3\21\0=\3\22\0025\3\23\0=\3\24\0025\3\25\0=\3\26\0025\3\27\0=\3\28\0025\3\29\0=\3\30\0025\3\31\0=\3 \0025\3!\0=\3\"\0025\3#\0=\3$\0025\3%\0=\3&\0025\3'\0=\3(\0025\3)\0=\3*\0025\3+\0=\3,\0025\3-\0=\3.\0025\3/\0=\0030\0025\0031\0=\0032\0025\0033\0=\0034\0025\0035\0=\0036\0025\0037\0=\0038\0025\0039\0=\3:\0025\3;\0=\3<\0025\3=\0=\3>\2=\2?\1=\1\2\0K\0\1\0\fsymbols\18TypeParameter\1\0\2\ticon\tùôè\ahl\16TSParameter\rOperator\1\0\2\ticon\6+\ahl\15TSOperator\nEvent\1\0\2\ticon\tüó≤\ahl\vTSType\vStruct\1\0\2\ticon\tùì¢\ahl\vTSType\15EnumMember\1\0\2\ticon\bÔÖù\ahl\fTSField\tNull\1\0\2\ticon\tNULL\ahl\vTSType\bKey\1\0\2\ticon\tüîê\ahl\vTSType\vObject\1\0\2\ticon\b‚¶ø\ahl\vTSType\nArray\1\0\2\ticon\bÔô©\ahl\15TSConstant\fBoolean\1\0\2\ticon\b‚ä®\ahl\14TSBoolean\vNumber\1\0\2\ticon\6#\ahl\rTSNumber\vString\1\0\2\ticon\tùìê\ahl\rTSString\rConstant\1\0\2\ticon\bÓà¨\ahl\15TSConstant\rVariable\1\0\2\ticon\bÓûõ\ahl\15TSConstant\rFunction\1\0\2\ticon\bÔÇö\ahl\15TSFunction\14Interface\1\0\2\ticon\bÔ∞Æ\ahl\vTSType\tEnum\1\0\2\ticon\b‚Ñ∞\ahl\vTSType\16Constructor\1\0\2\ticon\bÓàè\ahl\18TSConstructor\nField\1\0\2\ticon\bÔöß\ahl\fTSField\rProperty\1\0\2\ticon\bÓò§\ahl\rTSMethod\vMethod\1\0\2\ticon\a∆í\ahl\rTSMethod\nClass\1\0\2\ticon\tùìí\ahl\vTSType\fPackage\1\0\2\ticon\bÔ£ñ\ahl\16TSNamespace\14Namespace\1\0\2\ticon\bÔô©\ahl\16TSNamespace\vModule\1\0\2\ticon\bÔö¶\ahl\16TSNamespace\tFile\1\0\0\1\0\2\ticon\bÔúì\ahl\nTSURI\21symbol_blacklist\18lsp_blacklist\fkeymaps\nclose\1\0\6\17code_actions\6a\18goto_location\t<Cr>\18rename_symbol\6r\19toggle_preview\6K\17hover_symbol\f<space>\19focus_location\6o\1\3\0\0\n<Esc>\6q\1\0\v\rposition\nright\nwidth\3#\16show_guides\2\27highlight_hovered_item\2\25preview_bg_highlight\nPmenu\24show_symbol_details\2\26show_relative_numbers\1\17show_numbers\1\15auto_close\1\17auto_preview\2\19relative_width\1\20symbols_outline\6g\bvim\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  tagbar = {
    config = { "\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31plugins/tagbar/keybindings\frequire\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://github.com/preservim/tagbar"
  },
  ["tig-explorer.vim"] = {
    config = { '\27LJ\2\n?\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\0\0=\1\2\0K\0\1\0"tig_explorer_use_builtin_term\6g\bvim\0' },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/tig-explorer.vim",
    url = "https://github.com/iberianpig/tig-explorer.vim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\nÏ\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\vsearch\targs\1\6\0\0\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\1\0\2\fpattern\18\\b(KEYWORDS):\fcommand\arg\nsigns\1\0\0\1\0\2\venable\2\rpriority\3\b\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["unite.vim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins/unite/keybindings\frequire\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/unite.vim",
    url = "https://github.com/Shougo/unite.vim"
  },
  ["vifm.vim"] = {
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/vifm.vim",
    url = "https://github.com/vifm/vifm.vim"
  },
  ["vim-bookmarks"] = {
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins/bookmarks/options\frequire\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/vim-bookmarks",
    url = "https://github.com/MattesGroeger/vim-bookmarks"
  },
  ["vim-empty-lines"] = {
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/vim-empty-lines",
    url = "https://github.com/kovetskiy/vim-empty-lines"
  },
  ["vim-floaterm"] = {
    config = { "\27LJ\2\na\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\1K\0\1\0\29plugins/floaterm/options!plugins/floaterm/keybindings\frequire\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-illuminate"] = {
    config = { "\27LJ\2\n2\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1d\0=\1\2\0K\0\1\0\21Illuminate_delay\6g\bvim\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-move"] = {
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/vim-move",
    url = "https://github.com/matze/vim-move"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/vim-polyglot",
    url = "https://github.com/sheerun/vim-polyglot"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  },
  ["vim-wintabs"] = {
    config = { "\27LJ\2\ná\2\0\0\b\0\v\0\0276\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\1'\3\4\0009\4\5\0'\5\6\0&\3\5\3B\1\2\0016\1\2\0009\1\3\1'\3\a\0009\4\b\0'\5\t\0009\6\5\0'\a\6\0&\3\a\3B\1\2\0016\1\2\0009\1\3\1'\3\n\0009\4\5\0'\5\6\0&\3\5\3B\1\2\1K\0\1\0/highlight TabLineFill guibg=default guifg=\f guifg=\abg highlight TabLineSel guibg=\5\afg+highlight TabLine guibg=default guifg=\bcmd\bvim\vcolors\frequire\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/vim-wintabs",
    url = "https://github.com/zefei/vim-wintabs"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nä\1\0\0\3\0\4\0\n6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\0\0'\2\3\0B\0\2\1K\0\1\0 plugins/keybindings/noremap\31plugins/keybindings/insert plugins/keybindings/options\frequire\0" },
    loaded = true,
    path = "/Users/daniiljave/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: vim-floaterm
time([[Config for vim-floaterm]], true)
try_loadstring("\27LJ\2\na\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\1K\0\1\0\29plugins/floaterm/options!plugins/floaterm/keybindings\frequire\0", "config", "vim-floaterm")
time([[Config for vim-floaterm]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\"plugins/nvim-tree/keybindings\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: tagbar
time([[Config for tagbar]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31plugins/tagbar/keybindings\frequire\0", "config", "tagbar")
time([[Config for tagbar]], false)
-- Config for: vim-illuminate
time([[Config for vim-illuminate]], true)
try_loadstring("\27LJ\2\n2\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1d\0=\1\2\0K\0\1\0\21Illuminate_delay\6g\bvim\0", "config", "vim-illuminate")
time([[Config for vim-illuminate]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nï\1\0\0\5\0\5\0\17'\0\0\0006\1\1\0\18\3\0\0'\4\2\0&\3\4\3B\1\2\0016\1\1\0\18\3\0\0'\4\3\0&\3\4\3B\1\2\0016\1\1\0\18\3\0\0'\4\4\0&\3\4\3B\1\2\1K\0\1\0\21diagnostic_signs\17load_servers\foptions\frequire plugins/lsp/nvim_lspconfig/\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
try_loadstring("\27LJ\2\n°\15\0\0\t\0R\0Ì\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\0015\3\5\0005\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0005\5\v\0=\5\f\4=\4\r\0035\4\14\0005\5\15\0=\5\16\4=\4\17\0035\4\18\0004\5\0\0=\5\19\0044\5\0\0=\5\20\4=\4\21\0034\4\0\0=\4\22\0035\4\23\0005\5\25\0\18\6\0\0'\b\24\0B\6\2\2=\6\26\5\18\6\0\0'\b\27\0B\6\2\2=\6\28\5\18\6\0\0'\b\29\0B\6\2\2=\6\30\5\18\6\0\0'\b\31\0B\6\2\2=\6 \5\18\6\0\0'\b!\0B\6\2\2=\6\"\5\18\6\0\0'\b#\0B\6\2\2=\6$\5\18\6\0\0'\b%\0B\6\2\2=\6&\5=\5'\0045\5)\0\18\6\0\0'\b(\0B\6\2\2=\6*\5\18\6\0\0'\b(\0B\6\2\2=\6+\5\18\6\0\0'\b,\0B\6\2\2=\6-\5\18\6\0\0'\b,\0B\6\2\2=\6.\5\18\6\0\0'\b/\0B\6\2\2=\0060\5\18\6\0\0'\b/\0B\6\2\2=\0061\5\18\6\0\0'\b/\0B\6\2\2=\0062\5\18\6\0\0'\b3\0B\6\2\2=\0064\5\18\6\0\0'\b5\0B\6\2\2=\0066\5\18\6\0\0'\b7\0B\6\2\2=\0068\5\18\6\0\0'\b9\0B\6\2\2=\6:\5\18\6\0\0'\b;\0B\6\2\2=\6<\5\18\6\0\0'\b\24\0B\6\2\2=\6\26\5\18\6\0\0'\b\27\0B\6\2\2=\6\28\5\18\6\0\0'\b\29\0B\6\2\2=\6\30\5\18\6\0\0'\b\31\0B\6\2\2=\6 \5\18\6\0\0'\b!\0B\6\2\2=\6\"\5\18\6\0\0'\b=\0B\6\2\2=\6>\5\18\6\0\0'\b?\0B\6\2\2=\6@\5\18\6\0\0'\b#\0B\6\2\2=\6$\5\18\6\0\0'\b%\0B\6\2\2=\6&\5=\5\r\0045\5B\0\18\6\0\0'\bA\0B\6\2\2=\6C\5\18\6\0\0'\bD\0B\6\2\2=\6E\5\18\6\0\0'\bF\0B\6\2\2=\6G\5\18\6\0\0'\bH\0B\6\2\2=\6I\5\18\6\0\0'\bJ\0B\6\2\2=\6K\5\18\6\0\0'\b(\0B\6\2\2=\6*\5\18\6\0\0'\b(\0B\6\2\2=\6+\5\18\6\0\0'\b,\0B\6\2\2=\6-\5\18\6\0\0'\b,\0B\6\2\2=\6.\5\18\6\0\0'\b/\0B\6\2\2=\0060\5\18\6\0\0'\b/\0B\6\2\2=\0061\5\18\6\0\0'\b/\0B\6\2\2=\0062\5\18\6\0\0'\b\24\0B\6\2\2=\6\26\5\18\6\0\0'\b\27\0B\6\2\2=\6\28\5\18\6\0\0'\b\29\0B\6\2\2=\6\30\5\18\6\0\0'\b\31\0B\6\2\2=\6 \5\18\6\0\0'\b!\0B\6\2\2=\6\"\5\18\6\0\0'\b#\0B\6\2\2=\6$\5\18\6\0\0'\b%\0B\6\2\2=\6&\5=\5\17\0045\5M\0\18\6\0\0'\bL\0B\6\2\2=\6\26\5\18\6\0\0'\bN\0B\6\2\2=\6O\5=\5P\4=\4Q\3B\1\2\1K\0\1\0\17key_bindings\17option_panel\6q\nclose\1\0\0\vselect\azM\20close_all_folds\azR\19open_all_folds\6y\14copy_hash\f<C-A-d>\21open_in_diffview\ag!\1\0\0\foptions\6f\24toggle_flatten_dirs\6i\18listing_style\6R\18refresh_files\6X\18restore_entry\6U\16unstage_all\6S\14stage_all\6-\23toggle_stage_entry\18<2-LeftMouse>\6o\t<cr>\17select_entry\t<up>\6k\15prev_entry\v<down>\6j\1\0\0\15next_entry\tview\14<leader>b\17toggle_files\14<leader>e\16focus_files\f<C-w>gf\18goto_file_tab\15<C-w><C-f>\20goto_file_split\agf\14goto_file\f<s-tab>\22select_prev_entry\n<tab>\1\0\0\22select_next_entry\1\0\1\21disable_defaults\1\nhooks\17default_args\24DiffviewFileHistory\17DiffviewOpen\1\0\0\23file_history_panel\16log_options\1\0\6\vmerges\1\vfollow\1\14max_count\3Ä\2\ball\1\freverse\1\14no_merges\1\1\0\3\rposition\vbottom\nwidth\3#\vheight\3\16\15file_panel\17tree_options\1\0\2\20folder_statuses\16only_folded\17flatten_dirs\2\1\0\4\vheight\3\n\nwidth\3#\rposition\tleft\18listing_style\ttree\nsigns\1\0\2\16fold_closed\bÔë†\14fold_open\bÔëº\nicons\1\0\2\18folder_closed\bÓóø\16folder_open\bÓóæ\1\0\3\14use_icons\2\21enhanced_diff_hl\1\18diff_binaries\1\nsetup\rdiffview\22diffview_callback\20diffview.config\frequire\0", "config", "diffview.nvim")
time([[Config for diffview.nvim]], false)
-- Config for: vim-wintabs
time([[Config for vim-wintabs]], true)
try_loadstring("\27LJ\2\ná\2\0\0\b\0\v\0\0276\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\1'\3\4\0009\4\5\0'\5\6\0&\3\5\3B\1\2\0016\1\2\0009\1\3\1'\3\a\0009\4\b\0'\5\t\0009\6\5\0'\a\6\0&\3\a\3B\1\2\0016\1\2\0009\1\3\1'\3\n\0009\4\5\0'\5\6\0&\3\5\3B\1\2\1K\0\1\0/highlight TabLineFill guibg=default guifg=\f guifg=\abg highlight TabLineSel guibg=\5\afg+highlight TabLine guibg=default guifg=\bcmd\bvim\vcolors\frequire\0", "config", "vim-wintabs")
time([[Config for vim-wintabs]], false)
-- Config for: kommentary
time([[Config for kommentary]], true)
try_loadstring("\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireË\3\1\0\a\0\22\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0005\3\4\0003\4\5\0=\4\6\3B\0\3\0016\0\a\0009\0\b\0009\0\t\0\18\1\0\0'\3\n\0'\4\v\0'\5\f\0004\6\0\0B\1\5\1\18\1\0\0'\3\n\0'\4\r\0'\5\14\0004\6\0\0B\1\5\1\18\1\0\0'\3\15\0'\4\16\0'\5\17\0004\6\0\0B\1\5\0016\1\0\0'\3\18\0B\1\2\0029\1\19\0015\3\21\0005\4\20\0=\4\r\3B\1\2\1K\0\1\0\1\0\0\1\2\0\0\24Toggle comment line\rregister\14which-key)<Plug>kommentary_visual_default<C-c>\6/\6v\"<Plug>kommentary_line_default\b.//$<Plug>kommentary_motion_default\a./\6n\20nvim_set_keymap\bapi\bvim\18hook_function\0\1\0\2\31multi_line_comment_strings\tauto\31single_line_comment_string\tauto\20typescriptreact\23configure_language\22kommentary.config\frequire\0", "config", "kommentary")
time([[Config for kommentary]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nŸ\a\0\0\5\0\24\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\2B\0\2\1K\0\1\0\tyadm\1\0\1\venable\1\19preview_config\1\0\5\brow\3\0\bcol\3\1\vborder\vsingle\nstyle\fminimal\rrelative\vcursor\28current_line_blame_opts\1\0\4\ndelay\3d\22ignore_whitespace\1\14virt_text\2\18virt_text_pos\beol\17watch_gitdir\1\0\2\rinterval\3Ë\a\17follow_files\2\nsigns\1\0\n\nnumhl\1\14word_diff\1\20max_file_length\3¿∏\2\15signcolumn\2\18sign_priority\3\6\vlinehl\1\20update_debounce\3d!current_line_blame_formatter1<author>, <author_time:%Y-%m-%d> - <summary>\23current_line_blame\1\24attach_to_untracked\2\17changedelete\1\0\4\ahl\19GitSignsChange\ttext\6~\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\14topdelete\1\0\4\ahl\19GitSignsDelete\ttext\b‚Äæ\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\vdelete\1\0\4\ahl\19GitSignsDelete\ttext\6_\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\vchange\1\0\4\ahl\19GitSignsChange\ttext\b‚ñå\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\badd\1\0\0\1\0\4\ahl\16GitSignsAdd\ttext\b‚ñå\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: fzf-lsp.nvim
time([[Config for fzf-lsp.nvim]], true)
try_loadstring("\27LJ\2\nf\0\0\3\0\a\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0005\1\6\0=\1\5\0K\0\1\0\1\0\1\tdown\b40%\19fzf_lsp_layout\6g\bvim\nsetup\ffzf_lsp\frequire\0", "config", "fzf-lsp.nvim")
time([[Config for fzf-lsp.nvim]], false)
-- Config for: tig-explorer.vim
time([[Config for tig-explorer.vim]], true)
try_loadstring('\27LJ\2\n?\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\0\0=\1\2\0K\0\1\0"tig_explorer_use_builtin_term\6g\bvim\0', "config", "tig-explorer.vim")
time([[Config for tig-explorer.vim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\nÏ\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\vsearch\targs\1\6\0\0\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\1\0\2\fpattern\18\\b(KEYWORDS):\fcommand\arg\nsigns\1\0\0\1\0\2\venable\2\rpriority\3\b\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: unite.vim
time([[Config for unite.vim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins/unite/keybindings\frequire\0", "config", "unite.vim")
time([[Config for unite.vim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27plugins/notify/options\frequire\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: Nvim-Switch-Buffer
time([[Config for Nvim-Switch-Buffer]], true)
try_loadstring("\27LJ\2\nA\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0&plugins/switch-buffer/keybindings\frequire\0", "config", "Nvim-Switch-Buffer")
time([[Config for Nvim-Switch-Buffer]], false)
-- Config for: lspkind-nvim
time([[Config for lspkind-nvim]], true)
try_loadstring("\27LJ\2\nó\3\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\15symbol_map\1\0\25\vStruct\bÔ≠Ñ\vMethod\bÔö¶\15EnumMember\bÔÖù\vModule\bÔíá\18TypeParameter\5\tFile\bÔúò\vFolder\bÔùä\14Reference\bÔúÜ\rOperator\bÔöî\rFunction\bÔûî\nColor\bÔ£ó\fSnippet\bÔëè\rVariable\bÔî™\nValue\bÔ¢ü\14Interface\bÔÉ®\tUnit\bÔ•¨\tEnum\bÔÖù\16Constructor\bÔê£\fKeyword\bÔ†ä\nField\bÔ∞†\rProperty\bÔ∞†\rConstant\bÔ£æ\tText\bÔùæ\nClass\bÔ¥Ø\nEvent\bÔÉß\1\0\2\vpreset\rcodicons\tmode\16symbol_text\tinit\flspkind\frequire\0", "config", "lspkind-nvim")
time([[Config for lspkind-nvim]], false)
-- Config for: fzf.vim
time([[Config for fzf.vim]], true)
try_loadstring("\27LJ\2\nP\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\3\0\0\21right:40%:hidden\vctrl-/\23fzf_preview_window\6g\bvim\0", "config", "fzf.vim")
time([[Config for fzf.vim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n:\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\19UltiSnips#Anon\afn\bvimË\4\1\0\v\0\31\0>'\0\0\0006\1\1\0'\3\2\0B\1\2\0026\2\1\0'\4\3\0B\2\2\0026\3\1\0\18\5\0\0'\6\4\0&\5\6\5B\3\2\0026\4\1\0\18\6\0\0'\a\5\0&\6\a\6B\4\2\0026\5\1\0'\a\6\0B\5\2\0019\5\a\0015\a\t\0005\b\b\0=\b\n\a4\b\4\0005\t\v\0>\t\1\b5\t\f\0>\t\2\b5\t\r\0>\t\3\b=\b\14\a5\b\16\0003\t\15\0=\t\17\b=\b\18\a5\b\19\0004\t\n\0006\n\20\0>\n\1\t9\n\21\2>\n\2\t9\n\22\2>\n\3\t9\n\23\2>\n\4\t9\n\24\2>\n\5\t9\n\25\2>\n\6\t9\n\26\2>\n\a\t9\n\27\2>\n\b\t9\n\28\2>\n\t\t=\t\29\b=\b\30\a=\3\4\a=\4\5\aB\5\2\1K\0\1\0\fsorting\16comparators\norder\vlength\14sort_text\tkind\18recently_used\nscore\nexact\voffset\20tabnine_compare\1\0\1\20priority_weight\3\2\fsnippet\vexpand\1\0\0\0\fsources\1\0\1\tname\14ultisnips\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\15completion\1\0\0\1\0\1\16completeopt#menu,menuone,noselect,noinsert\nsetup cmp_nvim_ultisnips.mappings\fmapping\15formatting\23cmp.config.compare\bcmp\frequire\26plugins/cmp/nvim_cmp/\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins/dashboard/options\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: neogit
time([[Config for neogit]], true)
try_loadstring("\27LJ\2\n]\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\17integrations\1\0\0\1\0\1\rdiffview\2\nsetup\vneogit\frequire\0", "config", "neogit")
time([[Config for neogit]], false)
-- Config for: vim-bookmarks
time([[Config for vim-bookmarks]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins/bookmarks/options\frequire\0", "config", "vim-bookmarks")
time([[Config for vim-bookmarks]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nä\1\0\0\3\0\4\0\n6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\0\0'\2\3\0B\0\2\1K\0\1\0 plugins/keybindings/noremap\31plugins/keybindings/insert plugins/keybindings/options\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: cmp-nvim-ultisnips
time([[Config for cmp-nvim-ultisnips]], true)
try_loadstring("\27LJ\2\n\27\0\1\2\0\1\0\0029\1\0\0L\1\2\0\16descriptionû\2\1\0\5\0\f\0\24'\0\0\0006\1\1\0009\1\2\0014\2\3\0\18\3\0\0'\4\4\0&\3\4\3>\3\1\2=\2\3\0016\1\1\0009\1\2\1\18\2\0\0'\3\4\0&\2\3\2=\2\5\0016\1\6\0'\3\a\0B\1\2\0029\1\b\0015\3\t\0003\4\n\0=\4\v\3B\1\2\1K\0\1\0\18documentation\0\1\0\2\18show_snippets\ball\20filetype_source\15treesitter\nsetup\23cmp_nvim_ultisnips\frequire\25UltiSnipsSnippetsDir\rsnippets UltiSnipsSnippetDirectories\6g\bvim\27plugins/cmp/ultisnips/\0", "config", "cmp-nvim-ultisnips")
time([[Config for cmp-nvim-ultisnips]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\n€\v\0\0\4\0@\0C6\0\0\0009\0\1\0005\1\3\0005\2\5\0005\3\4\0=\3\6\2=\2\a\0014\2\0\0=\2\b\0014\2\0\0=\2\t\0015\2\v\0005\3\n\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\0025\3\19\0=\3\20\0025\3\21\0=\3\22\0025\3\23\0=\3\24\0025\3\25\0=\3\26\0025\3\27\0=\3\28\0025\3\29\0=\3\30\0025\3\31\0=\3 \0025\3!\0=\3\"\0025\3#\0=\3$\0025\3%\0=\3&\0025\3'\0=\3(\0025\3)\0=\3*\0025\3+\0=\3,\0025\3-\0=\3.\0025\3/\0=\0030\0025\0031\0=\0032\0025\0033\0=\0034\0025\0035\0=\0036\0025\0037\0=\0038\0025\0039\0=\3:\0025\3;\0=\3<\0025\3=\0=\3>\2=\2?\1=\1\2\0K\0\1\0\fsymbols\18TypeParameter\1\0\2\ticon\tùôè\ahl\16TSParameter\rOperator\1\0\2\ticon\6+\ahl\15TSOperator\nEvent\1\0\2\ticon\tüó≤\ahl\vTSType\vStruct\1\0\2\ticon\tùì¢\ahl\vTSType\15EnumMember\1\0\2\ticon\bÔÖù\ahl\fTSField\tNull\1\0\2\ticon\tNULL\ahl\vTSType\bKey\1\0\2\ticon\tüîê\ahl\vTSType\vObject\1\0\2\ticon\b‚¶ø\ahl\vTSType\nArray\1\0\2\ticon\bÔô©\ahl\15TSConstant\fBoolean\1\0\2\ticon\b‚ä®\ahl\14TSBoolean\vNumber\1\0\2\ticon\6#\ahl\rTSNumber\vString\1\0\2\ticon\tùìê\ahl\rTSString\rConstant\1\0\2\ticon\bÓà¨\ahl\15TSConstant\rVariable\1\0\2\ticon\bÓûõ\ahl\15TSConstant\rFunction\1\0\2\ticon\bÔÇö\ahl\15TSFunction\14Interface\1\0\2\ticon\bÔ∞Æ\ahl\vTSType\tEnum\1\0\2\ticon\b‚Ñ∞\ahl\vTSType\16Constructor\1\0\2\ticon\bÓàè\ahl\18TSConstructor\nField\1\0\2\ticon\bÔöß\ahl\fTSField\rProperty\1\0\2\ticon\bÓò§\ahl\rTSMethod\vMethod\1\0\2\ticon\a∆í\ahl\rTSMethod\nClass\1\0\2\ticon\tùìí\ahl\vTSType\fPackage\1\0\2\ticon\bÔ£ñ\ahl\16TSNamespace\14Namespace\1\0\2\ticon\bÔô©\ahl\16TSNamespace\vModule\1\0\2\ticon\bÔö¶\ahl\16TSNamespace\tFile\1\0\0\1\0\2\ticon\bÔúì\ahl\nTSURI\21symbol_blacklist\18lsp_blacklist\fkeymaps\nclose\1\0\6\17code_actions\6a\18goto_location\t<Cr>\18rename_symbol\6r\19toggle_preview\6K\17hover_symbol\f<space>\19focus_location\6o\1\3\0\0\n<Esc>\6q\1\0\v\rposition\nright\nwidth\3#\16show_guides\2\27highlight_hovered_item\2\25preview_bg_highlight\nPmenu\24show_symbol_details\2\26show_relative_numbers\1\17show_numbers\1\15auto_close\1\17auto_preview\2\19relative_width\1\20symbols_outline\6g\bvim\0", "config", "symbols-outline.nvim")
time([[Config for symbols-outline.nvim]], false)
-- Config for: fzf-lua
time([[Config for fzf-lua]], true)
try_loadstring("\27LJ\2\n\29\0\1\4\0\1\0\0046\1\0\0:\3\2\0B\1\2\1K\0\1\0\nprint\29\0\1\4\0\1\0\0046\1\0\0:\3\2\0B\1\2\1K\0\1\0\nprint\29\0\1\4\0\1\0\0046\1\0\0:\3\2\0B\1\2\1K\0\1\0\nprint;\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\28set winhl=Normal:Normal\bcmd\bvim\v\0\0\1\0\0\0\1K\0\1\0\29\0\1\4\0\1\0\0046\1\0\0:\3\2\0B\1\2\1K\0\1\0\nprintá3\1\0\n\0¡\1\0∏\0036\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\a\0'\5\5\0'\6\b\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\t\0'\6\n\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\v\0'\6\f\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\15\0'\6\16\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\17\0'\6\18\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\19\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\a\0'\5\19\0'\6\20\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\21\0'\6\n\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\22\0'\6\f\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\23\0'\6\24\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\25\0'\6\26\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\27\0'\6\28\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\29\0'\6\16\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\30\0'\6\18\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\31\0'\6 \0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5!\0'\6\"\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5#\0'\6$\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5%\0'\6&\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5'\0'\6(\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5)\0'\6*\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5+\0'\6,\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5-\0'\6.\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5/\0'\0060\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\0051\0'\0062\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\0053\0'\0064\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\0055\0'\0066\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\0057\0'\0068\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\0059\0'\6:\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5;\0'\6(\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5<\0'\6*\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5=\0'\6,\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5>\0'\6.\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5?\0'\0060\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5@\0'\0062\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5A\0'\6B\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5C\0'\6D\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5E\0'\6F\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5G\0'\6H\0\18\a\1\0B\2\5\1\18\2\0\0'\4I\0'\5A\0'\6B\0\18\a\1\0B\2\5\1\18\2\0\0'\4I\0'\5C\0'\6D\0\18\a\1\0B\2\5\1\18\2\0\0'\4I\0'\5E\0'\6F\0\18\a\1\0B\2\5\1\18\2\0\0'\4I\0'\5G\0'\6H\0\18\a\1\0B\2\5\0016\2J\0'\4K\0B\2\2\0026\3J\0'\5L\0B\3\2\0029\3M\0035\5Q\0005\6N\0005\aO\0=\aP\6=\6R\0055\6T\0005\aS\0=\aU\0065\aV\0=\aW\6=\6X\0055\6Y\0=\6Z\0056\6\0\0009\6[\0069\6\\\6=\6]\0055\6a\0005\a^\0006\b\0\0009\b[\b9\b_\b=\b`\a=\ab\0065\ac\0=\aU\6=\6d\0055\6e\0005\ag\0009\bf\2=\bh\a9\bi\2=\bj\a9\bk\2=\bl\a9\bm\2=\bn\a9\bo\2=\bp\a3\bq\0=\br\a=\as\6'\at\0'\bu\0&\a\b\a=\av\6=\6w\0055\6y\0005\ax\0=\aw\0065\az\0=\a{\0065\a|\0005\b}\0=\bs\a=\a~\0065\a\0005\bÄ\0=\bs\a=\aÅ\0065\aÇ\0005\bÑ\0009\tÉ\2=\th\b=\bs\a=\aÖ\0065\aá\0005\bÜ\0=\bà\a5\bâ\0=\bä\a5\bã\0=\bå\a5\bç\0=\bé\a=\aè\6=\6ê\0055\6ë\0'\aí\0'\bì\0&\a\b\a=\aî\0065\aï\0009\bf\2=\bh\a9\bi\2=\bj\a9\bk\2=\bl\a9\bm\2=\bn\a9\bo\2=\bp\a3\bñ\0=\br\a=\as\6=\6ó\0055\6ò\0=\6ô\0055\6ö\0005\aú\0009\bõ\2=\bh\a9\bù\2=\bj\a9\bû\2=\bl\a9\bü\2=\bn\a9\b†\2=\b°\a=\as\6=\6¢\0055\6£\0005\a•\0009\b§\2=\bh\a3\b¶\0=\br\a=\as\0065\aß\0003\b®\0=\b©\a=\aR\0063\a™\0=\a´\6=\6¨\0055\6≠\0=\6Æ\0055\6Ø\0005\a±\0005\b∞\0=\b≤\a5\b≥\0=\b¥\a5\bµ\0=\b∂\a5\b∑\0=\b∏\a=\aè\0065\aπ\0009\bf\2=\bh\a9\bi\2=\bj\a9\bk\2=\bl\a9\bm\2=\bn\a9\bo\2=\bp\a3\b∫\0=\br\a=\as\6=\6ª\0054\6\0\0=\6º\0054\6\0\0=\6Ω\0054\6\0\0=\6æ\0055\6ø\0=\6¿\5B\3\2\1K\0\1\0\21file_icon_colors\1\0\1\blua\tblue\rmanpages\rhelptags\floclist\blsp\0\1\0\0\tHint\1\0\2\ticon\tüÑ∑\ncolor\fmagenta\16Information\1\0\2\ticon\tüÑ∏\ncolor\tblue\fWarning\1\0\2\ticon\nüÖÜ \ncolor\vyellow\nError\1\0\0\1\0\2\ticon\nüÑ¥ \ncolor\bred\1\0\a\rseverity\thint\15file_icons\1\vprompt\t‚ùØ \14lsp_icons\1\21async_or_timeout\2\rcwd_only\1\14git_icons\1\rquickfix\1\0\2\14git_icons\1\15file_icons\1\17colorschemes\18post_reset_cb\0\21window_on_create\0\1\0\2\15win_height\4ö≥ÊÃ\tô≥Üˇ\3\14win_width\4≥ÊÃô\3≥ÊÃ˛\3\0\1\0\0\16colorscheme\1\0\2\17live_preview\2\vprompt\21Colorschemes‚ùØ \fbuffers\vctrl-D\fbuf_del\16buf_tabedit\15buf_vsplit\14buf_split\1\0\0\rbuf_edit\1\0\4\16color_icons\1\15file_icons\1\18sort_lastused\2\vprompt\16Buffers‚ùØ \roldfiles\1\0\2\rcwd_only\1\vprompt\16History‚ùØ \tgrep\0\1\0\0\frg_opts<--color=always --smart-case -g '!{.git,node_modules}/*'2--hidden --column --line-number --no-heading \1\0\5\16color_icons\2\15file_icons\1\vprompt\vRg‚ùØ \17input_prompt\17Grep For‚ùØ \14git_icons\1\bgit\nicons\6?\1\0\2\ticon\6?\ncolor\fmagenta\6A\1\0\2\ticon\6A\ncolor\ngreen\6D\1\0\2\ticon\6D\ncolor\bred\6M\1\0\0\1\0\2\ticon\6M\ncolor\vyellow\rbranches\1\0\0\15git_switch\1\0\3\fpreviewAgit log --graph --pretty=oneline --abbrev-commit --color {1}\bcmd\29git branch --all --color\vprompt\17Branches‚ùØ \rbcommits\1\0\0\1\0\3\fpreviewBgit show --pretty='%Cred%H%n%Cblue%an%n%Cgreen%s' --color {1}\bcmd8git log --pretty=oneline --abbrev-commit --color --\vprompt\17BCommits‚ùØ \fcommits\1\0\0\1\0\3\fpreviewBgit show --pretty='%Cred%H%n%Cblue%an%n%Cgreen%s' --color {1}\bcmd5git log --pretty=oneline --abbrev-commit --color\vprompt\16Commits‚ùØ \vstatus\1\0\6\16color_icons\1\15file_icons\1\bcmd\18git status -s\vprompt\18GitStatus‚ùØ \14previewer\rgit_diff\14git_icons\1\1\0\0\1\0\5\16color_icons\1\15file_icons\1\bcmd$git ls-files --exclude-standard\vprompt\17GitFiles‚ùØ \14git_icons\1\nfiles\ffd_opts<--exclude .git --exclude node_modules --exclude '*.pyc'? --no-ignore-vcs --color never --type f --hidden --follow \factions\vctrl-y\0\vctrl-Q\19file_sel_to_qf\vctrl-T\17file_tabedit\vctrl-V\16file_vsplit\vctrl-S\15file_split\fdefault\1\0\0\14file_edit\1\0\5\16color_icons\2\15file_icons\2\bcmd\5\vprompt\14Files‚ùØ \14git_icons\1\15previewers\1\0\n\vsyntax\2\rhl_range\14IncSearch\vexpand\1\18hl_cursorline\vVisual\14hl_cursor\vCursor\19syntax_limit_b\3ÄÄ@\19syntax_limit_l\3\0\15scrollchar\b‚ñà\14scrollbar\2\ntitle\2\bbat\1\0\0\ntheme\14BAT_THEME\1\0\2\targs+--style=numbers,changes --color always\bcmd\bbat\rfzf_args\21FZF_DEFAULT_OPTS\benv\rfzf_opts\1\0\5\v--info\vinline\r--prompt\a >\v--ansi\5\r--layout\freverse\r--height\t100%\vkeymap\bfzf\1\0\n\vctrl-u\22unix-line-discard\vctrl-U\20preview-page-up\vctrl-D\22preview-page-down\af3\24toggle-preview-wrap\vctrl-p\19toggle-preview\vctrl-A\15toggle-all\vctrl-e\16end-of-line\vctrl-a\22beginning-of-line\vctrl-b\17half-page-up\vctrl-f\19half-page-down\fbuiltin\1\0\0\1\0\b\t<F4>\19toggle-preview\t<F6>\22toggle-preview-cw\t<F3>\24toggle-preview-wrap\n<C-d>\22preview-page-down\t<F2>\22toggle-fullscreen\n<C-u>\20preview-page-up\t<F5>\23toggle-preview-ccw\r<S-left>\23preview-page-reset\fwinopts\1\0\a\17flip_columns\3x\19preview_layout\15horizontal\17preview_wrap\vnowrap\23preview_horizontal\14right:60%\21preview_vertical\rdown:50%\19preview_border\vborder\22default_previewer\fbuiltin\15win_border\1\t\0\0\5\b‚îÄ\5\5\b‚îÇ\5\5\5\1\0\6\15win_height\4ö≥ÊÃ\tô≥Ê˛\3\fwin_col\4\0ÄÄÄˇ\3\fwin_row\3\1\14hl_border\fDefault\14hl_normal\vNormal\14win_width\3\1\nsetup\ffzf-lua\20fzf-lua.actions\frequire\6i2<cmd>lua require(\"fzf-lua\").git_commits()<CR>\v<C-g>C3<cmd>lua require(\"fzf-lua\").git_bcommits()<CR>\v<C-g>c3<cmd>lua require(\"fzf-lua\").git_branches()<CR>\v<C-g>b1<cmd>lua require(\"fzf-lua\").git_status()<CR>\f<C-g>ss\v<C-l>S\v<C-l>w\f<C-l>ee\v<C-l>e\v<C-l>u\v<C-l>a:<cmd>lua require(\"fzf-lua\").lsp_implementations()<CR>\f<C-l>ii3<Cmd>lua require(\"fzf-lua\").lsp_typedefs()<CR>\f<C-l>dd6<Cmd>lua require(\"fzf-lua\").lsp_definitions()<CR>\v<C-l>d7<Cmd>lua require(\"fzf-lua\").lsp_declarations()<CR>\v<C-l>D;<cmd>lua require(\"fzf-lua\").lsp_document_symbols()<CR>\r<space>SA<cmd>lua require(\"fzf-lua\").lsp_live_workspace_symbols()<CR>\14<space>SS@<cmd>lua require(\"fzf-lua\").lsp_workspace_diagnostics()<CR>\14<space>ee?<cmd>lua require(\"fzf-lua\").lsp_document_diagnostics()<CR>\r<space>e5<cmd>lua require(\"fzf-lua\").lsp_references()<CR>\14<leader>u7<cmd>lua require(\"fzf-lua\").lsp_code_actions()<CR>\14<leader>a/<cmd>lua require(\"fzf-lua\").commands()<CR>\v<C-f>c.<cmd>lua require(\"fzf-lua\").keymaps()<CR>\v<C-f>k0<cmd>lua require(\"fzf-lua\").registers()<CR>\v<C-f>r/<cmd>lua require(\"fzf-lua\").oldfiles()<CR>\v<C-f>h\v<C-f>t\v<C-f>m2<cmd>lua require(\"fzf-lua\").grep_resume()<CR>\f<C-f>GG+<cmd>lua require(\"fzf-lua\").grep()<CR>\v<C-f>G7<cmd>lua require(\"fzf-lua\").live_grep_resume()<CR>\f<C-f>gg\v<C-f>g\v<C-f>':<cmd>lua require(\"fzf-lua\").command_history()<CR><CR>\v<C-f>f+<cmd>lua require(\"fzf-lua\").tabs()<CR>\r<space>t,<cmd>lua require(\"fzf-lua\").marks()<CR>\r<space>m1<cmd>lua require(\"fzf-lua\").grep_cword()<CR>\14<space>gg0<cmd>lua require(\"fzf-lua\").live_grep()<CR>\r<space>g.<cmd>lua require(\"fzf-lua\").buffers()<CR>\6'6<cmd>lua require(\"fzf-lua\").command_history()<CR>\6c,<cmd>lua require(\"fzf-lua\").files()<CR>\n<C-f>\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\0", "config", "fzf-lua")
time([[Config for fzf-lua]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nä\2\0\0\t\0\15\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0026\1\0\0'\3\a\0B\1\2\0029\1\b\1\18\3\1\0009\1\t\1'\4\n\0009\5\v\0005\a\r\0005\b\f\0=\b\14\aB\5\2\0A\1\2\1K\0\1\0\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\21disable_filetype\1\2\0\0\bvim\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd vim-polyglot ]]
vim.cmd [[ packadd lsp-colors.nvim ]]

-- Config for: lsp-colors.nvim
try_loadstring("\27LJ\2\n~\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\4\16Information\f#0db9d7\fWarning\f#e0af68\nError\f#db4b4b\tHint\f#10B981\nsetup\15lsp-colors\frequire\0", "config", "lsp-colors.nvim")

time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'nvim-treesitter'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-ts-autotag'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
