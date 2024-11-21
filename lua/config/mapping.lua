local map = vim.keymap.set

-- maintain selection when indenting
map("v", ">", ">gv", { desc = "Indent right and reselect" })
map("v", "<", "<gv", { desc = "Indent left and reselect" })

-- buffers
map("n", "<leader>x", ":bd<CR>", { silent = true, desc = "Close current buffer" })

-- Conform.nvim
map("n", "<leader>fm", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "general format file" })

-- telescope.nvim
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })

-- toggle-checkbox.nvim
map("n", "<leader>tt", ":lua require('toggle-checkbox').toggle()<CR>")

-- nvim-tree.lua
map("n", "<leader>\\", "<cmd>NvimTreeFocus<cr>", { desc = "Focus nvimtree" })
