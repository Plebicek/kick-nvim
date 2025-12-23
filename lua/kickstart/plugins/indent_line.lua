return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {
      indent = { char = '┊' }, -- Jemná čárka pro každou úroveň odsazení
      scope = { enabled = true }, -- Zvýrazní úroveň, na které právě jsi
    },
  },
}
