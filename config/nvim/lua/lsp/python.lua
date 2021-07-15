require'lspconfig'.pyright.setup{
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_dir = function(filename)
    return util.root_pattern(unpack(root_files))(filename) or util.path.dirname(filename)
  end,
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true
      }
    }
  }
}
