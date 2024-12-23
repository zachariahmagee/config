local base = require("lsp.config")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lsp.config").lspconfig

require'lspconfig'.clangd.setup {
  on_attach = function(client, bufnr)
  
  end

}


