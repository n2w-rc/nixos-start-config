return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    size = 20,
    open_mapping = [[<c-t>]],
    hide_numbers = true,
    direction = "float",
    float_opts = {
      border = "curved",
      winblend = 0,
      height = 0.8,
      width = 0.8,
      row = vim.o.lines - 20, -- Adjust based on 'size'
      col = (vim.o.columns - math.floor(vim.o.columns * 0.8)) / 2,
    },
  },
}
