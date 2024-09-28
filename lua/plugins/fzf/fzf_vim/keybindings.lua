require('which-key').add({
  { "s;e", "<cmd>Files<cr>", desc = "Open files popup", mode = "n" },
  { "s;G", "<cmd>GFiles<cr>", desc = "Open Git files popup", mode = "n" },
  { "s;g", "<cmd>GFiles?<cr>", desc = "Open Git files popup", mode = "n" },
  { "s;B", "<cmd>Buffers<cr>", desc = "Open Buffers popup", mode = "n" },
  { "s;)", "<cmd>Colors<cr>", desc = "Open colorschemes popup", mode = "n" },
  { "s;l", "<cmd>Lines<cr>", desc = "Open lines in loaded buffers popup", mode = "n" },
  { "s;L", "<cmd>BLines<cr>", desc = "Open lines in current buffer popup", mode = "n" },
  { "s;t", "<cmd>Tags<cr>", desc = "Open tags in the project popup", mode = "n" },
  { "s;T", "<cmd>BTags<cr>", desc = "Open tags in the buffer popup", mode = "n" },
  { "s;M", "<cmd>Marks<cr>", desc = "Open marks in the buffer popup", mode = "n" },
  { "s;W", "<cmd>Windows<cr>", desc = "Open windows popup", mode = "n" },
  { "s;hh", "<cmd>History<cr>", desc = "Open recent files popup", mode = "n" },
  { "s;hf", "<cmd>History:<cr>", desc = "Open command history popup", mode = "n" },
  { "s;hs", "<cmd>History/<cr>", desc = "Open search history popup", mode = "n" },
  { "s;P", "<cmd>Snippets<cr>", desc = "Open snippets popup", mode = "n" },
  { "s;C", "<cmd>Commits<cr>", desc = "Open commits popup", mode = "n" },
  { "s;c", "<cmd>BCommits<cr>", desc = "Open current buffer commits history popup", mode = "n" },
  { "s;;", "<cmd>Commands<cr>", desc = "Open commands popup", mode = "n" },
  { "s;(", "<cmd>Maps<cr>", desc = "Open mappings popup", mode = "n" },
  { "s;*", "<cmd>Helptags<cr>", desc = "Open helptags popup", mode = "n" },
  { "s;&", "<cmd>Filetypes<cr>", desc = "Open file types popup", mode = "n" },
})

require('which-key').add({
  { "si", "<cmd>BLines<cr>", desc = "Open lines in current buffer popup", mode = "n" },
  { "sp", "<cmd>Snippets<cr>", desc = "Open snippets popup", mode = "n" },
})

require('which-key').add({
  { "s;", "<cmd>Commands<cr>", desc = "Commands", mode = "n" },
})
