local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    nix = { "alejandra" },
    c = { "clang-format" },
    cs = { "clang-format" },
    cpp = { "clang-format" },
    json = { "biome" },
    java = { "clang-format" },
    javascript = { "clang-format" },
    yaml = { "yamlfmt" }
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
