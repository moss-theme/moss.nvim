require("nothing").colorscheme()

-- Transparent UI adjustments
vim.cmd([[
  " 1. Transparent suggestion window for completion/popups
  highlight Pmenu guibg=NONE ctermbg=NONE
  highlight PmenuSel guibg=NONE ctermbg=NONE
  highlight PmenuSbar guibg=NONE ctermbg=NONE
  highlight PmenuThumb guibg=NONE ctermbg=NONE

  " 2. Disable current line highlight (or make it transparent)
  set nocursorline
  " Alternatively, if you want to keep cursorline enabled, set:
  " highlight CursorLine guibg=NONE ctermbg=NONE

  " 3. Make tabline transparent
  highlight TabLine guibg=NONE ctermbg=NONE
  highlight TabLineFill guibg=NONE ctermbg=NONE
  highlight TabLineSel guibg=NONE ctermbg=NONE

  " 4. Transparent fold column/background (for nvim-ufo)
  highlight Folded guibg=NONE ctermbg=NONE

  " 5. Transparent float borders for NeoTree (or any floating window borders)
  highlight FloatBorder guibg=NONE ctermbg=NONE
]])


