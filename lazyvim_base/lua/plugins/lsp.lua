return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      mesonlsp = {
        cmd = { "mesonlsp" },
        filetypes = { "meson" },
        root_dir = require("lspconfig.util").root_pattern("meson.build", "meson_options.txt"),
        single_file_support = true,
        settings = {},
      },
    },
  },
}