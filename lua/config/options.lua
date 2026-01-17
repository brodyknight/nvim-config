local opt = vim.opt

-- Line numbers
opt.number = true		-- Enable line numbers
opt.relativenumber = true	-- Enable relative line numbers
opt.numberwidth = 2		-- Minimum columns for line numbers

-- Tabs / Indentation
opt.tabstop = 2			-- Spaces for tabs
opt.shiftwidth = 2		-- Spaces for indent width
opt.expandtab = true		-- Expand tabs to spaces
opt.autoindent = true		-- Copy indent from current line when starting new one
opt.smartindent = true		-- Smart autoindenting when starting a new line

-- Line wrapping
opt.wrap = false		-- Enable line wrapping
opt.breakindent = true		-- Enable break indent
opt.linebreak = true		-- Wrap lines at convenient points

-- Search settings
opt.ignorecase = true           -- Ignore case when searching
opt.smartcase = true            -- Override ignorecase if search pattern contains uppercase
opt.incsearch = true            -- Show search matches while typing
opt.hlsearch = false            -- Don't highlight all matches on previous search pattern

-- Cursor Line
opt.cursorline = true           -- Highlight the current cursor line
opt.scrolloff = 8               -- Minimal number of screen lines to keep above and below the cursor
opt.sidescrolloff = 8           -- Minimal number of screen columns to keep to the left and right of the cursor

-- Appearance
opt.termguicolors = true        -- Enable 24-bit RGB colors
opt.signcolumn = "yes"          -- Always show the signcolumn
opt.cmdheight = 1               -- Height of command-line at the bottom
opt.pumheight = 10              -- Maximum number of items to show in the popup menu
opt.showmode = false            -- Don't show mode (use statusline instead)
opt.showtabline = 2             -- Always show tabs
opt.splitbelow = true           -- Force all horizontal splits to go below current window
opt.splitright = true           -- Force all vertical splits to go to the right of current window

-- Behavior
opt.hidden = true               -- Enable background buffers
opt.errorbells = false          -- Disable beep on errors
opt.swapfile = false            -- Don't create swapfile
opt.backup = false              -- Don't create backup file
opt.undofile = true            	-- Enable persistent undo
opt.undodir = vim.fn.expand('~/.local/share/nvim/undodir') -- Set undodir
opt.updatetime = 50             -- Faster completion
opt.timeoutlen = 300            -- Time to wait for a mapped sequence to complete (in milliseconds)
opt.completeopt = "menuone,noselect" -- Better completion experience
opt.mouse = "a"                 -- Enable mouse mode

