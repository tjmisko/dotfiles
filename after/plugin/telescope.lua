local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fe', builtin.find_files, {})
vim.keymap.set('n', '<leader>ge', builtin.git_files, {})
vim.keymap.set('n', '<leader>re', builtin.live_grep, {})
vim.keymap.set('n', '<leader>be', builtin.buffers, {})
vim.keymap.set('n', '<leader>ht', builtin.help_tags, {})
vim.keymap.set('n', '<leader>je', builtin.jumplist, {})
vim.keymap.set('n', '<leader>wl', builtin.spell_suggest, {})

