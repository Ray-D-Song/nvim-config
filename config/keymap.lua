local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- leader key
keymap('n', '<space>', '<nop>', default_opts)
vim.g.mapleader = ' '

-- basic
keymap('i', 'jj', '<esc>', default_opts)
keymap('n', 'wq', ':wq <cr>', default_opts)

-- nvim-tree
keymap('n', '<leader>o', ':NvimTreeOpen <cr>', default_opts)
