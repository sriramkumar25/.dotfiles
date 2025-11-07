return {
	{
		"catppuccin/nvim",
		priority = 1000,
	},
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		},{
    "tiagovla/tokyodark.nvim",
    opts = {
        -- custom options here
    },
  	init = function()
			vim.cmd.colorscheme("cyberdream")
		end,
},{
    "Vallen217/eidolon.nvim",
    lazy = false,
    priority = 1000,
    
},
}
