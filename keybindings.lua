local vim = vim

vim.api.nvim_set_keymap('n', '<M-x>_', ':split<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<M-x>|', ':vsplit<CR>', {noremap = true})

local aucmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

aucmd("FileType", {
  group = augroup("user", { clear = true }),
  pattern = { "help", "man" },
  desc = "Use q to close the window",
  command = "nnoremap <buffer> q <cmd>quit<cr>",
})

