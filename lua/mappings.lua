require "nvchad.mappings"

local nomap = vim.keymap.del
local map = vim.keymap.set

nomap("n", "<leader>rn")
map("n", "<leader>nr", "<cmd>set rnu!<CR>", { desc = "Toggle Relative number" })

nomap("n", "<leader>n")
map("n", "<leader>nl", "<cmd>set nu!<CR>", { desc = "Toggle Line number" })

nomap("n", "<leader>ch")
map("n", "<leader>nm", "<cmd>NvCheatsheet<CR>", { desc = "Toggle NvCheatsheet" })

----

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<C-v>", "<cmd>p<CR>", { desc = "Paste" })

map("n", "s", "<cmd>w<CR>", { desc = "Save File" })
map("n", "ss", "<cmd>wall<CR>", { desc = "Save Project" })
map("n", "<leader>s", "<cmd>wall<CR>", { desc = "Save Project" })
map("n", "<leader>w", "<cmd>wall<CR>", { desc = "Save Project" })
map("n", "<leader>c", "<cmd>close<CR>", { desc = "Close Buffer" })

map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree Explorer" })
map("n", "<leader>o", function ()
  if vim.bo.filetype == "NvimTree" then
    vim.cmd.wincmd "p"
  else
    vim.cmd "NvimTreeFocus"
  end
end, { desc = "Toggle NvimTree Focus" })

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

