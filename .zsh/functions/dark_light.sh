function dark {
    if lsb_release -i | grep -q 'Linuxmint'; then
        if [[ "$XDG_CURRENT_DESKTOP" == "X-Cinnamon" ]]; then
            gsettings set org.cinnamon.desktop.wm.preferences theme 'Mint-Y-Dark'
            gsettings set org.cinnamon.desktop.interface gtk-theme 'Mint-Y-Dark'
            gsettings set org.cinnamon.desktop.interface icon-theme 'Mint-Y'
            gsettings set org.cinnamon.theme name 'Mint-Y-Dark'
        else
            # XFCE
            xfconf-query -c xsettings -p /Net/ThemeName -s "Mint-Y-Dark"
        fi
    fi
    if lsb_release -i | grep -q 'Ubuntu'; then
        gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-dark'
    fi
}

function light {
    if lsb_release -i | grep -q 'Linuxmint'; then
        if [[ "$XDG_CURRENT_DESKTOP" == "X-Cinnamon" ]]; then
            gsettings set org.cinnamon.desktop.wm.preferences theme 'Mint-Y'
            gsettings set org.cinnamon.desktop.interface gtk-theme 'Mint-Y'
            gsettings set org.cinnamon.desktop.interface icon-theme 'Mint-Y'
            # Light navbar doesnt look good, keep it dark
            # gsettings set org.cinnamon.theme name 'Mint-Y'
        else
            # XFCE
            xfconf-query -c xsettings -p /Net/ThemeName -s "Mint-Y"
        fi
    fi
    if lsb_release -i | grep -q 'Ubuntu'; then
        gsettings set org.gnome.desktop.interface gtk-theme 'Yaru'
    fi
}
