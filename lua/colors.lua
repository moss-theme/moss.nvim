local palette = require("palette")

local M = {}

function M.get()
	local mode = vim.o.background == "light" and "light" or "dark"

	local colors = {}
	for name, value in pairs(palette) do
		if type(value) == "table" then
			colors[name] = value[mode]
		else
			colors[name] = value
		end
	end

	return colors
end

return M
