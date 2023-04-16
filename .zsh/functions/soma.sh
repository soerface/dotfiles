function soma {
    if [ -z ${1+x} ]; then
        radio=$(shuf -n 1 $HOME/dotfiles/soma-radios);
    else
        radio="${1}"
    fi
    if [ "$radio" = "--list" ]; then
        cat $HOME/dotfiles/soma-radios;
        return;
    fi;
    url="https://somafm.com/$radio.pls"
    url256="https://somafm.com/${radio}256.pls"
    if curl --head --silent --fail $url256 > /dev/null 2>&1; then
        mpv $url256
    else
        mpv $url
    fi
}
