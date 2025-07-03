vim.g.leader = "\\"
vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)
vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>s", vim.cmd.write)
vim.keymap.set("n", "<leader>q", vim.cmd.quit)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<>CR", { silent = true })

-- Navigation in file
vim.keymap.set("v", "f", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "k", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-f>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>f", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lnext<CR>zz")
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Cursor domestication
vim.keymap.set("n", "<C-f>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz") vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Copy paste utilities, thanks Primeagen and asbjornHaland
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- LSP
vim.keymap.set("n", "<leader>fo", vim.lsp.buf.format)

-- Split utilities
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-v>", "<C-w>j")

-- Old stuff can get away
vim.keymap.set("n", "Q", "<nop>")

