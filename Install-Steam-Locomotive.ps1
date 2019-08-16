param([String]$Profile)

if (!$Profile) {
  Write-Output "Please supply your profile location under -Profile."
  exit
}

if (!(wsl command -v sl)) {
  Write-Output "First, install SL."
  wsl sudo apt install sl
}

if (wsl command -v sl) {
  Add-Content $Profile "`n# Code inserted by Install-Steam-Locomotive`n"
  Add-Content $Profile "Set-Alias `"Steam-Locomotive`" `"wsl sl -e`"`n"
  Add-Content $Profile "Set-Alias `"Steam-Locomotive-Force`" `"wsl sl`"`n"
  Add-Content $Profile "`n# </>`n"
  Write-Output "Done!"
}

if (!(wsl command -v sl)) {
  Write-Output "Failed."
}