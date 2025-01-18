vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- to show absolute numbers and relative numbers on the left
opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 2 -- spaces for tabs
opt.shiftwidth = 2 -- spaces for indent width
opt.expandtab = true -- expans tab to spaces
opt.autoindent = true --copy indent from current line when starting a new one

-- wrapping
opt.wrap = true

--search settings
opt.ignorecase = true --ignore case when searching
opt.smartcase = true --if you include mixed case in your search, assumes you want case-sensitive

-- show the cursor line
opt.cursorline = true

--ricing neovim
opt.termguicolors = true
opt.background = "dark" -- color schemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesnt shift

-- backspace
opt.backspace = "indent,eol,start" --allow backspace on indent, end of line or insert mode start poitions

-- clipboard
opt.clipboard:append("unnamedplus") -- use system default for clipboard

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom
