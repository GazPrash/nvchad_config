require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

local opts = { noremap = true, silent = true }

-- Replace <leader><space> to find files in current directory
map("n", "<leader><space>", "<cmd>Telescope find_files<CR>", opts)

-- Map Ctrl+P to recent files
map("n", "<C-p>", "<cmd>Telescope oldfiles<CR>", opts)


-- Esc to back out of insert mode in the terminal
map("t", "<Esc>", [[<C-\><C-n>]], opts)

-- Neogit
map("n", "<leader>gn", "<cmd>Neogit<CR>", opts)


-- Move line down
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down", silent = true })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move line down", silent = true })

-- Move line up
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up", silent = true })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move line up", silent = true })

-- LSP Symbols
map("n", "<leader>ss", "<cmd>Telescope lsp_document_symbols<CR>", { desc = "LSP Symbols" })

-- Open Lazy.nvim
map("n", "<leader>l", "<cmd>Lazy<CR>", { desc = "Open Lazy.nvim" })

local cmp = require("cmp")
cmp.setup({
  mapping = {
    -- Make <Tab> confirm the selected completion
    ["<Tab>"] = cmp.mapping.confirm({ select = true }),
  }
})

-- reset ; keybind
map("n", ";", ";", opts)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
