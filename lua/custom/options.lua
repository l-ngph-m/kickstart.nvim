vim.g.have_nerd_font = true
vim.o.conceallevel = 2

-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

vim.o.number = true
vim.o.relativenumber = true
vim.o.mouse = 'a'
vim.o.showmode = false
-- Use system clipboard
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.o.breakindent = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.cindent = true

vim.o.undofile = true
vim.o.signcolumn = 'yes'
-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'
vim.o.cursorline = false
vim.o.cursorcolumn = false
vim.o.guicursor = ''
vim.o.scrolloff = 4
vim.o.confirm = true
vim.o.swapfile = false
vim.o.foldopen = 'mark,percent,quickfix,search,tag,undo'
vim.o.showcmd = false
-- vim.o.statusline = ''
vim.o.laststatus = 0
vim.o.fillchars = ''
