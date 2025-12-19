# Neovim Keybindings

This document contains all the keybindings configured in your Neovim setup.

## Table of Contents

- [General Keybindings](#general-keybindings)
- [File Explorer](#file-explorer)
- [Buffer Navigation](#buffer-navigation)
- [LSP (Language Server Protocol)](#lsp-language-server-protocol)
- [Completion (nvim-cmp)](#completion-nvim-cmp)
- [Snippets (LuaSnip)](#snippets-luasnip)
- [Session Management](#session-management)
- [Dashboard (Snacks.nvim)](#dashboard-snacksnvim)
- [Comments](#comments)

## General Keybindings

| Key                | Mode   | Description                | Command                          |
| ------------------ | ------ | -------------------------- | -------------------------------- |
| `<leader><leader>` | Normal | Open file picker           | `Snacks.dashboard.pick('files')` |
| `<leader>t`        | Normal | Open terminal              | `:terminal`                      |
| `<leader>l`        | Normal | Reload entire file         | `:%<CR>`                         |
| `<leader>e`        | Normal | Open File Explorer (Netrw) | `:Ex<CR>`                        |

## File Explorer

| Key | Mode   | Description     | Command               |
| --- | ------ | --------------- | --------------------- |
| `\` | Normal | Toggle NvimTree | `:NvimTreeToggle<CR>` |

## Buffer Navigation

| Key       | Mode   | Description     | Command                        |
| --------- | ------ | --------------- | ------------------------------ |
| `<Tab>`   | Normal | Next buffer     | `<Cmd>BufferLineCycleNext<CR>` |
| `<S-Tab>` | Normal | Previous buffer | `<Cmd>BufferLineCyclePrev<CR>` |

## LSP (Language Server Protocol)

| Key         | Mode           | Description               | Command                               |
| ----------- | -------------- | ------------------------- | ------------------------------------- |
| `gD`        | Normal         | Go to declaration         | `vim.lsp.buf.declaration`             |
| `gd`        | Normal         | Go to definition          | `vim.lsp.buf.definition`              |
| `K`         | Normal         | Hover documentation       | `vim.lsp.buf.hover`                   |
| `gi`        | Normal         | Go to implementation      | `vim.lsp.buf.implementation`          |
| `<C-k>`     | Normal         | Signature help            | `vim.lsp.buf.signature_help`          |
| `<space>wa` | Normal         | Add workspace folder      | `vim.lsp.buf.add_workspace_folder`    |
| `<space>wr` | Normal         | Remove workspace folder   | `vim.lsp.buf.remove_workspace_folder` |
| `<space>wl` | Normal         | List workspace folders    | `vim.lsp.buf.list_workspace_folders`  |
| `<space>D`  | Normal         | Go to type definition     | `vim.lsp.buf.type_definition`         |
| `<space>rn` | Normal         | Rename symbol             | `vim.lsp.buf.rename`                  |
| `<space>ca` | Normal, Visual | Code actions              | `vim.lsp.buf.code_action`             |
| `gr`        | Normal         | Go to references          | `vim.lsp.buf.references`              |
| `<space>e`  | Normal         | Open diagnostic float     | `vim.diagnostic.open_float`           |
| `[d`        | Normal         | Go to previous diagnostic | `vim.diagnostic.goto_prev`            |
| `]d`        | Normal         | Go to next diagnostic     | `vim.diagnostic.goto_next`            |

## Completion (nvim-cmp)

| Key         | Mode           | Description               | Action                                  |
| ----------- | -------------- | ------------------------- | --------------------------------------- |
| `<C-b>`     | Insert         | Scroll documentation up   | Scroll docs -4                          |
| `<C-f>`     | Insert         | Scroll documentation down | Scroll docs +4                          |
| `<C-Space>` | Insert         | Complete                  | Open completion menu                    |
| `<C-e>`     | Insert         | Abort completion          | Close completion menu                   |
| `<CR>`      | Insert         | Confirm selection         | Select completion item                  |
| `<Down>`    | Insert, Select | Next item                 | Select next completion item             |
| `<Up>`      | Insert, Select | Previous item             | Select previous completion item         |
| `<Tab>`     | Insert, Select | Expand/Jump snippet       | Expand or jump to next snippet position |
| `<S-Tab>`   | Insert, Select | Jump to previous snippet  | Jump to previous snippet position       |

## Snippets (LuaSnip)

LuaSnip is integrated with nvim-cmp. The snippet navigation is handled through the completion keybindings:

- `<Tab>` - Expand snippet or jump to next position
- `<S-Tab>` - Jump to previous position

## Session Management

| Key          | Mode   | Description          | Command               |
| ------------ | ------ | -------------------- | --------------------- |
| `<leader>ss` | Normal | Search sessions      | `:SessionSearch<CR>`  |
| `<leader>sl` | Normal | Load session         | `:SessionLoad<CR>`    |
| `<leader>sd` | Normal | Delete session       | `:SessionDelete<CR>`  |
| `<leader>sr` | Normal | Restore last session | `:SessionRestore<CR>` |
| `<leader>sn` | Normal | Save current session | `:SessionSave<CR>`    |

## Dashboard (Snacks.nvim)

Dashboard keybindings (available from the startup screen):

| Key | Description              | Command                             |
| --- | ------------------------ | ----------------------------------- | ------------ |
| `n` | New file                 | `:ene                               | startinsert` |
| `f` | Find file                | `Snacks.dashboard.pick('files')`    |
| `r` | Recent files             | `Snacks.dashboard.pick('oldfiles')` |
| `s` | Sessions                 | `:SessionSearch`                    |
| `c` | Settings (open init.lua) | `:e $MYVIMRC`                       |
| `q` | Quit Neovim              | `:qa`                               |
| `l` | Open Lazy                | `:Lazy`                             |

## Comments

| Key         | Mode   | Description                  | Action                  |
| ----------- | ------ | ---------------------------- | ----------------------- |
| `<leader>c` | Visual | Toggle comment for selection | Toggle linewise comment |

---

### Legend

- **Normal Mode**: Command mode (when not editing text)
- **Insert Mode**: Text editing mode
- **Visual Mode**: Text selection mode
- **<leader>**: Leader key (typically `\` or `,`)
- **<CR>**: Enter/Return key
- **<C-x>**: Ctrl + x
- **<S-x>**: Shift + x

### Notes

- Most LSP keybindings are only active when a language server is attached to the buffer
- Session management requires the `auto-session` and `session-lens` plugins
- Completion keybindings work when nvim-cmp is active
- The dashboard appears when Neovim starts without opening a specific file

