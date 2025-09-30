local base = require "nvchad.configs.lspconfig"
local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "rust-analyzer", "clangd" }
local on_attach = base.on_attach
local capabilities = base.capabilities

base.defaults()
vim.lsp.enable(servers)

require("mason-lspconfig").setup_handlers {
  -- Default handler for all servers
  function(server_name)
    require("lspconfig")[server_name].setup {
      on_attach = require("nvchad.configs.lspconfig").on_attach,
      on_init = require("nvchad.configs.lspconfig").on_init,
      capabilities = require("nvchad.configs.lspconfig").capabilities,
    }
  end,
}

-- Custom
-- read :h vim.lsp.config for changing options of lsp servers
lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    -- IDK what this does but it fixes a bug which breaks the entire signatue help system
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
    require("zach").keymap.dynamic { buffer = bufnr }
  end,
  capabilities = capabilities,
}
