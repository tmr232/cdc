function cdc {
    dest=$1
    if [ -z $dest ]; then
        dest=.
    fi

    if [ $dest == ".." ]; then
        cdc-up
        return
    fi

    cd $dest

    if [ $(ls -A1 | wc -l) -eq 1 ]; then
        if [ -d $(ls -A1 | head -1) ]; then
            cdc $(ls -A1 | head -1)
        fi
    fi
}

function cdc-up {
    cd ..
    if [ $(ls -A1 | wc -l) -eq 1 ]; then
        cdc-up
    fi
}
