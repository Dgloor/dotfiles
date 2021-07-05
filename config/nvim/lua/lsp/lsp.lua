-- C/C++
require'lspconfig'.clangd.setup{}

-- Bash
require'lspconfig'.bashls.setup{}

-- Python
require'lspconfig'.pyright.setup{}

-- Vuejs
require'lspconfig'.vuels.setup{}

-- HTML & CSS
--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup{
	capabilities = capabilities,
}

require'lspconfig'.cssls.setup {
	capabilities = capabilities,
}
