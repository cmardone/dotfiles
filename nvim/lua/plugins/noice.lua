return {
  --- notifications
  {
    'folke/noice.nvim',
    opts = {
      routes = {
        filter = {
          event = 'notify',
          find = 'No information available',
        },
        opts = { skip = true },
      },
      presets = {
        lsp_doc_border = true,
        inc_rename = true,
        command_palette = {
          views = {
            cmdline_popup = {
              position = { row = '10%', col = '50%' },
              size = { min_width = 60, width = 'auto', height = 'auto' },
            },
          },
        },
      },
    },
  },
  {
    'rcarriga/nvim-notify',
    opts = {
      timeout = 5000,
    },
  },
}
