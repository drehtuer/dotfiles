-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--[[ https://neovim.io/doc/user/options.html#options ]]

local opt = vim.opt
local cmd = vim.cmd

-- Write if modified
opt.autowrite = false

if not vim.env.SSH_TTY then
  -- Sync OS and NeoVim clipboard
  opt.clipboard = "unnamedplus"
end
-- Insert mode completion
opt.completeopt = "noinsert,menuone,menu,noselect"
-- Conceal level
opt.conceallevel = 0
-- Raise dialog on actions on unsafed changes
opt.confirm = true
-- Expand tabs to spaces
opt.expandtab = true
-- Use Unix line endings by default
opt.fileformat = "unix"
-- Folding support
opt.foldenable = true
-- Only manual folding
opt.foldmethod = "manual"
-- Ignore case in search pattern
opt.ignorecase = true
-- Line break on words w/o adding EOL
opt.linebreak = true
-- Show 'invisible' characters
opt.list = true
-- Enable mouse in all windows
opt.mouse = "ar"
-- Line numbers
opt.number = true
-- Line numbers are relative
opt.relativenumber = true
-- Number of screen lines to keep above/below cursor
opt.scrolloff = 0
-- Spaces used for indentation
opt.shiftwidth = 2
-- No hit-enter for completion
opt.shortmess:append({ I = true, c = true })
-- Show arguments on completion
opt.showfulltag = true
-- Show matching bracket
opt.showmatch = true
-- Number of columns to keep to left/right
opt.sidescrolloff = 5
-- Override ignorecase if only small letters are used in search
opt.smartcase = true
-- Smart indentation on new lines
opt.smartindent = true
-- Smart tabs
opt.smarttab = true
-- Spell checking
opt.spell = false
-- Spell language is english by default, german as backup
opt.spelllang = { "en_us", "de_de" }
-- When splitting horizontally, new window will be below
opt.splitbelow = true
-- When splitting vertically, new windows will be right
opt.splitright = true
-- Switching between buffer
opt.switchbuf = { "useopen", "uselast" }
-- opt.window title
opt.title = true
-- No swapfiles
opt.swapfile = false
-- Syntax highlighting based on filetype
opt.syntax = "on"
-- Tab size
opt.tabstop = 2
-- Enable terminal colors
opt.termguicolors = true
-- Timeout for key sequences
opt.timeout = true
-- Timeout in ms
opt.timeoutlen = 300
-- Undo file
opt.undofile = false
-- No backup file
opt.writebackup = false
