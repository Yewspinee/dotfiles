require("yewspine.remap")
require("yewspine.vim_set")
require("yewspine.lazy")

vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
    source = "always" 
  },
  float = {
    source = "always"
  }
})

