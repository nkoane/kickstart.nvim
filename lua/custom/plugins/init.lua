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
  --- buffer control + and then some
  {
    vim.keymap.set('n', '<leader>cb', '<cmd>bdelete<CR>', { desc = '[C]lose current [b]uffer' }),
    vim.keymap.set('n', '<leader>cw', '<C-w><C-q>', { desc = '[C]lose current [w]indow' }),
    vim.keymap.set('i', 'jj', '<Esc>', { desc = 'Exit insert mode' }),
    vim.keymap.set('n', 'zb', 'zfiB', { desc = 'Create fold between brackets' }),
    vim.keymap.set('n', 'zt', 'zfit', { desc = 'Create fold between tags' }),
  },
  {
    'jwalton512/vim-blade',
    lazy = true,
    ft = 'blade',
  },
  {
    -- vim.cmd [[
    --   set expandtab
    -- ]],

    -- vim.opt.shiftwidth = 4
    -- vim.opt.tabstop = 4
    -- vim.opt.softtabstop = 4
    -- vim.opt.expandtab = true
    -- vim.opt.expandtab = true
    -- vim.opt.smartindent = true
  },
  -- some AI, why not!
  {
    'supermaven-inc/supermaven-nvim',
    config = function()
      require('supermaven-nvim').setup {}
    end,
  },
}
