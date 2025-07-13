require("lspconfig").cairo_ls.setup({
  cmd = { "scarb cairo-language-server" },
  filetypes = { "cairo" },
  root_dir = require("lspconfig.util").root_pattern("Scarb.toml"),
})
