return {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    event = "BufWinEnter",
    with_config = true,
    after = 'vim-polyglot',
}
