# alabaster-theme
Port of the [vscode-theme-alabaster by tonsky](https://github.com/tonsky/vscode-theme-alabaster)

> ⚠ this project is under development and it's not recommended to use it

## How to install

### By lazy.nvim

```lua
{
  "sleonia/alabaster-theme.nvim",
  lazy = false,
  priority = 1000,
  init = function()
    vim.cmd("set background=light")
  end,
  config = function()
    vim.cmd("colorscheme alabaster-theme")
  end,
}

```

## Credits

This project was inspired by these projects:

- https://github.com/folke/tokyonight.nvim
- https://github.com/tonsky/vscode-theme-alabaster
- https://github.com/p00f/alabaster.nvim
