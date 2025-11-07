-- relaxing keymap
vim.keymap.set("i", "jk", "<Esc>")


-- needed keymap
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")


-- move between windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })


vim.keymap.set("n", "<leader>cp", function ()
	vim.cmd("read ~/.config/nvim/skeletons/cppsk.cpp")
	vim.cmd("52")
end)

vim.keymap.set("n", "<leader>cc", function()
	-- check file type
	local filetype = vim.bo.filetype
	if filetype == "cpp" then
		vim.cmd("w")
		vim.cmd("!g++ -DLOCAL % -o %:t:r")
		vim.cmd("!./%:t:r")
		vim.cmd("!rm %:t:r")
	end
end)

vim.keymap.set("n", "<leader>sp", function()
	vim.cmd("vsplit input.txt")
	vim.cmd("split output.txt")
	vim.cmd("split debug.txt")
end)

vim.keymap.set("n", "<leader>cj", function()
	local filetype = vim.bo.filetype
	if filetype == "java" then
		vim.cmd("w")
		vim.cmd("!javac %:t")
		vim.cmd("!java %:t:r")
		vim.cmd("!rm *.class")
	end
end)



vim.keymap.set("n", "<leader>jv", function()
  local filename = vim.fn.expand("%:t:r")
  vim.cmd("read ~/.config/nvim/skeletons/javask.java")
  vim.cmd("5")
  vim.cmd("normal! ciwpublic class " .. filename)
	vim.cmd("36")
  vim.cmd("startinsert")
end)



vim.keymap.set("n", "<leader>py", function()
	local filetype = vim.bo.filetype
	if filetype == "python" then
		vim.cmd("w")
		vim.cmd("!python3 %")
	end
end)

