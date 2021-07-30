require'lspconfig'.texlab.setup{
  cmd = { 'texlab' },
  filetypes = { 'tex', 'bib' },
  settings = {
    texlab = {
      auxDirectory = '.',
      bibtexFormatter = 'texlab',
      build = {
        executable = 'latexmk',
        args = { '-pdf', '-outdir=build', '-interaction=nonstopmode', '-synctex=0', '%f' },
        forwardSearchAfter = false,
        onSave = true,
      },
      chktex = {
        onEdit = true,
        onOpenAndSave = false,
      },
      diagnosticsDelay = 300,
      formatterLineLength = 80,
      forwardSearch = {
				executable = 'zathura',
        args = { '%p' }
      },
      latexFormatter = 'latexindent',
      latexindent = {
        modifyLineBreaks = false,
      }
    }
  }
}
