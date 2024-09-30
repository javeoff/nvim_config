require("mason").setup({
		install_root_dir = os.getenv('HOME') .. '/.nvim/.mason',
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
