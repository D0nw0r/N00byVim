## State
Fixed theme/UI issues in this Kickstart-based nvim config:
- `lua/custom/plugins/init.lua`: removed night-owl auto-load + duplicate theme specs; vague is now the sole eager colorscheme, others lazy under themery.
- `init.lua`: added `<M-Left/Right/Up/Down>` window-nav (n+t modes, uses `<Cmd>wincmd>` so it works inside terminals like Claude Code).
- `lua/custom/highlights/init.lua` (new, required from `init.lua`): ColorScheme autocmd linking BlinkCmp kind/label groups to treesitter `@function/@type/@variable/...` so autocomplete picks up palette colors instead of falling through to undefined `PmenuKind/PmenuExtra`.

## Next
1. User to verify BlinkCmp colors after `:source $MYVIMRC`; if still off, run `:hi BlinkCmpKindFunction` and adjust links in `lua/custom/highlights/init.lua`.
2. Optional: silence pre-existing `Undefined global 'vim'` lua_ls warnings via `.luarc.json` or lazydev workspace config.

## Context
- Toggleterm owns `<M-i>/<M-v>/<M-h>` — don't reuse those Alt keys.
- Claude Code uses Snacks terminal (`filetype = snacks_terminal`, `vim.b.snacks_terminal.cmd` holds the cmd) — useful if buffer-local terminal scoping is needed later.
- User prefers minimal edits — don't touch unrelated config; ask before larger refactors.
- Themery persists theme selection; vague config has empty `setup{}` (transparent off).
