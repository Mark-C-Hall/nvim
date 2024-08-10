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
        "goimport",
        "gotests",
        "delve",
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

  -- Add nvim-dap package
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "leoluz/nvim-dap-go",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      local dap = require "dap"
      local dapui = require "dapui"

      -- Setup dap-ui
      require("dapui").setup()

      -- Setup dap-go
      require("dap-go").setup()

      -- Open dapui when debugging starts
      dap.listeners.before["event_initialized"]["dapui_config"] = function()
        dapui.open()
      end

      -- Close dapui when debugging ends
      dap.listeners.before["event_terminated"]["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before["event_exited"]["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
}
