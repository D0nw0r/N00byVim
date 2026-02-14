vim.opt.shiftwidth = 4

-- Treesitter folding (all folds open by default, use zc/zo/za to toggle)
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'go', 'svelte' },
  callback = function()
    vim.treesitter.start()
  end,
})

-- just lsp
vim.lsp.enable 'just'
