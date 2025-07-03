vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.textwidth = 0
vim.wrapmargin = 0
vim.opt.wrap = true
vim.opt.linebreak = true

local splitwrap_aumgroup = vim.api.nvim_create_augroup("SplitWrap", { clear = true })
vim.api.nvim_create_autocmd("WinNew", {
    command = "windo set wrap",
    group = splitwrap_aumgroup
})

-- Never again ! 
vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 4
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "65"

vim.opt.splitright = true  
vim.opt.splitbelow = true 
