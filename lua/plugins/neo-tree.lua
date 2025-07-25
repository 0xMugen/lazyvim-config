return {
  -- Disable snacks explorer (LazyVim's default)
  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = false },
    },
  },
  
  -- Add hidden files to neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false,
        },
      },
    },
  },
}