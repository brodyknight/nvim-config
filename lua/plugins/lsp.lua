return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "j-hui/fidget.nvim",
      "saghen/blink.cmp",
    },

    config = function()
      local capabilities = require("blink.cmp").get_lsp_capabilities()

      require("fidget").setup({})
      require("mason").setup()
      require("mason-lspconfig").setup({
        automatic_installation = true,
        ensure_installed = {
          "lua_ls",
          "rust_analyzer",
          "gopls",
          "ts_ls",
          "docker_compose_language_service",
          "dockerls",
          "html",
          "cssls",
          "marksman",
          "pyright",
          "terraformls",
          "tflint",
          "svelte",
          "ansiblels",
          "jsonls",
          "svelte",
          "powershell_es",
          "lemminx",
        },
        handlers = {
          function(server_name) -- default handler (optional)
            require("lspconfig")[server_name].setup({
              capabilities = capabilities,
            })
          end,
          ["lua_ls"] = function()
            require("lspconfig").lua_ls.setup({
              capabilities = capabilities,
              settings = {
                Lua = {
                  diagnostics = {
                    globals = { "vim" }, -- Recognise 'vim' global
                  },
                  workspace = {
                    library = vim.api.nvim_get_runtime_file("", true),
                    checkThirdParty = false,
                  },
                  telemetry = {
                    enable = false,
                  },
                },
              },
            })
          end,
          ["terraformls"] = function()
            require("lspconfig").terraformls.setup({
              capabilities = capabilities,
              cmd = { "terraform-ls", "serve", "2>/dev/null" }, -- Suppress stderr
            })
          end,
          ["pyright"] = function()
            require("lspconfig").pyright.setup({
              capabilities = capabilities,
              root_dir = require("lspconfig.util").root_pattern("pyproject.toml", "setup.py", ".git"),
            })
          end,
        },
      })

      vim.diagnostic.config({
        -- update_in_insert = true,
        virtual_text = true,
        float = {
          focusable = false,
          style = "minimal",
          border = "rounded",
          source = true,
          header = "",
          prefix = "",
        },
      })
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    event = "VeryLazy",
    opts = {
      ensure_installed = {
        "shellcheck",
        "shfmt",
        "ansible-lint",
        "xmlformatter",
        "markdownlint"
      }
    }
  },
}
