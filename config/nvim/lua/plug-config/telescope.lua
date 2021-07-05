require('telescope').setup {
  defaults = {
    layout_config = {
      preview_width = 0.5,
      height = 0.8
    }
  },
  extensions = {
    fzf = {
      fuzzy = true,											-- false will only do exact matching
      override_generic_sorter = false,	-- override the generic sorter
      override_file_sorter = true,			-- override the file sorter
      case_mode = "smart_case",					-- or "ignore_case" or "respect_case"
    }
  }
}

require('telescope').load_extension('fzf')
