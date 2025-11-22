vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.spelllang = "en_us"
vim.opt.spell = true
vim.api.nvim_set_hl(0, "SpellBad", { undercurl = true, sp = "#00b3ff" })
vim.api.nvim_set_hl(0, "SpellCap",  { undercurl = true, sp = "#00b3ff" })
vim.api.nvim_set_hl(0, "SpellRare", { undercurl = true, sp = "#00b3ff" })
vim.api.nvim_set_hl(0, "SpellLocal",{ undercurl = true, sp = "#00b3ff" })
vim.opt.spelloptions:append("camel")
vim.opt.clipboard = "unnamedplus"
require("resistance.remap")
require("resistance.lsp")
require("resistance.appearance")

