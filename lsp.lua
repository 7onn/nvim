local vim = vim

require'lspconfig'.terraformls.setup{}
local fsgtf = vim.api.nvim_create_augroup("TerraformFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.tf*",
  callback = function()
    vim.cmd[[TerraformFmt]]
  end,
  group = fsgtf,
})


require'lspconfig'.gopls.setup{}
local fsggo = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').goimports()
  end,
  group = fsggo,
})
require('go').setup()

