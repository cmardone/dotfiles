local header_cmd = 'cat ~/.dotfiles/art/thisisfine.cat'
if jit.os == 'Windows' then
  header_cmd = 'pwsh -nop -noni -c "Get-Content ~\\.dotfiles\\art\\thisisfine.cat"'
end
return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  init = function()
    local wk = require 'which-key'
    wk.add {
      { '<leader>b', group = '+Buffers', desc = 'Buffers actions', mode = 'n' },
    }
  end,
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
  opts = {
    dashboard = {
      sections = {
        {
          section = 'terminal',
          hl = 'header',
          cmd = header_cmd,
          indent = 8,
          height = 26,
          padding = 1,
        },
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
