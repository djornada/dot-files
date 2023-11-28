return {
  colorscheme = "catppuccin",
  options = function(local_vim) 
    local_vim.opt.relativenumber = false 
    local_vim.opt.swapfile = false 
    return local_vim
  end,
}
