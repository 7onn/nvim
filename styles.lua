local vim = vim
local o = vim.o

o.syntax = "enable"
vim.g.editorconfig = true

vim.cmd[[colorscheme dracula]]
require("transparent").setup({
  enable = true,
  extra_groups = {
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
  },
  exclude = {},
})

local aucmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

aucmd("TextYankPost", {
  group = augroup("highlightyank", { clear = true }),
  desc = "Highlight on yank",
  callback = function()
    vim.highlight.on_yank({ higroup = "Visual", timeout = 500 })
  end,
})


