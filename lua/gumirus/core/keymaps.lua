-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Git keymaps
keymap.set("n", "<leader>gs", "<cmd>Gitsigns toggle_signs<cr>", { desc = "Toggle Gitsigns status" })
keymap.set("n", "<leader>gp", "<cmd>!git push<CR>", { desc = "Git push" })
keymap.set("n", "<leader>gP", "<cmd>!git push --set-upstream origin HEAD<CR>", { desc = "Git push upstream" })
keymap.set("n", "<leader>gt", "<cmd>!echo 'Testing git push' && git push<CR>", { desc = "Test git push" })
keymap.set("n", "<leader>gc", "<cmd>!git commit<CR>", { desc = "Git commit" })
keymap.set("n", "<leader>gb", function() require('gitsigns').blame_line({ full = true }) end, { desc = "Git blame line" })
keymap.set("n", "<leader>gd", function() require('gitsigns').diffthis() end, { desc = "Git diff this file" })
keymap.set("n", "<leader>gr", function() require('gitsigns').reset_buffer() end, { desc = "Git reset buffer" })
keymap.set("n", "<leader>gS", function() require('gitsigns').stage_buffer() end, { desc = "Git stage buffer" })
