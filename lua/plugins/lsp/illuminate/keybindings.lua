require('which-key').add({
    { "n", ':lua require("illuminate").goto_next_reference(true)<CR>', desc = "Next highlighted reference", mode = "n" },
    { "N", ':lua require("illuminate").goto_prev_reference(true)<CR>', desc = "Previous highlighted reference", mode = "n" },
  }, {
    silent = true,
    noremap = true,
    nowait = false
  })
  