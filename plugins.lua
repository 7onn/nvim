local vim = vim
local Plug = vim.fn['plug#']

vim.api.nvim_exec([[
  call plug#begin('~/.config/nvim/autoload/plugged')
]], false)

-- Styles
Plug('Mofiqul/dracula.nvim')
Plug('Leviathenn/nvim-transparent')

-- Editor convenience
Plug('preservim/nerdtree')
Plug('junegunn/fzf.vim')
Plug('neoclide/coc.nvim')
Plug('nvim-treesitter/nvim-treesitter')
Plug('neovim/nvim-lspconfig')

-- Languages support
Plug('ray-x/go.nvim')
Plug('ray-x/guihua.lua')

vim.call('plug#end')


