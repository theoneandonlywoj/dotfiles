-- Settings --
local g = vim.g
local o = vim.o

-- System Clipboard --
o.clipboard = "unnamedplus"

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 15

-- Better editor UI --
o.number = true
o.numberwidth = 3
o.relativenumber = true
o.signcolumn = "yes:1"
o.cursorline = true

o.expandtab = true
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2

-- Better editing experience --
o.expandtab = true
o.cindent = true

-- More clear text formatting
o.list = true
o.listchars = "space:·,lead: ,trail:·,nbsp:◇,tab:→-,extends:▸,precedes:◂,leadmultispace:│   ,"

-- When splitting the windows, put the new tab to the right (vertical split) or below (horizontal split)
o.splitright = true
o.splitbelow = true

-- Remember 50 items in commandline history
o.history = 50

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

-- Preserve view while jumping
o.jumpoptions = "view"

-- Map <leader> to space
g.mapleader = " "
g.maplocalleader = " "
