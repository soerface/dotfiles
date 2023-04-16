# You may want to adapt the numbers for your usecase.
# I recommend you to add the command zsh -c ". ~/.zshrc; add_vscreens" to the
# "startup applications" of your desktop environment.
#
# Checkout my blog post for a full description and online editor to get the
# right resolution for you:
# https://soerface.de/blog/2021/09/06/ultra-wide-screen-sharing-without-being-hated/

function add_vscreens {
    xrandr --setmonitor 0_2560_1440 2560/2560x1440/0+880+0 none
    xrandr --setmonitor 1_1920_1440 1920/1920x1440/0+1520+0 none
}

function del_vscreens {
    xrandr --delmonitor 0_2560_1440
    xrandr --delmonitor 1_1920_1440
}
