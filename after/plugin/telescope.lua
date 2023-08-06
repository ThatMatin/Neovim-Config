local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>gr',function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")})
end)


local telescope = require('telescope')
local actions = require('telescope.actions')
telescope.setup({
    defaults = {
        layout_strategy = "vertical",
        layout_config = {
            vertical = {
                -- height = 0.95,
                width = 0.65,
                mirror = true,
                prompt_position = "top",
            },
        },
    },
    pickers = {
        find_files = {
            hidden = true,
            file_ignore_patterns = { ".git" },
        },
        live_grep = {
            additional_args = { "--hidden" },
            file_ignore_patterns = { ".git" },
        },
        grep_string = {
            additional_args = { "--hidden" },
            file_ignore_patterns = { ".git" },
        },

        buffers = {
            initial_mode = "normal",
        },
        colorscheme = {
            enable_preview = true,
            theme = "dropdown",
        },
        git_branches = {
            mappings = {
                i = { ["<cr>"] = actions.git_switch_branch },
            },
        },
    },
})

telescope.load_extension("undo")
vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
