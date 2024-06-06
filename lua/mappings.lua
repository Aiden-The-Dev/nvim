require "nvchad.mappings"

local nomap = vim.keymap.del
local map = vim.keymap.set

nomap("n", "<leader>rn")
map("n", "<leader>nr", "<cmd>set rnu!<CR>", { desc = "Toggle Relative number" })

nomap("n", "<leader>n")
map("n", "<leader>nl", "<cmd>set nu!<CR>", { desc = "Toggle Line number" })

nomap("n", "<leader>ch")
map("n", "<leader>nm", "<cmd>NvCheatsheet<CR>", { desc = "Toggle NvCheatsheet" })

nomap("n", "<leader>th")
map("n", "<leader>tt", "<cmd>Telescope themes<CR>", { desc = "Telescope Nvchad themes" })

----

map("i", "jj", "<Esc>", { desc = "Escape", silent = true })

map("n", "ш", "i", { desc = "Insert mode [RU]", silent = true })
map("n", "к", "r", { desc = "Replace Character [RU]", silent = true })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<C-v>", "<cmd>p<CR>", { desc = "Paste" })

map("n", "s", "<cmd>w<CR>", { desc = "Save File" })
map("n", "ss", "<cmd>wall<CR>", { desc = "Save Project" })
map("n", "<leader>s", "<cmd>wall<CR>", { desc = "Save Project" })
map("n", "<leader>w", "<cmd>wall<CR>", { desc = "Save Project" })

map("n", "<leader>c", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "Close Buffer" })

map("n", "<leader>h", "<cmd>split<CR>", { desc = "Horizontal Buffer" })
map("n", "|", "<cmd>split<CR>", { desc = "Horizontal Buffer" })
map("n", "<leader>v", "<cmd>vsplit<CR>", { desc = "Vertical Buffer" })
map("n", "\\", "<cmd>vsplit<CR>", { desc = "Vertical Buffer" })

map("n", "<leader>th", function()
  require("nvterm.terminal").new "horizontal"
end, { desc = "Horizontal Terminal" })
map("n", "<leader>tv", function()
  require("nvterm.terminal").new "vertical"
end, { desc = "Vertical Terminal" })

map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree Explorer" })
map("n", "<leader>o", function()
  if vim.bo.filetype == "NvimTree" then
    vim.cmd.wincmd "p"
  else
    vim.cmd "NvimTreeFocus"
  end
end, { desc = "Toggle NvimTree Focus" })

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
