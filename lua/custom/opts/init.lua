vim.opt.shiftwidth = 4

-- Folding configuration with Treesitter
-- Enable folding
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
vim.o.foldenable = false -- Don't fold by default when opening files
vim.o.foldlevel = 99 -- Open all folds by default
vim.o.foldlevelstart = 99 -- Open all folds when opening file

-- just lsp
vim.lsp.enable 'just'
