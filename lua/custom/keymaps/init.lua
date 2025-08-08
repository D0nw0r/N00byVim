vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { desc = 'New tab' })

vim.keymap.set('n', '<Tab>', '<cmd>bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-Tab>', '<cmd>bprevious<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<CR>', { desc = 'Delete buffer' })

vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = false })
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = false })
