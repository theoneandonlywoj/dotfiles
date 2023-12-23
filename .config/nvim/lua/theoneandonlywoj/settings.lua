local g = vim.g
local o = vim.o

-- System Clipboard
o.clipboard = 'unnamedplus'

-- Using theme colours
o.termguicolors = true

-- Limiting the waiting time to 500ms
o.timeoutlen = 500

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8

-- Better editor UI
o.number = true
o.numberwidth = 3
o.relativenumber = true
o.signcolumn = 'yes:1'
o.cursorline = true

-- Better editing experience
o.expandtab = true
-- o.smarttab = true
o.cindent = true
o.autoindent = true

-- Wrap the text with more than 300 characters
o.wrap = true
o.textwidth = 300

o.tabstop = 4
o.shiftwidth = 0
o.softtabstop = -1 -- If negative, shiftwidth value is used

-- More clear text formatting
o.list = true
o.listchars = 'space:·,lead: ,trail:·,nbsp:◇,tab:→-,extends:▸,precedes:◂,leadmultispace:│   ,'

-- When splitting the windows, put the new tab to the right (vertical split) or below (horizontal split)
o.splitright = true
o.splitbelow = true

-- Remember 50 items in commandline history
o.history = 50

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

-- Preserve view while jumping
o.jumpoptions = 'view'
-- Map <leader> to space
g.mapleader = ' '
g.maplocalleader = ' '

