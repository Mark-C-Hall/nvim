return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- Lua
        "lua-language-server",
        "stylua",
        -- Go
        "gopls",
        "gofumpt",
        "golines",
        -- Terraform
        "terraform-ls",
        "tflint",
        "hclfmt",
        -- Python
        "ruff",
        "black",
        "pyright",
        -- Misc
        "prettier",
        -- Bash
        "bash-language-server",
        -- Yaml
        "yaml-language-server",
        -- Json
        "json-lsp",
        -- Docker
        "dockerfile-language-server",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "markdown",
        "go",
        "bash",
        "python",
        "terraform",
      },
    },
  },
}
