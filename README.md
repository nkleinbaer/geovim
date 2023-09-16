# Intro

Did you know that over 1 billion developers become inextricably stuck in vim every year? Many can continue to function and eventually thrive in this state,
but for those working in the geospatial domain the problem is more serious. A lack of built in support for geospatial datasets and tooling makes it impossible for 
geo devs to perform basic tasks, which can ultimately lead to poor job performance, unemployment and ultimately starvation and death.

So ask yourself, are _**you**_ prepared to continue working on your geospatial projects when (!if) you become stuck in vim? 

If not, then `geovim` is for you. It is a small plugin for Neovim that integrates with standard geospatial utilities such as GDAL/OGR.
Features include:

- Viewing metadata
- That's really it. Hopefully you don't need to do anything beyond reporting the output of `gdalinfo` back to your boss.

# Installation 

Use your favorite Neovim package manager, e.g.

```lua
require('lazy').setup({'nkleinbaer/geovim},{})
```

# Usage

`:Geovim` - Displays output of `gdalinfo` for a) the current buffer, or b) the highlighted file in netrw  

# Credits

Primarily based on [nvim-whid](https://github.com/rafcamlet/nvim-whid) and this [blog post](https://github.com/rafcamlet/nvim-whid) by the author.
