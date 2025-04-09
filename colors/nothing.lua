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

vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE", fg = "#FFFFFF" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#5f87af", fg = "#000000" })
vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "NONE" })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "NONE" })

-- For nvim-cmp
vim.api.nvim_set_hl(0, "CmpBorder", { bg = "NONE" })
vim.api.nvim_set_hl(0, "CmpDocBorder", { bg = "NONE" })
vim.api.nvim_set_hl(0, "CmpItemAbbr", { bg = "NONE" })
vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { bg = "NONE" })
vim.api.nvim_set_hl(0, "CmpItemKind", { bg = "NONE" })

-- Transparent float windows (for Neotree and other floats)
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })

-- For Telescope
vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "NONE" })
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "NONE" })
vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "NONE" })
