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
      },
      -- opts.presets.lsp_doc_border = true
      -- opts.presets.inc_rename = true
    },
  },
  {
    'rcarriga/nvim-notify',
    opts = {
      timeout = 5000,
    },
  },
}
