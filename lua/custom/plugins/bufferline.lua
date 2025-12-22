-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- 6. Bufferline (Taby nahoře)
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup {
        options = {
          mode = 'buffers',
          numbers = 'ordinal', -- Zobrazí 1, 2, 3...
          separator_style = 'slant',
          offsets = {
            {
              filetype = 'neo-tree',
              text = 'File Explorer',
              text_align = 'center',
              separator = true,
            },
          },
          show_buffer_close_icons = false,
          show_close_icon = false,
        },
      }
    end,
    keys = {
      { '<S-h>', '<cmd>BufferLineCyclePrev<cr>', desc = 'Předchozí buffer' },
      { '<S-l>', '<cmd>BufferLineCycleNext<cr>', desc = 'Další buffer' },
      { '<leader>x', '<cmd>bdelete<cr>', desc = 'Zavřít buffer' },
      { '<leader>bp', '<cmd>BufferLinePick<cr>', desc = 'Vybrat buffer písmenem' },
      -- Rychlé skoky 1-9
      { '<leader>1', '<cmd>BufferLineGoToBuffer 1<cr>', desc = 'Buffer 1' },
      { '<leader>2', '<cmd>BufferLineGoToBuffer 2<cr>', desc = 'Buffer 2' },
      { '<leader>3', '<cmd>BufferLineGoToBuffer 3<cr>', desc = 'Buffer 3' },
      { '<leader>4', '<cmd>BufferLineGoToBuffer 4<cr>', desc = 'Buffer 4' },
      { '<leader>5', '<cmd>BufferLineGoToBuffer 5<cr>', desc = 'Buffer 5' },
      { '<leader>6', '<cmd>BufferLineGoToBuffer 6<cr>', desc = 'Buffer 6' },
      { '<leader>7', '<cmd>BufferLineGoToBuffer 7<cr>', desc = 'Buffer 7' },
      { '<leader>8', '<cmd>BufferLineGoToBuffer 8<cr>', desc = 'Buffer 8' },
      { '<leader>9', '<cmd>BufferLineGoToBuffer 9<cr>', desc = 'Buffer 9' },
      { '<leader>$', '<cmd>BufferLineGoToBuffer -1<cr>', desc = 'Poslední buffer' },
    },
  },
}
