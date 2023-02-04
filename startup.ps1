$CurrentPath = Split-Path $MyInvocation.MyCommand.Path -Parent
git pull $CurrentPath

# ahk
$AutoHotkeyPath = "C:\'Program Files'\AutoHotkey\v2\AutoHotkey64.exe"
Invoke-Expression "$AutoHotkeyPath $CurrentPath\ahk\caps.ahk"
Invoke-Expression "$AutoHotkeyPath $CurrentPath\ahk\anime.ahk"
Invoke-Expression "$AutoHotkeyPath $CurrentPath\ahk\media.ahk"

