local builtin = require("telescope.builtin")
local raster_previewer = require("geovim.previewer")

local geovim = {
     opts =  {}
}

geovim.default_config = {
}

geovim.find = function()
	builtin.find_files({
		prompt_title = "Adjacent",
		find_command = { "find", ".", "-type", "f" , "-name", "*.tif"},
		previewer =  raster_previewer.new(geovim.opts)
	})
end

return geovim
