-- Copyright 2025 Kevin Fisher. All rights reserved.
-- SPDX-License-Identifier: BSD-3-Clause

require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  install = { colorscheme = { "habamax" } },
  checker = { enabled = true },
})
