local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

lualine.setup({
	options = {
		-- icons_enabled = true,
		-- theme = "auto",
		-- component_separators = { left = "", right = "" },
		-- section_separators = { left = "", right = "" },
		disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline" },
		-- always_divide_middle = true,
        globalstatus = true,
        refresh = {
          statusline = 100,
        },
	},
	-- tabline = {},
	-- extensions = {},
})
