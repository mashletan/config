vim.cmd [[set number          ]]
vim.cmd [[set relativenumber  ]]
vim.cmd [[set confirm         ]]
vim.cmd [[set undofile        ]]
vim.cmd [[set signcolumn=yes:1]]
vim.cmd [[set noswapfile      ]]
vim.cmd [[set scrolloff=20    ]]
vim.cmd [[let mapleader = " " ]]

vim.cmd [[colorscheme    vim       ]]
vim.cmd [[hi NormalFloat guibg=NONE]]
vim.cmd [[hi SignColumn  guibg=NONE]]
vim.cmd [[hi Pmenu       guibg=NONE]]
vim.cmd [[hi PmenuKind   guibg=NONE]]
vim.cmd [[hi PmenuExtra  guibg=NONE]]
vim.cmd [[hi PmenuMatch  guibg=NONE]]
vim.cmd [[hi PmenuBorder guibg=NONE]]

vim.keymap.set("n", "<leader>r", ":!./build<CR>")
vim.keymap.set("n", "<C-h>",     ":bp<CR>"      )
vim.keymap.set("n", "<C-l>",     ":bn<CR>"      )

vim.pack.add({
	{src = "https://github.com/neovim/nvim-lspconfig"},
	{src = "https://github.com/nvim-mini/mini.pick"  },
	{src = "https://github.com/mbbill/undotree"      },
})

require("mini.pick").setup()
vim.keymap.set("n", "<leader>g", ":Pick grep <CR>")
vim.keymap.set("n", "<leader>b", ":Pick buffers <CR>" )
vim.keymap.set("n", "<leader>t", ":UndotreeToggle <CR>")

vim.lsp.enable({"clangd"})

vim.api.nvim_create_autocmd('BufWritePre', {
	pattern = {"*.c*", "*.h*"},
	callback = function() vim.lsp.buf.format() end,
})

-- https://www.reddit.com/r/neovim/comments/17eomi1/comment/k6hm00m/
vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI", "BufEnter" }, {
	group = vim.api.nvim_create_augroup("ScrollOffEOF", {}),
	callback = function()
		local win_h = vim.api.nvim_win_get_height(0)
		local off = math.min(vim.o.scrolloff, math.floor(win_h / 2))
		local dist = vim.fn.line "$" - vim.fn.line "."
		local rem = vim.fn.line "w$" - vim.fn.line "w0" + 1
		if dist < off and win_h - rem + dist < off then
			local view = vim.fn.winsaveview()
			view.topline = view.topline + off - (win_h - rem + dist)
			vim.fn.winrestview(view)
        end
    end,
})
