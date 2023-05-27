CapsLockState := false
SystemLeader := "CapsLock"

HarpoonLastWindowIndex := 0

HarpoonRun(winTitle) {
    SetTitleMatchMode 2
    DetectHiddenWindows false

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
\::{
    global CapsLockState := not CapsLockState
    SetCapsLockState CapsLockState
}

; vim motion
h::Left
j::Down
k::Up
l::Right

y::^Left
u::^Down
i::^Up
o::^Right

n::Home
m::PgDn
,::PgUp
.::End

; vim motion w select
+h::+Left
+j::+Down
+k::+Up
+l::+Right

+y::^+Left
+u::^+Down
+i::^+Up
+o::^+Right

+n::+Home
+m::+PgDn
+,::+PgUp
+.::+End

; harpoon
`::HarpoonRun("ahk_exe WindowsTerminal.exe")
1::HarpoonRun("ahk_exe Discord.exe")
2::HarpoonRun("ahk_exe rider64.exe")
3::HarpoonRun("ahk_exe msedge.exe")
4::HarpoonRun("ahk_exe Element.exe")
5::HarpoonRun("ahk_exe code.exe")
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

; window manipulation
!h::#Left
!j::#Down
!k::#Up
!l::#Right

!y::#+Left
!u::#+Down
!i::#+Up
!o::#+Right

; desktop switching
!n::^#Left
!.::^#Right
#HotIf
