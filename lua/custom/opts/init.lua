vim.opt.shiftwidth = 4

-- Folding configuration with Treesitter
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldlevel = 99 -- Start with all folds open
vim.opt.foldlevelstart = 99 -- Open all folds when opening file
vim.opt.foldenable = true
vim.opt.foldcolumn = '1' -- Show fold column (optional, adds visual indicator)
