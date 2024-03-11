return {
    'catppuccin/nvim',
    name = "catppuccin",
    priority = 1000,
    config = function() 
        require("catppuccin").setup({
            transparent_background = false,
            highlight_overrides = {
                all = function(colors) 
                    return {
                        LineNr = { fg = colors.yellow },
                    }
                end,
                mocha = function(mocha)
                    return {
                        retendDegeneracy = { fg = mocha.red },
                        retendProductive = { fg = mocha.blue },
                        retendEnrichment = { fg = mocha.green },
                        retendPractice = { fg = mocha.teal },
                        retendRoutine = { fg = mocha.lavender },
                        retendTransition = { fg = mocha.maroon },
                        retendPersonal = { fg = mocha.flamingo },
                        retendSocial = { fg = mocha.peach },
                        retendSleep = { fg = mocha.overlay0 },
                        retendJen = { fg = mocha.yellow },
                    }
                end,
            },
            integrations = {
                cmp = true,
                treesitter = true,
                markdown = true,
            },
        })
        vim.cmd.colorscheme "catppuccin-mocha"
    end
}
