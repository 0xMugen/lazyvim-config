return {
  -- LSP Configuration
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Cairo language server
        cairo_ls = {
          mason = false, -- Disable Mason installation
          cmd = { "scarb", "cairo-language-server" },
          filetypes = { "cairo" },
          root_dir = require("lspconfig.util").root_pattern("Scarb.toml", "cairo_project.toml", ".git"),
        },
      },
    },
  },

  -- Treesitter for syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "cairo",
      },
    },
  },
}