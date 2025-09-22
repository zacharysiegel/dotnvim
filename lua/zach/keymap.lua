local M = {}

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>pV", ":NvimTreeClose<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Language Server
vim.keymap.set("n", "<leader>re", vim.lsp.buf.rename)

-- Buffer
vim.keymap.set("n", "<leader>bb", ":ls<cr>:b<space>")
vim.keymap.set("n", "<leader>bn", ":bnext<CR>")
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>")

-- Quit
vim.keymap.set("n", "<leader>qq", ":qall<CR>")
vim.keymap.set("n", "<leader>qw", ":wqall<CR>")

-- Window
vim.keymap.set("n", "<leader>w", "<C-W>")

-- Editor
vim.keymap.set("n", "<leader>/", ":nohlsearch<CR>")
vim.keymap.set("n", "<leader>wr", ":set wrap!<CR>")

-- Debugger
vim.keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Toggle Breakpoint" })
vim.keymap.set("n", "<leader>dc", "<cmd>DapContinue<CR>", { desc = "Continue" })
vim.keymap.set("n", "<leader>di", "<cmd>DapStepInto<CR>", { desc = "Step Into" })
vim.keymap.set("n", "<leader>do", "<cmd>DapStepOver<CR>", { desc = "Step Over" })
vim.keymap.set("n", "<leader>dO", "<cmd>DapStepOut<CR>", { desc = "Step Out" })
vim.keymap.set("n", "<leader>dr", "<cmd>DapRestart<CR>", { desc = "Restart" })
vim.keymap.set("n", "<leader>dt", "<cmd>DapTerminate<CR>", { desc = "Terminate" })
vim.keymap.set("n", "<leader>du", function() require("dapui").toggle() end, { desc = "Toggle DAP UI" })

-- Telescope
vim.keymap.set("n", "<leader>fg", "<Cmd>Telescope git_status<CR>")
vim.keymap.del("n", "<leader>gt") -- remapped to "<leader>fg"
vim.keymap.set("n", "<leader>fc", "<Cmd>Telescope git_commits<CR>")
vim.keymap.del("n", "<leader>fc") -- remapped to "<leader>fc"

-- NVChad adjustments
vim.keymap.del("n", "<C-N>")
vim.keymap.del("n", "<leader>h")
vim.keymap.del("n", "<leader>v")
vim.keymap.del("n", "<leader>wk") -- (which-key)

M.dynamic = (function(opts) 
	pcall(vim.keymap.del, "n", "<leader>wl", opts)
end)

return M

