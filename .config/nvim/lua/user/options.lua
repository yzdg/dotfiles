local options = {
  backup = false,
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 1,                           -- space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",
  hlsearch = true,
  ignorecase = true,
  mouse = "",                              -- disable mouse
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 2,                         -- always show tabs
  smartcase = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  termguicolors = true,
  timeoutlen = 1000,                       -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,
  cursorline = true,
  number = true,
  relativenumber = false,
  numberwidth = 3,
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  wrap = false,
  colorcolumn = { 80 },
  scrolloff = 8,
  sidescrolloff = 8,
  -- Tab options
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each tab shift
  tabstop = 8,                             -- insert 8 spaces for a tab
  softtabstop = 2,
  smartindent = true,
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]]         -- TODO: this doesn't seem to work
