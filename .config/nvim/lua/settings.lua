
----------------------------------------------------------------
--                __  __  _                    __             --
--     ________  / /_/ /_(_)___  ____ ______  / /_  ______ _  --
--    / ___/ _ \/ __/ __/ / __ \/ __ `/ ___/ / / / / / __ `/  --
--   (__  )  __/ /_/ /_/ / / / / /_/ (__  ) / / /_/ / /_/ /   --
--  /____/\___/\__/\__/_/_/ /_/\__, /____(_)_/\__,_/\__,_/    --
--                            /____/                          --
--                                                            --
----------------------------------------------------------------


------------------------
-- Neovim API Aliases --
------------------------
local cmd = vim.cmd            -- execute Vim commands
local g = vim.g                -- global variables
local opt = vim.opt            -- global/buffer/windows-scoped options

-- General
----------

g.mapleader = " "              -- mapleader key
opt.clipboard = "unnamedplus"  -- copy/paste to system clipboard
opt.mouse = "a"                -- enable mouse support
opt.swapfile = false           -- disable swapfile use

-- Neovim UI
------------
opt.number = true              -- show line number
opt.relativenumber = true
opt.showmatch = true
opt.termguicolors = true

vim.o.cursorline = true
vim.o.number = true

-- Memory, CPU
--------------
opt.hidden = true
opt.history = 100
opt.synmaxcol = 1000

-- Tabs, indent
---------------
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true

-- don't auto commenting new lines
cmd[[au BufEnter * set fo-=c fo-=r fo-=o]]

-- fold config
opt.foldcolumn = '1'
opt.foldlevelstart = 99
opt.foldenable = true
opt.fillchars = { eob = " ", fold = " ", foldopen = "", foldsep = " ", foldclose = "" }

