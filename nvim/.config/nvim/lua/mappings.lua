-- Mappings
local map = vim.keymap.set

map("n", "<leader>e", "<cmd> NvimTreeToggle <CR>", { desc = "Open NvimTree" })

map("n", "<leader>gg", "<cmd> LazyGit <CR>", { desc = "Open LazyGit" })

map("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
map("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
map("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
map("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

map("n", "<leader>bn", ":bnext<CR>", { noremap = true, silent = true })
map("n", "<leader>bp", ":bprevious<CR>", { noremap = true, silent = true })
map("n", "<leader>bd", ":bdelete<CR>", { noremap = true, silent = true })
map("n", "<leader>bh", ":split<CR>", { noremap = true, silent = true })
map("n", "<leader>bv", ":vsplit<CR>", { noremap = true, silent = true })

local telescope = require("telescope.builtin")
map("n", "<leader>ff", telescope.find_files, { desc = "Telescope find files" })
map("n", "<leader>fg", telescope.live_grep, { desc = "Telescope live grep" })
map("n", "<leader>b", telescope.buffers, { desc = "Telescope buffers" })
map("n", "<leader>fh", telescope.help_tags, { desc = "Telescope help tags" })

map("n", "<leader>fd", "<cmd> lua vim.diagnostic.open_float() <CR>", { desc = "Floating diagnostic" })

-- Autocmd
