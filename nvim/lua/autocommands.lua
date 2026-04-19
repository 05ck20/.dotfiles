local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup("UserConfig", { clear = true })

autocmd("TextYankPost", {
	group = augroup,
	callback = function()
		vim.highlight.on_yank()
	end,
})
