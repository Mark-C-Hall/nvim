require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>mi", vim.cmd.MasonInstallAll)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("v", "<A-c>", '"+y')

-- Map Ctrl+d and Ctrl+u to scroll and center the cursor with zz
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })
map("n", "<C-f>", "<C-f>zz", { desc = "Page up and center" })
map("n", "<C-b>", "<C-b>zz", { desc = "Page up and center" })

-- Remap Horizontal Term
map({ "n", "t" }, "<A-x>", function()
  require("nvchad.term").toggle { pos = "sp", id = "horizontalTerm" }
end, { desc = "Terminal Toggle Horizontal term" })
