return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  init = function() end,
  keys = {
    {
      '<leader>bd',
      function()
        Snacks.bufdelete()
      end,
      desc = 'Buffer delete',
      mode = 'n',
    },
    {
      '<leader>ba',
      function()
        Snacks.bufdelete.all()
      end,
      desc = 'Buffer delete all',
      mode = 'n',
    },
    {
      '<leader>bo',
      function()
        Snacks.bufdelete.other()
      end,
      desc = 'Buffer delete other',
      mode = 'n',
    },
  },
  config = function()
    local wk = require 'which-key'
    wk.add {
      { '<leader>b', group = '+Buffers', desc = 'Buffers actions', mode = 'n' },
    }
  end,
  opts = {
    dashboard = {
      preset = {
        pick = nil,
        header = [[
                                                                             
               ████ ██████           █████      ██                     
              ███████████             █████                             
              █████████ ███████████████████ ███   ███████████   
             █████████  ███    █████████████ █████ ██████████████   
            █████████ ██████████ █████████ █████ █████ ████ █████   
          ███████████ ███    ███ █████████ █████ █████ ████ █████  
         ██████  █████████████████████ ████ █████ █████ ████ ██████ 
      ]],
      },
      sections = {
        { section = 'header' },
        { section = 'keys', gap = 1, padding = 1 },
        { section = 'startup' },
      },
    },
    explorer = { enabled = false },
    indent = { enabled = true },
    input = { enabled = false },
    picker = { enabled = false },
    notifier = { enabled = false },
    quickfile = { enabled = true },
    scope = { enabled = false },
    scroll = { enabled = true },
    statuscolumn = { enabled = false },
    words = { enabled = false },
    rename = { enabled = false },
    zen = { enabled = false },
  },
}
