-- Přidání lazygit.nvim do tvého configu
return {
  'kdheepak/lazygit.nvim',
  cmd = {
    'LazyGit',
    'LazyGitConfig',
    'LazyGitCurrentFile',
    'LazyGitFilter',
    'LazyGitFilterCurrentFile',
  },
  -- Volitelné: závislosti
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  -- Nastavení klávesové zkratky
  keys = {
    { '<leader>lg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
  },
}
