local wk = lvim.builtin.which_key

-- wk.mappings["a"] = { ":Alpha<CR>", "Dashboard" }

-- wk.mappings["r"] = {
--     name = 'Refactor'
-- }
wk.mappings["m"] = {
    name = 'Harpoon',
    m = { ":lua require('harpoon.mark').add_file()<cr>", "Mark file" },
    t = { ":lua require('harpoon.ui').toggle_quick_menu()<cr>", "Toggle UI" },
    a = { ":lua require('harpoon.ui').nav_file(1)<cr>", "Goto mark 1" },
    s = { ":lua require('harpoon.ui').nav_file(2)<cr>", "Goto mark 2" },
    n = { ":lua require('harpoon.ui').add_file()<cr>", "Next file" },
    p = { ":lua require('harpoon.ui').add_file()<cr>", "Prev file" },
}
