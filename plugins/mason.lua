-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "lua_ls",
        "yamlls",
        "rust_analyzer",
        "tsserver",
        "bashls",
        "eslint",
        "cssls",
        "html",
        "pyright",
        "docker_compose_language_service",
        "dockerls",
        "helm_ls",
        "jsonls",
        "intelephense",
        "gopls",
        "prismals",
        "omnisharp",
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "prettierd",
        "stylua",
        "autopep8",
        "isort",
        "goimports",
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "codelldb",
        "debugpy",
        "delve",
        "node-debug2-adapter",
        "php-debug-adapter",
      })
    end,
  },
}
