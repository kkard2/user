#SingleInstance Force

; This cannot run as a separate script
#Include leader.ahk

CapsLockState := false

#HotIf GetKeyState("CapsLock", "P")
q::Esc
#HotIf

CapsLock::{
    KeyWait "CapsLock"
    if A_ThisHotkey = "CapsLock" {
        if GetKeyState("Shift") {
            global CapsLockState := not CapsLockState
            SetCapsLockState CapsLockState
        } else {
            Send "{Escape}"
        }
    }
}

!CapsLock::{
    return
}
^CapsLock::{
    return
}
^!CapsLock::{
    return
}

Esc::F13
