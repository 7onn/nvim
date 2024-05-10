local o = vim.o

-- Display settings
o.title = true -- Show file in titlebar
o.termguicolors = true -- Truecolor
o.scrolloff = 5 -- Lines above/below cursor when scrolling
o.showmatch = true -- Show matching bracket (briefly jump)
o.matchtime = 2 -- Show matching bracket for 0.2 seconds
o.wrap = true -- Wrap long lines
o.linebreak = true -- Wrap long lines at characters in breakat
o.breakindent = true -- Preserve the indentation of a virtual line. These "virtual lines" are the ones only visible when wrap is enabled.
o.cursorline = false -- Disable highlighting of the current line
-- opt.showcmd = true
-- opt.cmdheight = 0
-- opt.laststatus = 3 -- Use a global statusbar
--
-- Set relative numbers in NORMAL but switch to absolute in INSERT
o.number = true
o.relativenumber = true

-- Enable pbcopy
o.clipboard = 'unnamed'

-- Search config
o.hlsearch = false -- Disable highlights the results of the previous search

-- Default Indentation
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.expandtab = true

-- No noise
o.errorbells = false

-- Misc
o.swapfile = false -- Disable use of swapfile for the buffer

-- Decrease update time
o.updatetime = 250

