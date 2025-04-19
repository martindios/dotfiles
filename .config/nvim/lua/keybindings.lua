

----------------------------------------------------------------------------------
--      __              __    _           ___                    __             --
--     / /_____  __  __/ /_  (_)___  ____/ (_)___  ____ ______  / /_  ______ _  --
--    / //_/ _ \/ / / / __ \/ / __ \/ __  / / __ \/ __ `/ ___/ / / / / / __ `/  --
--   / ,< /  __/ /_/ / /_/ / / / / / /_/ / / / / / /_/ (__  ) / / /_/ / /_/ /   --
--  /_/|_|\___/\__, /_.___/_/_/ /_/\__,_/_/_/ /_/\__, /____(_)_/\__,_/\__,_/    --
--            /____/                            /____/                          --
--                                                                              --
----------------------------------------------------------------------------------

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local vimap = vim.keymap.set

-- Default confs --

vim.keymap.set("i", "<C-BS>", "<C-W>")

-----------------
-- Barbar.nvim --
-----------------

-- Move to previous/next
map("n", "<A-Left>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<A-Right>", "<Cmd>BufferNext<CR>", opts)

-- Re-order to previous/next
map('n', '<A-,>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferMoveNext<CR>', opts)

-- Pin/Unpin Buffer 
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)

-- Close Buffer 
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)

---------------
-- Telescope.nvim --
---------------

-- Open file browser with the path of the current buffer 
vim.keymap.set("n", "<leader>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")

-- Outline.nvim --

vimap("n", "<leader>l", "<cmd>Outline!<CR>", {desc = "Toggle Outline"})

-- Default config folds --
------------------------
-- zf: crear pliegue
-- zf2j: pliegue con la línea actual y las 2 siguientes
-- zc: cerrar pliegue
-- zo: abrir pliegue
-- zd: eliminar pliegue

-- Folding config --
map("n", "<leader>j", "zc", opts)
map("n", "<leader>k", "zo", opts)

-- Control + C to copy --
vim.keymap.set("v", "<C-c>", '"+y', { noremap = true, silent = true })

