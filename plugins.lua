local vim = vim
local Plug = vim.fn['plug#']

vim.api.nvim_exec([[
call plug#begin('~/.config/nvim/autoload/plugged')

  Plug('Mofiqul/dracula.nvim')
  Plug('Leviathenn/nvim-transparent')
  
  Plug('preservim/nerdtree')
  Plug('junegunn/goyo.vim')

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug('junegunn/fzf.vim')
  Plug('nvim-treesitter/nvim-treesitter')

  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
  Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
  Plug('neovim/nvim-lspconfig')
  Plug 'ray-x/lsp_signature.nvim'
  Plug 'sbdchd/neoformat'

  
  Plug('hashivim/vim-terraform')
  Plug('ray-x/go.nvim')
  Plug('ray-x/guihua.lua')

call plug#end()
]], false)



