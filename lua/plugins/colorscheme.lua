return {
    'catppuccin/nvim',
    name = "catppuccin",
    priority = 1000,
    config = function() 
        require("catppuccin").setup({
            transparent_background = false,
            integrations = {
                treesitter = true,
                markdown = true,
            },
            custom_highlights = function(colors) 
                return {
                    LineNr = { fg = colors.yellow }
                }
            end
        })
        vim.cmd.colorscheme "catppuccin-mocha"
        vim.cmd.highlight("retendDegeneracy guifg=#f38ba8")
        vim.cmd.highlight("retendProductive guifg=#89b4fa")
        vim.cmd.highlight("retendEnrichment guifg=#a6e3a1")
        vim.cmd.highlight("retendPractice guifg=#f9e2af")
        vim.cmd.highlight("retendPersonal guifg=#fab387")
        vim.cmd.highlight("retendSocial guifg=#f9e2af")
        vim.cmd.highlight("retendSleep guifg=#6c7086")
    end
}
