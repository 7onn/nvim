local vim = vim
local Plug = vim.fn['plug#']

vim.api.nvim_exec([[
  call plug#begin('~/.config/nvim/autoload/plugged')

  Plug('Mofiqul/dracula.nvim')
  Plug('Leviathenn/nvim-transparent')
  
  Plug('preservim/nerdtree')

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug('neoclide/coc.nvim')
  Plug('nvim-treesitter/nvim-treesitter')
  Plug('neovim/nvim-lspconfig')
  
  Plug('ray-x/go.nvim')
  Plug('ray-x/guihua.lua')

  call plug#end()
]], false)



