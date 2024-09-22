require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>e", "<cmd> NvimTreeToggle <CR>", { desc = "Open NvimTree" })
-- map("n", "l", "<cmd> NvimTreeOpen <CR>", { desc = "Open and Edit File"})

map("n", "<leader>b", "<cmd> Telescope buffers <CR>", { desc = "List current buffers" })
