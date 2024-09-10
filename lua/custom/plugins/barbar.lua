return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    animation = true,
    -- insert_at_start = true,
    -- …etc.
  },
  config = function()
    require('barbar').setup {
      vim.api.nvim_set_keymap('n', '<Tab>', ':BufferPrevious<CR>', { noremap = true, silent = true }),
      vim.api.nvim_set_keymap('n', '<S-Tab>', ':BufferNext<CR>', { noremap = true, silent = true }),
      vim.api.nvim_set_keymap('n', '<leader><C-w>', ':BufferClose<CR>', { noremap = true, silent = true }),
    }
  end,
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
