return {
  {
    'olimorris/codecompanion.nvim',
    enabled = false,
    keys = {
      { '<leader>cc', '<cmd>:CodeCompanionChat Toggle<CR>', 'Toggle Code Companion chat' },
    },
    opts = {
      strategies = {
        chat = {
          adapter = 'gemini',
        },
        inline = {
          adapter = 'gemini',
          keymaps = {
            accept_change = {
              modes = { n = '<leader>a' },
              description = 'Accept the suggested change',
            },
            reject_change = {
              modes = { n = '<leader>r' },
              description = 'Reject the suggested change',
            },
          },
        },
        cmd = {
          adapter = 'gemini',
        },
      },
    },
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
  },
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
    },
  },
}
