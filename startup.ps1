$CurrentPath = Split-Path $MyInvocation.MyCommand.Path -Parent
Set-Location $CurrentPath
git pull

# ahk
$AutoHotkeyPath = "C:\'Program Files'\AutoHotkey\v2\AutoHotkey64.exe"
Invoke-Expression "$AutoHotkeyPath $CurrentPath\ahk\caps.ahk"
Invoke-Expression "$AutoHotkeyPath $CurrentPath\ahk\anime.ahk"
Invoke-Expression "$AutoHotkeyPath $CurrentPath\ahk\media.ahk"
