return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {
      integrations = {
        mini = {
          enabled = true,
        },
      },
    },
    config = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
