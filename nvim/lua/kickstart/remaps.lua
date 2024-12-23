-- random remaps

vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -

vim.keymap.set("n", "<leader>QQ", [[<cmd>qa!<cr>]]) -- quit all dont save
vim.keymap.set("n", "<leader>WQ", [[<cmd>wqa!<cr>]]) -- save and quit all 


