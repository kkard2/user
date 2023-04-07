SystemLeader := "CapsLock"

HarpoonLastWindowIndex := 0

HarpoonRun(winTitle) {
    SetTitleMatchMode 2
    DetectHiddenWindows true

    windows := WinGetList(winTitle)

    if windows.Length = 0 {
        return
    }

    if WinActive(winTitle) {
        global HarpoonLastWindowIndex := Mod((HarpoonLastWindowIndex + 1), windows.Length)
    } else {
        global HarpoonLastWindowIndex := 0
    }

    WinActivate windows[HarpoonLastWindowIndex + 1]
}

#HotIf GetKeyState(SystemLeader, "P")
; vim motion
h::Left
j::Down
k::Up
l::Right

; less vim motion
w::^Right
b::^Left
i::Home
a::End

o::{
    Send "{End}{Enter}"
}

; harpoon
`::HarpoonRun("ahk_exe WindowsTerminal.exe")
1::HarpoonRun("ahk_exe Discord.exe")
2::HarpoonRun("ahk_exe rider64.exe")
3::HarpoonRun("ahk_exe msedge.exe")
4::HarpoonRun("ahk_exe code.exe")
e::HarpoonRun("ahk_class CabinetWClass")

; list espanso files
`;::{
    SetWorkingDir A_ScriptDir
    FileEncoding "UTF-8"

    loop files "../espanso/match/*.yml" {
        MsgBox FileRead(A_LoopFileFullPath), A_LoopFileName
    }
}

Esc::Run "taskmgr"
#HotIf
