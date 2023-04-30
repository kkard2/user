$CurrentPath = Split-Path $MyInvocation.MyCommand.Path -Parent
$AutoHotkeyPath = "C:\'Program Files'\AutoHotkey\v2\AutoHotkey64_UIA.exe"
Invoke-Expression "$AutoHotkeyPath $CurrentPath\caps.ahk"
Invoke-Expression "$AutoHotkeyPath $CurrentPath\anime.ahk"
Invoke-Expression "$AutoHotkeyPath $CurrentPath\media.ahk"
