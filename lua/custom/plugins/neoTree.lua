return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = false,
      window = {
        mappings = {
          ["/"] = "navigate_up",
          ["."] = "set_root",
          ["<C-F>"] = "fuzzy_finder",

          ["H"] = "toggle_hidden",
          ["<MiddleMouse>"] = "open_tabnew",
        },
        fuzzy_finder_mappings = { -- define keymaps for filter popup window in fuzzy_finder_mode
          ["<down>"] = "move_cursor_down",
          ["<C-n>"] = "move_cursor_down",
          ["<up>"] = "move_cursor_up",
          ["<C-p>"] = "move_cursor_up",
        },
      },
    })
  end,
}