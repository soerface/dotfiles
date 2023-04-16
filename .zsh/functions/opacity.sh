function opacity {
    if [ -z $1 ]
    then
        echo "Please pass a percentage"
    else
        sh -c "xprop -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY $(printf 0x%x $((0xffffffff * $1 / 100)))"
    fi
}

