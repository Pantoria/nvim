-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.g.tex_flavor = "latex"
vim.g.vimtex_view_method = "skim"
vim.g.vimtex_view_skim_sync = 1
vim.g.vimtex_view_skim_activate = 1
vim.g.vimtex_quickfix_open_on_warning=0
vim.g.auto_save = 1
vim.g.auto_save_events = {"InsertLeave", "TextChanged", "TextChangedI", "CursorHoldI", "CompleteDone"}

local opt = vim.opt
opt.breakindent = true -- Wrap text with indent
opt.wrap = true
opt.wm = 4 -- set wrap margin
opt.linebreak = true
opt.linespace = 8 -- set line space

vim.g.transparent_groups = vim.list_extend(
  vim.g.transparent_groups or {},
  vim.tbl_map(function(v)
    return v.hl_group
  end, vim.tbl_values(require('bufferline.config').highlights))
)

require("toggleterm").setup{}

