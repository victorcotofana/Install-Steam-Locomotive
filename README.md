This script helps you use the tremendous `sl` program in Windows PowerShell.  
Simply download the .ps1 file and execute it.

If the script finishes successfully, you can type `Steam-Locomotive` in PS to start the *interruptable* `sl -e`. Use `Steam-Locomotive-Force` to prevent interruption (`sl`).

If you don't want your profile to be reloaded, pass the -Skip-Reload switch.

Example:

    PS C:\Users\User\Downloads\> .\Install-Steam-Locomotive.ps1 -Profile $PROFILE -SkipReload
    Done!
    Success!
    PS C:\Users\User\Downloads\> exit
