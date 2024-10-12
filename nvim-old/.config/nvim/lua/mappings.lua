require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>e", "<cmd> NvimTreeToggle <CR>", { desc = "Open NvimTree" })
-- map("n", "l", "<cmd> NvimTreeOpen <CR>", { desc = "Open and Edit File"})

map("n", "<leader>b", "<cmd> Telescope buffers <CR>", { desc = "List current buffers" })
map("n", "<leader>fp", "<cmd> Telescope projects <CR>", { desc = "List projects" })
map("n", "<leader>fd", "<cmd> lua vim.diagnostic.open_float() <CR>", { desc = "Floating diagnostic" })

-- overwriting the same lines in NvChad mapping file, in order to add `async = true`
map("n", "<leader>fm", function()
  require("conform").format { async = true, lsp_fallback = true }
end, { desc = "custom format files" })
