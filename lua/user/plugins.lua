-- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
lvim.plugins = {
    {
        "folke/trouble.nvim",
        cmd = "TroubleToggle",
    },
    { 'morhetz/gruvbox' },
    { 'sainnhe/gruvbox-material' },
    { 'sainnhe/sonokai' },
    { 'nvim-lua/plenary.nvim' },
    { 'ThePrimeagen/harpoon' },
    {
        'ThePrimeagen/refactoring.nvim',
        dependencies = { 'nvim-lua/plenary.nvim', 'nvim-treesitter/nvim-treesitter' },
        config = function()
            require('refactoring').setup()
        end
    }
}
