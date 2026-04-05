-- LineBlame of current line
vim.api.nvim_create_user_command("BlameLine", function()
	require("gitsigns").blame_line()
end, { desc = "Open current line blame in floating window" })

-- Close all other buffers except the current one
vim.api.nvim_create_user_command("CloseOthers", function()
	vim.cmd("w | %bd | e#")
end, { desc = "Close all other buffers" })
