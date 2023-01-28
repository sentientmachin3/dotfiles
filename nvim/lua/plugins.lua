return require('packer').startup(function(use)
    use('wbthomason/packer.nvim')
    use('nvim-tree/nvim-web-devicons')
    use('nvim-treesitter/nvim-treesitter')
    use({ 'projekt0n/github-nvim-theme', tag = 'v0.0.7' })
    use('romgrk/barbar.nvim')
    use('nvim-lualine/lualine.nvim')
    use('lewis6991/gitsigns.nvim')
    use('numToStr/Comment.nvim')
    use { 'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-lua/plenary.nvim' }
        }
    }

    -- Lsp stuff (loaded in lsp_config)
    use('neovim/nvim-lspconfig')
    use('jose-elias-alvarez/typescript.nvim')
    use('jose-elias-alvarez/null-ls.nvim')
    use('MunifTanjim/prettier.nvim')
    use { 'hrsh7th/nvim-cmp',
        requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
    }

    -- Plugins config
    require('nvim-treesitter.configs').setup({
        ensure_installed = { 'python', 'typescript', 'json', 'rust', 'lua' },
        sync_install = false,
        auto_install = true,
        highlight = {
            enable = true,
        }
    })

    require('github-theme').setup({
        theme_style = 'dimmed',
        comment_style = "NONE",
        keyword_style = "NONE",
        function_style = "NONE",
        variable_style = "NONE",
    })

    require('lualine').setup({
        options = {
            icons_enabled = true,
        }
    })

    require('bufferline').setup {
        animation = false,
        auto_hide = true,
        tabpages = true,
        closable = false,
        clickable = true,
        diagnostics = {
            [vim.diagnostic.severity.ERROR] = { enabled = true, icon = 'ﬀ' },
            [vim.diagnostic.severity.WARN] = { enabled = false },
            [vim.diagnostic.severity.INFO] = { enabled = false },
            [vim.diagnostic.severity.HINT] = { enabled = true },
        },
        highlight_visible = true,
        icons = 'both',
        semantic_letters = false,
        letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
    }

    require('gitsigns').setup()
    require('telescope').setup()
    require('Comment').setup()
    require('nvim-web-devicons').setup()
end)
