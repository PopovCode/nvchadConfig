require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map("i", "оо", "<ESC>")
map("i", "<C-g>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })
map("n", "<leader>cx", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "Close All Buffers" })

-- Debug
map("n", "<leader>du", function()
  require("dapui").toggle()
end, { desc = "Toggle Debug UI" })
map("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "Toggle Breakpoint" })
map("n", "<leader>ds", function()
  require("dap").continue()
end, { desc = "Start" })
map("n", "<leader>dn", function()
  require("dap").step_over()
end, { desc = "Step Over" })

--Telescope mappings
map("n", "<leader>fw", "<cmd>Telescope grep_string<CR>", { desc = "Search Word Under Cursor" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })

--NvimTree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })

-- TODO

map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find Todo" })

-- SymbolsOutline

map("n", "<leader>fs", "<cmd>SymbolsOutline<CR>", { desc = "Toggle SymbolsOutline" })

--Split/Resize Buffers

map("n", "\\", "<cmd>:vsplit <CR>", { desc = "Vertical Split" })
map("n", "<leader>[", "<cmd>:vertical resize -10 <CR>", { desc = "Vertical +" })
map("n", "<leader>]", "<cmd>:vertical resize +10 <CR>", { desc = "Vertical -" })

-- Trouble

map("n", "<leader>td", "<cmd>Trouble diagnostics toggle<CR>", { desc = "Open Trouble diagnostics" })
-- map("n", "<leader>qw", "<cmd>TroubleToggle workspace_diagnostics<CR>", { desc = "Open Workspace Trouble" })
-- map("n", "<leader>qd", "<cmd>TroubleToggle document_diagnostics<CR>", { desc = "Open Document Trouble" })
-- map("n", "<leader>qq", "<cmd>TroubleToggle quickfix<CR>", { desc = "Open Quickfix" })
-- map("n", "<leader>ql", "<cmd>TroubleToggle loclist<CR>", { desc = "Open Location List" })

-- Terminal

map("n", "<C-]>", function()
  require("nvchad.term").toggle { pos = "vsp", size = 0.4 }
end, { desc = "Toogle Terminal Vertical" })
map("n", "<C-\\>", function()
  require("nvchad.term").toggle { pos = "sp", size = 0.4 }
end, { desc = "Toogle Terminal Horizontal" })
map("n", "<C-f>", function()
  require("nvchad.term").toggle { pos = "float" }
end, { desc = "Toogle Terminal Float" })
map("t", "<C-]>", function()
  require("nvchad.term").toggle { pos = "vsp" }
end, { desc = "Toogle Terminal Vertical" })
map("t", "<C-\\>", function()
  require("nvchad.term").toggle { pos = "sp" }
end, { desc = "Toogle Terminal Horizontal" })
map("t", "<C-f>", function()
  require("nvchad.term").toggle { pos = "float" }
end, { desc = "Toogle Terminal Float" })
