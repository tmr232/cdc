<#
.SYNOPSIS

The function digs into the directory tree to the first intersection.
#>
function cdc
{
    Param([String]$dir)
    
    if ($dir -eq "..") {
        cdc-up
        return
    }

    cd $dir
    $dirs = ls
    if ($dirs.Length -eq 1) {
        cdc $dirs[0]
    }
}

function cdc-up
{
    cd ..
    if ((ls).Length -eq 1) {
        cdc-up
    }
}