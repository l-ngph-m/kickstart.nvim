return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#131313',
				base01 = '#131313',
				base02 = '#6c6969',
				base03 = '#6c6969',
				base04 = '#232222',
				base05 = '#bfbbbb',
				base06 = '#bfbbbb',
				base07 = '#bfbbbb',
				base08 = '#a75858',
				base09 = '#a75858',
				base0A = '#6f6f6f',
				base0B = '#4f8c3f',
				base0C = '#000000',
				base0D = '#6f6f6f',
				base0E = '#000000',
				base0F = '#000000',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#6c6969',
				fg = '#bfbbbb',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Statusline', {
				bg = '#6f6f6f',
				fg = '#131313',
			})
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#6c6969' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#000000', bold = true })

			vim.api.nvim_set_hl(0, 'Statement', {
				fg = '#000000',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Keyword', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Repeat', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Conditional', { link = 'Statement' })

			vim.api.nvim_set_hl(0, 'Function', {
				fg = '#6f6f6f',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Macro', {
				fg = '#6f6f6f',
				italic = true
			})
			vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })

			vim.api.nvim_set_hl(0, 'Type', {
				fg = '#000000',
				bold = true,
				italic = true
			})
			vim.api.nvim_set_hl(0, 'Structure', { link = 'Type' })

			vim.api.nvim_set_hl(0, 'String', {
				fg = '#4f8c3f',
				italic = true
			})

			vim.api.nvim_set_hl(0, 'Operator', { fg = '#232222' })
			vim.api.nvim_set_hl(0, 'Delimiter', { fg = '#232222' })
			vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
			vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })

			vim.api.nvim_set_hl(0, 'Comment', {
				fg = '#6c6969',
				italic = true
			})

			local current_file_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"
			if not _G._matugen_theme_watcher then
				local uv = vim.uv or vim.loop
				_G._matugen_theme_watcher = uv.new_fs_event()
				_G._matugen_theme_watcher:start(current_file_path, {}, vim.schedule_wrap(function()
					local new_spec = dofile(current_file_path)
					if new_spec and new_spec[1] and new_spec[1].config then
						new_spec[1].config()
						print("Theme reload")
					end
				end))
			end
		end
	}
}
