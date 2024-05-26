-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- i am told this should sort out all the typscript stuff
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {},
  },
  -- we are going to add lazygit
  {
    'kdheepak/lazygit.nvim',
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    keys = {
      { '<leader>lg', '<cmd>LazyGit<cr>', desc = 'Launch LazyGit' },
    },
  },
  -- emmet setup
  {
    'olrtg/nvim-emmet',
    config = function()
      vim.keymap.set({ 'n', 'v' }, '<leader>xe', require('nvim-emmet').wrap_with_abbreviation)
    end,
  },
  --- buffer control
  {

    vim.keymap.set('n', '<leader>cb', '<cmd>bdelete<CR>', { desc = 'close current buffer' }),
    vim.keymap.set('n', '<leader>cw', '<C-w><C-q>', { desc = 'close current window' }),
    -- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
  },
}
