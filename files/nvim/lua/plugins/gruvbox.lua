return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  enabled = true,
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      background = "dark",
      colorscheme = "gruvbox",
    },
  }
}
