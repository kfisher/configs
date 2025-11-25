-- Copyright 2025 Kevin Fisher. All rights reserved.
-- SPDX-License-Identifier: BSD-3-Clause

-- Copy indent from current line when starting a new line
vim.opt.autoindent = true

-- Configures the behavior of backspace, delete, CTRL-W and CRTL-U
-- eol       line breaks
-- indent    auto indent
-- start     start of insert
vim.opt.backspace = "eol,indent,start"

-- Controls what is scanned for auto completion
-- . current buffer
-- w windows
-- b loaded buffers
-- u unloaded buffers
-- k tags
-- i included files
vim.opt.complete = ".,w,b,u,t,i"

-- Auto completion options
-- menu    use a pop-up menu
-- longest insert only the common text of the matches
-- preview extra information
-- popup   show extra information in the pop-up menu
vim.opt.completeopt = "menu,longest,popup"

-- Don't highlight the current line by default.
vim.opt.cursorline = true

-- Folding - disable folding on startup
vim.opt.foldenable = true
vim.opt.foldlevel = 20
vim.opt.foldlevelstart = 20
vim.opt.foldmethod = "syntax"

-- Use spaces instead of tabs by default
vim.opt.expandtab = true

-- Ignores case when searching.
vim.opt.ignorecase = true

-- While typing a search command, show the matches so far.
vim.opt.incsearch = true

-- Don't insert two spaces with a join command (only one).
vim.opt.joinspaces = false

-- Always display the status line.
vim.opt.laststatus = 2

-- Show line numbers.
vim.opt.number = true

-- Number of lines to scroll with CTRL-U and CTRL-D commands.
vim.opt.scroll = 8

-- Number of screen lines to keep above/below the cursor.
vim.opt.scrolloff = 3

-- Number of characters when shifting
vim.opt.shiftwidth = 4

-- Overrides `vim.opt.ignorecase` option when the search contains one or more
-- uppercase letters.
vim.opt.smartcase = true

-- Number of spaces to use when inserting tabs
vim.opt.softtabstop = 4

-- Disable spell check by default.
vim.opt.spell = false

-- When spellchecking is turned on, use these languages.
vim.opt.spelllang = "en"

-- When spellchecking is turned on, account for camel cased words.
vim.opt.spelloptions = "camel"

-- Number of spelling suggestions to display.
vim.opt.spellsuggest = "5"

-- When splitting a window horizontally, put new window below.
vim.opt.splitbelow = true

-- When splitting a window vertically, put new window to the right.
vim.opt.splitright = true

-- Status Line Configuration
-- %2.2n                         buffer number
-- %f                            relative path
-- %([%H%M%R%W]%)                flags
-- %=                            separator
-- %Y                            file type
-- %{strlen(&fenc)?&fenc:'none'} encoding
-- %l,%c%V                       line, column
-- %<                            truncate point (if line is too long)
-- %P				 file position
-- vim.opt.statusline = "%2.2n %f %([%H%M%R%W]%) %= [%Y] [%{strlen(&fenc)?&fenc:'none'}][%l,%c%V] %< [%P]"
vim.opt.statusline = "%f %([%H%M%R%W]%) %= [%Y][%{strlen(&fenc)?&fenc:'none'}][%l,%c%V]%<[%P]"

-- Number of spaces to represent tabs as
vim.opt.tabstop = 8

-- Max line length
vim.opt.textwidth = 80

-- Enable virtual editing in all modes.
vim.opt.virtualedit = "all"

-- By default, do not wrap text.
vim.opt.wrap = false
