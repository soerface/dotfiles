function jameica {
    cd $HOME/Software/jameica
    ./jameica.sh
    rsync -avP ~/.jameica/backups/ bx:jameica-backup
    cd -
}
