local base = require "nvchad.configs.lspconfig"

base.defaults()

local servers = { "html", "cssls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers

-- Custom
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require "lspconfig"

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    -- IDK what this does but it fixes a bug which breaks the entire signatue help system
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
	require("zach").keymap.dynamic({ buffer = bufnr })
  end,
  capabilities = capabilities,
}
