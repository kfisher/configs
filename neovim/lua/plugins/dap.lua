-- Copyright 2025 Kevin Fisher. All rights reserved.
-- SPDX-License-Identifier: BSD-3-Clause

return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")

    vim.keymap.set('n', '<leader>dc', dap.continue, {})
    vim.keymap.set('n', '<leader>do', dap.step_over, {})
    vim.keymap.set('n', '<leader>di', dap.step_into, {})
    vim.keymap.set('n', '<leader>du', dap.step_out, {})
    vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, {})
  end
}

