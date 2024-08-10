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

-- Debug keymap
vim.keymap.set("n", "<leader>db", '<cmd>lua require"dap".toggle_breakpoint()<CR>', { desc = "Toggle Breakpoint" })
vim.keymap.set("n", "<leader>dc", '<cmd>lua require"dap".continue()<CR>', { desc = "Continue" })
vim.keymap.set("n", "<leader>do", '<cmd>lua require"dap".step_over()<CR>', { desc = "Step Over" })
vim.keymap.set("n", "<leader>di", '<cmd>lua require"dap".step_into()<CR>', { desc = "Step Into" })
vim.keymap.set("n", "<leader>dr", '<cmd>lua require"dap".repl.open()<CR>', { desc = "Open REPL" })
vim.keymap.set("n", "<leader>dl", '<cmd>lua require"dap".run_last()<CR>', { desc = "Run Last" })
vim.keymap.set("n", "<leader>dq", '<cmd>lua require"dap".terminate()<CR>', { desc = "Terminate Debug Session" })
vim.keymap.set("n", "<leader>dt", '<cmd>lua require"dap-go".debug_test()<CR>', { desc = "Run Go Test" })
vim.keymap.set("n", "<leader>dlt", '<cmd>lua require"dap-go".debug_last_test()<CR>', { desc = "Run Last Go Test" })
