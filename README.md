 # 🚀 My Neovim Configuration

A personalized Neovim setup built on top of [LazyVim](https://github.com/LazyVim/LazyVim) with custom plugins and configurations for an enhanced development experience.

## ✨ Features

### 🎨 Theme & Appearance
- **Catppuccin** theme with mocha flavor and transparent background
- Extensive theme integrations for all major plugins

### 🔧 Development Tools
- **LSP Support** with Meson language server configuration
- **LÖVE2D** integration for game development
- Terminal access with `<leader>t` keybinding

### 📦 Plugin Management
- Powered by **Lazy.nvim** for efficient plugin management
- Curated selection of plugins for productivity

## 🛠️ Installation

1. Backup your existing Neovim configuration:
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. Clone this repository:
   ```bash
   git clone <your-repo-url> ~/.config/nvim
   ```

3. Remove the git folder to make it your own:
   ```bash
   rm -rf ~/.config/nvim/.git
   ```

4. Launch Neovim and let LazyVim install everything:
   ```bash
   nvim
   ```

## 📁 Configuration Structure

```
nvim-for-me/
├── init.lua                 # Entry point, sets up LazyVim and theme
├── lua/
│   ├── config/
│   │   ├── autocmds.lua     # Custom autocmds
│   │   ├── keymaps.lua      # Custom keybindings
│   │   ├── lazy.lua         # Lazy.nvim configuration
│   │   └── options.lua      # Neovim options
│   └── plugins/
│       ├── catppuccin.lua   # Theme configuration
│       ├── lsp.lua          # LSP server setup
│       ├── love2d.lua       # LÖVE2D game dev support
│       ├── lualine.lua      # Status line
│       ├── mason.lua        # LSP installer
│       ├── snacks.lua       # Snacks.nvim
│       └── treesitter.lua   # Syntax highlighting
├── lazy-lock.json           # Plugin lockfile
├── lazyvim.json            # LazyVim configuration
└── README.md               # This file
```

## ⌨️ Key Mappings

### Custom Keybindings
- `<leader>t` - Open terminal
- `<leader>v` - LÖVE2D menu (Lua files)
- `<leader>vv` - Run LÖVE2D project
- `<leader>vs` - Stop LÖVE2D project

### LazyVim Defaults
All default LazyVim keybindings are available. Refer to the [LazyVim documentation](https://lazyvim.github.io/installation) for the complete list.

## 🎮 LÖVE2D Support

This configuration includes specialized support for LÖVE2D game development:
- Run LÖVE2D projects directly from Neovim
- Stop running LÖVE2D instances
- Filetype-specific keybindings for Lua files

## 🔌 Custom Plugins

### Language Support
- **Meson LSP** - Build system support with `mesonlsp` server

### Theme
- **Catppuccin** - Soothing pastel theme with extensive integrations

### Game Development
- **love2d.nvim** - LÖVE2D game engine integration

## 🎨 Customization

### Adding New Plugins
Create new files in `lua/plugins/` directory. Example:
```lua
-- lua/plugins/your-plugin.lua
return {
  "your-plugin/your-plugin",
  config = function()
    -- Plugin configuration
  end,
}
```

### Modifying Options
Edit `lua/config/options.lua` to add custom Neovim options.

### Adding Keymaps
Edit `lua/config/keymaps.lua` to add custom keybindings.

## 📚 Learn More

- [LazyVim Documentation](https://lazyvim.github.io/installation)
- [Neovim Documentation](https://neovim.io/doc/)
- [Lua Guide](https://www.lua.org/pil/)

## 🤝 Contributing

Feel free to fork this configuration and adapt it to your needs!

---

**Built with ❤️ using LazyVim**