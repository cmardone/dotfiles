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
    {
      '<leader>bz',
      function()
        Snacks.zen()
      end,
      desc = 'Toggle Zen Mode',
      mode = 'n',
    },
  },
  opts = {
    dashboard = {
      preset = {
        pick = nil,
        ---@type snacks.dashboard.Item[]
        -- keys = {
        --   { icon = ' ', key = 'f', desc = 'Find File', action = ":lua Snacks.dashboard.pick('files')" },
        --   { icon = ' ', key = 'n', desc = 'New File', action = ':ene | startinsert' },
        --   {
        --     icon = ' ',
        --     key = 'g',
        --     desc = 'Find Text',
        --     action = ":lua Snacks.dashboard.pick('live_grep')",
        --   },
        --   {
        --     icon = ' ',
        --     key = 'r',
        --     desc = 'Recent Files',
        --     action = ":lua Snacks.dashboard.pick('oldfiles')",
        --   },
        --   {
        --     icon = ' ',
        --     key = 'c',
        --     desc = 'Config',
        --     action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
        --   },
        --   { icon = ' ', key = 's', desc = 'Restore Session', section = 'session' },
        --   {
        --     icon = '󰒲 ',
        --     key = 'l',
        --     desc = 'Lazy',
        --     action = ':Lazy',
        --     enabled = package.loaded.lazy ~= nil,
        --   },
        --   { icon = ' ', key = 'q', desc = 'Quit', action = ':qa' },
        -- },
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
