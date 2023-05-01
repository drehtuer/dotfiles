-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--[[ https://neovim.io/doc/user/options.html#options ]]

-- Write if modified
vim.opt.autowrite = false
-- Sync OS and NeoVim clipboard
vim.opt.clipboard = "unnamedplus"
-- Insert mode completion
vim.opt.completeopt = "noinsert,menuone,menu,noselect"
-- Conceal level
vim.opt.conceallevel = 0
-- Raise dialog on actions on unsafed changes
vim.opt.confirm = true
-- Expand tabs to spaces
vim.opt.expandtab = true
-- Use Unix line endings by default
vim.opt.fileformat = "unix"
-- Folding support
vim.opt.foldenable = true
-- Only manual folding
vim.opt.foldmethod = "manual"
-- Ignore case in search pattern
vim.opt.ignorecase = true
-- Line break on words w/o adding EOL
vim.opt.linebreak = true
-- Show 'invisible' characters
vim.opt.list = false
-- Add <> to matchpairs
vim.opt.matchpairs:append({ "<:>" })
-- Enable mouse in all windows
vim.opt.mouse = "ar"
-- Line numbers
vim.opt.number = true
-- Line numbers are relative
vim.opt.relativenumber = true
-- Number of screen lines to keep above/below cursor
vim.opt.scrolloff = 1
-- Spaces used for indentation
vim.opt.shiftwidth = 2
-- No hit-enter for completion
vim.opt.shortmess:append({ I = true, c = true })
-- Show arguments on completion
vim.opt.showfulltag = true
-- Show matching bracket
vim.opt.showmatch = true
-- Number of columns to keep to left/right
vim.opt.sidescrolloff = 5
-- Override ignorecase if only small letters are used in search
vim.opt.smartcase = true
-- Smart indentation on new lines
vim.opt.smartindent = true
-- Smart tabs
vim.opt.smarttab = true
-- Spell checking
vim.opt.spell = false
-- Spell language is english by default, german as backup
vim.opt.spelllang = { "en_us", "de_de" }
-- When splitting horizontally, new window will be below
vim.opt.splitbelow = true
-- When splitting vertically, new windows will be right
vim.opt.splitright = true
-- Switching between buffer
vim.opt.switchbuf = { "useopen", "uselast" }
-- vim.opt.window title
vim.opt.title = true
-- No swapfiles
vim.opt.swapfile = false
-- Syntax highlighting based on filetype
vim.opt.syntax = "on"
-- Tab size
vim.opt.tabstop = 2
-- Enable terminal colors
vim.opt.termguicolors = true
-- Timeout for key sequences
vim.opt.timeout = true
-- Timeout in ms
vim.opt.timeoutlen = 300
-- Undo file
vim.opt.undofile = false
-- No backup file
vim.opt.writebackup = false
