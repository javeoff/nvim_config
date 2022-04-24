local ts_utils_settings = {
    debug = false,
    disable_commands = false,
    enable_import_on_completion = false,
    import_all_timeout = 5000,
    import_all_priorities = {
        same_file = 1,
        local_files = 2,
        buffer_content = 3,
        buffers = 4,
    },
    import_all_select_source = false,
    filter_out_diagnostics_by_severity = {},
    auto_inlay_hints = true,
    inlay_hints_highlight = "Comment",
    inlay_hints_priority = 200,
    inlay_hints_throttle = 150,
    inlay_hints_format = {
        Parameter = {},
        Enum = {},
        Type = {
            highlight = "Comment",
            text = function(text)
                return "->" .. text:sub(2)
            end,
        },
    },
    require_confirmation_on_move = false,
    watch_dir = nil,
    import_all_scan_buffers = 100,
    update_imports_on_move = true,
    always_organize_imports = true,
    filter_out_diagnostics_by_code = { 80001 },
    plugins = {
        {
            name = 'tsconfig-paths',
            location = '~/node_modules/tsconfig-paths',
        }
    },
    includePackageJsonAutoImports = true,
}

local P = {}

P.setup = function(on_attach, capabilities)
    local lspconfig = require("lspconfig")
    local ts_utils = require("nvim-lsp-ts-utils")

    lspconfig["tsserver"].setup({
        root_dir = lspconfig.util.root_pattern("package.json"),
        init_options = ts_utils.init_options,
        on_attach = function(client, bufnr)
            client.resolved_capabilities.document_formatting = false
            client.resolved_capabilities.document_range_formatting = false
            on_attach(client, bufnr)

            ts_utils.setup(ts_utils_settings)
            ts_utils.setup_client(client)
        end,
        flags = {
            debounce_text_changes = 150,
        },
        capabilities = capabilities,
    })
end

return P
