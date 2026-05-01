-- Theme-agnostic fixups for plugin highlight groups that some colorschemes
-- (notably vague) leave undefined, causing menus to look "white" / unstyled.

local function apply()
  local link = function(group, target)
    vim.api.nvim_set_hl(0, group, { link = target, default = false })
  end

  -- Stock Pmenu* groups some themes (vague) leave undefined.
  link('PmenuSel', 'Visual')
  link('PmenuMatch', 'Search')
  link('PmenuMatchSel', 'Search')

  -- blink.cmp menu chrome: keep it on Pmenu instead of falling through to
  -- undefined PmenuKind/PmenuExtra (which renders with default fg).
  link('BlinkCmpKind', '@function')
  link('BlinkCmpLabelDeprecated', 'Comment')
  link('BlinkCmpLabelDetail', 'Comment')
  link('BlinkCmpLabelDescription', 'Comment')
  link('BlinkCmpSource', 'Comment')
  link('BlinkCmpMenuSelection', 'Visual')
  link('BlinkCmpLabelMatch', 'Search')

  -- Per-kind icons -> treesitter groups so they pick up the active palette.
  local kinds = {
    Function = '@function',
    Method = '@function.method',
    Constructor = '@constructor',
    Field = '@variable.member',
    Property = '@property',
    Variable = '@variable',
    Class = '@type',
    Interface = '@type',
    Struct = '@type',
    Enum = '@type',
    EnumMember = '@constant',
    Module = '@module',
    Constant = '@constant',
    Keyword = '@keyword',
    Operator = '@operator',
    TypeParameter = '@type',
    Snippet = 'Special',
    Text = '@string',
    Value = '@constant',
    File = 'Directory',
    Folder = 'Directory',
    Color = 'Special',
    Reference = '@variable',
    Unit = '@number',
    Event = 'Special',
  }
  for kind, target in pairs(kinds) do
    link('BlinkCmpKind' .. kind, target)
  end
end

vim.api.nvim_create_autocmd('ColorScheme', {
  group = vim.api.nvim_create_augroup('custom-highlight-fixups', { clear = true }),
  callback = apply,
})

apply()
