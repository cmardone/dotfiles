return {
  --- notifications
  {
    'folke/noice.nvim',
    opts = {
      routes = {
        {
          view = 'notify',
          filter = { event = 'msg_showmode' },
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
