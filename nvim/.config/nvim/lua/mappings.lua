-- Mappings
local map = vim.keymap.set

map('n', '<leader>e', '<cmd> NvimTreeToggle <CR>', { desc = 'Open NvimTree' })

map('n', '<leader>gg', '<cmd> LazyGit <CR>', { desc = 'Open LazyGit' })

map('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
map('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
map('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
map('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Autocmd


