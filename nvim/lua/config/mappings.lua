vim.g.mapleader = " "

local builtin = require('telescope.builtin')
local function map(mode, lhs, rhs, opts)
	opts = opts or {}
	opts.silent = true
	vim.keymap.set(mode, lhs, rhs, opts)
end

map("n", "<leader>w", "<CMD>update<CR>")
map("n", "<leader>q", "<CMD>q<CR>")

map("i", "jk", "<ESC>")
map("i", "jj", "<ESC>")

map("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "]b", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<leader>bD", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })

map("v", "<", "<gv")
map("v", ">", ">gv")

map("n", "<leader>e", "<CMD>Neotree toggle<CR>", {desc = "Neotree toggle"})
map("n", "<leader>o", "<CMD>Neotree focus<CR>", {desc = "Neotree focus"})


map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
