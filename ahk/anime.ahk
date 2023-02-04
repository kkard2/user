#SingleInstance Force

#z::{
    if WinActive("ahk_exe firefox.exe") or WinActive("ahk_exe msedge.exe") {
        SendInput "^t"
        SendInput "^l"
        SendInput "https://myanimelist.net/animelist/kkard2"
        Sleep 250
        Send "{Enter}"
        SendInput "^t"
        SendInput "^l"
        SendInput "https://anilist.co/user/kkard2/animelist"
        SendInput "{Enter}"
    }
}
