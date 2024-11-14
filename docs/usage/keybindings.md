# Aider Keybindings

Aider provides the following keybindings that can be used within the Aider session:

| Keybinding | Description |
| --- | --- |
| `§<CR>` | Run Aider |
| `§v` | Add current file (silent) |
| `§i` | Add current file (silent) |
| `§o` | Add current file |
| `§c` | Toggle code mode |
| `§h` | Hide Aider |
| `§av` | Add visual selection |

The `§` prefix is used to distinguish Aider-specific keybindings from other keybindings in the editor.

When the Aider session is opened, the following additional keybindings are set:

- In terminal mode (`t`), `<Esc>` is mapped to `<C-\\><C-n>` to exit terminal mode.
- In normal mode (`n`), `<Esc>` is mapped to `<cmd>AiderHide<CR>` to hide the Aider session.

These keybindings help with the workflow of using Aider within the editor.
