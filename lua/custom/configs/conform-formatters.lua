local M = {}
M.custom_formatters = {
  cpp = { 'clang-format' },
  c = { 'clang-format' },
  go = { 'goimports' },
  javascript = { 'prettierd' },
  typescriptreact = { 'prettierd' },
  javascriptreact = { 'prettierd' },
}

return M
