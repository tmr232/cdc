function cdc {
    dest=$1
    if [ -z $dest ]; then
        dest=.
    fi

    cd $dest

    if [ $(ls -A1 | wc -l) -eq 1 ]; then
        if [ -d $(ls -A1 | head -1) ]; then
            cdc $(ls -A1 | head -1)
        fi
    fi
}
