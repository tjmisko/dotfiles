return {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    event = {
        "BufReadPre " .. vim.fn.expand "~" .. "/Documents/Notes/**.md",
        "BufNewFile " .. vim.fn.expand "~" .. "/Documents/Notes/**.md"
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp"
    },
    opts = {
        workspaces = {
            {
                name = "Notes",
                path = "C:/Users/TMisko/Documents/Notes",
            },
        },
        daily_notes = {
            folder = "daily",
            date_format = "%Y-%m-%d",
            template = "daily note.md",
        },
        new_notes_location = "zettlekasten",
        completion = {
            nvim_cmp = true,
            min_chars = 2,
        },
        mappings = {
            ["<leader>fl"] = {
                action = function()
                    return require("obsidian").util.gf_passthrough()
                end,
                opts = { noremap = false, expr = true, buffer = true },
            },
            ["<leader>tx"] = {
                action = function()
                    return require("obsidian").util.toggle_checkbox()
                end,
                opts = { buffer = true },
            },
        }
    },
}
