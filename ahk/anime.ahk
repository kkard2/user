#IfWinActive ahk_exe firefox.exe
#z::
#IfWinActive ahk_exe msedge.exe
#z::
SendInput ^t
SendInput ^l
SendInput https://myanimelist.net/animelist/kkard2
Sleep 250
Send {Enter}
SendInput ^t
SendInput ^l
SendInput https://anilist.co/user/kkard2/animelist
SendInput {Enter}
return

