@echo off
:: Get dest

:: Count argc
set argC=0
for %%x in (%*) do Set /A argC+=1

:: If no args - pass current directory
set dest=%1
if %argC% LSS 1 (
    set dest=.
)

if %dest% EQU .. (
    goto CdcUp  
)

:Entry

    cd %dest% 2>NUL

    if %errorlevel% neq 0 (
        goto Finish
    )

    :: Number of items in directory
    for /f %%i in (' "dir /B | findstr /R /N "^.*$" | c:\windows\system32\find /C ":"" ') do set n=%%i

    :: If only dir entry, cd into it
    if %n% == 1 (
        for /f %%i in (' "dir /B" ') do set dest=%%i
        goto entry
    )

goto Finish

:CdcUp

    cd ..

    :: Number of items in directory
    for /f %%i in (' "dir /B | findstr /R /N "^.*$" | c:\windows\system32\find /C ":"" ') do set n=%%i

    :: If only dir entry, cd into it
    if %n% == 1 (
        goto CdcUp
    )

:Finish