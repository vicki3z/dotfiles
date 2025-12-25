return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require('catppuccin').setup({
        flavour = 'frappe',
        transparent_background = true,
        float = {
          transparent = true,
          solid = true
        },
        default_integrations = true,
        auto_integrations = true

      })
      vim.cmd('colorscheme catppuccin')
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    opts = {
      theme = "catppuccin"
    }
  }
}
