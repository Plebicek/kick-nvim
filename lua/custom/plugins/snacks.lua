return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = {
      enabled = true,
      sections = {
        { section = 'header' },
        { section = 'keys', gap = 1, padding = 1 },
        { section = 'startup' },
      },
      preset = {
        -- Zde definujeme jen to, co uvidíš na úvodní obrazovce
        keys = {
          { icon = ' ', key = 'f', desc = 'Find File', action = ":lua Snacks.dashboard.pick('files')" },
          { icon = ' ', key = 'n', desc = 'New File', action = ':ene | startinsert' },
          { icon = ' ', key = 'g', desc = 'Find Text', action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = ' ', key = 'r', desc = 'Recent Files', action = ":lua Snacks.dashboard.pick('oldfiles')" },
          -- Projektový picker (tlačítko na dashboardu)
          { icon = '󰄉 ', key = 'p', desc = 'Projects', action = ':lua Snacks.picker.projects()' },
          -- Obnova session
          { icon = ' ', key = 's', desc = 'Restore Session', action = ":lua require('persistence').load()" },
          { icon = '󰒲 ', key = 'l', desc = 'Lazy', action = ':Lazy' },
          { icon = ' ', key = 'q', desc = 'Quit', action = ':qa' },
        },
      },
    },
    -- DŮLEŽITÉ: Musíš mít picker povolený, aby fungovaly projekty
    picker = { enabled = true },
  },
  -- Globální zkratky, které fungují KDYKOLIV v Neovimu
  keys = {
    {
      '<leader>fp',
      function()
        Snacks.picker.projects()
      end,
      desc = '[F]ind [P]rojects',
    },
    {
      '<leader>bd',
      function()
        Snacks.dashboard.open()
      end,
      desc = '[B]ack to [D]ashboard',
    },
  },
}
