-- NOTE: The servers list below are imported
-- by the main init.lua file which then makes sure
-- they are installed on the system
-- Additionally: The list must be compatible with Mason

local servers_list = {
  gopls = {},
  clangd = {},
  pyright = {},
  ['html-lsp'] = {},
  ['just-lsp'] = {},
  vtsls = {},
  rust_analyzer = {
    cargo = {
      buildScripts = {
        enable = true,
      },
    },
    procMacro = {
      enable = true,
    },
  },
  ['svelte-language-server'] = {},
}

return servers_list
