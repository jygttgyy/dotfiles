return {
    {
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
            defaults = {
                autocmds = true,
                keymaps = false,
            },
		},
    },
	{
		"catppuccin/nvim",
		name = "catppuccin",
        lazy = false,
		priority = 1000,
		opts = {
			--no_italic = true,
			term_colors = true,
			transparent_background = false,
			styles = {
				comments = {},
				conditionals = {},
				loops = {},
				functions = {},
				keywords = {},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
			},
			color_overrides = {
				mocha = {
					base = "#000000",
					mantle = "#000000",
					crust = "#000000",
				},
			},
			integrations = {
                telescope = {
					enabled = false,
					style = "nvchad",
				},
				dropbar = {
					enabled = true,
					color_mode = true,
				},
			},
		},
	},
    "Bekaboo/dropbar.nvim",
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			theme = "catppuccin",
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {'filename'},
                lualine_x = {'encoding', --[['fileformat',]] --[['filetype']]},
                lualine_y = {'progress'},
                lualine_z = {'location'}
            },
			options = {
				component_separators = " ",
                section_separators = { left = "", right = "" },
			},
		},
	},
}
