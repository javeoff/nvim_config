return function()
    local path = 'plugins/lsp/nvim_lspconfig/';
    require(path .. 'options')
    require(path .. 'load_servers')
    require(path .. 'diagnostic_signs')
end
