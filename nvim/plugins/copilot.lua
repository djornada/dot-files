return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "User AstroFile",
  opts = { 
    suggestion ={
      accept = "<C-l>", 
      auto_trigger = true,
      debounce = 150,
    }
  },
}
