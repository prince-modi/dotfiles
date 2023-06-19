local M = {}

M.dashboard = function()
    math.randomseed(os.time())
    local headers = {
        {
            "",
            "",
            "",
            "",
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⡠⡄⠰⡀⡤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⢰⠂⠇⠑⠀⠈⠈⠈⠫⠈⡼⡄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⢀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡤⠒⠊⠀⠀⠀⠈⠀⢀⢀⢀⣄⡠⠂⡱⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀⠀⣾⣿⠀⠀⠀⠀⠀⠀⠀⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠲⠩⠁⡁⠠⠀⠀⠠⠂⠀⠀⣾⣿⡆⠀⠠⡋⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⠀⠀⣿⣿⣾⣿⡄⠀⠀⠀⠀⠀⣸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠀⠀⣆⣠⠀⢀⣤⣀⠀⠀⠀⠈⣏⡆⠂⠀⠠⠐⠁⡨⣠⡥⢺⣿⣿⣷⠀⠀⠠⣊⡀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⢸⣿⣾⠀⠀⣤⠀⠀⣿⣿⣧⠀⠀⡇⠀⠀⠀⠀⠀⠀⣿⣿⣿⣼⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⢈⣶⣾⠀⠀⠀⠀⠀⠀⣤⣧⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⢠⣼⣄⠀⣿⣿⠀⢸⣿⡇⠀⠀⠀⢈⣿⣧⠠⠀⢀⠂⣴⣮⠺⡧⣼⣿⣿⣿⡄⠐⢖⢚⠐⠰⠆⢠⣀⣿⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⢹⣿⣿⠀⢰⣿⣶⣷⣿⣿⣿⣾⣾⣿⠀⠀⢸⡆⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠈⣿⣿⠀⠀⠀⠀⠀⠀⣿⣿⠦⠴⠦⠴⠦⠶⠴⠤⠴⠤⢾⣿⣿⠀⣿⣿⣠⣼⣿⡇⠀⠀⠀⠀⣰⣿⣶⣶⣶⣶⣿⡇⡄⢃⣿⣿⣿⣿⣷⣶⣷⣶⠀⠀⠀⠀⠈⣿⠢⡀⠀⠀⠀]],
            [[⠀⣶⡆⠀⢰⣶⢺⣿⣿⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⣹⣇⣡⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡇⠀⢰⣾⠀⣿⣿⣿⣿⣷⣶⣤⡟⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡏⣑⣿⣿⣿⣿⣿⣿⠀⢀⡀⠀⣸⣿⣿⣿⣿⣿⣿⣇⡃⢸⣿⣿⣿⣿⣿⣿⣿⣿⣤⣤⣄⣠⣄⣿⠀⠐⡂⠀⠀]],
            [[⠠⣿⣿⣿⣿⣿⣾⣿⣿⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⢀⣠⣄⡀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣼⢄⠀]],
            [[⢈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢹⣿⣿⣿⣿⣿⣿⣿⣿⠉⠛⢻⣭⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⡄]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
        },
        {
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢾⡷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣺⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣟⣺⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠭⠭⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⢀⡂⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣬⣤⣤⣵⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⠯⠽⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣲⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⠀⠀⢿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣶⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⢠⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣿⣿⣿⣸⡀⠀⠀⠀⠄⠀⠀⡀⠀⠀⠀⠀]],
            [[⠀⠀⢀⣤⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣇⣀⣀⣸⣿⣆⠀⠀⠀⢼⣿⣿⣿⣿⣿⣿⣿⣿⡅⠀⠀⢸⣿⣿⣿⡇⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⠀⣰⡀⠀⢸⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⢠⡄⠀⠀⠀⠀⠀⠀⠀⠀⣀⣿⣿⣿⣿⣿⣿⣷⣀⠀⠰⡷⠀⣠⣷⡀⠀⠀⠀]],
            [[⣀⡀⢸⣿⠀⠀⠀⠀⠀⢠⣾⣿⡇⣇⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⢸⣿⣿⡿⠛⠻⣿⣿⣿⡇⠀⠀⢸⣿⣿⣿⡇⠀⠀⣶⣶⣿⣿⣶⣶⠀⡇⠀⢸⣿⣿⡆⢸⠀⠀⠀⣿⣿⣇⣀⣀⣀⣠⣼⣧⣆⣀⣀⣀⡀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⡇⢠⣿⣿⣷⡀⠀⠀]],
            [[⣿⡇⢸⣿⠀⠀⣤⣦⣴⣼⣿⣿⡇⣧⣾⣿⣀⠀⠀⢠⣿⣿⠟⡏⠉⠉⢙⡻⢿⣿⣄⣆⢸⣿⣿⣇⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⡏⠙⡿⢿⣆⣷⣤⣼⣿⣿⣧⣼⣤⣄⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣀⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣀⣇⣸⣿⣿⣿⣇⣀⣀]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣴⣴⣿⣿⣷⣾⣿⣦⣶⣼⣷⣾⣻⣿⣿⣿⣿⣿⣿⣧⣤⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢸⡇⠀⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣾⣷⣶⣷⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
        },
        {
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⢀⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⢀⣀⣠⣶⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⢸⣿⣿⢀⣠⣤⣴⣶⡇⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣄⣀⣿⡀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⢰⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⣴⣶⠀]],
            [[⣼⣿⣿⣾⣿⣿⣿⣿⡇⠀⠀⢀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⢀⡀⣀⣀⣀⣀⣀⣹⣿⣿⣿⣁⣀⣀⣀⡀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣤⠀⠀⠀⠀⠀⠀⣀⡀⠀⣿⡇⢸⣿⣿⣿⣿⣿⠀⣴⣦⣾⠀⠀⣀⠀⣿⣿⣿⣿⠀]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣧⢀⣶⣾⣷⣶⣶⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣶⣶⣀⡀⠀⠀⠀⢀⣀⣠⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣄⠀⠀⣶⣿⣿⣿⡇⠀⣿⡇⢸⣿⣿⣿⣿⣿⢀⣿⣿⣿⠀⣿⣿⣇⣿⣿⣿⣿⠀]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⣠⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⢸⠀⠀⠀⠀⠀⣿⣿⣿⣿⡇⠀⣿⣿⣿⣿⣧⡀⣿⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⢀⣿⣿⣿⣿⣿⣿⣿⠀]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⣿⣿⣿⣿⠀⠀⢀⣀⣀⣀⠀⣿⡏⠉⢹⡯⠉⠉⣿⠉⠉⠉⠉⣿⡏⠉⢹⡏⠉⠉⣿⠀⢰⣾⣿⣿⣶⠀⠀⠀⣿⣿⣿⣿⡇⡄⣿⣿⣿⣿⣿⣧⣿⣧⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⠀]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣦⣿⣿⣿⣿⣆⡀⢸⣿⣿⣿⠀⣿⡇⠀⢸⡧⠀⠀⣿⠀⠀⠀⠀⣿⡇⠀⢸⡇⠀⠀⣿⠀⢸⣿⣿⣿⣿⠀⣤⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⡇⠀⢸⣯⠀⠀⣿⠀⠀⠀⠀⣿⡇⠀⢸⡇⠀⠀⣿⠀⢸⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⡇⠀⢸⡷⠀⠀⣿⠀⠀⠀⠀⣿⡇⠀⢸⡇⠀⠀⣿⣤⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣤⣼⣿⣤⣤⣿⣤⣤⣤⣤⣿⣧⣤⣼⣧⣤⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⠛⠛⠛⠛⠛⠙⠋⠋⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠋⠛⠛⠛⠙⠋⠛⠛⠋⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛]],
        },
        {
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢼⡿⢿⡧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣧⣼⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢿⣿⣿⣿⢿⣿⣿⣿⣿⡿⣿⣿⣿⡿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣾⣶⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⣿⣿⣿⣿⣿⣿⣷⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⢿⣿⡿⡆⠀⠀⠀⠀⠀⠀⠀⠰⢿⣿⡿⡗⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣶⣦⡀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢀⣴⣶⣦⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣾⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⢴⣿⣿⣿⣷⠄⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⢠⣿⢿⣿⣿⣿⣿⣿⣿⡿⠛⠛⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣯⢸⣿⡇⢸⣿⡇⣹⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡟⠛⢿⣿⠀⠀⠀⠀⠀⠀⠀⢸⣿⠋⢻⣿⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⢸⢻⣼⣿⡿⠿⡟⠀⢸⡇⠀⠀⣿⣿⣿⣀⣠⣤⡀⠀⠀⠀⠀⠀⢀⣀⣀⡀⣀⠀⠀⠀⣾⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣿⡿⣶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⢸⣿⡿⠉⡇⠀⡇⣀⣸⣧⣶⣶⣿⣿⣿⣿⣿⣿⣷⣤⣤⣼⣿⣤⣾⣿⣿⣿⣿⡟⢻⣷⣿⣿⡏⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⢸⡇⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣷⣶⣾⣿⣤⣤⣤⣤⣤⣤⣤⣼⣿⣶⣾⣿⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⣾⢟⢀⣀⣧⣶⣿⣿⣿⣿⠿⢿⣿⡿⠋⠉⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⡿⠿⢿⣿⣿⣿⣟⣯⣿⣿⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⢹⣽⣿⣿⡿⢿⡟⠉⢻⡇⠀⢰⣿⡇⠀⠀⣿⣿⣿⡇⠀⢿⣿⠁⠀⢹⣿⣇⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣽⣿⣿⣯⣽⣿⣿⣿⣿⣯⣽⣿⣿⣯⣽⣿⣿⣽⣿⣿⣿⣭⣿⣿⣼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣏⡇⠀⢸⡙⣿⣿⣿⣿⣷⣿⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⣾⡟⡏⢸⠀⢸⡇⠀⢸⣇⣀⣸⣿⣧⣤⣴⣿⣿⣿⣷⣶⣾⣿⣤⣤⣼⣿⣿⡆⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣥⣤⣤⣤⣤⣤⣤⣤⣤⣤⣬⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⣿⣇⣇⣼⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣿⣿⡟⢻⣿⣿⡟⢻⣿⡟⢻⣿⡟⣿⣿⣿⡟⢻⣿⣿⢻⣿⣿⣿⡟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣿⡇⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⡿⢿⡿⠿⣿⡿⠛⠻⣿⡟⠉⠙⢿⣿⠋⠉⠙⣿⣿⡟⠛⢻⣿⡿⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣼⣿⣿⣧⣼⣿⣧⣼⣿⣧⣿⣿⣿⣧⣾⣿⣿⣼⣿⣿⣿⣧⣿⣿⣴⢹⣿⣿⣿⡿⠿⢿⣿⣿⣿⡏⣿⣿⢻⣿⣿⣿⣿⡏⠉⢹⣿⣿⣿⣿⡟⣿⣿⡇⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⣿⡏⡇⢸⠀⢸⡇⠀⢸⡇⠀⠀⣿⡇⠀⠀⣿⣿⠀⠀⠀⣿⣿⣷⡀⢰⣿⡆⠀⠐⣿⡇⠀⢹⣿⣿⣿⣿⣿⡿⢿⣿⣿⣿⣿⣿⡿⢿⣿⣿⣿⣿⣿⡿⢿⣿⣿⣿⣿⣿⡏⠀⢸⣿⣶⣾⡿⢻⣿⠀⠀⢸⣿⠟⣿⣗⣿⣿⣾⣿⣿⣿⣿⡇⠀⢸⣿⣿⣿⣿⣷⣿⣿⡇⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⢀⣿⣇⣇⣸⣀⣸⣇⣀⣸⣇⣀⣀⣿⣇⣀⣀⣿⣿⣀⣀⣀⣿⣿⣿⣧⣸⣿⣇⣀⣀⣿⣿⣄⣸⣿⣿⣏⣿⣿⡇⠀⣿⣿⡟⢹⣿⡇⢸⣿⡟⣿⣿⣿⡇⢸⣿⣿⣹⣿⣿⡇⠀⢸⣿⣿⣿⡇⠀⣿⠀⠀⢸⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣤⣼⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀]],
            [[⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄]],
            [[⠈⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠁]],
        },
        {
            "",
            "",
            "",
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⣶⣶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⢲⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠘⢹⡯⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣶⣦⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣷⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⣶⣶⣤⣤⣄⣀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⢀⣀⡀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⣶⠀⠀⠀⢸⡇⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⣀⣤⣴⣶⣾⣿⣿⣿⣿⣿⣿⡗⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⣿⠀⠀⠀⢹⡏⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⣿⡆⠀⢠⣼⡇⠀⠀⠀⠀⠀⠸⣿⣿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣥⣀⡀⢀⣀⣤⣤⣶⣶⣾⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⣀⠀⢀⢤⡤⡀⠀⣀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⣿⣿⣿⣿⣿⡇⠀⢀⣠⣤⣶⣾⣿⣷⣶⣤⣀⣘⣿⢹⣿⠋⠉⠛⠛⠛⣿⢹⣿⣿⣿⡿⠛⠛⠛⠿⠿⣿⡿⠿⠿⠿⠛⠛⢿⣿⣿⣿⠃⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⢀⡦⡭⠽⠓⠊⠉⠉⠉⠉⠉⠈⠑⠒⠸⢿⣀⠀⠀⢀⠀⠀⠀⠀⠀]],
            [[⣿⣿⣿⣿⣿⣿⣀⠀⣟⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣤⣤⣽⣼⣿⣿⣭⣤⣤⣤⣤⣤⣤⣼⣤⣤⣤⣤⣤⣤⣤⣽⣿⣧⣤⣤⣽⣅⣀⡀⠘⣿⣿⣿⣿⣿⣿⣷⣦⣀⠀⠀⣠⣤⣧⢤⠀⠀⠀⣐⣢⣷⣄⣆⣉⣁⣀⣀⣄⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣄⣈⣀⣰⣪⣪⣔⣢⡄⠀]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣾⣿⣿⣿⣿⣿⣿⣶⣶⣿⣶⣶⣶⡶⡶⣿⣶⣶⣶⣶⢶⣶⣶⡶⣶⡶⣾⢿⣿⣿⡿⣿⡿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣤⣿⣿⣿⣿⡏⠉⠉⠰⠘⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣠⣮⣄⡀]],
            [[⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿]],
        },
        {
            "",
            "",
            "",
            "",
            "   ▄████▄        ▒▒▒▒▒    ▒▒▒▒▒    ▒▒▒▒▒    ▒▒▒▒▒ ",
            "  ███▄█▀        ▒ ▄▒ ▄▒  ▒ ▄▒ ▄▒  ▒ ▄▒ ▄▒  ▒ ▄▒ ▄▒",
            " ▐████  █  █    ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒",
            "  █████▄        ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒",
            "    ████▀       ▒ ▒ ▒ ▒  ▒ ▒ ▒ ▒  ▒ ▒ ▒ ▒  ▒ ▒ ▒ ▒",
            "",
            "",
            "",
            "",
        },
        {
            [[            ___           _,.---,---.,_                                 ]],
            [[            |         ,;~'             '~;,                             ]],
            [[            |       ,;                     ;,                           ]],
            [[   Frontal  |      ;                         ; ,--- Supraorbital Foramen]],
            [[    Bone    |     ,'                         /'                         ]],
            [[            |    ,;                        /' ;,                        ]],
            [[            |    ; ;      .           . <-'  ; |                        ]],
            [[            |__  | ;   ______       ______   ;<----- Coronal Suture     ]],
            [[           ___   |  '/~"     ~" . "~     "~\'  |                        ]],
            [[           |     |  ~  ,-~~~^~, | ,~^~~~-,  ~  |                        ]],
            [[ Maxilla,  |      |   |        }:{        | <------ Orbit               ]],
            [[Nasal and  |      |   l       / | \       !   |                         ]],
            [[Zygomatic  |      .~  (__,.--" .^. "--.,__)  ~.                         ]],
            [[  Bones    |      |    ----;' / | \ `;-<--------- Infraorbital Foramen  ]],
            [[           |__     \__.       \/^\/       .__/                          ]],
            [[              ___   V| \                 / |V <--- Mastoid Process      ]],
            [[              |      | |T~\___!___!___/~T| |                            ]],
            [[              |      | |`IIII_I_I_I_IIII'| |                            ]],
            [[     Mandible |      |  \,III I I I III,/  |                            ]],
            [[              |       \   `~~~~~~~~~~'    /                             ]],
            [[              |         \   .       . <-x---- Mental Foramen            ]],
            [[              |__         \.    ^    ./                                 ]],
            [[                            ^~~~^~~~^                                   ]],
        },
        {
            [[                         __________                         ]],
            [[                      .~#########%%;~.                      ]],
            [[                     /############%%;`\                     ]],
            [[                    /######/~\/~\%%;,;,\                    ]],
            [[                   |#######\    /;;;;.,.|                   ]],
            [[                   |#########\/%;;;;;.,.|                   ]],
            [[          XX       |##/~~\####%;;;/~~\;,|       XX          ]],
            [[        XX..X      |#|  o  \##%;/  o  |.|      X..XX        ]],
            [[      XX.....X     |##\____/##%;\____/.,|     X.....XX      ]],
            [[ XXXXX.....XX      \#########/\;;;;;;,, /      XX.....XXXXX ]],
            [[X |......XX%,.@      \######/%;\;;;;, /      @#%,XX......| X]],
            [[X |.....X  @#%,.@     |######%%;;;;,.|     @#%,.@  X.....| X]],
            [[X  \...X     @#%,.@   |# # # % ; ; ;,|   @#%,.@     X.../  X]],
            [[ X# \.X        @#%,.@                  @#%,.@        X./  # ]],
            [[  ##  X          @#%,.@              @#%,.@          X   #  ]],
            [[, "# #X            @#%,.@          @#%,.@            X ##   ]],
            [[   `###X             @#%,.@      @#%,.@             ####'   ]],
            [[  . ' ###              @#%.,@  @#%,.@              ###`"    ]],
            [[    . ";"                @#%.@#%,.@                ;"` ' .  ]],
            [[      '                    @#%,.@                   ,.      ]],
        },
        {
            [[    .                             .                                 .]],
            [[ .                o88888888888888  d88b  .  8888888b.  .             ]],
            [[          .  .    Y88<""""888"""" j8PY8i    888   )88                ]],
            [[                   Y8b.   888    ,8P  Y8,   88888888'         .      ]],
            [[____________________>88b  888    88888888   888  Y8b_________________]],
            [[::::::::::::88888888888P  888   d8P    Y8b  888   Y888888::::::::::::]],
            [[::::::::::::(                                           )::::::::::::]],
            [[::::::::::::Y8b  d88b  d8P  d88b   . 8888888b.  o88888888::::::::::::]],
            [["""""""""""""88ij8888ij88' j8PY8i    888   )88  Y88<"""""""""""""""""]],
            [[             "8888PY8888' ,8P  Y8,   88888888'   Y8b.   .            ]],
            [[    .         Y88P  Y88P  88888888   888  Y8b_____>88b              .]],
            [[  .         .  Y8'  "8P  d8P    Y8b  888   Y888888888P               ]],
            [[]],
        },
        {
            [[.--------------------------------------------------------------------------.]],
            [[|                                                                          |]],
            [[|        __..,,-----l"|-.                                                  |]],
            [[|    __/"__  |----""  |  i--voo..,,__                                      |]],
            [[| .-'=|:|/\|-------o.,,,---. Y88888888o,,_                                 |]],
            [[|_+=:_|_|__|_|   ___|__|___-|  """"````"""`----------.........___          |]],
            [[/__============:' "" |==|__\===========(=>=+    |           ,_, .-"`--..._ |]],
            [[|  ;="|"|  |"| `.____|__|__/===========(=>=+----+===-|---------<---------_=-]],
            [[| | ==|:|\/| |   | o|.-'__,-|   .'  _______|o  `----'|        __\ __,.-'"  |]],
            [[|  "`--""`--"'"""`.-+------'" .'  _L___,,...-----------"""""""   "         |]],
            [[|                  `------""""""""                                     LS  |]],
            [[|                                                                          |]],
            [[`--------------------- Incom/Subpro's Z-95 Headhunter ---------------------']],
        },
        {
            [[     _O_        _____         _<>_          ___     ]],
            [[   /     \     |     |      /      \      /  _  \   ]],
            [[  |==/=\==|    |[/_\]|     |==\==/==|    |  / \  |  ]],
            [[  |  O O  |    / O O \     |   ><   |    |  |"|  |  ]],
            [[   \  V  /    /\  -  /\  ,-\   ()   /-.   \  X  /   ]],
            [[   /`---'\     /`---'\   V( `-====-' )V   /`---'\   ]],
            [[   O'_:_`O     O'M|M`O   (_____:|_____)   O'_|_`O   ]],
            [[    -- --       -- --      ----  ----      -- --    ]],
            [[   STAN         KYLE        CARTMAN        KENNY    ]],
        },
        {
            [[ _____                                 ]],
            [[/     \                                ]],
            [[vvvvvvv  /|__/|                        ]],
            [[   I   /O,O   |                        ]],
            [[   I /_____   |      /|/|              ]],
            [[  J|/^ ^ ^ \  |    /00  |    _//|      ]],
            [[   |^ ^ ^ ^ |W|   |/^^\ |   /oo |      ]],
            [[    \m___m__|_|    \m_m_|   \mm_|      ]],
            [[                                       ]],
            [[  "Totoros" (from "My Neighbor Totoro")]],
            [[      --- Duke Lee                     ]],
            [[]],
        },
        {
            [[                                   /\                                ]],
            [[                              /\  //\\                               ]],
            [[                       /\    //\\///\\\        /\                    ]],
            [[                      //\\  ///\////\\\\  /\  //\\                   ]],
            [[         /\          /  ^ \/^ ^/^  ^  ^ \/^ \/  ^ \                  ]],
            [[        / ^\    /\  / ^   /  ^/ ^ ^ ^   ^\ ^/  ^^  \                 ]],
            [[       /^   \  / ^\/ ^ ^   ^ / ^  ^    ^  \/ ^   ^  \       *        ]],
            [[      /  ^ ^ \/^  ^\ ^ ^ ^   ^  ^   ^   ____  ^   ^  \     /|\       ]],
            [[     / ^ ^  ^ \ ^  _\___________________|  |_____^ ^  \   /||o\      ]],
            [[    / ^^  ^ ^ ^\  /______________________________\ ^ ^ \ /|o|||\     ]],
            [[   /  ^  ^^ ^ ^  /________________________________\  ^  /|||||o|\    ]],
            [[  /^ ^  ^ ^^  ^    ||___|___||||||||||||___|__|||      /||o||||||\   ]],
            [[ / ^   ^   ^    ^  ||___|___||||||||||||___|__|||          | |       ]],
            [[/ ^ ^ ^  ^  ^  ^   ||||||||||||||||||||||||||||||oooooooooo| |ooooooo]],
            [[ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo]],
            [[]],
        },
        {
            [[ =ccccc,      ,cccc       ccccc      ,cccc,  ?$$$$$$$,  ,ccc,   -ccc        ]],
            [[:::"$$$$bc    $$$$$     ::`$$$$$c,  : $$$$$c`:"$$$$???'`."$$$$c,:`?$$c      ]],
            [[`::::"?$$$$c,z$$$$F     `:: ?$$$$$c,`:`$$$$$h`:`?$$$,` :::`$$$$$$c,"$$h,    ]],
            [[  `::::."$$$$$$$$$'    ..,,,:"$$$$$$h, ?$$$$$$c`:"$$$$$$$b':"$$$$$$$$$$$c   ]],
            [[     `::::"?$$$$$$    :"$$$$c:`$$$$$$$$d$$$P$$$b`:`?$$$c : ::`?$$c "?$$$$h, ]],
            [[       `:::.$$$$$$$c,`::`????":`?$$$E"?$$$$h ?$$$.`:?$$$h..,,,:"$$$,:."?$$$c]],
            [[         `: $$$$$$$$$c, ::``  :::"$$$b `"$$$ :"$$$b`:`?$$$$$$$c``?$F `:: "::]],
            [[          .,$$$$$"?$$$$$c,    `:::"$$$$.::"$.:: ?$$$.:.???????" `:::  ` ``` ]],
            [[          'J$$$$P'::"?$$$$h,   `:::`?$$$c`::``:: .:: : :::::''   `          ]],
            [[         :,$$$$$':::::`?$$$$$c,  ::: "::  ::  ` ::'   ``                    ]],
            [[        .'J$$$$F  `::::: .::::    ` :::'  `                                 ]],
            [[       .: ???):     `:: :::::                                               ]],
            [[       : :::::'        `                                                    ]],
            [[        ``                                                                  ]],
        },
        {
            [[         __                        ___________________________________        ]],
            [[       _( _)_                     /    I know Beethoven was great,    \       ]],
            [[      ( _) ( )            _____  |      but do you have to say it      |      ]],
            [[     (_)    (_)          @@@@@@@ |  every day on rec.music.classical?  |      ]],
            [[   __/     . |          @@@  .|_  \ __________________________________/       ]],
            [[ /    \  --\_) _________@@(    _) |/                  | |         |           ]],
            [[|   /\  \__/)-/_______(@@@@__-/                       | |        |'           ]],
            [[|--|**|\__ --|        (___)   \___ /\  ##             !_!-v----v-"            ]],
            [[|*****|__ |____________| \    |  /    \##    __--"""i i""""""""""i            ]],
            [[ \*(#####)  ||      ||    \___|____/\__##   !_______! !__________!            ]],
            [[""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""]],
            [[]],
        },
        {
            [[]],
            [[         _nnnn_                      ]],
            [[        dGGGGMMb     ,"""""""""""""".]],
            [[       @p~qp~~qMb    | Linux Rules! |]],
            [[       M|@||@) M|   _;..............']],
            [[       @,----.JM| -'                 ]],
            [[      JS^\__/  qKL                   ]],
            [[     dZP        qKRb                 ]],
            [[    dZP          qKKb                ]],
            [[   fZP            SMMb               ]],
            [[   HZM            MMMM               ]],
            [[   FqM            MMMM               ]],
            [[ __| ".        |\dS"qML              ]],
            [[ |    `.       | `' \Zq              ]],
            [[_)      \.___.,|     .'              ]],
            [[\____   )MMMMMM|   .'                ]],
            [[     `-'       `--' hjm              ]],
            [[]],
        },
        {
            [[               ==========================================                 ]],
            [[                 `.:::::::.       `:::::::.       `:::::::.               ]],
            [[                   \:::::::.        :::::::.        :::::::\              ]],
            [[                    L:::::::        ::::::::        ::::::::L             ]],
            [[                    |:::::::        ::::::::        ::::::::|     .---.   ]],
            [[                    |:::::::        ::::::::        ::::::::|    /(@  o`. ]],
            [[                    |:::::::        ::::::::        ::::::::|   |    /^^^ ]],
            [[     __             |:::::::        ::::::::        ::::::::|    \ . \vvv ]],
            [[   .'_ \            |:::::::        ::::::::        ::::::::|     \ `--'  ]],
            [[   (( ) |           |:::::::        ::::::::        ::::::::|      \ `.   ]],
            [[    `/ /            |:::::::        ::::::::        ::::::::|       L  \  ]],
            [[    / /             |:::::::        ::::::::        ::::::::|       |   \ ]],
            [[   |  L\            J:::::::        .:::::::        .:::::::J      /     F]],
            [[   J  J `.     .   F:::::::        ::::::::        ::::::::F    .'      J ]],
            [[    L  \  `.  //  /:::::::'      .::::::::'      .::::::::/   .'        F ]],
            [[    J   `.  `//_..---.   .---.   .---.   .---.   .---.   <---<         J  ]],
            [[     L    `-//_=/  _  \=/  _  \=/  _  \=/  _  \=/  _  \=/  _  \       /   ]],
            [[     J     /|  |  (_)  |  (_)  |  (_)  |  (_)  |  (_)  |  (_)  |     /    ]],
            [[      \   / |   \     //\     //\     //\     //\     //\     /    .'     ]],
            [[       \ / /     `---//  `---//  `---//  `---//  `---//  `---'   .'       ]],
            [[________/_/_________//______//______//______//______//_________.'_________]],
            [[##VK######################################################################]],
        },
        {
            [[            > <     ,     > <                 ]],
            [[       .     '             '      .      .    ]],
            [[                __.--._          > <          ]],
            [[        .     .'   L   `.--._     '           ]],
            [[       > <    `/ c '`    \   `.               ]],
            [[        '     :           ;    `.    `     ,  ]],
            [[              |           ;      \            ]],
            [[             /`.     | ' /        \     .     ]],
            [[        '   / -.\ \  ^ ;/   _      \   > <    ]],
            [[           :    \`.:/ \|     `.|    ;   '     ]],
            [[           |     :''   '       ;    |         ]],
            [[           |     |`.         _/_    ;         ]],
            [[[bug]      :     :  `-._____/   `. /          ]],
            [[            \    |         :/ ,   V\          ]],
            [[  /"\   __.--; _ :         `./ /  ; ;         ]],
            [[ :  |\_/     |  \L  _..--.   `.L.'  |`.   __  ]],
            [[ |  | ;`.    ; _ \\'      `.          /`+'.'`.]],
            [[ |  | |      | \CT_;        `-.      ' / /   |]],
            [[ |-_| |   .-'`.___.            `-.    / /    ;]],
            [[ :  ; :.-'                        `-./ /.   / ]],
            [[  \/_/         _                     \/  `./  ]],
            [[   "                                  `._.'   ]],
        },
        {
            [[           _____________________________________________        ]],
            [[         //:::::::::::::::::::::::::::::::::::::::::::::\\      ]],
            [[       //:::_______:::::::::________::::::::::_____:::::::\\    ]],
            [[     //:::_/   _-"":::_--"""        """--_::::\_  ):::::::::\\  ]],
            [[    //:::/    /:::::_"                    "-_:::\/:::::|^\:::\\ ]],
            [[   //:::/   /~::::::I__                      \:::::::::|  \:::\\]],
            [[   \\:::\   (::::::::::""""---___________     "--------"  /::://]],
            [[    \\:::\  |::::::::::::::::::::::::::::""""==____      /:::// ]],
            [[     \\:::"\/::::::::::::::::::::::::::::::::::::::\   /~::://  ]],
            [[       \\:::::::::::::::::::::::::::::::::::::::::::)/~::://    ]],
            [[         \\::::\""""""------_____::::::::::::::::::::::://      ]],
            [[           \\:::"\               """""-----_____:::::://        ]],
            [[             \\:::"\    __----__                )::://          ]],
            [[               \\:::"\/~::::::::~\_         __/~:://            ]],
            [[                 \\::::::::::::::::""----""":::://              ]],
            [[                   \\::::::::::::::::::::::::://                ]],
            [[                     \\:::\^""--._.--""^/::://                  ]],
            [[                       \\::"\         /":://                    ]],
            [[                         \\::"\     /":://                      ]],
            [[                           \\::"\_/":://                        ]],
            [[                             \\::::://                          ]],
            [[                               \\_//                            ]],
        },
        {
            [[_____________________                              _____________________ ]],
            [[`-._:  .:'   `:::  .:\           |\__/|           /::  .:'   `:::  .:.-' ]],
            [[    \      :          \          |:   |          /         :       /     ]],
            [[     \     ::    .     `-_______/ ::   \_______-'   .      ::   . /      ]],
            [[      |  :   :: ::'  :   :: ::'  :   :: ::'      :: ::'  :   :: :|       ]],
            [[      |     ;::         ;::         ;::         ;::         ;::  |       ]],
            [[      |  .:'   `:::  .:'   `:::  .:'   `:::  .:'   `:::  .:'   `:|       ]],
            [[      /     :           :           :           :           :    \       ]],
            [[     /______::_____     ::    .     ::    .     ::   _____._::____\      ]],
            [[                   `----._:: ::'  :   :: ::'  _.----'                    ]],
            [[                          `--.       ;::  .--'                           ]],
            [[                              `-. .:'  .-'                               ]],
            [[                                 \    / :F_P:                            ]],
            [[                                  \  /                                   ]],
            [[                                   \/                                    ]],
            [[]],
        },
        {
            [[                ur d$$$$$$$$$$$$$$Nu               ]],
            [[              d$$$ "$$$$$$$$$$$$$$$$$$e.           ]],
            [[          u$$c   ""   ^"^**$$$$$$$$$$$$$b.         ]],
            [[        z$$#"""           `!?$$$$$$$$$$$$$N.       ]],
            [[      .$P                   ~!R$$$$$$$$$$$$$b      ]],
            [[     x$F                 **$b. '"R).$$$$$$$$$$     ]],
            [[    J^"                           #$$$$$$$$$$$$.   ]],
            [[   z$e                      ..      "**$$$$$$$$$   ]],
            [[  :$P           .        .$$$$$b.    ..  "  #$$$$  ]],
            [[  $$            L          ^*$$$$b   "      4$$$$L ]],
            [[ 4$$            ^u    .e$$$$e."*$$$N.       @$$$$$ ]],
            [[ $$E            d$$$$$$$$$$$$$$L "$$$$$  mu $$$$$$F]],
            [[ $$&            $$$$$$$$$$$$$$$$N   "#* * ?$$$$$$$N]],
            [[ $$F            '$$$$$$$$$$$$$$$$$bec...z$ $$$$$$$$]],
            [['$$F             `$$$$$$$$$$$$$$$$$$$$$$$$ '$$$$E"$]],
            [[ $$                  ^""""""`       ^"*$$$& 9$$$$N ]],
            [[ k  u$                                  "$$. "$$P r]],
            [[ 4$$$$L                                   "$. eeeR ]],
            [[  $$$$$k                                   '$e. .@ ]],
            [[  3$$$$$b                                   '$$$$  ]],
            [[   $$$$$$                                    3$$"  ]],
            [[    $$$$$  dc                                4$F   ]],
        },
        {
            [[                                          _\/               ]],
            [[                                        .-'.'`)             ]],
            [[                                     .-' .'                 ]],
            [[               .                  .-'     `-.          __\/ ]],
            [[                \.    .  |,   _.-'       -:````)   _.-'.'``)]],
            [[                 \`.  |\ | \.-_.           `._ _.-' .'`     ]],
            [[                __) )__\ |! )/ \_.          _.-'      `.    ]],
            [[            _.-'__`-' =`:' /.' / |      _.-'      -:`````)  ]],
            [[      __.--' ( (@> ))  = \ ^ `'. |_. .-'           `.       ]],
            [[     : @       `^^^    == \ ^   `. |<                `.     ]],
            [[     VvvvvvvvVvvvv)    =  ;   ^  ;_/ :           -:``````)  ]],
            [[       (^^^^^^^^^^=  ==   |      ; \. :            `.       ]],
            [[    ((  `-----------.  == |  ^   ;_/   :             `.     ]],
            [[    /\             /==   /       : \.  :     _..--``````)   ]],
            [[  __\ \_          ; ==  /  ^     :_/   :      `.            ]],
            [[>                                                           ]],
        },
        {
            [[                            ,-.                            ]],
            [[       ___,---.__          /'|`\          __,---,___       ]],
            [[    ,-'    \`    `-.____,-'  |  `-.____,-'    //    `-.    ]],
            [[  ,'        |           ~'\     /`~           |        `.  ]],
            [[ /      ___//              `. ,'          ,  , \___      \ ]],
            [[|    ,-'   `-.__   _         |        ,    __,-'   `-.    |]],
            [[|   /          /\_  `   .    |    ,      _/\          \   |]],
            [[\  |           \ \`-.___ \   |   / ___,-'/ /           |  /]],
            [[ \  \           | `._   `\\  |  //'   _,' |           /  / ]],
            [[  `-.\         /'  _ `---'' , . ``---' _  `\         /,-'  ]],
            [[     ``       /     \    ,='/ \`=.    /     \       ''     ]],
            [[             |__   /|\_,--.,-.--,--._/|\   __|             ]],
            [[             /  `./  \\`\ |  |  | /,//' \,'  \             ]],
            [[            /   /     ||--+--|--+-/-|     \   \            ]],
            [[           |   |     /'\_\_\ | /_/_/`\     |   |           ]],
            [[            \   \__, \_     `~'     _/ .__/   /            ]],
            [[             `-._,-'   `-._______,-'   `-._,-'             ]],
            [[]],
        },
        {
            [[  ______________________________________________________________________ ]],
            [[ |.============[_F_E_D_E_R_A_L___R_E_S_E_R_V_E___N_O_T_E_]=============.|]],
            [[ ||%&%&%&%_    _        _ _ _   _ _  _ _ _     _       _    _  %&%&%&%&||]],
            [[ ||%&.-.&/||_||_ | ||\||||_| \ (_ ||\||_(_  /\|_ |\|V||_|)|/ |\ %&.-.&&||]],
            [[ ||&// |\ || ||_ \_/| ||||_|_/ ,_)|||||_,_) \/|  ||| ||_|\|\_|| &// |\%||]],
            [[ ||| | | |%               ,-----,-'____'-,-----,               %| | | |||]],
            [[ ||| | | |&% """"""""""  [    .-;"`___ `";-.    ]             &%| | | |||]],
            [[ ||&\===//                `).'' .'`_.- `. '.'.(`  A 76355942 J  \\===/&||]],
            [[ ||&%'-'%/1                // .' /`     \    \\                  \%'-'%||]],
            [[ ||%&%&%/`   d8888b       // /   \  _  _;,    \\      .-"""-.  1 `&%&%%||]],
            [[ ||&%&%&    8P |) Yb     ;; (     > a  a| \    ;;    //A`Y A\\    &%&%&||]],
            [[ ||&%&%|    8b |) d8     || (    ,\   \ |  )   ||    ||.-'-.||    |%&%&||]],
            [[ ||%&%&|     Y8888P      ||  '--'/`  -- /-'    ||    \\_/~\_//    |&%&%||]],
            [[ ||%&%&|                 ||     |\`-.__/       ||     '-...-'     |&%&%||]],
            [[ ||%%%%|                 ||    /` |._ .|-.     ||                 |%&%&||]],
            [[ ||%&%&|  A 76355942 J  /;\ _.'   \  } \  '-.  /;\                |%&%&||]],
            [[ ||&%.-;               (,  '.      \  } `\   \'  ,)   ,.,.,.,.,   ;-.%&||]],
            [[ ||%( | ) 1  """""""   _( \  ;...---------.;.; / )_ ```""""""" 1 ( | )%||]],
            [[ ||&%'-'==================\`------------------`/=================='-'%&||]],
            [[ ||%&JGS&%&%&%&%%&%&&&%&%%&)O N E  D O L L A R(%&%&%&%&%&%&%%&%&&&%&%%&||]],
            [[ '""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""`]],
        },
        {
            [[                                              ,           ^'^  _     ]],
            [[                                              )               (_) ^'^]],
            [[         _/\_                    .---------. ((        ^'^           ]],
            [[         (('>                    )`'`'`'`'`( ||                 ^'^  ]],
            [[    _    /^|                    /`'`'`'`'`'`\||           ^'^        ]],
            [[    =>--/__|m---               /`'`'`'`'`'`'`\|                      ]],
            [[         ^^           ,,,,,,, /`'`'`'`'`'`'`'`\      ,               ]],
            [[                     .-------.`|`````````````|`  .   )               ]],
            [[                    / .^. .^. \|  ,^^, ,^^,  |  / \ ((               ]],
            [[                   /  |_| |_|  \  |__| |__|  | /,-,\||               ]],
            [[        _         /_____________\ |")| |  |  |/ |_| \|               ]],
            [[       (")         |  __   __  |  '==' '=='  /_______\     _         ]],
            [[      (' ')        | /  \ /  \ |   _______   |,^, ,^,|    (")        ]],
            [[       \  \        | |--| |--| |  ((--.--))  ||_| |_||   (' ')       ]],
            [[     _  ^^^ _      | |__| |("| |  ||  |  ||  |,-, ,-,|   /  /        ]],
            [[   ,' ',  ,' ',    |           |  ||  |  ||  ||_| |_||   ^^^         ]],
            [[.,,|RIP|,.|RIP|,.,,'==========='==''=='==''=='=======',,....,,,,.,ldb]],
            [[]],
        },
        {
            [[=================     ===============     ===============   ========  ========]],
            [[\\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //]],
            [[||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||]],
            [[|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||]],
            [[||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||]],
            [[|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||]],
            [[||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||]],
            [[|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||]],
            [[||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||]],
            [[||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||]],
            [[||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||]],
            [[||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||]],
            [[||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||]],
            [[||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||]],
            [[||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||]],
            [[||.=='    _-'                                                     `' |  /==.||]],
            [[=='    _-'                                                            \/   `==]],
            [[\   _-'                                                                `-_   /]],
            [[ `''                                                                      ``' ]],
        },
    }
    return headers[math.random(1, #headers)]
end

return M
