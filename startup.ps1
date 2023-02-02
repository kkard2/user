$CurrentPath = Split-Path $MyInvocation.MyCommand.Path -Parent

# ahk
$AutoHotkeyPath = "C:\'Program Files'\AutoHotkey\v2\AutoHotkey64.exe"
Invoke-Expression "$AutoHotkeyPath $CurrentPath\ahk\caps.ahk"

