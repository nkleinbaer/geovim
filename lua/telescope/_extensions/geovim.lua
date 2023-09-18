local gv = require("geovim")

return require("telescope").register_extension {
  setup = function(ext_config, config)
	    gv.opts = vim.tbl_deep_extend("force", gv.default_config, ext_config)
	  end,
  exports = {
    geovim = require("geovim").find
  },
}
