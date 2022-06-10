local onedarkpro = require("onedarkpro")
onedarkpro.setup({
  dark_theme = "onedark", -- The default dark theme
  light_theme = "onelight", -- The default light theme
  -- Theme can be overwritten with 'onedark' or 'onelight' as a string
  colors = {
    onedark = {
      bg = "#232832"
    }
  }, -- Override default colors by specifying colors for 'onelight' or 'onedark' themes
  hlgroups = {
    Pmenu = { bg="#FF0000", fg="#FF0000" },
    PmenuSel = { bg="#FF0000", fg="#FF0000" }
  }, -- Override default highlight groups
  filetype_hlgroups = {}, -- Override default highlight groups for specific filetypes
  plugins = { -- Override which plugins highlight groups are loaded
     all = true
  },
  styles = {
      strings = "NONE", -- Style that is applied to strings
      comments = "NONE", -- Style that is applied to comments
      keywords = "NONE", -- Style that is applied to keywords
      functions = "NONE", -- Style that is applied to functions
      variables = "NONE", -- Style that is applied to variables
      virtual_text = "NONE", -- Style that is applied to virtual text
  },
  options = {
      bold = true, -- Use the themes opinionated bold styles?
      italic = true, -- Use the themes opinionated italic styles?
      underline = true, -- Use the themes opinionated underline styles?
      undercurl = true, -- Use the themes opinionated undercurl styles?
      cursorline = true, -- Use cursorline highlighting?
      transparency = true, -- Use a transparent background?
      terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
      window_unfocussed_color = true, -- When the window is out of focus, change the normal background?
  }
})
onedarkpro.load()
