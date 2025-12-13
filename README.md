# 🚀 nvim-for-me

A collection of Neovim configurations with two distinct setups:

1. **LazyVim Base** - A feature-rich configuration built on LazyVim
2. **Standalone** - A minimal, self-contained configuration

## 📁 Repository Structure

```
nvim-for-me/
├── lazyvim_base/          # LazyVim-based configuration
│   ├── init.lua          # Entry point
│   ├── lua/
│   │   ├── config/       # Core configuration files
│   │   └── plugins/      # Plugin configurations
│   ├── README.md         # Detailed LazyVim README
│   └── ...
└── standalone/           # Minimal standalone configuration
    ├── init.lua         # Complete configuration in one file
    ├── nvim.lua         # Alternative entry point
    └── lazy-lock.json   # Plugin lockfile
```

## 🔧 Configurations

### LazyVim Base
Built on top of [LazyVim](https://github.com/LazyVim/LazyVim) with extensive customizations:

- **Theme**: Catppuccin with transparent background
- **LSP**: Full language server support with Mason
- **Game Dev**: LÖVE2D integration
- **UI**: Custom dashboard, status line, and file explorer
- **Tools**: Linting, formatting, completion, and snippets

**Installation**: See [lazyvim_base/README.md](./lazyvim_base/README.md)

### Standalone
A minimal, single-file configuration perfect for:

- Quick setups on new machines
- Learning Neovim configuration
- Lightweight editing environments

**Features**:
- Essential plugins (Treesitter, LSP, completion)
- Catppuccin theme
- Basic LSP support
- File explorer (NvimTree)
- LÖVE2D support

**Installation**:
```bash
# Backup existing config
mv ~/.config/nvim ~/.config/nvim.backup

# Copy standalone config
cp -r standalone ~/.config/nvim

# Launch Neovim
nvim
```

## 🎮 Common Features

Both configurations include:

- **LÖVE2D Support**: Game development tools with keybindings:
  - `<leader>v` - LÖVE2D menu (Lua files)
  - `<leader>vv` - Run LÖVE2D project
  - `<leader>vs` - Stop LÖVE2D project

- **Catppuccin Theme**: Soothing pastel colors with mocha flavor

- **Modern Development**: LSP, completion, and syntax highlighting

## 🚀 Getting Started

1. Choose your configuration:
   - **LazyVim Base** for full-featured development
   - **Standalone** for minimal setup

2. Follow the installation instructions for your chosen config

3. Customize as needed by editing the relevant files

## 🛠️ Customization

### LazyVim Base
- Edit files in `lua/config/` for core settings
- Add plugins in `lua/plugins/`
- Modify keymaps in `lua/config/keymaps.lua`

### Standalone
- Edit `init.lua` directly
- All configuration is in one file for easy modification

## 📚 Learn More

- [LazyVim Documentation](https://lazyvim.github.io/installation)
- [Neovim Documentation](https://neovim.io/doc/)
- [Catppuccin Theme](https://github.com/catppuccin/nvim)

---

**Built with ❤️ for personalized Neovim experience**