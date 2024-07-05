return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
	prpriority = 100,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require('plugins/navigation/neo-tree/config')
        require('plugins/navigation/neo-tree/keybindings')
    end
}
