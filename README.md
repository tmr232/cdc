# CDC
## Fun, Rerucsive CD

Ever had to `cd` over and over though a long line of directories? No more!

```cmd
>>> cd
C:\

>>> tree
Folder PATH listing
Volume serial number is C0000100 9EB8:3C4F
C:.
└───some
    └───very
        └───long
            └───line
                └───of
                    └───pointless
                        └───directories
                            ├───one
                            └───two
>>> cdc
>>> cd
C:\some\very\long\line\of\pointless\directories
```

## Supported Shells

1. Bash (`cdc-bash.sh`)
2. cmd.exe (`cdc-batch.bat`)
3. Powershell (`cdc-posh.ps1`)