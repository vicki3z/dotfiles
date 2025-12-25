return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      spec = {
        { "<leader>q", "<cmd>q<cr>", desc = "Quit", mode = { "n", "v" } },
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope Find File", mode = "n" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope Live Grep", mode = "n" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Telescope Buffers", mode = "n" },
        { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Telescope Help Tags", mode = "n" },
        { "<leader>fn", "<cmd>enew<cr>", desc = "New File" },
        { "<leader>fe", "<cmd>e<cr>", desc = "Edit File" },
        { "<leader>w", "<cmd>w!<cr>", desc = "Save File" }
      },
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  }
}
