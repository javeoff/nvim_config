# Neovim config docs

## Features

- AI (ChatGPT) support
- Typescript/Javascript support
- Git support

## Getting started

```
git clone git@github.com:javeoff/nvim_config.git ~/.config/nvim
```

- Macos

```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/javeoff/nvim_config/main/scripts/install_macos.sh)"
```

- Linux

```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/javeoff/nvim_config/main/scripts/install_linux.sh)"
```

## Keybindings

### Navigation

- `<M-e>` - Open Neotree menu in the files tab
- `<M-m>` - Open Neotree left menu
- `se` - Reveal file from current path in the files tab
- `sE` - Reveal file from project in the files tab
- `sm` - Reveal file in the left menu

### Buffers

- `sb` - Open buffers in tab

### Git

- `so` - Git status files
- `sh` - Open Neotree git status float from current path
- `sH` - Open Neotree git status float from project path

### DAP (Debug Adapter Protocol)

- `sdp` - Toggle breakpoint
- `sdo` - Step over
- `sdu` - Step out
- `sdi` - Step into
- `sds` - Continue
- `sd-` - Terminate
- `sdt` - Open vsplit logs
- `sdm` - Toggle dapui

### FZF (Fuzzy Finder)

- `s;e` - Open files popup
- `s;G` - Open Git files popup
- `s;g` - Open Git files popup
- `s;B` - Open Buffers popup
- `s;)` - Open colorschemes popup
- `s;l` - Open lines in loaded buffers popup
- `s;L` - Open lines in current buffer popup
- `s;t` - Open tags in the project popup
- `s;T` - Open tags in the buffer popup
- `s;M` - Open marks in the buffer popup
- `s;W` - Open windows popup
- `s;hh` - Open recent files popup
- `s;hf` - Open command history popup
- `s;hs` - Open search history popup
- `s;P` - Open snippets popup
- `s;C` - Open commits popup
- `s;c` - Open current buffer commits history popup
- `s;;` - Open commands popup
- `s;(` - Open mappings popup
- `s;*` - Open helptags popup
- `s;&` - Open file types popup

### LSP (Language Server Protocol)

- `ske` - Show definition for the symbols under the cursor
- `skd` - Show the declaration for the symbols under the cursor
- `sk<leader>` - Show the type definition for the symbols under the cursor
- `skI` - Show the implementation for the symbols under the cursor
- `skr` - Show the references for the symbol under the cursor
- `skd` - Show all the symbols in the current buffer
- `sks` - Show all the symbols in the workspace
- `ski` - Show the incoming calls
- `sko` - Show the outgoing calls
- `ska` - Show the list of available code actions
- `skf` - Show the available diagnostic informations

### Aider (AI Assistant)

- `§<CR>` - Run Aider
- `§v` - Add current file (silent)
- `§.` - Add current file (silent)
- `§o` - Add current file
- `§c` - Toggle code mode
- `§i` - Paste
- `§h` - Hide Aider
- `§av` - Add visual selection

### Additional Keybindings

#### General Keybindings

- `s=` - Split window
- `sw` - Save buffer
- `sq` - Quit
- `sa` - Quit all
- `<Tab>l` - Move to the right window
- `<Tab>k` - Move to the top window
- `<Tab>j` - Move to the bottom window
- `<Tab>h` - Move to the left window
- `vaa` - Select all
- `U` - Redo
- `jk` - Exit from insert mode
- `kj` - Exit from insert mode

#### DAP Keybindings

- `sd<Tab>` - Dap Hover
- `sd<Space>` - Dap Scopes
- `sdt` - Open vsplit logs
- `sdm` - Toggle dapui

#### File Outline Keybindings

- `sn` - Toggle file outline
- `z<Tab>` - Set fold level to the first level

#### Gitsigns Keybindings

- `g<Tab>` - Toggle line blame hints
- `gss` - Stage current hunk
- `gsf` - Stage current buffer
- `gsu` - Undo stage hunk
- `gsl` - Preview current hunk
- `gsL` - Stage line hunk

- `<Tab>g` - Blame current line
- `<Tab>b` - Blame current file

#### Illuminate Keybindings

- `n` - Go to next highlighted reference
- `N` - Go to previous highlighted reference

## Documentation

https://nvim-config.gitbook.io/docs
