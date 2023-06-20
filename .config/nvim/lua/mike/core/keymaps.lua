vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymaps

keymap.set("n","<leader>w",":w<CR>") -- save file in nvim


keymap.set("n","<leader>fm",":terminal dart format . --line-length=100<CR>") -- clarify

keymap.set("n","<leader>wf",":w!<CR>") -- save file in nvim

keymap.set("n","<leader>q",":q<CR>") -- close file in nvim

keymap.set("n","<leader>q",":q!<CR>") -- close file in nvim

keymap.set("n","<leader>pv",vim.cmd.Ex) -- opens up file manager like utility

keymap.set("i","jk","<ESC>") -- shortcut for escape

keymap.set("n","<leader>nh",":nohl<CR>") -- clear search highlights

keymap.set("n","x",'"_x"') -- delete character and not copy it to the register

keymap.set("n", "<leader>+","<C-a>") -- increment constant

keymap.set("n","<leader>-","<C-x>") -- decrement constant

-- Window management
keymap.set("n","<leader>sv", "<C-w>v") -- split window vertically

keymap.set("n","<leader>sh","<C-w>s") -- split window horizontally

keymap.set("n","<leader>se","<C-w>=") -- male split windows Equal width

keymap.set("n","<leader>sx",":close<CR>") -- close current split windows

-- Tab settings

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab

keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab

keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab

keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NeoTreeFloat<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>") -- list available help tags
keymap.set("n", "<leader>fe", "<cmd>Telescope flutter commands<cr>") -- list available help tags
-- productivity
-- keymap.set("n","<leader>a","<cmd>CodeActionMenu<cr>")
-- keymap.set("n","<leader>dc","<cmd>lua vim.lsp.buf.declaration()<cr>")
-- keymap.set("n","<leader>df","<cmd>lua vim.lsp.buf.definition()<cr>")
-- keymap.set("n","<leader>ip","<cmd>lua vim.lsp.buf.implementation()<cr>")
-- keymap.set("n","<leader>rn","<cmd>lua require('renamer').rename()<cr>")
-- keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>")

--bufferline looks similar to tab

keymap.set("n", "<leader>bn", ":BufferLineCycleNext<CR>") -- open new tab

keymap.set("n", "<leader>bp", ":BufferLineCyclePrev<CR>") -- open new tab
--undo tree
keymap.set("n","<leader>u",vim.cmd.UndotreeToggle)

--vim fugitive
keymap.set("n","<leader>gs",vim.cmd.Git)
