require('nvim-autopairs').setup {
  check_ts = true,
  disable_filetype = {
    "TelescopePrompt" , "vim"
  },
}

require("nvim-autopairs.completion.compe").setup {
  --  Map <CR> on insert mode
  map_cr = true,
  -- It will auto insert `(` after select function or method item
  map_complete = true
}
