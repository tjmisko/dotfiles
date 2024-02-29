local harpoon = require("harpoon")
harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<leader>s", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<F7>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<F8>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<F9>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<F10>", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<F17>", function() harpoon:list():select(5) end)
vim.keymap.set("n", "<F18>", function() harpoon:list():select(6) end)
vim.keymap.set("n", "<F19>", function() harpoon:list():select(7) end)
vim.keymap.set("n", "<F20>", function() harpoon:list():select(8) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-H>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-L>", function() harpoon:list():next() end)
