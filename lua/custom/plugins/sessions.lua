return {
  'folke/persistence.nvim',
  event = 'BufReadPre', -- Načte se, jakmile otevřeš nějaký soubor
  opts = {
    -- Volitelné: adresář, kam se budou sessions ukládat
    -- dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/"),
    options = { 'buffers', 'curdir', 'tabpages', 'winsize' },
  },
  keys = {
    -- Načíst session pro aktuální adresář (projekt)
    {
      '<leader>qs',
      function()
        require('persistence').load()
      end,
      desc = 'Restore [S]ession',
    },
    -- Načíst poslední session (i když jsi v jiném adresáři)
    {
      '<leader>ql',
      function()
        require('persistence').load { last = true }
      end,
      desc = 'Restore [L]ast Session',
    },
    -- Zastavit ukládání session (při vypnutí se nic neuloží)
    {
      '<leader>qd',
      function()
        require('persistence').stop()
      end,
      desc = "Stop [D]on't save session",
    },
  },
}
