-- Copyright 2025 Kevin Fisher. All rights reserved.
-- SPDX-License-Identifier: BSD-3-Clause

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {"lua"},
      highlight = { enable = true },
      indent = { enable = true },
    }
  end
}
