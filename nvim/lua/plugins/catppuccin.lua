return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    flavour = "latte",
    transparent_background = true,
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      telescope = true,
      notify = true,
      mini = true,
      -- For more integrations, see https://github.com/catppuccin/nvim#integrations
    },
  },
}
