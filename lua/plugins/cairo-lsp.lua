return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        cairo_ls = {
          mason = false, -- Disable Mason installation
          cmd = { "scarb", "cairo-language-server" },
          filetypes = { "cairo" },
          root_dir = require("lspconfig.util").root_pattern("Scarb.toml", "cairo_project.toml", ".git"),
        },
      },
    },
  },
}
