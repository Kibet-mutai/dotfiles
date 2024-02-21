return {
    'simrat39/rust-tools.nvim',
    priorities = 1000,
    config = function()
        local rt = require("rust-tools")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local capabilities = cmp_nvim_lsp.default_capabilities()

        local on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
        end
        rt.setup({
            server = {
                on_attach = on_attach,
                capabilities = capabilities,
                tools = {
                    hover_actions = {
                        auto_focus = true
                    },
                },
            }
        })
    end
}
