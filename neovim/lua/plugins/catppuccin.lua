-- Copyright 2025 Kevin Fisher. All rights reserved.
-- SPDX-License-Identifier: BSD-3-Clause

return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "catppuccin"
  end
}

