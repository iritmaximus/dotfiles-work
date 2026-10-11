local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not vim.loop.fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add{
    'nvim-treesitter/nvim-treesitter';
    'neovim/nvim-lspconfig';

    'Mofiqul/dracula.nvim';

    'lewis6991/gitsigns.nvim';
    'windwp/nvim-autopairs';

    -- dependency for telescope
    'nvim-lua/plenary.nvim';
    'nvim-telescope/telescope.nvim';

    'xiyaowong/transparent.nvim';

    'nvimtools/none-ls.nvim';
    'MunifTanjim/prettier.nvim';
    'm4xshen/hardtime.nvim';
}
