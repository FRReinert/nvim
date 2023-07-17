-- Move lines
vim.keymap.set('n', '<A-j>', ":m .+1<CR>==", { noremap = true, silent = true })
vim.keymap.set('n', '<A-k>', ":m .-2<CR>==", { noremap = true, silent = true })
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi', { noremap = true, silent = true })
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi', { noremap = true, silent = true })
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Move windows
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- shortucts
vim.keymap.set('n', '<c-s>', ':w<CR>')
vim.keymap.set('n', '<c-q>', ':q<CR>')
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
