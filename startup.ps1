.\ahk\run.ps1

$CurrentPath = Split-Path $MyInvocation.MyCommand.Path -Parent
Set-Location $CurrentPath
git pull

.\ahk\run.ps1
