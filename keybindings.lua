local vim = vim

vim.api.nvim_set_var('mapleader', ' ')

-- Window split
vim.api.nvim_set_keymap('n', '<Leader>_', ':split<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>|', ':vsplit<CR>', {noremap = true})

-- File/Buffer navigation
vim.api.nvim_set_keymap('n', '<Leader>f', ':Files<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>b', ':Buffers<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>q', ':close<CR>', {noremap = true})

-- Window Resize
vim.api.nvim_set_keymap('n', '<Leader>+', ':vertical resize +10<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>-', ':vertical resize -10<CR>', {noremap = true})

-- Text editing for old emacs user
vim.api.nvim_set_keymap('n', '<C-f>', 'k', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-b>', 'h', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-a>', '^', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-e>', '$', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-S-A>', 'V^', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-S-E>', 'V$', {noremap = true})



local aucmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

aucmd("FileType", {
  group = augroup("user", { clear = true }),
  pattern = { "help", "man" },
  desc = "Use q to close the window",
  command = "nnoremap <buffer> q <cmd>quit<cr>",
})

