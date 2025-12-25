return {
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-context',
    },
    lazy = false,
    branch = 'main',
    build = ':TSUpdate',
    config = function()
      local treesitter = require('nvim-treesitter')

      treesitter.setup({
        highlight = { enable = true },
        indent = { enable = true },
      })
      treesitter.install({
        'lua',
        'typescript',
        'css',
        'tsx',
        'dockerfile',
        'editorconfig',
        'git_config',
        'git_rebase',
        'gitcommit',
        'gitignore',
        'graphql',
        'javascript',
        'json',
        'markdown',
        'prisma',
        'sql',
        'toml',
        'vim',
        'vimdoc',
        'yaml',
        'zsh'
      })
    end
  }
}
