local M = {}
M.custom_formatters = {
  cpp = { 'clang-format' },
  c = { 'clang-format' },
  go = { 'goimports' },
  javascript = { 'prettierd' },
  typescriptreact = { 'prettierd' },
  javascriptreact = { 'prettierd' },
  svelte = { 'prettier', 'prettierd' },
}

return M
