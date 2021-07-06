local g = vim.g

g.dashboard_default_executive = "telescope"
g.dashboard_custom_header = {
"    .                  .-.    .  _   *     _   .",
"           *          /   \\     ((       _/ \\       *    .",
"         _    .   .--'\\/\\_ \\     `      /    \\  *   ___",
"     *  / \\_    _/ ^      \\/\\'__       /\\/\\  /\\  __/   \\ *",
"       /    \\  /    .'   _/  /  \\  *' /    \\/  \\/ .`'\\_/\\   .",
"  .   /\\/\\  /\\/ :' __  ^/  ^/    `--./.'  ^  `-.\\ _    _:\\ _",
"     /    \\/  \\  _/  \\-  __/.  ^ _   \\_   . \\   _/ \\ .  __/ \\",
"   /\\  .-    . \\/     \\ / -.   _/ \\ -.  _/   \\ /     ._/  ^  \\",
"  /  `-.__ ^   / .-'.--'    . /    `--./ .-'  `-.  `-. `.  -  `.",
"@/        `.  / /      `-.   /  .-'   / .   .'   \\    \\  \\  .-  \\%",
"@&8jgs@@%% @)&@&(88&@.-_=_-=_-=_-=_-=_.8@% &@&&8(8%@%8)(8@%8 8%@)%",
"@88:::&(&8&&8:::::%&`.~-_~~-~~_~-~_~-~~=.'@(&%::::%@8&8)::&#@8::::",
"`::::::8%@@%:::::@%&8:`.=~~-.~~-.~~=..~'8::::::::&@8:::::&8:::::'",
" `::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::.'",

}

g.dashboard_custom_section = {
    a = {description = {"  Find File                 SPC f f"}, command = "Telescope find_files"},
    b = {description = {"  Recents                   SPC f o"}, command = "Telescope oldfiles"},
    c = {description = {"  Find Word                 SPC f w"}, command = "Telescope live_grep"},
    d = {description = {"洛 New File                  SPC f n"}, command = "DashboardNewFile"},
    e = {description = {"  Bookmarks                 SPC b m"}, command = "Telescope marks"},
    f = {description = {"  Load Last Session         SPC s l"}, command = "SessionLoad"}
}

g.dashboard_custom_footer = {
        "   ",
        "I hope you have a wonderful day."
    }
