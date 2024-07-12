local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = {
      "gofumpt",
      "golines",
    },
    terraform = { "hclfmt" },
    python = { "black" },
    css = { "prettier" },
    html = { "prettier" },
    yaml = { "prettier" },
    json = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
