<#
.SYNOPSIS

The function digs into the directory tree to the first intersection.
#>
function cdc
{
    Param([String]$dir)
    cd $dir
    $dirs = ls
    if ($dirs.Length -eq 1) {
        cdc $dirs[0]
    }
}