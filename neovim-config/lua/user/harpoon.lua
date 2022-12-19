local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

require("harpoon").setup({
  -- set marks specific to each git branch inside git repository
  mark_branch = false,
})

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "π", ui.toggle_quick_menu)

vim.keymap.set("n", "¡", function() ui.nav_file(1) end)
vim.keymap.set("n", "€", function() ui.nav_file(2) end)
vim.keymap.set("n", "#", function() ui.nav_file(3) end)
vim.keymap.set("n", "¢", function() ui.nav_file(4) end)

vim.keymap.set("n", "‘", ui.nav_next)
vim.keymap.set("n", "“", ui.nav_prev)

