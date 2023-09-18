local Path = require "plenary.path"
local from_entry = require "telescope.from_entry"
local utils = require 'telescope.utils'
local previewers = require 'telescope.previewers'

local defaulter = utils.make_default_callable

--local raster_previewer = {
--}
--
--raster_previewer.setup = function(self)
--end
--
--raster_previewer.teardown = function(self)
--end
--
--raster_previewer.preview_fn = function(self, entry, status)
--end
--
--raster_previewer.title = function(self)
--	return "Raster previewer"
--end
--
--raster_previewer.dynamic_title = function(self, entry)
--	return "Raster previewer"
--end
--
--raster_previewer.send_input = function (self, inpuit)
--end
--
--raster_previewer.scroll_fn = function (self, direction)
--end

local gdalinfo_maker = function(filename)

   return {
      "gdalinfo",
      vim.fn.expand(filename),
    }
  end

local raster_previewer = defaulter(function(opts)
  opts = opts or {}

  local cwd = opts.cwd or vim.loop.cwd()

  return previewers.new_termopen_previewer {
    title = "File Preview",
    dyn_title = function(_, entry)
      return Path:new(from_entry.path(entry, false, false)):normalize(cwd)
    end,

    get_command = function(entry)
      local p = from_entry.path(entry, true, false)
      if p == nil or p == "" then
        return
      end

      return gdalinfo_maker(p)
    end,
  }
end, {})

return raster_previewer
--return previewers.new(raster_previewer)
