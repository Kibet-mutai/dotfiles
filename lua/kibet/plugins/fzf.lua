return {
    "junegunn/fzf.vim",
    dependencies = {
        "junegunn/fzf",
    },
    config = function()
        vim.cmd([[source $HOME/.vim/plugged/fzf.vim/plugin/fzf.vim]])
        -- place you keymaps here like the exaample below
        vim.api.nvim_set_keymap("n", "<leader>f", ":Files<CR>", { noremap = true, silent = true })
        -- Add more mappings as needed
    end
}
